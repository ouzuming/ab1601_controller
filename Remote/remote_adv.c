/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_adv.c
DESCRIPTION
NOTES
********************************************************************************/
#include "remote.h"

static void remote_set_adv_control_timer(uint32_t ms, void (*cb)(void*parm))
{
    #if defined(RC_IRTX) || defined(RC_IRRX)
	DRV_TMR32B0_NotifyEnable(REMOTE_ADV_CTRL_TIMER, ms * 8, true, NULL, cb);
	#else
    DRV_TMR32B0_NotifyEnable(REMOTE_ADV_CTRL_TIMER, ms, true, NULL, cb);
    #endif
	remote_reset_deep_sleep_timer(ms+5000);
}

static void remote_ble_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    printf("enable undirected advertising %s\n", isuccess ? "success" : "failed");
}

static void remote_ble_dir_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    printf("enable directed advertising %s\n", isuccess ? "success" : "failed");
}

static void remote_ble_set_no_scan_adv_param_and_enable(bool isuccess, uint8_t err_code)
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
    ble_gap_adv_start(&parm, remote_ble_adv_enable_cb);

    printf("set adv param and enable\n");
}

static void remote_ble_set_adv_param_and_enable(bool isuccess, uint8_t err_code)
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
    ble_gap_adv_start(&parm, remote_ble_adv_enable_cb);

    printf("set adv param and enable\n");
}

static void _remote_stop_diradv_cb(bool isuccess, uint8_t err_code)
{
    if(isuccess)
    {
        printf("Stop directed advertising success, enter bonded undir adv.\n");

        remote_bonded_undir_adv();
    }
    else
    {
        printf("Stop directed advertising fail.");
    }

}

static void _remote_switch_to_woble_state_cb(bool isuccess, uint8_t err_code)
{
    printf("switch_to_woble_state_cb\n");
    remote_ble_status = BLE_WOBLE;
}

static void _remote_stop_woble_cb(bool isuccess, uint8_t err_code)
{
    printf("Stop Wake up Over BLE advertising %s\n", isuccess ? "success" : "fail");
}

void _remote_woble_TO(void *parm)
{
    if(remote_ble_status == BLE_CONNECTED)
        return;

    printf("woble_TO should deep sleep\n");
    ble_gap_adv_stop(_remote_stop_woble_cb);

    remote_ble_status = BLE_IDLE;
    remote_led_advertising(A_LED_DISABLE);
    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.WOBLE_ADV);
}

void _remote_dir_adv_TO(void *parm)
{
    if(remote_ble_status == BLE_CONNECTED)
        return;

    printf("directed adv 1.28s time out\n");
    ble_gap_adv_stop(_remote_stop_diradv_cb);
}

void remote_switch_to_woble_adv(void)
{
    printf("switching to woble\n");

    ble_gap_adv_stop(_remote_switch_to_woble_state_cb);
}

void remote_wake_up_over_ble_adv(void)
{
    static uint8_t seq = 0;
    uint8_t ad[] =
    {
        0x02, 0x01, 0x05,
        0x03, 0x19, 0x80, 0x01,
        0x03, 0x02, 0x12, 0x18,
#ifdef RC_HOST_1
        HOST_1_WAKE_TV_ADV
#else
        0x13, 0xFF, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
              0xFF, 0xFF, 0xFF, 'A' , 'i' , 'r' , 'o' , 'h' , 'a'
#endif
    };
    printf("waking up TV over BLE\n");


#ifdef RC_HOST_1
    HOST_1_WOBLE_BEHAVIOR
#endif
    memcpy(&ad[16], ble_bonded_peer.addr, 6);

    ble_gap_adv_data_set(ad, sizeof(ad), remote_ble_set_no_scan_adv_param_and_enable);

    remote_set_adv_control_timer(10000,_remote_woble_TO);
    remote_led_advertising(A_LED_WOBLE);
    remote_ble_status = BLE_ADVERTISING;

}

void _remote_normal_undir_adv_TO(void* parm)
{
    if(remote_ble_status == BLE_CONNECTED)
        return;


    printf("normal_undir_adv_TO, should deep sleep now\n");

    ble_gap_adv_stop(NULL);

    remote_ble_status = BLE_IDLE;
    remote_led_advertising(A_LED_DISABLE);
    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.UNDIR_ADV);
}

void _remote_bonded_undir_adv_TO(void* parm)
{
    if(remote_ble_status == BLE_CONNECTED)
        return;


    printf("bonded_undir_adv_TO, should deep sleep now\n");

    ble_gap_adv_stop(NULL);

    remote_ble_status = BLE_IDLE;
    remote_led_advertising(A_LED_DISABLE);
    remote_button_drop_all();

    remote_reset_deep_sleep_timer(rc_deepsleep_timeout.BONDED_UNDIR_ADV);
}

void remote_normal_undir_adv(void)
{
    uint8_t ad[] =
    {
        0x02, 0x01, 0x05,
        0x03, 0x19, 0x80, 0x01,
        0x03, 0x02, 0x12, 0x18,
#ifdef RC_HOST_1
        HOST_1_NORMAL_UNDIR_ADV
#else
        0x13, 0xFF, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
              0xFF, 0xFF, 0xFF, 'A' , 'i' , 'r' , 'o' , 'h' , 'a'
#endif
    };
    printf("set normal undirected adv data\n");
    ble_gap_adv_data_set(ad, sizeof(ad), remote_ble_set_adv_param_and_enable);

    remote_set_adv_control_timer(30000, _remote_normal_undir_adv_TO);
    remote_led_advertising(A_LED_NORMAL_UNDIR);
}

void remote_bonded_undir_adv(void)
{

    uint8_t ad[] =
    {
        0x02, 0x01, 0x05,
        0x03, 0x19, 0x80, 0x01,
        0x03, 0x02, 0x12, 0x18,
#ifdef RC_HOST_1
        HOST_1_BONDED_UNDIR_ADV
#else
        0x13, 0xFF, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
              0xFF, 0xFF, 0xFF, 'A' , 'i' , 'r' , 'o' , 'h' , 'a'
#endif

    };

    printf("set bonded undirected adv data\n");
    ble_gap_adv_data_set(ad, sizeof(ad), remote_ble_set_no_scan_adv_param_and_enable);

    remote_set_adv_control_timer(30000, _remote_bonded_undir_adv_TO);
    remote_led_advertising(A_LED_BONDED_UNDIR);
}

void remote_dir_adv(void)
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
    ble_gap_adv_start(&parm, remote_ble_dir_adv_enable_cb);

    remote_set_adv_control_timer(1260, _remote_dir_adv_TO);
}
