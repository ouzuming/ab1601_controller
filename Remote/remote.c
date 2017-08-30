/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ab_uart.h"
#include "ab_assert.h"
#include "ab_clk.h"
#include "remote.h"
#include "stdarg.h"
#include <sys/param.h>
#include "service_device_firmware_update_OTA.h"

#if defined(RC_IRTX) || defined(RC_IRRX)
#include "ir_NEC.h"
#endif
#if defined(DD_SRC)
#include "Drv_pinmux.h"
#include "remote_gpio.h"

// The defition follow the mtd.c
#define MTD_PWR_PIO_MASK        (1<<MTD_PWR_PIO)
#define MTD_SPI_GRP_MASK        SPI_PIN_MASK0
#endif

BOOT_REASON boot;
RC_BLE_STATUS remote_ble_status = BLE_IDLE;
RC_MIC_STATUS remote_mic_status = MIC_REMOTE_DISABLED;
bool remote_bt_inited = false;
bool remote_bt_bonded = false;
bool remote_mouse_enabled = false;
bool remote_gesture_enabled = false;
bool remote_deepsleep_enabled = false;
bool remote_soft_reset_enabled = false;
bool remote_special_mode_enabled = false;
volatile bool remote_link_encrypted = false;
volatile bool remote_block_keycode_enabled = false;
volatile bool remote_firmware_updating = false;
volatile bool remote_vcmd_mouse_calibrating = false;

void * remote_MP_bd_addr = NULL;

uint8_t remote_vbat = 100;

#if defined(DD_SRC)
extern bool IsWakeGpioProcess;
#endif

RC_SLEEP_CTRL remote_sleep_disable =
{
  .reg  = 0,
};

ble_addr_t ble_bonded_peer;
ble_addr_t ble_current_peer;

uint16_t ble_conn_handle;
uint16_t ble_conn_interval = 100;
uint16_t ble_slave_latency;

bool remote_check_is_device_bonded(ble_addr_t *addr)
{
    return BLE_gap_sm_is_device_bonded(addr, NULL);
}

void remote_check_bt_bonding(void)
{
    remote_bt_bonded = BLE_gap_sm_get_last_paired_device(&ble_bonded_peer);

    printf("check bt bonding: %s.\n", (remote_bt_bonded)?" bonded" :"not bonded");
}

void remote_ble_adv_scan_cb(bool isuccess, uint8_t err_code)
{
    printf("set scan data %s\n", isuccess ? "ok" : "fail");

    remote_bt_inited = true;
    BT_Log_Enable(0);
}

static void remote_ble_set_pub_addr_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = {
#ifdef RC_HOST_1
        HOST_1_SCAN_DATA
#else
        #if defined(DEMO_HOST_HP7)
        0x08, 0x09, 'B' , 'L' , 'E' , ' ', 'R', 'M', 'C'
        #elif defined(DD_SRC)
        0x0B, 0x09, 'A' , 'i' , 'r' , 'o', 'h', 'a', ' ', 'R', 'M', 'C'
        #else
        0x0B, 0x09, 'S' , 'D' , 'K' , '-', 'R', 'e', 'm', 'o', 't', 'e'
        #endif // DD_SRC
#endif
    };
    printf("set rand address %s\n", isuccess ? "ok" : "fail");

    ble_gap_scan_data_set(ad, sizeof(ad), remote_ble_adv_scan_cb);
}

static bool remote_update_connection_interval(void)
{
    static uint8_t noise = 0;

    ble_gap_conn_params_t conn = {
        rc_cfg.IDEAL_CONN_INTERVAL, rc_cfg.IDEAL_CONN_INTERVAL,
        rc_cfg.IDEAL_SLAVE_LATENCY + (noise++&0x03),
        MIN(rc_cfg.IDEAL_CONN_INTERVAL*(rc_cfg.IDEAL_SLAVE_LATENCY+1), 0xC80),
        0, 0
    };

    if(ble_gap_conn_param_update(ble_conn_handle, &conn))
    {
        printf("invalid connection handle, connection might be disconnected already \n");
        return false;
    }
    else
    {
        printf("negotiating connection interval\n");
        return true;
    }
}

