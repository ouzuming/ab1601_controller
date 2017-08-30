/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_BT_adv_scan_switch "Example/BT/adv_scan_switch"
      \code {.c}
*/
#include "bt.h"
#include "ab1600.h"
#include "bsp_generic.h"
#include "drv_pwr.h"
#include "drv_wdt.h"
#include "ble_gap.h"
#include "ble_gap_sm.h"
#include "Drv_timer32b0.h"

typedef enum
{
    BLE_IDLE,
    BLE_ACTIVATED,
    BLE_ADVERTISING,
    BLE_SCANNING,
    BLE_ADV_SCAN,
    BLE_CONNECTED,
} BLE_STATUS;
BLE_STATUS ble_status;

bool adv_scan_bt_inited = false;
uint8_t SetAdvEnable_Once;
uint8_t SetScanEnable_Once;
uint8_t Adv_Scan_switch_interval = 50;  //unit: ms;

volatile uint8_t adv_scan_flag;
    //bit0: adv_start_cpl
    //bit1: adv_stop_cpl
    //bit2: scan_start_cpl
    //bit3: scan_stop_cpl


void set_scan_parameter_cb(bool isuccess, uint8_t err_code)
{
    adv_scan_bt_inited = true;
    printf("set scan parameter : %s\n", isuccess ? "complete" : "fail");
}

void set_adv_parameter_cb(bool isuccess, uint8_t err_code)
{
    ble_gap_scan_params_t param =
    {
        .type = ble_scan_type_active,
        .interval = 0x0010,        
        .window = 0x0010,
        .owner = ble_addr_type_public,
        .policy = ble_scan_policy_0,
        .p_whitelist = NULL,
        .filter_duplicated = 0,
    }; 
    printf("set adv paramater : %s\n", isuccess ? "complete" : "fail");
    ble_gap_scan_set_parameter(&param, set_scan_parameter_cb);
}

void ble_set_adv_complete_cb(bool isuccess, uint8_t err_code)
{
    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7,
    };
    printf("set adv and scan data %s\n", isuccess ? "complete" : "fail");
    ble_gap_adv_set_parameter(&parm, set_adv_parameter_cb);
}

void ble_set_adv_data_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] =
    {
        0x02, 0x01, 0x06,
        0x08, 0x09, 'A', 'd', 'v', 'S', 'c', 'a', 'n',
        0x0C, 0xFF, 0x94, 0x00, 0xFE, 0x01, 0x01, 0x00, 0x03, 0x33, 0x22, 0x33, 0x27,
        0x03, 0x02, 0xE7, 0xFE
    };
    ble_gap_adv_data_set(ad, sizeof(ad), ble_set_adv_complete_cb);
}

static void ble_set_scan_data_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = {
        0x02, 0x0A,0x00,
    };
    printf("set public address %s\n", isuccess ? "ok" : "fail");

    ble_gap_scan_data_set(ad, sizeof(ad), ble_set_adv_data_cb);
}

static void adv_scan_bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;
        memcpy(addr.addr, "\x66\x33\x22\x33\x03\x00", 6);   //Must inverse
        ble_gap_address_set(&addr, ble_set_scan_data_cb);

        printf("BTinited: tick =%d\n",DRV_TMR32B0_TickGet());       
    }
    else
    {
        printf("*****************BT init fail*********************\n");
        while(1);
    }
}

