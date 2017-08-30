/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_led.c
DESCRIPTION
NOTES
********************************************************************************/
#include "remote.h"
#include "Ab_led.h"
#include "Drv_odgpio.h"


void remote_led_init(void)
{

    printf("\n***********************************************************\n");
    printf("ODIO0 is switched to LED0, indicating Advertising status.\n");
    printf("ODIO1 is switched to LED1, indicating RC function status.\n");
    printf("ODIO2 is connected to LED but not used in this project,\n");
    printf(" must disable input path to eliminate leakage.");
    printf("\n***********************************************************\n");

    AB_LED_init(ab_led0, ab_odio0);
    AB_LED_init(ab_led1, ab_odio1);

    DRV_OdGpio_IeSet(1<<2, 0);
}

void remote_led_deinit(void)
{
    AB_LED_deinit(ab_odio0);
    AB_LED_deinit(ab_odio1);
    AB_LED_deinit(ab_odio2);
}

void remote_led_advertising(RC_ADVERTISING_LED sel)
{
    switch(sel)
    {
        case A_LED_DISABLE:
            AB_LED_stop(ab_led0);
            break;
        case A_LED_NORMAL_UNDIR:
            AB_LED_set_blink(ab_led0, 332, 0, 0);
            AB_LED_start(ab_led0);
            break;
        case A_LED_BONDED_UNDIR:
            AB_LED_set_blink(ab_led0, 2500, 0, 0);
            AB_LED_start(ab_led0);
            break;
        case A_LED_WOBLE:
            AB_LED_set_blink(ab_led0, 2500, 1000, 0);
            AB_LED_start(ab_led0);
            break;
    }
}

static uint8_t led_state = 0;

void remote_led_state_change(void)
{
    RC_FUNCTION_LED sel;
    uint8_t mask = 0x80;

    while(mask)
    {
        if(sel = led_state & mask)
            break;
        mask >>= 1;
    }

    switch(sel)
    {
        case F_LED_ALL_DISABLED:
            AB_LED_stop(ab_led1);
            break;
        case F_LED_BUTTON_PRESSED:
            AB_LED_set_blink(ab_led1, 200, 0, 1);
            AB_LED_start(ab_led1);
            break;
        case F_LED_MOUSE:
            AB_LED_set_breath(ab_led1, 2000, 0, 0);
            AB_LED_start(ab_led1);
            break;
        case F_LED_MOUSE_WAIT_STEADY:
            AB_LED_set_blink(ab_led1, 1000, 0, 0);
            AB_LED_start(ab_led1);
            break;
        case F_LED_MOUSE_CALIBRATING:
            AB_LED_set_blink(ab_led1, 300, 0, 0);
            AB_LED_start(ab_led1);
            break;
        case F_LED_MICROPHONE:
            AB_LED_set_on(ab_led1);
            AB_LED_start(ab_led1);
            break;
        case F_LED_FUNC_DISABLED_BY_LOW_BAT:
            AB_LED_set_blink(ab_led1, 150, 0, 3);
            AB_LED_start(ab_led1);
            break;
        case F_LED_LOW_BAT:
            AB_LED_set_blink(ab_led1, 200, 3000, 2);
            AB_LED_start(ab_led1);
            break;
        case F_LED_DFU_OTA:
            AB_LED_set_breath(ab_led1, 4000, 0, 0);
            AB_LED_start(ab_led1);
            break;
    }
}

void remote_led_rc_function_enable(RC_FUNCTION_LED enable)
{
    uint8_t old_state = led_state;

    led_state |= enable;

    if(enable >= old_state)
        remote_led_state_change();
}

void remote_led_rc_function_disable(RC_FUNCTION_LED disable)
{
    led_state &= ~disable;

    if(disable > led_state)
        remote_led_state_change();
}

void remote_led_rc_function_state_clear(RC_FUNCTION_LED clear)
{
    led_state &= ~clear;
}

void remote_led_change_brightness_by_bat_lvl(uint8_t bat_lv)
{
    switch(bat_lv)
    {
        case 81 ... 255:
            AB_LED_set_brightness(ab_led_level_1, ab_led_level_3);
            break;
        case 61 ... 80:
            AB_LED_set_brightness(ab_led_level_2, ab_led_level_4);
            break;
        case 41 ... 60:
            AB_LED_set_brightness(ab_led_level_3, ab_led_level_5);
            break;
        case 21 ... 40:
            AB_LED_set_brightness(ab_led_level_4, ab_led_level_6);
            break;
        case 11 ... 20:
            AB_LED_set_brightness(ab_led_level_A, ab_led_level_C);
            break;
        case 0 ... 10:
            AB_LED_set_brightness(ab_led_level_D, ab_led_level_F);
            break;
    }
}