static void remote_connection_security_update(bt_evt_t *evt)
{
    if(evt->evt.sm_evt.params.conn_sec_update.status == 0)
    {
        remote_link_encrypted = true;
        printf("link encrypted!!\n");

        OS_delay_ms(30);
        remote_block_keycode_enabled = false;
    }
    else
    {
        printf("security update fail\n");
    }
}

static void remote_auth_status_update(bt_evt_t *evt)
{
    remote_check_bt_bonding();
}

static void remote_check_conn_param(uint32_t id)
{
    printf("interval= %d, latency= %d.\n",ble_conn_interval, ble_slave_latency);

    if( ble_conn_interval > (rc_cfg.IDEAL_CONN_INTERVAL+5) ||
       (ble_slave_latency < rc_cfg.IDEAL_SLAVE_LATENCY) )
    {
        printf("Connection parameter is NOT ideal.\n");

        if(remote_update_connection_interval())
            #if defined(RC_IRTX) || defined(RC_IRRX)
            AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 3000 * 8, remote_check_conn_param);
            #else
            AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 3000, remote_check_conn_param);
            #endif
    }
    else
        printf("Connection parameter is ideal. \n");
}

static void remote_bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;

        if(remote_MP_bd_addr)
            memcpy(addr.addr, remote_MP_bd_addr, 6);
        else
            memcpy(addr.addr, "\xAA\x66\x55\x66\xEE\xFF", 6);

        ble_gap_address_set(&addr, remote_ble_set_pub_addr_cb);


        printf("remote BT inited: tick = %d\n",DRV_TMR32B0_TickGet());

        remote_check_bt_bonding();
    }
    else
    {
        printf("*****************remote BT init fail*********************\n");
        while(1);
    }
}

static void remote_connection_complete_handler(bt_evt_t *evt)
{
    ble_gap_evt_connected_t* p = &evt->evt.gap_evt.params.connected;

    if(p->status)
    {
        printf("failed to connected with directed advertising\n");
        printf("dir_adv_TO, switch to bonded undir adv \n");
        remote_bonded_undir_adv();
        return;
    }

    ble_conn_handle = p->conn_handle;
    ble_slave_latency = p->connLatency;
    ble_conn_interval = p->connInterval;

    printf("\n\t+---------BLE connected. Dump connection parameter:---------+\n");
    printf("\t| Connection handle   | 0x%04X                              |\n", ble_conn_handle);
    printf("\t| Peer address        | %02X:%02X:%02X:%02X:%02X:%02X                   |\n",p->peer_addr.addr[5],p->peer_addr.addr[4],p->peer_addr.addr[3],p->peer_addr.addr[2],p->peer_addr.addr[1],p->peer_addr.addr[0]);
    printf("\t| Peer address type   | %s                              |\n", (p->peer_addr.addr_type==0)?"Public":"Random");
    printf("\t| Connection interval | %5d (unit:1.25ms)                 |\n",ble_conn_interval);
    printf("\t| Slave latency:      | %5d                               |\n",ble_slave_latency);
    printf("\t| Supervision timeout | %5d (unit:  10ms)                 |\n",p->supervisionTimeout);
    printf("\t+---------End of BLE connection parameter information ------+\n\n");

    remote_ble_status = BLE_CONNECTED;
    remote_led_advertising(A_LED_DISABLE);

    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.GENERAL);

    ble_current_peer = evt->evt.gap_evt.params.connected.peer_addr;

    if(remote_bt_bonded)
    {
        remote_block_keycode_enabled = true;
    }
    else
    {
        remote_block_keycode_enabled = false;
    }

    if(remote_bt_bonded)
    {
        printf("This device is bonded.\n");
        remote_update_connection_interval();
    }
    else
    {
        printf("This device is not bonded, wait for a few seconds and check connection parameter.\n");
		#if defined(RC_IRTX) || defined(RC_IRRX)
		AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 4000 * 8, remote_check_conn_param);
		#else
        AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 4000, remote_check_conn_param);
		#endif
    }

    if(evt->evt.gap_evt.params.connected.supervisionTimeout == 0xABC)
    {
        printf("Enter special mode 1, disable LED and enable forced report.\n");
        remote_special_mode_enabled = true;
        remote_led_deinit();
    }

    if(evt->evt.gap_evt.params.connected.supervisionTimeout == 0xAAA)
    {
        printf("Enter special mode 2, enable forced report.\n");
        remote_special_mode_enabled = true;
    }
}

