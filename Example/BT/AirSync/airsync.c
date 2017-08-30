/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ab_uart.h"
#include "ab_assert.h"
#include "ab_clk.h"
#include "airsync.h"
#include "stdarg.h"
#include "Airsync_gatt.h"
#include "aes_crypt.h"

bool airsync_bt_inited = false;
AIRSYNC_BLE_STATUS airsync_ble_status = BLE_IDLE;
extern bool airsync_auth_complete_flag;
extern bool indicate_enable_flag;
extern bool airsync_init_complete_flag;
uint8_t sessionkey[16];
bool Send_Manufacture_Data_Flag;

uint8_t encrypt_buf[128];
int encrypt_len_t= 0;
uint8_t decrypt_buf[128];
int decrypt_len_t = 0;

int cryptp_switch = 0;

void airsync_ble_set_adv_scan_data_cpl_cb(bool isuccess, uint8_t err_code)
{
    AIRSYNC_PRINT("set adv and scan data %s\n", isuccess ? "ok" : "fail");
    AIRSYNC_PRINT("Start Advertising \n");
    
    airsync_bt_inited = true;
    airsync_ble_status = BLE_ADVERTISING;
}

void airsync_ble_set_adv_parameter_cb(bool isuccess, uint8_t err_code)
{
    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        //.self_addr_type = ble_addr_type_random_static,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7,
    };
    //start adv
    ble_gap_adv_start(&parm, airsync_ble_set_adv_scan_data_cpl_cb);
}
    
void airsync_ble_set_adv_data_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] =
    {
        0x02, 0x01, 0x06,
        0x08, 0x09, 'A', 'i', 'r', 'S', 'y', 'n', 'c',
        0x0C, 0xFF, 0x94, 0x00, 0xFE, 0x01, 0x01, 0x00, 0x03, 0x33, 0x22, 0x33, 0x27,
        0x03, 0x02, 0xE7, 0xFE
    };
    ble_gap_adv_data_set(ad, sizeof(ad), airsync_ble_set_adv_parameter_cb);
}

static void airsync_ble_set_scan_data_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = {
        0x02, 0x0A,0x00,
    };
    AIRSYNC_PRINT("set public address %s\n", isuccess ? "ok" : "fail");

    ble_gap_scan_data_set(ad, sizeof(ad), airsync_ble_set_adv_data_cb);
}

static void airsync_bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;
        memcpy(addr.addr, "\x27\x33\x22\x33\x03\x00", 6);   //Must inverse
        ble_gap_address_set(&addr, airsync_ble_set_scan_data_cb);
    }
    else
    {
        AIRSYNC_PRINT("*****************AirSync BT init fail*********************\n");
        while(1);
    }
}

static void airsync_connection_complete_handler(bt_evt_t *evt)
{
    if(evt->evt.gap_evt.params.connected.status)    //0 : success
    {
        AIRSYNC_PRINT("*****************AirSync BT Connection fail*********************\n");
        return;
    }
    airsync_ble_status = BLE_CONNECTED_WITHOUT_AUTH;
}

void airsync_bt_evt_hdl(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            airsync_bt_inited_handler(evt);
            break;
        case BLE_GAP_EVT_CONNECTED:         
            airsync_connection_complete_handler(evt);
            indicate_enable_flag = false;
            airsync_auth_complete_flag = false;
            airsync_init_complete_flag = false;
            break;
        default:
            break;
    }
}

void airsync_sent_indicate_cb(uint8_t link_index)
{
    AIRSYNC_PRINT("indicate link_index %d, result success\n",link_index);   
}

void gpio1_int(uint8_t num)
{
    if(airsync_ble_status == BLE_CONNECTED_COMPLETE)
        Send_Manufacture_Data_Flag = true;
}

void airsync_application_init(void)
{
    AIRSYNC_PRINT("Start AirSync init\n");
    airsync_service_init();
    SYS_3WireBitWrite(0x15, 0x0020);    // set REGEN no pull to eliminate small leakage
    AIRSYNC_PRINT("End AirSync init\n");
    
    //enabled gpio 1 interrupt
    DRV_Gpio_IntReg(1, EDGE_NEG, gpio1_int);
    DRV_Gpio_IntEn(1);
}

void airsync_mainloop(void)
{
    if(airsync_bt_inited)
    {
        switch(airsync_ble_status)
        {
            case BLE_IDLE:
                //do nothing, wait key press to activate advertising
                break;
            case BLE_ADVERTISING:
                break;
            case BLE_CONNECTED_WITHOUT_AUTH:
                if(indicate_enable_flag == true && airsync_auth_complete_flag== false)
                {
                    airsync_auth();
                }
                break;
            case BLE_CONNECTED_WITH_AUTH_WITHOUT_INIT:
                if(airsync_init_complete_flag == false)
                {
                    airsync_init();
                }
                break;
            case BLE_CONNECTED_COMPLETE:
                if(Send_Manufacture_Data_Flag)
                {
                    airsync_manufacture_data();
                }
                break;
        }               
    }
}

#if AIRSYNC_DEBUG
int AIRSYNC_PRINT(const char *fmt, ...)
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
#endif