void adv_scan_bt_evt_hdl(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            adv_scan_bt_inited_handler(evt);
            printf("MICS_EVENT_INITED\n");
            break;
            
        case BLE_GAP_EVT_CONNECTED:         
            //adv_scan_connection_complete_handler(evt);            
            break;
        
        case BLE_GAP_EVT_ADV_REPORT:
        {
            ble_gap_evt_adv_report_t *report;
            uint8_t i;
            
            report = &evt->evt.gap_evt.params.adv_report;

            printf("============================================================================\n");
            switch(report->type)
            {
                case ble_report_type_ind:
                    printf("conn undirect:");
                    break;
                case ble_report_type_direct_ind:
                    printf("direct:");
                    break;
                case ble_report_type_scan_ind: 
                    printf("scan undirect:");
                    break;
                case ble_report_type_nonconn_ind: 
                    printf("nonconn undirect:");
                    break;
                case ble_report_type_scan_rsp:
                    printf("scan resp:");
                    break;
            }

            printf("(%d)\n", report->rssi);

            for(i = 0; i < 5; i++)
                printf("%02X:", report->peer_addr.addr[i]);
            printf("%02X", report->peer_addr.addr[5]);

            switch(report->peer_addr.addr_type)
            {
                case ble_addr_type_public:
                    printf("(PDA)\n");
                    break;
                case ble_addr_type_random_static:
                    printf("(RDA)\n");
                    break;
                case ble_addr_type_random_resolvable:
                    printf("(PID)\n");
                    break;
                case ble_addr_type_random_non_resolvable:
                    printf("(RID)\n");
                    break;
            }

            for(i = 0; i < report->dlen; i++)
                printf("%02X", report->data[i]);
            printf("\n");
            printf("============================================================================\n");
            break;
        }
    }
}

void ble_set_start_adv_cb(bool isuccess, uint8_t err_code)
{
    if(ble_status != BLE_ADV_SCAN)
        printf("Start ADVERTISING %s\n", isuccess ? "ok" : "fail");
    if(isuccess)
        adv_scan_flag |= 0x01;  //Set bit0 true
}

//Do Advertising
void gpio0_int(uint8_t num)
{
    ble_gap_adv_start(0, ble_set_start_adv_cb);
    ble_status = BLE_ADVERTISING;
}
//Do Stop Advertising
void ble_set_stop_adv_cb(bool isuccess, uint8_t err_code)
{
    if(ble_status != BLE_ADV_SCAN)
        printf("Stop ADVERTISING %s\n", isuccess ? "ok" : "fail");
    if(isuccess)
        adv_scan_flag |= 0x02;  //Set bit1 true
}

void gpio1_int(uint8_t num)
{
    ble_status = BLE_ACTIVATED;
    ble_gap_adv_stop(ble_set_stop_adv_cb);  
}
//Do Scanning
void ble_set_scan_start_cb(bool isuccess, uint8_t err_code)
{
    if(ble_status != BLE_ADV_SCAN)
        printf("Start Scan %s\n", isuccess ? "ok" : "fail");
    if(isuccess)
        adv_scan_flag |= 0x04;  //Set bit2 true
}

void gpio2_int(uint8_t num)
{  
    ble_gap_scan_start(0, ble_set_scan_start_cb);
}
//Do Stop Scanning
void ble_stop_scan_cb(bool isuccess, uint8_t err_code)
{
    if(ble_status != BLE_ADV_SCAN)
        printf("Stop SCANNING %s\n", isuccess ? "ok" : "fail");
    if(isuccess)
        adv_scan_flag |= 0x08;  //Set bit3 true
}

void gpio3_int(uint8_t num)
{
    ble_status = BLE_ACTIVATED;
    ble_gap_scan_stop(ble_stop_scan_cb);
}

void gpio4_int(uint8_t num)
{
    ble_status = BLE_ADV_SCAN;
    SetAdvEnable_Once = 1;
    SetScanEnable_Once = 0;
}
void gpio5_int(uint8_t num)
{
    ble_status = BLE_ACTIVATED;
    DRV_TMR32B0_Reset(true);
    SetAdvEnable_Once = 0;
    SetScanEnable_Once = 0;

    OS_delay_us(150);
    ble_gap_adv_stop(ble_set_stop_adv_cb);

    OS_delay_us(150);
    ble_gap_scan_stop(ble_stop_scan_cb);

    adv_scan_flag = 0;
}

