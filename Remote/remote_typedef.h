/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_typedef.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_TYPEDEF_HH_
#define __REMOTE_TYPEDEF_HH_

typedef void (*RC_LOOP_FUNC)(void);


typedef enum
{
    MIC_ENABLED,
    MIC_LOCAL_DISABLED,
    MIC_REMOTE_DISABLED,
} RC_MIC_STATUS;

typedef enum
{
    BLE_IDLE,
    BLE_ACTIVATED,
    BLE_ADVERTISING,
    BLE_WOBLE,
    BLE_CONNECTED,
} RC_BLE_STATUS;

typedef enum
{
    REMOTE_MIC_MOUSE_TIMER      = 1,
    REMOTE_ADV_CTRL_TIMER       = 2,
}REMOTE_TIMER0_ASSIGN;

typedef enum
{
    TIMER_ID_DEEPSLEEP_CONTROL,
    TIMER_ID_COMBO_KEY,
    TIMER_ID_CONN_UPDATE_CONTROL,
    TIMER_ID_WAIT_MP_COMMAND,
    TIMER_ID_BLOCK_KEY_CODE,
    TIMER_ID_CHECK_VBAT_VALUE,
    TIMER_ID_MOUSE_SELF_DISABLE,

    TIMER_ID_WAKE_GPIO_LOW,
    TIMER_ID_WAKE_GPIO_HIGH,
    TIMER_ID_WAKE_UNLOCKED,
    TIMER_ID_AB1520S_KEEP_WAKE,
    TIMER_ID_BYPASS_MODE,

}RC_TIMER_ENUM;

typedef enum
{
    A_LED_DISABLE,
    A_LED_NORMAL_UNDIR,
    A_LED_BONDED_UNDIR,
    A_LED_WOBLE,
}RC_ADVERTISING_LED;

typedef enum
{
    F_LED_ALL_DISABLED                  = 0x00,
    F_LED_BUTTON_PRESSED                = 0x01,
    F_LED_MOUSE                         = 0x02,
    F_LED_MOUSE_WAIT_STEADY             = 0x04,
    F_LED_MOUSE_CALIBRATING             = 0x08,
    F_LED_MICROPHONE                    = 0x10,
    F_LED_FUNC_DISABLED_BY_LOW_BAT      = 0x20,
    F_LED_LOW_BAT                       = 0x40,
    F_LED_DFU_OTA                       = 0x80,
}RC_FUNCTION_LED;

typedef union
{
    uint8_t reg;
    struct{
        uint8_t     mouse_on        :1;
        uint8_t     mic_on          :1;
        uint8_t     ir_on           :1;
        uint8_t     ir_learning     :1;
        uint8_t     reserve         :4;
    } field;
}RC_SLEEP_CTRL;

#endif