static void remote_connection_disconnect_handler(bt_evt_t *evt)
{
    if(remote_deepsleep_enabled)
    {
        printf("system ready to power off\n");
        return;
    }

    if(remote_firmware_updating)
    {
        remote_firmware_updating = false;
        remote_led_rc_function_disable(F_LED_DFU_OTA);
    }

    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.GENERAL);
    AB_Timer_AlertUnset(TIMER_ID_CONN_UPDATE_CONTROL);
    remote_ble_status = BLE_IDLE;
    remote_link_encrypted = false;

    if(1)
    {
        uint8_t *bd = ble_current_peer.addr;
        printf("BLE device disconnected: reason = 0x%X \n",evt->evt.gap_evt.params.disconnected.reason);
        printf("type = %d ,addr = %02X:%02X:%02X:%02X:%02X:%02X\n",ble_current_peer.addr_type,bd[0],bd[1],bd[2],bd[3],bd[4],bd[5]);
    }

    remote_check_bt_bonding();


    if(remote_bt_bonded)
    {
        printf("peer device already bonded, do nothing\n");
    }
    else
    {
        printf("peer device not bonded yet, send ADV_IND again\n");
        remote_normal_undir_adv();
    }

    if(remote_mouse_enabled)
    {
        remote_mouse_request_to_disable();
    }

    if(remote_mic_status != MIC_REMOTE_DISABLED)
    {
        remote_mic_local_disable();
        remote_mic_status = MIC_REMOTE_DISABLED;
    }

}

static void remote_connection_parm_update_handler(bt_evt_t *evt)
{
    ble_gap_evt_conn_param_update_t* p = &evt->evt.gap_evt.params.conn_param_update;

    if(p->status)
    {
        printf("Connection update rejected.\n");
    }
    else
    {
        ble_slave_latency = p->slave_latency;
        ble_conn_interval = p->conn_interval;

        printf("\n\t+~~~~~BLE connection parameter updated. Dump parameter:~~~~~+\n");
        printf("\t| Connection handle   | 0x%04X                              |\n", ble_conn_handle);
        printf("\t| Connection interval | %5d (unit:1.25ms)                 |\n",ble_conn_interval);
        printf("\t| Slave latency:      | %5d                               |\n",ble_slave_latency);
        printf("\t| Supervision timeout | %5d (unit:  10ms)                 |\n",p->conn_sup_timeout);
        printf("\t+~~~~~~~~ End of BLE connection parameter information ~~~~~~+\n\n");
    }
    #if defined(RC_IRTX) || defined(RC_IRRX)
    AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 5000 * 8, remote_check_conn_param);
    #else
    AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, 5000, remote_check_conn_param);
    #endif
}

static void remote_sm_set_security_param(void)
{
    ble_sm_security_param_t sm_param =
    {
        SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
        SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
        SM_BONDING,                     //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
        16,                             //uint8_t encKeySize;
        0x03,                           //uint8_t keyDistr;
        0x07,                           //uint8_t respKeyDistr;
    };

    BLE_gap_sm_set_security_param(ble_conn_handle, BLE_SM_STATUS_SUCCESS, &sm_param);
}

void remote_bt_evt_hdl(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            remote_bt_inited_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECTED:
            remote_connection_complete_handler(evt);
            break;
        case BLE_GAP_EVT_DISCONNECTED:
            remote_connection_disconnect_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECT_PARM_UPDATE:
            remote_connection_parm_update_handler(evt);
            break;
        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
            remote_sm_set_security_param();
            break;
        case BLE_SM_EVT_CONN_SEC_UPDATE:
            remote_connection_security_update(evt);
            break;
        case BLE_SM_EVT_AUTH_STATUS:
            remote_auth_status_update(evt);
            break;
        case BLE_GATT_EVT_MTU_EXCHANGED:
            printf("\nMTU exchanged to %3d\n",evt->evt.gatt_evt.gatt.mtu_exchanged.new_mtu);
            break;
    }
}

