/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_BT_bt_proximity "Example/BT/bt_proximity"
      \code {.c}
*/

#include "ab1600.h"
#include "ble_gatt_server.h"
#include "bsp_generic.h"
#include "drv_pwr.h"
#include "drv_wdt.h"
#include "drv_gpio.h"
#include "ab_log.h"
#include "bt.h"
#include "ab_mp_sector.h"
#include "service_link_loss.h"
#include "service_immediate_alert.h"
#include "service_tx_power.h"
#include "Ab_led.h"
#include "Drv_odpinmux.h"
#include "Drv_timer32b0.h"

uint8_t lls_alert_level[1];
uint8_t ias_alert_level[1];
uint8_t txpower_level[1] = {0};   //0 means 0dBm. Default value is 0dBm
volatile adv_stop_flag;

//Read & Write
void _lls_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_BEFORE_SENDING)
    {
        printf("%X\n",lls_alert_level[0]);
    }
    if(type == CB_AFTER_WRITING)
    {
        printf("Link Lost Service Alert Level Set to %X\n",lls_alert_level[0]);        
    }
}
//Write without response
void _ias_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        printf("IMMEDIATE ALERT SERVICE Alert Level Set to %X\n",ias_alert_level[0]);
        switch(ias_alert_level[0])
        {
            case 0:
                AB_LED_stop(ab_led1);
                break;
            case 1:
                AB_LED_stop(ab_led1); 
                AB_LED_set_blink(ab_led1, 1000, 0, 0);
                AB_LED_start(ab_led1);
                break;
            case 2:
                AB_LED_stop(ab_led1); 
                AB_LED_set_on(ab_led1);
                AB_LED_start(ab_led1);
                break;
            default:
                break;
        }
    }
}
//Read
void _tps_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_BEFORE_SENDING)
    {
        printf("TxPower %X\n",txpower_level[0]);
    }
}


static void ble_adv_disable_cb(bool isuccess, uint8_t err_code)
{
    printf("advertising disabled\n"); 
    adv_stop_flag = 1;
}

static void ble_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    printf("advertising enabled\n");
    DRV_TMR32B0_Enable(TMR32B0_1MS); //1ms ticks   
}
static void ble_adv_enable_cb2(bool isuccess, uint8_t err_code)
{
    printf("advertising enabled\n");
}


static void ble_set_adv_data_cb(bool isuccess, uint8_t err_code)
{

    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020, //20ms, unit:625us
        .max_interval = 0x0030, //30ms              
        .channel_mask = 0x7,
    };

    //start adv
    ble_gap_adv_start(&parm, ble_adv_enable_cb);

}

static void ble_set_adv_data(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] =
    {
        0x02, 0x01, 0x05, 0x0A, 0x09, 'P' , 'R' , 'O' , 'X', 'I', 'M', 'I', 'T', 'Y', 0x03, 0x03, 0x03, 0x18, 0x03, 0x19, 0x00, 0x02
    };

    ble_gap_adv_data_set(ad, sizeof(ad), ble_set_adv_data_cb);

}

static void set_pub_addr_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = {
        //0x0A, 0x09, 'P' , 'R' , 'O' , 'X', 'I', 'M', 'I', 'T', 'Y'
        0x02, 0x0A, 0x00
    };

    ble_gap_scan_data_set(ad, sizeof(ad), ble_set_adv_data);
}


static void bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;
        memcpy(addr.addr, "\x14\x34\x56\x78\x9A\xBC", 6);
        ble_gap_address_set(&addr, set_pub_addr_cb);
    }
}

void cfm_gap_add_white_list(bool isuccess, uint8_t err_code)
{
    printf("add white list %s\n", isuccess ? "success" : "fail");
}


static void bt_connected_handler(bt_evt_t *evt)
{
    uint8_t i;
    ble_addr_t addr;
    ble_gap_whitelist_t p_wlst;
            
    DRV_TMR32B0_Reset(true);
    OS_delay_us(150);
    DRV_TMR32B0_Disable();

    //Get Master BD Addr to set white List
    memcpy(&addr, &evt->evt.gap_evt.params.connected.peer_addr, sizeof(ble_addr_t));
    printf("Master's BD_Addr:");   
    for(i=0 ; i<6; i++)
        printf("%X", addr.addr[i]);
    printf("\n");
    
    //Set White List
    p_wlst.addr_count = 1;
    p_wlst.p_addrs = &addr;
    ble_gap_add_whitelist(&p_wlst, cfm_gap_add_white_list);
}

