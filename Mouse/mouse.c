/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ab_uart.h"
#include "ab_assert.h"
#include "ab_clk.h"
#include "mouse.h"
#include "stdarg.h"
#include "ab_log.h"
#include "Paw3205db_spi.h"
#include "Drv_pinmux.h"

BOOT_REASON boot;
MS_BLE_STATUS mouse_ble_status = BLE_IDLE;

bool mouse_motion_wakeup = false;
bool mouse_bt_inited = false;
bool mouse_bt_bonded = false;
bool mouse_sensor_reset = false;
bool mouse_inteface_enabled = false;
bool mouse_deepsleep_enabled = false;
bool mouse_soft_reset_enabled = false;
volatile bool mouse_fw_updating = false;
volatile bool mouse_waiting_mp_procedure = true;
bool bTimeout = false;
bool mouse_deepsleep_ledoff = false;
bool bMouse_2nd_update = false;



void * mouse_MP_bd_addr = NULL;
void * mouse_MP_bt_data = NULL;
void * mouse_CFG_bt_data = NULL;

extern uint16_t uiWheel;

#define MS_IDEAL_CONN_INTERVAL      		75//Unit: 0.1 msec
#define MS_IDEAL_SLAVE_LATENCY       		64// Slave Latency = ( SUPERVISION_TIMEOUT/ (Interval*2) ) - 1
#define CONNECTION_SUPERVISION_TIMEOUT 	  	300//Connection Supervision Timeout in 10

#define MAX_CONN_INTERVAL		20//msec
#define MIN_CONN_LATENCY		26

#define REASONABLE_CONN_INTERVSL 	50
#define UNREASONABLE_CONN_INTERVSL 	100

#define TIME_UPDATE_CONTROL		4000
#define TIME_UPDATE_BONDED		100 //50 msec

//#define IRRX_TEST

MS_SLEEP_CTRL mouse_sleep_disable =
{
  .reg  = 0,
};

ble_addr_t ble_bonded_peer;
ble_addr_t ble_current_peer;

uint16_t ble_conn_handle;
uint16_t ble_conn_interval;
uint16_t ble_slave_latency;

extern uint8_t IRTX_control;


bool mouse_check_is_device_bonded(ble_addr_t *addr)
{
    return BLE_gap_sm_is_device_bonded(addr, NULL);
}

void mouse_check_bt_bonding(void)
{
    mouse_bt_bonded = BLE_gap_sm_get_last_paired_device(&ble_bonded_peer);
}

void mouse_ble_adv_scan_cb(bool isuccess, uint8_t err_code)
{
    MS_PRINT("set scan data %s\n", isuccess ? "ok" : "fail");

    mouse_bt_inited = true;
    BT_Log_Enable(0);

    ab_airoha_vcmd_enable();
}

static void mouse_ble_set_pub_addr_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = 
    {
        0x0D, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, MOUSE_NAME
    };

    MS_PRINT("set rand address %s\n", isuccess ? "ok" : "fail");

    ble_gap_scan_data_set(ad, sizeof(ad), mouse_ble_adv_scan_cb);
}

static bool mouse_update_connection_interval(void)
{
    static uint8_t noise = 0;

    ble_gap_conn_params_t conn = {
        MS_IDEAL_CONN_INTERVAL*4/50, 
        MS_IDEAL_CONN_INTERVAL*4/50,
        MS_IDEAL_SLAVE_LATENCY + (noise++&0x03),
        CONNECTION_SUPERVISION_TIMEOUT,
        0, 0
    };

    MS_PRINT_COLOR( MAGENTA, "::Update Latency %d\n", MS_IDEAL_SLAVE_LATENCY+noise-1 );

    if(ble_gap_conn_param_update(ble_conn_handle, &conn))
    {
        MS_PRINT("invalid connection handle, connection might be disconnected already \n");
        return false;
    }
    else
    {
        MS_PRINT("negotiating connection interval\n");
        return true;
    }
}

