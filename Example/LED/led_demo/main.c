/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
  \page Example_LED_led_demo "Example/LED/led_demo"
  \code {.c}
*/

#include "ab1600.h"
#include "bsp_generic.h"
#include "Drv_odpinmux.h"
#include "Drv_Gpio.h"
#include "Ab_led.h"
/******************************************************************************
* defines
******************************************************************************/
#define ANSI_ED  "\x1B[2J"
#define ANSI_CUP "\x1b[%d;%dH"

typedef enum
{
    LED_MODE_OFF = 0,
    LED_MODE_BREATH = 1,
    LED_MODE_BLINK = 2,
    LED_MODE_ON = 3,
}led_mode;

const char *led_mode_string[] = {"off", "breath", "blink", "on"};
/******************************************************************************
* variables
******************************************************************************/
extern const console_cmds_t cmd_led_tbl[] ;
const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};

static uint8_t led0_mode = LED_MODE_OFF;
static uint8_t led1_mode = LED_MODE_OFF;
static uint16_t led0_time_ms = 1000; //1 sec default
static uint16_t led1_time_ms = 1000; //1 sec default
static uint8_t follow = 0; //0: no follow, 1: 0 follow 1, 2: 1 follow 0

/******************************************************************************
* trigger
******************************************************************************/
void showStatus()
{
    printf("LED0: %s", led_mode_string[led0_mode]);
    if(led0_mode == LED_MODE_OFF || led0_mode == LED_MODE_ON)
        printf("\n");
    else
        printf("(%d ms)\n", led0_time_ms/2);
    
    printf("LED1: %s", led_mode_string[led1_mode]);
    if(led1_mode == LED_MODE_OFF || led1_mode == LED_MODE_ON)
        printf("\n");
    else
        printf("(%d ms)\n", led1_time_ms/2);

    if(follow && led0_mode != LED_MODE_ON && led1_mode != LED_MODE_ON && led0_mode != LED_MODE_ON && led1_mode != LED_MODE_OFF)
    {
        if(follow == 1)
            printf("LED0 follow LED1\n");
        else if(follow == 2)
            printf("LED1 follow LED0\n");
    }

}

void showMenu()
{
    
    printf("========================================\n");
    printf("Press button 1~7 to adjust LED demo\n");
    printf("========================================\n");
    printf("1: LED0 mode (blink, breath, on, off)\n");
    printf("2: LED1 mode (blink, breath, on, off)\n");
    printf("3: LED0 time increase(+) 50ms~2500ms)\n");
    printf("4: LED0 time increase(-) 50ms~2500ms)\n");
    printf("5: LED1 time increase(+) 50ms~2500ms)\n");
    printf("6: LED1 time increase(-) 50ms~2500ms)\n");
    printf("7: FOLLOW (LED0<=LED1, LED1<=LED0)\n");
}

void gpio_int(uint8_t num)
{
    switch(num)
    {
        case 1:
            led0_mode = (++led0_mode)%4;
            break;
        case 2:
            led1_mode = (++led1_mode)%4;
            break;
        case 3:
            led0_time_ms = led0_time_ms + 100;
            if(led0_time_ms > 5000)
                led0_time_ms = 1000;
            break;
        case 4:
            led0_time_ms = led0_time_ms - 100;
            if(!led0_time_ms)
                led0_time_ms = 5000;
            break;
        case 5:
            led1_time_ms = led1_time_ms + 100;
            if(led1_time_ms > 5000)
                led1_time_ms = 1000;
            break;
        case 6:
            led1_time_ms = led1_time_ms - 100;
            if(!led1_time_ms)
                led1_time_ms = 5000;
            break;
        case 7:
                follow = (++follow)%3;
            
            break;
    }

    printf("int = %d\n", num);


    //set led 
    AB_LED_stop(ab_led0);    
    AB_LED_stop(ab_led1);    
    
    switch(led0_mode)
    {
        case LED_MODE_OFF:
            AB_LED_stop(ab_led0);
            break;
        case LED_MODE_BREATH:
            AB_LED_set_breath(ab_led0, led0_time_ms,0, 0);// set 0 times means infinite
            break;
        case LED_MODE_BLINK:
            AB_LED_set_blink(ab_led0, led0_time_ms,0, 0);// set 0 times means infinite
            break;
        case LED_MODE_ON:
            AB_LED_set_on(ab_led0);
            break;
    }


    switch(led1_mode)
    {
        case LED_MODE_OFF:
            AB_LED_stop(ab_led1);
            break;
        case LED_MODE_BREATH:
            AB_LED_set_breath(ab_led1, led1_time_ms,0, 0);// set 0 times means infinite
            break;
        case LED_MODE_BLINK:
            AB_LED_set_blink(ab_led1, led1_time_ms,0, 0);// set 0 times means infinite
            break;
        case LED_MODE_ON:
            AB_LED_set_on(ab_led1);
            break;
    }


    printf(ANSI_ED);
    printf(ANSI_CUP, 0, 0);
    //show status
    showMenu();
    showStatus();


    if(!follow || led0_mode == LED_MODE_ON || led1_mode == LED_MODE_ON || led0_mode == LED_MODE_OFF || led1_mode == LED_MODE_OFF)
    {//no follow mode
        if(led0_mode != LED_MODE_OFF)
            AB_LED_start(ab_led0);
        if(led1_mode != LED_MODE_OFF)
            AB_LED_start(ab_led1);
    }
    else
    {

        if(follow == 1)
            AB_LED_follow_start(ab_led0, ab_led1);
        else if(follow == 2)
            AB_LED_follow_start(ab_led1, ab_led0);



    }    

}



/******************************************************************************
* main
******************************************************************************/
void main()
{
    uint8_t i;
    AB_BSP_init(&bsp_init_parm);

    printf("\nODIO2 is switched to LED0\n");
    printf("ODIO3 is switched to LED1\n");

    showMenu();
    
    //boot led 
    AB_LED_set_blink(ab_led0, 500, 0, 3);
    AB_LED_set_blink(ab_led1, 500, 0, 3);
    AB_LED_follow_start(ab_led1, ab_led0);
    
    DRV_OdPinMux_SigSet((1 << 2), PIN_OD_LED0);
    DRV_OdPinMux_SigSet((1 << 3), PIN_OD_LED1);

    for(i = 1; i < 8; i++)
    {
        DRV_Gpio_IntReg(i, EDGE_NEG, gpio_int);
        DRV_Gpio_IntEn(i);
    }

    while(1);
} 

/*!
      \endcode

*/