void remote_BtActivated(void)
{
    remote_ble_status = BLE_ADVERTISING;

    remote_check_bt_bonding();

    if(remote_bt_bonded)
    {
        printf("bonded \n");

        //if((ble_bonded_peer.addr[5]&0xC0) == 0x40)//RPA
        if(1)   // always use undirected ADV to reconnect, asked by Ken
            remote_bonded_undir_adv();
        else
            remote_dir_adv();
    }
    else
    {
        printf("not bonded \n");

        remote_normal_undir_adv();

    }
}

void remote_CheckBleState(void)
{
    switch(remote_ble_status)
    {
        case BLE_IDLE:
            //do nothing, wait key press to activate advertising
            break;
        case BLE_ACTIVATED:
            remote_BtActivated();
            break;
        case BLE_ADVERTISING:
            break;
        case BLE_WOBLE:
            remote_wake_up_over_ble_adv();
            break;
        case BLE_CONNECTED:
            break;
    }
}

void _remote_soft_reset_routine(void)
{
    ndis_enter_critical();

    Drv_1602Reset(true);
    DRV_KeyScan_Dis();
    DRV_TMR32B0_Disable();

    printf("ready to soft reset\n");
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);

    AB_CLK_Switch(AB_CLK_16M, true);

    DRV_Pwr_EnterMode(POWER_MODE_SW_RST);

    while(1);
}

void _remote_deep_sleep_routine(void)
{

    uint8_t i;

    printf("starting deep_sleep_routine \n");

    remote_mouse_sensor_disable();
    DRV_Mic_Disable();

    AB_Timer_Disable();

    DRV_TMR32B0_NotifyDisable(REMOTE_MIC_MOUSE_TIMER);
    DRV_TMR32B0_NotifyDisable(REMOTE_ADV_CTRL_TIMER);
    //DRV_TMR32B0_NotifyDisable(3);    ID 3 not used yet


    remote_keyscan_column_interrupt_enable();

    if(remote_ble_status == BLE_CONNECTED)
    {
        printf("request to disconnect\n");
        ble_gap_disconnect(ble_conn_handle, HCI_ERRCODE_REMOTE_DEVICE_TERMINATED_CONNECTION_DUE_TO_POWER_OFF);
        OS_delay_ms(150);
    }

    printf("\n**************************** Dump 3WireReg Info ****************************\n");

    for(i=1; i<0x53;i++)
    {
        printf("Reg 0x%02X = 0x%04X, ",i, SYS_3WireRead(i));

        if(!(i%4))
            printf("\n");
    }
    printf("\n**************************** Dump 3WireReg Info ****************************\n");

    printf("ready to deep sleep\n");
    #if defined(DD_SRC)
    DRV_Gpio_DirSet(MTD_SPI_GRP_MASK, false);
    #else
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);
    #endif

    ndis_enter_critical();
    AB_CLK_Switch(AB_CLK_16M, true);
    Drv_1602Reset(true);
    ndis_exit_critical();

    DRV_Pwr_EnterMode(POWER_MODE_DEEP_SLEEP);

    while(1);
}

void _remote_sleep_routine(void)
{
    if(AB_PWR_Sleep(1))
    {
        AB_SYS_WaitIClear();
    }
}

void remote_check_power_flag(void)
{

    if(remote_soft_reset_enabled)
    {
        _remote_soft_reset_routine();
    }
    #if defined(DD_SRC)
    if(remote_deepsleep_enabled && !IsWakeGpioProcess)
    #elif (defined(RC_IRTX) || defined(RC_IRRX))
    if(remote_deepsleep_enabled &&(!(remote_sleep_disable.field.ir_on || remote_sleep_disable.field.ir_learning)))
    #else
    if(remote_deepsleep_enabled)
    #endif
    {
        _remote_deep_sleep_routine();
    }

    if(!remote_sleep_disable.reg)
    {
        _remote_sleep_routine();
    }
}

void remote_mainloop(void)
{
    if(remote_bt_inited)
    {
        remote_CheckSingleKey();

        #if defined(RC_IRTX)
        remote_CheckIRSingleKey();
        #endif
        #if defined(RC_IRRX)
        remote_CheckIRStatus();
        #endif
		
        remote_CheckComboKey();
        remote_CheckBleState();

        fRemote_mouse_loop();
        fRemote_mic_loop();

        remote_check_power_flag();

        DRV_WDT_Kick();
    }
}