static bool mouse_update_2nd_interval(void)
{
    static uint8_t noise2 = 0;

    ble_gap_conn_params_t conn = {
        10, 
        10,
        59 + (noise2++&0x03),
        CONNECTION_SUPERVISION_TIMEOUT,
        0, 0
    };

    MS_PRINT_COLOR( MAGENTA, "::mouse_update_2nd_interval %d\n", MS_IDEAL_SLAVE_LATENCY+noise2-1 );

    if( ble_gap_conn_param_update(ble_conn_handle, &conn))
    {
        MS_PRINT("invalid connection handle, connection might be disconnected already \n");
        return false;
    }
    else
    {
        MS_PRINT("negotiating connection interval\n");
        return true;
    }
}

static void mouse_check_2nd_interval(uint32_t id)
{
    
    static uint8_t checkCnt2 = 0;
   
    MS_PRINT_RED("Last interval= %d, latency= %d.\n",ble_conn_interval, ble_slave_latency);

    if ( ble_conn_interval > REASONABLE_CONN_INTERVSL )
    {
        MS_PRINT_COLOR( WHITE, "2nd parameter is NOT ideal.\n" );

        if ( ++checkCnt2 > 3 )
        {
            MS_PRINT_COLOR( WHITE, "Don't update interval.\n" );
			mouse_reset_deep_sleep_timer( 1000 );
            return;
        }

        if ( mouse_update_2nd_interval() )
       	{
            AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_2nd_interval);
       	}
    }
    else
    {	
        MS_PRINT_RED("2nd parameter is ideal.\n");
		mouse_led_advertising( A_LED_DISABLE );
		_mouse_SendPos( 1,0 );
		mouse_reset_deep_sleep_timer( MS_DEEP_SLEEP_TO_MOUSE_ON );		
   	}
}


static void mouse_check_conn_param(uint32_t id)
{
    
    static uint8_t checkCnt = 0;
	bool ret = false;
    
    MS_PRINT_RED("interval= %d, latency= %d.\n",ble_conn_interval, ble_slave_latency);

    if ( ( ble_conn_interval > MAX_CONN_INTERVAL ) || 
        ( ble_slave_latency < MIN_CONN_LATENCY ) )
    {
        MS_PRINT_COLOR( WHITE, "Connection parameter is NOT ideal.\n" );

        if ( ++checkCnt > 3 )
        {
        	bMouse_2nd_update = true;
            MS_PRINT_COLOR( WHITE, "Update interval 10ms\n" );
            AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_2nd_interval );
            return;
        }

		ret = mouse_update_connection_interval();
			
        if ( ret )
            AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_conn_param);
    }
    else
    {	
        checkCnt = 0;
        MS_PRINT_RED("Connection parameter is ideal.\n");
		mouse_led_advertising( A_LED_DISABLE );
		_mouse_SendPos( 1,0 );
		mouse_reset_deep_sleep_timer( MS_DEEP_SLEEP_TO_MOUSE_ON );		
   	}
}

static void mouse_bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;

        if ( mouse_MP_bd_addr )
            memcpy(addr.addr, mouse_MP_bd_addr, 6);
        else
            memcpy(addr.addr, "\xBF\x6A\x46\x48\xEE\xFF", 6);//BD Address


        ble_gap_address_set(&addr, mouse_ble_set_pub_addr_cb);

        MS_PRINT("mouse BTinited: tick =%d\n",DRV_TMR32B0_TickGet());

        mouse_check_bt_bonding();
    }
    else
    {
        MS_PRINT("*****************mouse BT init fail*********************\n");
        while(1);
    }
}

static void mouse_connection_complete_handler(bt_evt_t *evt)
{
    if(evt->evt.gap_evt.params.connected.status)
    {
        MS_PRINT("failed to connected with directed advertising\n");
        MS_PRINT("dir_adv_TO, switch to bonded undir adv \n");
        mouse_bonded_undir_adv();
        return;
    }


    ble_conn_handle = evt->evt.gap_evt.params.connected.conn_handle;
    ble_slave_latency = evt->evt.gap_evt.params.connected.connLatency;
    ble_conn_interval = evt->evt.gap_evt.params.connected.connInterval;
    ble_conn_interval *= 5;
    ble_conn_interval>>= 2;

    MS_PRINT("BLE connected: connection interval = %d ms\n",ble_conn_interval);
    MS_PRINT("BLE connected: slave latency = %d \n",ble_slave_latency);
    mouse_ble_status = BLE_CONNECTED;
    mouse_led_advertising( A_LED_NEGOTIATE_CONN );

#if 0//Brian need check again
    mouse_reset_deep_sleep_timer( MS_DEEP_SLEEP_TO_GENERAL);
#endif

    ble_current_peer = evt->evt.gap_evt.params.connected.peer_addr;

    #if 0
    {
        uint8_t *bd = ble_current_peer.addr;
        MS_PRINT_COLOR( BROWN , "BLE device connected: type = %d ,addr = ",ble_current_peer.addr_type );
        MS_PRINT("%02X:%02X:%02X:%02X:%02X:%02X\n",bd[0],bd[1],bd[2],bd[3],bd[4],bd[5]);
    }
	#endif

    if ( mouse_bt_bonded )
    {
        MS_PRINT_COLOR( RED, "This device is bonded.=============================\n");
        AB_Timer_AlertSet( TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_BONDED, mouse_check_conn_param );
    }
    else
    {
        MS_PRINT_COLOR( RED, "This device is not bonded, wait three seconds and check connection parameter.\n");
        AB_Timer_AlertSet( TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_conn_param );
    }
}

