/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_led.c
DESCRIPTION
NOTES
********************************************************************************/
#include "mouse.h"
#include "Ab_led.h"
#include "Drv_odgpio.h"

//#define MOUSE_LED_OFF

void mouse_led_init(void)
{

    MS_PRINT("\n***********************************************************\n");
    MS_PRINT("ODIO0 is switched to LED0, indicating Advertising status.\n");
    MS_PRINT("ODIO1 is switched to LED1, indicating Mouse function status.\n");
    MS_PRINT("ODIO2 is connected to LED but not used in this project,\n");
    MS_PRINT(" must disable input path to eliminate leakage.");
    MS_PRINT("\n***********************************************************\n");
	

    AB_LED_init(ab_led0, ab_odio0);
    AB_LED_init(ab_led1, ab_odio1);

    DRV_OdGpio_IeSet(1<<2, 0);
}


void mouse_led_advertising(MS_ADVERTISING_LED sel)
{
#ifdef MOUSE_LED_OFF
	AB_LED_stop(ab_led0);
	AB_LED_stop(ab_led1);
	return;
#endif

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
            AB_LED_set_blink(ab_led0, 600, 600, 0);
            AB_LED_start(ab_led0);
            break;
		case A_LED_NEGOTIATE_CONN:
			AB_LED_set_blink(ab_led0, 150, 150, 0);
			AB_LED_start(ab_led0);
			break;
    }

}

static uint8_t led_state = 0;

void mouse_led_rc_function_enable( MS_FUNCTION_LED sel )
{
#ifdef MOUSE_LED_OFF

	AB_LED_stop(ab_led0);
	AB_LED_stop(ab_led1);

	return;
#endif

    switch(sel)
    {
        case F_LED_ALL_DISABLED:
            AB_LED_stop(ab_led0);
            AB_LED_stop(ab_led1);
            break;
            
        case F_LED_MOUSE_BT_DIS:
            AB_LED_set_breath(ab_led1, 200, 0, 0);
            AB_LED_start(ab_led1);
            break;
                    
        case F_LED_MOUSE_BT_CONN:
            AB_LED_set_on(ab_led1);
            AB_LED_start(ab_led1);
            break;

        case F_LED_MOUSE_POWER_ON:
            AB_LED_set_on(ab_led0);
            AB_LED_set_on(ab_led1);
            
            AB_LED_start(ab_led0);
            AB_LED_start(ab_led1);
            break;     
        }

}

void mouse_led_rc_function_disable(MS_FUNCTION_LED sel )
{
    AB_LED_stop(ab_led1);
}


void mouse_led_enable(bool enable)
{
	AB_LED_stop(ab_led0);
	AB_LED_stop(ab_led1);
    
}