void adv_scan_application_init(void)
{
    //enabled gpio 0/1/2/3/4/5 interrupt
    DRV_Gpio_IntReg(0, EDGE_NEG, gpio0_int);
    DRV_Gpio_IntEn(0);
    DRV_Gpio_IntReg(1, EDGE_NEG, gpio1_int);
    DRV_Gpio_IntEn(1);
    DRV_Gpio_IntReg(2, EDGE_NEG, gpio2_int);
    DRV_Gpio_IntEn(2);
    DRV_Gpio_IntReg(3, EDGE_NEG, gpio3_int);
    DRV_Gpio_IntEn(3);
    DRV_Gpio_IntReg(4, EDGE_NEG, gpio4_int);
    DRV_Gpio_IntEn(4);
    DRV_Gpio_IntReg(5, EDGE_NEG, gpio5_int);
    DRV_Gpio_IntEn(5);
    SYS_3WireBitWrite(0x15, 0x0020);    // set REGEN no pull to eliminate small leakage
    DRV_TMR32B0_Enable(TMR32B0_1MS);    //Enable Timer
    adv_scan_flag = 0;
    ble_status = BLE_IDLE;
}

void adv_scan(void)
{
    if(SetAdvEnable_Once)
    {
        adv_scan_flag &= 0xFE;  //Set bit0 false        
        ble_gap_adv_start(0, ble_set_start_adv_cb);
        
        while(!(adv_scan_flag & 0x01)); //block wait adv_start cpl
        SetAdvEnable_Once = 0;        
        DRV_TMR32B0_Reset(false);
    }
    
    if(adv_scan_flag & 0x01)    //Check IC is doing ADV
    {       
        if(DRV_TMR32B0_TickGet() > Adv_Scan_switch_interval) //50 mini-second enter onces
        {
            adv_scan_flag &= 0xFC;  //Set bit0/bit1 false
            DRV_TMR32B0_Reset(true);                        
            ble_gap_adv_stop(ble_set_stop_adv_cb);
            while(!(adv_scan_flag & 0x02)); //block wait adv_stop cpl
            SetScanEnable_Once = 1;
        }
    }
    
    if(SetScanEnable_Once)
    {
        adv_scan_flag &= 0xFB;  //Set bit2 false
        ble_gap_scan_start(0, ble_set_scan_start_cb);
        while(!(adv_scan_flag & 0x04)); //block wait scan_start cpl
        SetScanEnable_Once = 0;        
        DRV_TMR32B0_Reset(false);
    }
    if(adv_scan_flag & 0x04)    //Check IC is doing SCAN
    {       
        if(DRV_TMR32B0_TickGet() > Adv_Scan_switch_interval) //50 mini-second enter onces
        {   
            adv_scan_flag &= 0xF3;  //Set bit2/bit3 false
            DRV_TMR32B0_Reset(true);                        
            ble_gap_scan_stop(ble_stop_scan_cb);
            while(!(adv_scan_flag & 0x08)); //block wait scan_stop cpl
            SetAdvEnable_Once = 1;
        }
    }
}

void adv_scan_mainloop(void)
{
    if(adv_scan_bt_inited)
    {
        switch(ble_status)
        {
            case BLE_IDLE:
            break;
            case BLE_ACTIVATED:
            break;
            case BLE_ADVERTISING:
            break;
            case BLE_SCANNING:
            break;
            case BLE_ADV_SCAN:
                adv_scan();
            break;
            case BLE_CONNECTED:
            break;
            default:
            break;
        }       
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
   .event_handler = adv_scan_bt_evt_hdl, 
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
    .uart_parm      = (bsp_uart_parm *) & uart_parm
};

void main()
{    
    AB_BSP_initEx(&bsp_init_parm);
    adv_scan_application_init();
    DRV_WDT_Enable(5);
    
    while (1)
    {
        adv_scan_mainloop();
        DRV_WDT_Kick();
    }
}
/*!
      \endcode
*/