void _remote_enable_deep_sleep(uint32_t id)
{
    #if !defined(RC_KEEP_ALIVE)
    remote_deepsleep_enabled = true;
    #endif
}

void remote_reset_deep_sleep_timer(uint32_t ms)
{
    if(remote_firmware_updating)
        return;

    #if defined(RC_IRTX) || defined(RC_IRRX)
    AB_Timer_AlertSet(TIMER_ID_DEEPSLEEP_CONTROL, false, ms * 8, _remote_enable_deep_sleep);
    #else
    AB_Timer_AlertSet(TIMER_ID_DEEPSLEEP_CONTROL, false, ms, _remote_enable_deep_sleep);
    #endif
}

void remote_check_boot_reason(void)
{
    switch(boot.from)
    {
        case BOOT_WDT_RST:
            printf("0000000000000000000000000000000\n");
            printf("Boot from watch dog reset!!!!!!\n");
            break;
        case BOOT_POWER_OFF:
            printf("1111111111111111111111111111111\n");
            printf("Boot from power off\n");
            break;
        case BOOT_DEEP_SLEEP:
            printf("2222222222222222222222222222222\n");
            printf("Boot from deep sleep\n");
            break;
        case BOOT_SW_RST:
            printf("3333333333333333333333333333333\n");
            printf("Boot from soft reset\n");
            printf("Activate adv automatically\n");
            remote_ble_status = BLE_ACTIVATED;
            break;
        default:
            printf("4444444444444444444444444444444\n");
            printf("Boot from else: reason = %d\n", boot.from);

    }
}

uint8_t remote_vbat_batlv_convert(uint16_t v_in_10mV)
{
    switch(v_in_10mV)
    {
        case 330 ... 65535:
            return 100;
        case 240 ... 329:
            return 40+((v_in_10mV-240)*60/90);
        case 220 ... 239:
            return 20+((v_in_10mV-220)*20/20);
        case 200 ... 219:
            return 10+((v_in_10mV-200)*10/20);
        case 180 ... 199:
            return  0+((v_in_10mV-180)*10/20);
        case   0 ... 179:
            return 0;
    }
}

void remote_forbid_function_by_battery(uint8_t bat_lv)
{
    memset(&rc_ffunc,0,sizeof(rc_ffunc));

    switch(bat_lv)
    {
        case 41 ... 255:
            break;
        case 21 ... 40:
            rc_ffunc.OTA        = 1;
            break;
        case 11 ... 20:
            rc_ffunc.OTA        = 1;
            rc_ffunc.bonding    = 1;
            rc_ffunc.air_mouse  = 1;
            rc_ffunc.microphone = 1;
            break;
        case 0 ... 10:
            rc_ffunc.OTA        = 1;
            rc_ffunc.bonding    = 1;
            rc_ffunc.air_mouse  = 1;
            rc_ffunc.microphone = 1;
            rc_ffunc.normal_led = 1;
            break;
    }

    if(rc_ffunc.OTA)
        OTA_change_permission(OTA_DISABLED);
    else
        OTA_change_permission(OTA_ENABLED);

    if(rc_ffunc.normal_led)
        remote_led_rc_function_enable(F_LED_LOW_BAT);
    else
        remote_led_rc_function_disable(F_LED_LOW_BAT);
}

void _remote_check_battery_level(uint32_t id)
{
    if(remote_mic_status != MIC_REMOTE_DISABLED)
    {
        printf("Microphone is currently working, skip VBAT checking temporarily.\n");
    }
    else
    {

        int16_t Vpercentage;
        uint16_t voltage;

        voltage = AB_ADC_Get_Voltage(VBAT);
        Vpercentage = remote_vbat_batlv_convert(voltage);

        printf("\n VBat = %dmV , Battery Level = %d%%\n",voltage*10,Vpercentage);

        if((uint8_t)Vpercentage != remote_vbat)
        {
            remote_vbat = (uint8_t)Vpercentage;
            BAS_update_battery_level(remote_vbat, true);
            remote_forbid_function_by_battery(remote_vbat);
            remote_led_change_brightness_by_bat_lvl(remote_vbat);

            printf("disabled function: %s %s %s %s %s\n"
                    ,(rc_ffunc.OTA)?"OTA":""
                    ,(rc_ffunc.bonding)?"bonding":""
                    ,(rc_ffunc.air_mouse)?"air mouse":""
                    ,(rc_ffunc.microphone)?"microphone":""
                    ,(rc_ffunc.normal_led)?"normal_led":""
            );
        }
        else
        {
            BAS_update_battery_level(remote_vbat, false);
        }
    }
}

