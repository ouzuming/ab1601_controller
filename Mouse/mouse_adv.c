/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_adv.c
DESCRIPTION
NOTES
********************************************************************************/
#include "mouse.h"
#include "ab_log.h"

static void mouse_set_adv_control_timer(uint32_t ms, void (*cb)(void*parm))
{
    ndis_enter_critical();
    mouse_waiting_mp_procedure = false;
    ndis_exit_critical();

    DRV_TMR32B0_NotifyEnable(MOUSE_ADV_CTRL_TIMER, ms, true, NULL, cb);
}

static void mouse_ble_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    MS_PRINT("enable undirected advertising %s\n", isuccess ? "success" : "failed");
}

static void mouse_ble_dir_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    MS_PRINT("enable directed advertising %s\n", isuccess ? "success" : "failed");
}

static void mouse_ble_set_no_scan_adv_param_and_enable(bool isuccess, uint8_t err_code)
{
    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_filter_scan,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7,
    };

    //start adv
    ble_gap_adv_start(&parm, mouse_ble_adv_enable_cb);

    MS_PRINT("set adv param and enable, no scan\n");
}

static void mouse_ble_set_adv_param_and_enable(bool isuccess, uint8_t err_code)
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

    //start adv
    ble_gap_adv_start(&parm, mouse_ble_adv_enable_cb);

    MS_PRINT("set adv param and enable, scanning ...\n");
}

static void _mouse_stop_diradv_cb(bool isuccess, uint8_t err_code)
{
    if(isuccess)
    {
        MS_PRINT("Stop directed advertising success, enter bonded undir adv.\n");

        mouse_bonded_undir_adv();
    }
    else
    {
        MS_PRINT("Stop directed advertising fail.");
    }

}

static void _mouse_stop_woble_cb(bool isuccess, uint8_t err_code)
{
    MS_PRINT("Stop Wake up Over BLE advertising %s\n", isuccess ? "success" : "fail");
}

void _mouse_woble_TO(void *parm)
{
    if(mouse_ble_status == BLE_CONNECTED)
        return;

    MS_PRINT("woble_TO should deep sleep\n");
    ble_gap_adv_stop(_mouse_stop_woble_cb);

    mouse_ble_status = BLE_IDLE;
    mouse_led_advertising(A_LED_DISABLE);
    mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_WOBLE_ADV);
}

void _mouse_dir_adv_TO(void *parm)
{
    if(mouse_ble_status == BLE_CONNECTED)
        return;

    MS_PRINT("directed adv 1.28s time out\n");
    ble_gap_adv_stop(_mouse_stop_diradv_cb);
}

//https://www.bluetooth.com/specifications/gatt
//https://www.bluetooth.org/en-us/specification/assigned-numbers/generic-access-profile

void mouse_wake_up_over_ble_adv(void)
{
    static uint8_t seq = 0;
    uint8_t ad[] =
    {
        0x02, BLE_GAP_AD_TYPE_FLAGS, BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE,
        0x03, BLE_GAP_AD_TYPE_APPEARANCE, LO_BYTE(APPEARANCE_DEVICE), HI_BYTE(APPEARANCE_DEVICE),
        0x03, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_COMPLETE, LO_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), HI_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), //HID
//        0x0A, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, MOUSE_NAME

        0x13, BLE_GAP_AD_TYPE_MANUFACTURER_SPECIFIC_DATA, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
              0xFF, 0xFF, 0xFF, 'A' , 'i' , 'r' , 'o' , 'h' , 'a'

        
    };

    MS_PRINT("waking up TV over BLE\n");
    memcpy(&ad[16], ble_bonded_peer.addr, 6);

    #if 1
    MS_PRINT_COLOR( 7, "Checking Bonded peer address!!!!!\n");
    printf( "0x%2X 0x%2X 0x%2X 0x%2X 0x%2X 0x%2X\n" ,ble_bonded_peer.addr[0], ble_bonded_peer.addr[1], 
        ble_bonded_peer.addr[2], ble_bonded_peer.addr[3], ble_bonded_peer.addr[4], ble_bonded_peer.addr[5] );
    if ( mouse_bt_bonded )
        MS_PRINT_COLOR( MAGENTA, "BONDED========\n");
    else
        MS_PRINT_COLOR( MAGENTA, "NO BONDED========\n");
    #endif

    ble_gap_adv_data_set(ad, sizeof(ad), mouse_ble_set_adv_param_and_enable);

    mouse_set_adv_control_timer( MS_DEEP_SLEEP_BEFORE_WAKEBLE, _mouse_woble_TO );
    
    mouse_led_advertising(A_LED_WOBLE);
    mouse_ble_status = BLE_ADVERTISING;

}

void _mouse_normal_undir_adv_TO(void* parm)
{
    if(mouse_ble_status == BLE_CONNECTED)
        return;


    MS_PRINT_RED("normal_undir_adv_TO, should deep sleep now\n");

    ble_gap_adv_stop(NULL);

    mouse_ble_status = BLE_IDLE;
    mouse_led_advertising(A_LED_DISABLE);
    mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_UNDIR_ADV);
}

void _mouse_bonded_undir_adv_TO(void* parm)
{
    if(mouse_ble_status == BLE_CONNECTED)
        return;


    MS_PRINT_RED("bonded_undir_adv_TO, should deep sleep now\n");

    ble_gap_adv_stop(NULL);

    mouse_ble_status = BLE_IDLE;
    mouse_led_advertising(A_LED_DISABLE);

    mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_BONDED_UNDIR_ADV);
}

void mouse_normal_undir_adv(void)
{
    uint8_t ad[] =
    {
        0x02, BLE_GAP_AD_TYPE_FLAGS, BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE,
        0x03, BLE_GAP_AD_TYPE_APPEARANCE, LO_BYTE(APPEARANCE_DEVICE), HI_BYTE(APPEARANCE_DEVICE),
        0x03, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_COMPLETE, LO_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), HI_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), //HID
        0x0D, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, MOUSE_NAME

    };


    MS_PRINT_RED("set normal undirected adv data\n");
    ble_gap_adv_data_set(ad, sizeof(ad), mouse_ble_set_adv_param_and_enable);

    mouse_set_adv_control_timer( 60000, _mouse_normal_undir_adv_TO);
    mouse_led_advertising(A_LED_NORMAL_UNDIR);
}

void mouse_bonded_undir_adv(void)
{

    uint8_t ad[] =
    {
        0x02, BLE_GAP_AD_TYPE_FLAGS, BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE,
        0x03, BLE_GAP_AD_TYPE_APPEARANCE, LO_BYTE(APPEARANCE_DEVICE), HI_BYTE(APPEARANCE_DEVICE),
        0x03, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_COMPLETE, LO_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), HI_BYTE(SERVICE_HUMAN_INTERFACE_DEVICE), //HID
        0x0D, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, MOUSE_NAME
    };

    MS_PRINT_COLOR( 7, "set bonded undirected adv data\n");
    ble_gap_adv_data_set(ad, sizeof(ad), mouse_ble_set_no_scan_adv_param_and_enable);

    mouse_set_adv_control_timer( 60000, _mouse_bonded_undir_adv_TO);
    mouse_led_advertising(A_LED_BONDED_UNDIR);
}

void mouse_dir_adv(void)
{

    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_direct_ind,
        .peer_addr = &ble_bonded_peer,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7, //use two channel for now
    };

    //start adv
    ble_gap_adv_start(&parm, mouse_ble_dir_adv_enable_cb);

    mouse_set_adv_control_timer(1260, _mouse_dir_adv_TO);
}
