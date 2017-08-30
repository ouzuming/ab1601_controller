/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_typedef.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __MOUSE_TYPEDEF_HH_
#define __MOUSE_TYPEDEF_HH_

typedef void (*MS_LOOP_FUNC)(void);

typedef enum
{
    BLE_IDLE,
    BLE_ACTIVATED,
    BLE_ADVERTISING,
    BLE_WOBLE,
    BLE_CONNECTED,
} MS_BLE_STATUS;

typedef enum
{
    MOUSE_TIMER          = 1,
    MOUSE_ADV_CTRL_TIMER       = 2,
}REMOTE_TIMER0_ASSIGN;

typedef enum
{
    TIMER_ID_DEEPSLEEP_CONTROL,
    TIMER_ID_SLEEP,
    TIMER_ID_CONN_UPDATE_CONTROL,
    TIMER_ID_WAIT_MP_COMMAND,
    TIMER_ID_BLOCK_KEY_CODE,
    TIMER_ID_CHECK_VBAT_VALUE,

    TIMER_ID_WAKE_GPIO_LOW,
    TIMER_ID_WAKE_GPIO_HIGH,
    TIMER_ID_WAKE_UNLOCKED,
    TIMER_ID_AB1520S_KEEP_WAKE,
    TIMER_ID_BYPASS_MODE,

}MS_TIMER_ENUM;

typedef enum
{
    A_LED_DISABLE,
    A_LED_NORMAL_UNDIR,
    A_LED_BONDED_UNDIR,
    A_LED_WOBLE,
    A_LED_NEGOTIATE_CONN,
}MS_ADVERTISING_LED;

typedef enum
{
    F_LED_ALL_DISABLED      = 0x00,
    F_LED_BUTTON_PRESSED    = 0x01,
    F_LED_MOUSE_BT_DIS      = 0x02,
    F_LED_MOUSE_BT_CONN     = 0x04,
    F_LED_MOUSE_POWER_ON 	= 0x08,	
}MS_FUNCTION_LED;

typedef union
{
    uint8_t reg;
    struct{
        uint8_t     mouse_on        :1;
        uint8_t     irt_on          :1;
        uint8_t     reserve         :6;
    } field;
}MS_SLEEP_CTRL;

#endif

