/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_led.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_LED_HH__
#define __REMOTE_LED_HH__

void remote_led_init(void);
void remote_led_deinit(void);
void remote_led_advertising(RC_ADVERTISING_LED  sel);
void remote_led_rc_function_enable(RC_FUNCTION_LED sel);
void remote_led_rc_function_disable(RC_FUNCTION_LED sel);
void remote_led_rc_function_state_clear(RC_FUNCTION_LED sel);
void remote_led_change_brightness_by_bat_lvl(uint8_t bat_lv);

#endif