static void mouse_connection_disconnect_handler(bt_evt_t *evt)
{
	uint8_t reason;

    mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_GENERAL);
    AB_Timer_AlertUnset(TIMER_ID_CONN_UPDATE_CONTROL);
    mouse_ble_status = BLE_IDLE;

    if(1)
    {
        uint8_t *bd = ble_current_peer.addr;
        MS_PRINT("BLE device disconnected: reason = 0x%X \n",evt->evt.gap_evt.params.disconnected.reason);
        MS_PRINT("type = %d ,addr = %02X:%02X:%02X:%02X:%02X:%02X\n",ble_current_peer.addr_type,bd[0],bd[1],bd[2],bd[3],bd[4],bd[5]);
    }

    mouse_check_bt_bonding();
	reason = evt->evt.gap_evt.params.disconnected.reason;


	#if 0
    if(mouse_bt_bonded)
    {
        MS_PRINT_RED("peer device already bonded, do nothing\n");
    }
    else
    {
        MS_PRINT_RED("peer device not bonded yet, send ADV_IND again\n");
    }
	#endif

	if ( ( reason == HCI_ERRCODE_REMOTE_USER_TERMINATED_CONNECTION ) ||
		 ( reason == HCI_ERRCODE_CONNECTION_TIMEOUT ) )
	{
		MS_PRINT_COLOR( WHITE, "REMOTE_USER_TERMINATE\n");
		//avoid int 
		DRV_Gpio_IntDis( PIN_MOTSWK_PAW3205DB );
		DRV_Gpio_IntDis( GPIO_CLICK_L );
		DRV_Gpio_IntDis( GPIO_CLICK_R );
		DRV_Gpio_IntDis( GPIO_CLICK_M );
        _mouse_enable_deep_sleep(1);
    }else
    {
        mouse_normal_undir_adv();
    }



}

static void mouse_connection_parm_update_handler(bt_evt_t *evt)
{
    ble_slave_latency = evt->evt.gap_evt.params.conn_param_update.slave_latency;
    ble_conn_interval = evt->evt.gap_evt.params.conn_param_update.conn_interval;
    ble_conn_interval *= 5;
    ble_conn_interval>>= 2;

    MS_PRINT("BLE connection updated: connection interval = %d ms\n",ble_conn_interval);
    MS_PRINT("BLE connection updated: slave latency = %d \n",ble_slave_latency);

	if ( ble_conn_interval > UNREASONABLE_CONN_INTERVSL )
	{
		bMouse_2nd_update = true;
	}

	if ( bMouse_2nd_update )
	{
	    if (  ble_conn_interval < REASONABLE_CONN_INTERVSL )
	   	{
	   		bMouse_2nd_update = false;
	        MS_PRINT_COLOR( CYAN, "Latency Update OK!\n");
			mouse_sensor_reset = true;
	        mouse_inteface_enabled = true;
	        _mouse_enable();
	   	}else
	    {
	        MS_PRINT_COLOR( CYAN, "Last Not good interval, check again........\n");
		    AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_2nd_interval );
	    }

		return;
	}

    //Removed compare latency for if negotiation NOT success
    if ( ( ble_conn_interval > MAX_CONN_INTERVAL ) || 
        ( ble_slave_latency < MIN_CONN_LATENCY ) )
    {
        MS_PRINT_COLOR( CYAN, "Not good interval, check again........\n");
	    AB_Timer_AlertSet(TIMER_ID_CONN_UPDATE_CONTROL, false, TIME_UPDATE_CONTROL, mouse_check_conn_param);
    }else
   	{
        MS_PRINT_COLOR( CYAN, "Latency Update OK!\n");
		mouse_sensor_reset = true;
        mouse_inteface_enabled = true;
        _mouse_enable();
   	}	
	
}

