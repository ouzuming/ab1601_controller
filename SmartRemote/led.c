/**
  ******************************************************************************
  * @file	 led.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_led.h"
#include "drv_led.h"
#include "drv_odgpio.h"

#include "led.h"
#include "peripheral.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void LED_BtStateIndicate(gapStatus_t currBtState);
static void LED_RemoteStateIndicate(void);

/* Private variables ---------------------------------------------------------*/
static ledEvent_t ledEvent = 0;

/* Public functions ----------------------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/**
  * @brief  LED INIT, TODO: This configuration will effect the deepSleep current?
  * @param  None
  * @retval None
  */
void LED_Init(void)
{
	// ODGPIO assigned, LED0 and LED1 used, ODIO2->LED0, ODIO0->LED1
	AB_LED_init(ab_led0, ab_odio2);
	//AB_LED_init(ab_led1, ab_odio0);

    DRV_OdGpio_IeSet(1<<2, 0);

    AB_LED_stop(ab_led0);
    //AB_LED_stop(ab_led1);
}

void LED_DeInit(void)
{
    AB_LED_deinit(ab_odio0);
    AB_LED_deinit(ab_odio1);
    AB_LED_deinit(ab_odio2);
}

/**
  * @brief  LED init
  * @param  None
  * @retval None
  */
void LED_Process(void)
{
	LED_RemoteStateIndicate();
}

void LED_SetEvent(ledEvent_t event)
{
	ledEvent |= event;
}

/**
  * @brief	led1 is used for remote function indicate
  * @param  None
  * @retval None
  */
static void LED_RemoteStateIndicate(void)
{
	uint8_t event = 0x01;

	if (ledEvent == 0)
	{
		return;
	}

	// Only process one event, ignore all event else
	while (event)
	{
		if (ledEvent & event)
			break;
		event <<= 1;
	}
	ledEvent = 0;

	switch (event)
	{
		case LED_Disable:
		{
			AB_LED_stop(ab_led1);
		} break;
		case LED_PowerKey:
		{
            AB_LED_set_blink(ab_led1, 200, 0, 2);
            AB_LED_start(ab_led1);
		} break;
		case LED_Keyboard:
		{
            AB_LED_set_blink(ab_led1, 100, 0, 1);
            AB_LED_start(ab_led1);
		} break;
		case LED_Microphone:
		{
			AB_LED_set_breath(ab_led1, 1000, 0, 1);
			AB_LED_start(ab_led1);
		} break;
		case LED_Mouse:
		{

		} break;
		case LED_Ota:
		{
		    ab_led_flags flag;
		    flag.breath = 0;
		    flag.low_active = 1;
		    flag.infinit = 1;
			AB_LED_set_rawdata(ab_led1, 100, 100, 2000, 1, flag, ab_led1);

            AB_LED_start(ab_led1);
		} break;
		case LED_AlwaysOn:
		{
			AB_LED_set_on(ab_led1);
			AB_LED_start(ab_led1);
		} break;
		default: break;
	}
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
