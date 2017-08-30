/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_led.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __MOUSE_LED_HH__
#define __MOUSE_LED_HH__

void mouse_led_init(void);
void mouse_led_advertising(MS_ADVERTISING_LED  sel);
void mouse_led_rc_function_enable(MS_FUNCTION_LED sel);
void mouse_led_rc_function_disable(MS_FUNCTION_LED sel);
void mouse_led_enable(bool enable);
#endif