static void mouse_sm_set_security_param(void)
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

void mouse_bt_evt_hdl(bt_evt_t *evt)
{
    MS_PRINT_COLOR( WHITE, "mouse_bt_evt_hdl = 0x%X\n" , evt->evt_id );
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            mouse_bt_inited_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECTED:
            mouse_connection_complete_handler(evt);
            break;
        case BLE_GAP_EVT_DISCONNECTED:
            mouse_connection_disconnect_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECT_PARM_UPDATE:
            mouse_connection_parm_update_handler(evt);
            break;
        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
            mouse_sm_set_security_param();
            break;

        case BLE_SM_EVT_CONN_SEC_UPDATE:
            //MS_PRINT_COLOR( MAGENTA, "BLE_SM_EVT_CONN_SEC_UPDATE\n" );
            break;

            
    }
}

void mouse_BtActivated(void)
{
    mouse_ble_status = BLE_ADVERTISING;

    if(mouse_bt_bonded)
    {
        MS_PRINT("bonded \n");

        //if((ble_bonded_peer.addr[5]&0xC0) == 0x40)//RPA
        if(1)   // always use undirected ADV to reconnect, asked by Ken
            mouse_bonded_undir_adv();
        else
            mouse_dir_adv();
    }
    else
    {
        MS_PRINT("not bonded \n");

        mouse_normal_undir_adv();

    }
}

void mouse_CheckBleState(void)
{
    switch(mouse_ble_status)
    {
        case BLE_IDLE:
            //do nothing, wait key press to activate advertising
            break;
        case BLE_ACTIVATED:
            mouse_BtActivated();
            break;
        case BLE_ADVERTISING:
            break;
        case BLE_WOBLE:
            mouse_wake_up_over_ble_adv();
            break;
        case BLE_CONNECTED:
            break;
    }
}

void _mouse_soft_reset_routine(void)
{

    Drv_1602Reset(true);
    DRV_TMR32B0_Disable();

    MS_PRINT("ready to soft reset\n");
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);

    OS_delay_ms(10);

    ndis_enter_critical();

    AB_CLK_Switch(AB_CLK_16M, true);
    DRV_Pwr_EnterMode(POWER_MODE_SW_RST);

    while(1);
}