static void bt_disconnected_handler(bt_evt_t *evt)
{
    AB_LED_stop(ab_led1);
    switch(evt->evt.gap_evt.params.disconnected.reason)
    {
        case 0x13:  //Normal Disconnect
            AB_LED_stop(ab_led0);
            printf("Normal Disconnect\n");
            break;
        default:
            printf("Abnormal Disconnect\n");
            switch(lls_alert_level[0])
            {
                case 0:
                    AB_LED_stop(ab_led0);
                    break;
                case 1:
                    AB_LED_stop(ab_led0); 
                    AB_LED_set_blink(ab_led0, 1000, 0, 0);
                    AB_LED_start(ab_led0);
                    break;
                case 2:
                    AB_LED_stop(ab_led0); 
                    AB_LED_set_on(ab_led0);
                    AB_LED_start(ab_led0);
                    break;
                default:
                    break;
            }
            break;
    }                    
    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_filter_both,
        .min_interval = 0x0020, //20ms, unit:625us
        .max_interval = 0x0030, //30ms   
        .channel_mask = 0x7,
    };
    //start adv
    ble_gap_adv_start(&parm, ble_adv_enable_cb);
    DRV_TMR32B0_Reset(false);
    DRV_TMR32B0_Enable(TMR32B0_1MS); //1ms ticks  
}


void bt_proximity_evt_hdl(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            bt_inited_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECTED:
            bt_connected_handler(evt);
            break;
        case BLE_GAP_EVT_DISCONNECTED:
            bt_disconnected_handler(evt);            
            break;
        default:
            break;
    }
}
/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = false
};
/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins, 
};
/*bt*/
const bsp_bt_parm bt_parm =
{
   .event_handler = bt_proximity_evt_hdl, 
   .log_level =  BT_LOG_NONE
};
/*mp*/
const bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins,
};
/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
};

const bsp_generic_ex2_parm bsp_init_parm = 
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,    
    .printf_parm    = (bsp_printf_parm *) &printf_parm,
    .bt_parm        = (bsp_bt_parm *) &bt_parm,
    .mp_parm        = (bsp_mp_parm *) &mp_parm,
    .uart_parm      = (bsp_uart_parm *) & uart_parm,
};

void main()
{    
    AB_BSP_initEx(&bsp_init_parm);

    // Start init LLS Service
    lls_init_para lls_para =
    {
        .lls_alert_level = lls_alert_level,
        .lls_cb = _lls_cb,
    };
    LLS_init(&lls_para);
    //End init LLS Service
    
    //Start init IAS Service
    ias_init_para ias_para =
    {
        .ias_alert_level = ias_alert_level,
        .ias_cb = _ias_cb,
    };
    IAS_init(&ias_para);
    //End init IAS Service

    //Start init TPS Service
    tps_init_para tps_para =
    {
        .txpower_level = txpower_level,
        .tps_cb = _tps_cb,
    };
    TPS_init(&tps_para);
    //End init TPS Service  
    DRV_OdPinMux_SigSet((1), PIN_OD_LED0);  //Set ODGPIO0 output led0 signal
    DRV_OdPinMux_SigSet((1<<1), PIN_OD_LED1); //Set ODGPIO1 output led1 signal
    AB_LED_set_on(ab_led0);
    AB_LED_set_on(ab_led1);
        
    DRV_WDT_Enable(5);
    adv_stop_flag = 0;
    while (1)
    {
        DRV_WDT_Kick();        
        //if(start_timer_flag && DRV_TMR32B0_TickGet() > 30000) //exceed 30 seconds, Proximity Profile recommand change ADV interval        //
        if(DRV_TMR32B0_TickGet() > 30000) //exceed 30 seconds, Proximity Profile recommand change ADV interval 
        {
            DRV_TMR32B0_Reset(true);
            OS_delay_us(150);
            DRV_TMR32B0_Disable();
            printf("tick:%d\n",DRV_TMR32B0_TickGet());
            ble_gap_adv_stop(ble_adv_disable_cb);
            while(adv_stop_flag == 0);  //wait to cpl disable ADV
            ble_gap_adv_params parm =
            {
                .ad_type = ble_ad_type_ind,
                .peer_addr = NULL,
                .self_addr_type = ble_addr_type_public,
                .filter = ble_filter_any,
                .min_interval = 0x0640, //1s, unit:625us
                .max_interval = 0x0FA0, //2.5s
                .channel_mask = 0x7,
            };

            //start adv
            ble_gap_adv_start(&parm, ble_adv_enable_cb2);
        }
    }
}

/*!
      \endcode
*/