void remote_batlv_init(void)
{
    _remote_check_battery_level(0);
}

void remote_timer_init(void)
{
    #if defined(RC_IRTX) || defined(RC_IRRX)
    AB_Timer_AlertSet(TIMER_ID_CHECK_VBAT_VALUE, true, 8000 * 8, _remote_check_battery_level);
    #else
    AB_Timer_AlertSet(TIMER_ID_CHECK_VBAT_VALUE, true, 8000, _remote_check_battery_level);
    #endif
    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.POWER_ON);
}

void remote_io_init(void)
{
    DRV_Gpio_PullSet( (1<<RC_BOOST_CONVERTER_IO), PULL_DOWN);
#ifdef DEMO_BOARD_C076
    mtd_set_power(24);
#endif

    mtd_IOinit();
}

void remote_mp_init(void)
{
    MP_PARAMETER_STRU* param;

    param = AB_SECTOR_GetMpParameter(false);

    if(param)
    {
        remote_MP_bd_addr = &param->BDaddr;
    }
}

void remote_mic_dbg_init(void)
{
    #if defined(SYSTEM_48M)
    rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
    rc_bsp_init_parm.uart_parm->uart1_baud = 3000000L;
	#else
    rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_16M;
    rc_bsp_init_parm.uart_parm->uart1_baud = 1333333L;
	#endif // SYSTEM_48M
	
    rc_bsp_init_parm.printf_parm = NULL;
    rc_bsp_init_parm.mp_parm->uart_port = uart_inss;
}

void remote_usage_dependent_init(void)
{
    #ifdef RC_HOST_1
    REMOTE_HOST_1_INIT
    #endif

    #if defined (RC_MIC_DBG)
    remote_mic_dbg_init();
    #endif

    #if defined(DD_SRC)
	rc_bsp_init_parm.printf_parm = NULL;
    #endif // DD_SRC
	
    #if defined(DEMO_HOST_HP7)
	rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
	rc_cfg.CODEC_SEL = CODEC_1_4_G726;
	rc_cfg.IDEAL_CONN_INTERVAL = 13;
	rc_cfg.IDEAL_SLAVE_LATENCY = 14;
    #elif defined(DEMO_TV_BOX)
    rc_cfg.AUDIO_HID = 0;
    #endif

    #if defined(SYSTEM_48M)
	rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
    #endif // SYSTEM_48M
	
    #if defined(CLOCK_XO16M)
    rc_bsp_init_parm.clk_parm->isrc = false;
    #endif // CLOCK_XO16M

	#if defined(CODEC_G726)
	rc_cfg.CODEC_SEL = CODEC_1_4_G726;
	#endif // CODEC_G726

    #if defined(CODEC_OPUS_ONLY)
	rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
	rc_cfg.CODEC_SEL = CODEC_1_8_OPUS;
    #endif
}

void remote_init_before_BT(void)
{
    // TODO: need do code review
    #if defined(RC_IRTX) || defined(RC_IRRX)
    AB_Timer_Enable_Ext(8000, TMR32B0_125US);
    #else
    AB_Timer_Enable_Ext(1000, TMR32B0_1MS);
    #endif

    remote_mp_init();
    remote_usage_dependent_init();
}

void remote_init(void)
{
    remote_led_init();
    remote_batlv_init();
    remote_timer_init();
    remote_service_init();

    // init IR before init button
    #if defined(RC_IRTX)
    remote_irtx_init();
    #endif
    #if defined(RC_IRRX)
    remote_irrx_init();
    #endif

    remote_button_init();
    remote_io_init();

    #if defined(DD_SRC)
    remote_gpio_init();
    #endif

    remote_check_boot_reason();

    SYS_3WireBitWrite(0x15, 0x0020);    // set REGEN no pull to eliminate small leakage
}
