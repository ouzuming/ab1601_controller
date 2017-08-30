/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*! 
     \page Example_BT_bt_sm "Example/BT/bt_sm"
     \code {.c}
*/

#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "bt.h"
#include "ab_assert.h"
#include "ble_gap_sm.h"

/*Uart interface*/
const Ab_UartParam  uart_param_115200_noRX = {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

ble_sm_security_param_t gSM_param =
{
    SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
    SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
    SM_BONDING,                     //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
    16,                             //uint8_t encKeySize;
    0x03,                           //uint8_t keyDistr;
    0x07,                           //uint8_t respKeyDistr;
};       
uint16_t connHdl;

static void cfm_ble_gap_general(bool isuccess, uint8_t err_code)
{
    AB_ASSERT(isuccess);
}

void bt_sm_normal_undir_adv(void)
{
    ble_gap_adv_params parm;
    parm.ad_type = ble_ad_type_ind;
    parm.peer_addr = NULL;
    
    parm.self_addr_type = ble_addr_type_random_static;
    parm.filter = ble_filter_any;
    parm.min_interval = 0x0020;
    parm.max_interval = 0x0040;
    parm.channel_mask = 0x7;

    //start adv
    ble_gap_adv_start(&parm, cfm_ble_gap_general);
}

static void cfm_ble_adv_set(bool isuccess, uint8_t err_code)
{
    AB_ASSERT(isuccess);
    bt_sm_normal_undir_adv();
}

static void ble_gap_address_set_cb(bool isuccess, uint8_t err_code)
{
    AB_ASSERT(isuccess);
    uint8_t ad[] = {
        0x05, 0x12, 0x10, 0x00, 0x50, 0x00,
        0x02, 0x01, 0x05,
        0x03, 0x03, 0x12, 0x18,
        0x03, 0x19, 0xC1, 0x03,
        0x0A, 0x09, 'A' , 'i' , 'r' , 'o', 'B', 'l', 'u', 'e', '.'};

    //set adv data    
    ble_gap_adv_data_set(ad, sizeof(ad), cfm_ble_adv_set);
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

                //set random address
                addr.addr_type = ble_addr_type_random_static;     
                memcpy(addr.addr, "\x11\x11\x11\x22\x22\xFF", 6);  
                ble_gap_address_set(&addr, ble_gap_address_set_cb);

                if(BLE_gap_sm_is_device_bonded(NULL, NULL))
                    printf("Bonded device in flash:\n");
                else
                    printf("No bonded device in flash\n");    

                if(BLE_gap_sm_get_last_paired_device(&addr))
                    printf("addr_type[%d] addr[0x%X 0x%X 0x%X 0x%X 0x%X 0x%X]\n", addr.addr_type, addr.addr[0], addr.addr[1], addr.addr[2], addr.addr[3], addr.addr[4], addr.addr[5]);
                else
                    printf("No last paired device\n");

                if(BLE_gap_sm_is_device_bonded(&addr, NULL))
                    printf("Device is bonded\n");
                else
                    printf("Device not bonded\n");  
            }
            break;
        }
        case BLE_GAP_EVT_CONNECTED:
        {
            connHdl = evt->evt.gap_evt.params.connected.conn_handle;

            // start authentication
            printf("[Event received] BLE_GAP_EVT_CONNECTED\n"); 

            BLE_gap_sm_authenticate(connHdl, &gSM_param);
            
            break;
        }
        case BLE_GAP_EVT_DISCONNECTED:
        {
            printf("[Event received] BLE_GAP_EVT_DISCONNECTED\n");
            //start adv
            bt_sm_normal_undir_adv();
            break;        
        }
        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
        {   
            printf("[Event received] BLE_SM_EVT_SET_SEC_PARAM_REQUEST handle[%x] ioCap[%x] authReq[%x]\n", connHdl, gSM_param.ioCapability, gSM_param.authReq);
            BLE_gap_sm_set_security_param(connHdl, BLE_SM_STATUS_SUCCESS, &gSM_param);

            break;    
        }
        case BLE_SM_EVT_CONN_SEC_UPDATE:
        {
            printf("[Event received] BLE_SM_EVT_CONN_SEC_UPDATE: mode[%d] level[%d]\n", evt->evt.sm_evt.params.conn_sec_update.conn_sec.sm, evt->evt.sm_evt.params.conn_sec_update.conn_sec.lv); 
            break;
        }     
        case BLE_SM_EVT_AUTH_STATUS:
        {
            printf("[Event received] BLE_SM_EVT_AUTH_STATUS: auth_status[0x%x]\n", evt->evt.sm_evt.params.auth_status.auth_status); 

            if(evt->evt.sm_evt.params.auth_status.auth_status == BLE_SM_STATUS_TIMEOUT)
            {
                printf("TIMEOUT!\n");
                ble_gap_disconnect(evt->evt.sm_evt.connHdl, 0x5);
            }
            break;
        }
    }
}

void main()
{
    //clock switch to 16M RC
    AB_CLK_Switch(AB_CLK_48M, true);

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRX);

    /*bt init*/
    BT_Init(bt_event);
    
    while(1);
}

/*! 
    \endcode 
*/