void _mouse_deep_sleep_routine(void)
{

    uint8_t i;

    MS_PRINT_RED("starting deep_sleep_routine \n");

    // Brian : Turn off LED power will cause can not be woken up by PIN_MOTSWK_PAW3205DB 
    if ( mouse_deepsleep_ledoff )
		SensorPowerDown( SENSOR_POWERDOWN_LED_OFF );
	else
        SensorPowerDown( SENSOR_POWERDOWN_LED_ON );

	//Enable int for wake-up, for w/o pairing and direct into deep-sleep	
    DRV_Gpio_IntReg( GPIO_CLICK_M, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntReg( GPIO_CLICK_R, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntReg( GPIO_CLICK_L, EDGE_NEG, IntGpioMouse );
	DRV_Gpio_IntReg( PIN_MOTSWK_PAW3205DB, EDGE_NEG, IntGpioMouse );
	
    DRV_Gpio_IntEn( GPIO_CLICK_M );
    DRV_Gpio_IntEn( GPIO_CLICK_R );
    DRV_Gpio_IntEn( GPIO_CLICK_L );
	DRV_Gpio_IntEn( PIN_MOTSWK_PAW3205DB );

	//Disable PGUP/DN wakeup
	DRV_Gpio_WakeDis( GPIO_PAGE_UP );
	DRV_Gpio_WakeDis( GPIO_PAGE_DN );

	//Disable all timer
    AB_Timer_Disable();
    DRV_TMR32B0_NotifyDisable(MOUSE_TIMER);
    DRV_TMR32B0_NotifyDisable(MOUSE_ADV_CTRL_TIMER);
	

    MS_PRINT("\n**************************** Dump 3WireReg Info ****************************\n");

    for(i=1; i<0x53;i++)
    {
        MS_PRINT("Reg 0x%02X = 0x%04X, ",i, SYS_3WireRead(i));

        if(!(i%4))
            MS_PRINT("\n");
    }
    MS_PRINT("\n**************************** Dump 3WireReg Info ****************************\n");

    MS_PRINT("ready to deep sleep\n");
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);

    ndis_enter_critical();
    AB_CLK_Switch(AB_CLK_16M, true);
    Drv_1602Reset(true);
    ndis_exit_critical();

    DRV_Pwr_EnterMode(POWER_MODE_DEEP_SLEEP);

    while(1);
}

void _mouse_sleep_routine(void)
{
    if(AB_PWR_Sleep(1))
    {
        AB_SYS_WaitIClear();
    }
}

void mouse_check_power_flag(void)
{
    if(mouse_waiting_mp_procedure)
    {
        return;
    }


    if(mouse_soft_reset_enabled)
    {
        _mouse_soft_reset_routine();
    }

    if(mouse_deepsleep_enabled)
    {
        _mouse_deep_sleep_routine();
    }

    if(!mouse_sleep_disable.reg)
    {
#ifndef IRRX_TEST
         _mouse_sleep_routine();
#endif
    }
}

void mouse_mainloop(void)
{
    if(mouse_bt_inited)
    {
        mouse_CheckBleState();

        fMouse_loop();

        mouse_check_power_flag();

        DRV_WDT_Kick();
    }

    if ( mouse_sensor_reset )
    {
        mouse_sensor_reset = false;
        Sensor_Reset();
    }

	
}

void _mouse_enable_deep_sleep(uint32_t id)
{
    mouse_deepsleep_enabled = true;
}

void _mouse_enable_sleep( uint32_t id )
{
    MS_PRINT_COLOR( BROWN, "_mouse_enable_sleep %d\n", id );
    mouse_sleep_disable.field.mouse_on = false;	
    //Turn off timer	
    DRV_TMR32B0_NotifyDisable( MOUSE_TIMER );
	//Enable GPIO INT
    DRV_Gpio_IntReg( PIN_MOTSWK_PAW3205DB, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntEn( PIN_MOTSWK_PAW3205DB );

    DRV_Gpio_IntReg( GPIO_CLICK_L, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntReg( GPIO_CLICK_R, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntReg( GPIO_CLICK_M, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntEn( GPIO_CLICK_M );
    DRV_Gpio_IntEn( GPIO_CLICK_R );
    DRV_Gpio_IntEn( GPIO_CLICK_L );

	//wheel
//    DRV_PinMux_GrpSet( WHEEL_PIN_MASK1, PIN_GROUP_GPIO );
    DRV_Gpio_IntReg( GPIO_WHEEL_ZA, EDGE_BOTH, IntGpioMouse );
    DRV_Gpio_IntReg( GPIO_WHEEL_ZB, EDGE_BOTH, IntGpioMouse );
    DRV_Gpio_IntEn( GPIO_WHEEL_ZA );
    DRV_Gpio_IntEn( GPIO_WHEEL_ZB );
	
}
    
void mouse_reset_sleep_timer( uint32_t ms )
{
#ifndef IRRX_TEST
    mouse_sleep_disable.field.mouse_on = true;	
    AB_Timer_AlertSet( TIMER_ID_SLEEP, false, ms, _mouse_enable_sleep );
#endif	
}

void mouse_reset_deep_sleep_timer(uint32_t ms)
{
    AB_Timer_AlertSet(TIMER_ID_DEEPSLEEP_CONTROL, false, ms, _mouse_enable_deep_sleep);
}

void mouse_check_boot_reason(void)
{
  //  BOOT_REASON boot;

//    boot = DRV_Pwr_BootFrom();
    switch(boot.from)
    {
        case BOOT_WDT_RST:
            MS_PRINT("0000000000000000000000000000000\n");
            MS_PRINT("Boot from watch dog reset!!!!!!\n");
            break;
        case BOOT_POWER_OFF:
            MS_PRINT("1111111111111111111111111111111\n");
            MS_PRINT("Boot from power off\n");
            break;
            
        case BOOT_DEEP_SLEEP:
            MS_PRINT("2222222222222222222222222222222\n");
            MS_PRINT("Boot from deep sleep\n");
            mouse_powerkey_pressed(MS_PWRKEY_IO);
            break;
            
        case BOOT_SW_RST:
            MS_PRINT("3333333333333333333333333333333\n");
            MS_PRINT("Boot from soft reset\n");
            MS_PRINT("Activate adv automatically\n");
            mouse_ble_status = BLE_ACTIVATED;
            break;

        case BOOT_HW_RST:
            MS_PRINT("444444444444444444444444444444\n");
            MS_PRINT("Boot from HW reset\n");
            if ( DRV_Gpio_PinValGet( GPIO_NUM_10 ) == BUTTON_PRESSED )
            {
                MS_PRINT("Activate adv automatically\n");
                mouse_ble_status = BLE_ACTIVATED;
            }			
            
            break;
    }
}


void _mouse_power_on_wait_mp_TO(uint32_t id)
{
    mouse_waiting_mp_procedure = false;
}


void mouse_timer_init(void)
{
    AB_Timer_Enable_Ext( 2000, TMR32B0_500US );

//    AB_Timer_AlertSet(TIMER_ID_WAIT_MP_COMMAND, false, 2000, _mouse_power_on_wait_mp_TO);
    mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_POWER_ON);

}

void mouse_cfg_init(void)
{
    CFG_PARAMETER_STRU* param;

    param = AB_SECTOR_GetCfgParameter();

    if(param)
    {
        mouse_CFG_bt_data = &param->ADie;
    }
}

extern uint16_t uiPendingCount;

void IntGpioMouse(uint8_t num)
{
    uint8_t val;

    if ( num == PIN_MOTSWK_PAW3205DB )
    {
		_mouse_wakeup();        
    }
	//Check click button
	if (( num == GPIO_CLICK_L ) || ( num == GPIO_CLICK_R ) || ( num == GPIO_CLICK_M ) )
	{
		_mouse_wakeup();        
	}

	if (( num == GPIO_WHEEL_ZA ) || ( num == GPIO_WHEEL_ZB ))
	{
		_mouse_wakeup();        
	}

    if ( num == GPIO_NUM_10 )
    {
        _mouse_delete_paired_record();
    }    
}

void IntGpioPage(uint8_t num)
{
    if ( num == GPIO_PAGE_UP )
   	{  
   	    if ( DRV_Gpio_PinValGet( GPIO_PAGE_UP ) == BUTTON_PRESSED )
			_mouse_SendKey( KEY_PAGE_UP );
		else
			_mouse_SendKey( KEY_PAGE_DONE );
   	}
    if ( num == GPIO_PAGE_DN )
   	{  
   	    if ( DRV_Gpio_PinValGet( GPIO_PAGE_DN ) == BUTTON_PRESSED )
			_mouse_SendKey( KEY_PAGE_DOWN );
		else
			_mouse_SendKey( KEY_PAGE_DONE );
   	}
}

void mouse_gpio_init()
{
    //Below setting for wake up from deep-sleep
    DRV_Gpio_DirSet( GPIO_CLICK_L_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_CLICK_L_MASK, PULL_UP );

    //Below setting for wake up from deep-sleep
    DRV_Gpio_DirSet( GPIO_CLICK_R_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_CLICK_R_MASK, PULL_UP );

    //Below setting for wake up from deep-sleep
    DRV_Gpio_DirSet( GPIO_CLICK_M_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_CLICK_M_MASK, PULL_UP );
}

void mouse_gpio_pgup_init()
{
    //Page-up,
    DRV_Gpio_IntReg( GPIO_PAGE_UP, EDGE_BOTH, IntGpioPage );
    DRV_Gpio_IntEn( GPIO_PAGE_UP );
    DRV_Gpio_DirSet( GPIO_PAGE_UP_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_PAGE_UP_MASK, PULL_UP );
    // Page DN
    DRV_Gpio_IntReg( GPIO_PAGE_DN, EDGE_BOTH, IntGpioPage );
    DRV_Gpio_IntEn( GPIO_PAGE_DN );
    DRV_Gpio_DirSet( GPIO_PAGE_DN_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_PAGE_DN_MASK, PULL_UP );

}

void MouseGpioTestInit()
{
    DRV_Gpio_IntReg( GPIO_NUM_10, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntEn( GPIO_NUM_10 );

#if EVK_SIMULATE
    DRV_Gpio_DirSet( GPIO_NUM_10_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_NUM_10_MASK, PULL_UP );

    DRV_Gpio_DirSet( GPIO_NUM_11, GPIO_INPUT );
    DRV_Gpio_PullSet( GPIO_NUM_11_MASK, PULL_UP );


    DRV_Gpio_DirSet( 0x01, 0 );
    DRV_Gpio_IntReg( 0, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntEn( 0);

    DRV_Gpio_IntReg( GPIO_NUM_14, EDGE_NEG, IntGpioMouse );
    DRV_Gpio_IntEn( GPIO_NUM_14 );
    
#endif
//	DRV_Gpio_IntReg( GPIO_NUM_13, EDGE_NEG, IntGpioMouse );
//	DRV_Gpio_IntEn( GPIO_NUM_13 );
#if TIMING_MEASURE
    DRV_Gpio_DirSet( GPIO_NUM_11_MASK, GPIO_OUTPUT );
    DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 0);
#endif	
        



}

void mouse_spi_init()
{
    Paw3205db_GpioInit();
    Paw3205db_SpiInit();
    Paw3205db_Init();
}



void mouse_wheel_init()
{
    MOUSE_INIT_PARAMS init_params;

    DRV_Gpio_IntDis( GPIO_WHEEL_ZA );
    DRV_Gpio_IntDis( GPIO_WHEEL_ZB );
    DRV_PinMux_GrpSet( WHEEL_PIN_MASK1, PIN_MOUSE );
    
    init_params.z_sel = 0;// 0: divided by 2 , 1 : divided by 4
    init_params.z_enable = 1;
    init_params.z_dir_sel = 1;
    init_params.rambo_enable = 0;
    init_params.debounce_enable = 1;
    DRV_MouseZ_Init( init_params );
    DRV_MouseZ_ClearLatch();		
}

void mouse_wheel_wake()
{
    DRV_Gpio_IntDis( GPIO_WHEEL_ZA );
    DRV_Gpio_IntDis( GPIO_WHEEL_ZB );
    DRV_PinMux_GrpSet( WHEEL_PIN_MASK1, PIN_MOUSE );
}

void mouse_mp_init(void)
{
    MP_PARAMETER_STRU* param;

    param = AB_SECTOR_GetMpParameter(false);

    if(param)
    {
        mouse_MP_bd_addr = &param->BDaddr;
    }
}

void mouse_init_before_BT(void)
{
// should not print any debug message in this function since it is before
// checking mp status

    mouse_mp_init();
    //Brian need check
    //mouse_usage_dependent_init(); 
}

 
void mouse_init(void)
{
    uint32_t mask;
    
    mouse_timer_init();
    mouse_service_init();
    mouse_button_init();
    mouse_led_init();

    mouse_spi_init();
    mouse_wheel_init();
	mouse_gpio_pgup_init();
	
    MouseGpioTestInit();

    mouse_check_boot_reason();

    SYS_3WireBitWrite(0x15, 0x0020);    // set REGEN no pull to eliminate small leakage
}

#if MOUSE_DEBUG
int MS_PRINT(const char *fmt, ...)
{
    char string[128];

    va_list ap;
    va_start(ap, fmt);
    vsprintf(string, fmt, ap);

    ndis_enter_critical();
    printf(string);
    ndis_exit_critical();

    va_end(ap);
}

int MS_PRINT_RED(const char *fmt, ...)
{
    char string[128];

    va_list ap;
    va_start(ap, fmt);
    vsprintf(string, fmt, ap);

    ndis_enter_critical();
    ANSI_SGR(FOREGROUND+RED);
    printf(string);
    ANSI_SGR(NORMAL);
    ndis_exit_critical();

    va_end(ap);
}

int MS_PRINT_COLOR(uint8_t color, const char *fmt, ...)
{
    char string[128];

    va_list ap;
    va_start(ap, fmt);
    vsprintf(string, fmt, ap);

    ndis_enter_critical();
    ANSI_SGR(FOREGROUND+color);
    printf(string);
    ANSI_SGR(NORMAL);
    ndis_exit_critical();

    va_end(ap);
}

#endif
