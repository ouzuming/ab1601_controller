/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_BT_bt_init "Example/BT/bt_init"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "bt.h"
#include "ab_assert.h"


/*Uart interface*/
const Ab_UartParam  uart_param_115200_noRX = {115200L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

static void cfm_ble_gap_general(bool isuccess, uint8_t err_code)
{
    AB_ASSERT(isuccess);
}

static void cfm_ble_adv_set(bool isuccess, uint8_t err_code)
{
    ble_gap_adv_params parm;
    parm.ad_type = ble_ad_type_ind;
    parm.peer_addr = NULL;
    
    parm.self_addr_type = ble_addr_type_public;
    parm.filter = ble_filter_any;
    parm.min_interval = 0x0020;
    parm.max_interval = 0x0040;
    parm.channel_mask = 0x7;

    AB_ASSERT(isuccess);
    
    //start adv
    ble_gap_adv_start(&parm, cfm_ble_gap_general);
}

static void bt_event(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
        {
            if(evt->evt.misc_evt.param.inited.is_success)
            {
                ble_addr_t addr;
                
                uint32_t adlen = 0x1C;
                uint8_t ad[31] = {
                    0x05, 0x12, 0x10, 0x00, 0x50, 0x00,
                    0x02, 0x01, 0x05,
                    0x03, 0x03, 0x12, 0x18,
                    0x03, 0x19, 0xC1, 0x03,
                    0x0A, 0x09, 'A' , 'i' , 'r' , 'o', 'B', 'l', 'u', 'e', '.'};

                //set random address
                addr.addr_type = ble_addr_type_random_static;
                memcpy(addr.addr, "\x99\x66\x55\x66\xEE\xFF", 6);        
                ble_gap_address_set(&addr, cfm_ble_gap_general);

                //set public address
                addr.addr_type = ble_addr_type_public;
                memcpy(addr.addr, "\x08\x01\x02\x03\x04\x05", 6);        
                ble_gap_address_set(&addr, cfm_ble_gap_general);
                
                //set adv data    
                ble_gap_adv_data_set(ad, (uint8_t)adlen, cfm_ble_adv_set);
            }
            break;
        }
    }
}

void main()
{
    //clock switch to 16M RC
    AB_CLK_Switch(AB_CLK_16M, true);
    
    Ab_printf_init(uart1_ins);
    
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRX);

    /*bt init*/
    BT_Init(bt_event);

    while(1);
}

/*!
      \endcode
*/

