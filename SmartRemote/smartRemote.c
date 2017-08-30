/**
  ******************************************************************************
  * @file    voiceRemote.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   voice Remote application
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_queue.h"
#include "ab_clk.h"
#include "ab_spi.h"
#include "ab_led.h"
#include "ab_assert.h"
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void Remote_BtStatusChangeHandler(void);
static void Remote_IdleConnTimeoutCB(uint32_t timerID);
static void Battery_Init(void);
static void Battery_CheckLevel(uint32_t id);

/* Private variables ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/
/**
  * @brief  Some application initialization before BT, INIT Timer and get BDAddress
  * @param  None
  * @retval None
  */
void APP_InitBeforeBt(void)
{
	// INIT keyboard before BT if want to capture the wake up key
	Keyboard_Init();

	// Enable Timer, 125us clock if IR used, resolution is only 1s
    AB_Timer_Enable_Ext(1000, TMR32B0_125US);

    // Get BDAddress from MPdata
    MP_DataInit();
}

/**
  * @brief  Application Initialization.
  * @param  None
  * @retval None
  */
void Remote_Init(void)
{
	//Keyboard_Init();

	Battery_Init();

	LED_Init();

	MIC_Init();

	//Mouse_Init();

	IRTX_Init();
}

/**
  * @brief  MainLoop.
  * @param  None
  * @retval None
  */
void Remote_MainLoop(void)
{
	Keyboard_Polling();

	MIC_Polling();

	//Mouse_Polling();

	//LED_Process();		// Caution: only process LED1 in this function

	Remote_BtStatusChangeHandler();

	Board_PowerManagement();

	DRV_WDT_Kick();
}

/**
  * @brief  Set idle connection timeout, use timeID TimerID_IdleConnTimeout
  * @param  timerID
  * @retval None
  */
void Timer_SetIdleConnTimeout(void)
{
	AB_Timer_AlertSet(TimerID_IdleConnTimeout, false, TimeQ_IdleConnTimeout, Remote_IdleConnTimeoutCB);
	printf("Timer Set idleConn timeout\r\n");
}

/**
  * @brief  release idle connection timeout, use timeID TimerID_IdleConnTimeout
  * @param  timerID
  * @retval None
  */
void Timer_ReleaseIdleConnTimeout(void)
{
	AB_Timer_AlertUnset(TimerID_IdleConnTimeout);
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Remote BT status changed process: LED indication, timer process
  * @param  None
  * @retval None
  */
static void Remote_BtStatusChangeHandler(void)
{
	static gapStatus_t lastBtState = GAP_INIT;
	gapStatus_t currBtState = GAP_GetGapStatus();

	if (currBtState != lastBtState)
	{
		switch (currBtState)
		{
			case GAP_INIT:
			{

			} break;
			case GAP_STANDBY:
			{
	            AB_LED_stop(ab_led0);
			} break;
			case GAP_ADVERTISING:
			{
				AB_LED_set_breath(ab_led0, 1000, 1000, 0);
	            AB_LED_start(ab_led0);
			} break;
			case GAP_CONNECTED:
			{
	            AB_LED_set_blink(ab_led0, 200, 0, 2);
	            AB_LED_start(ab_led0);

	            // Set idleConn timeout
	            Timer_SetIdleConnTimeout();
			} break;
			case GAP_DISCONNECTED:
			{
				// Release idleConn timeout and OTA timeout
				Timer_ReleaseIdleConnTimeout();
				AB_Timer_AlertUnset(TimerID_OtaTimeout);

				// TODO: disable something
				MIC_Disable();
				//Mouse_Disable();

			} break;

			default: break;
		}

		lastBtState = currBtState;
	}
}

/**
  * @brief  Idle connection timeout handle CB
  * @param  timerID
  * @retval None
  */
static void Remote_IdleConnTimeoutCB(uint32_t timerID)
{
	// some module working, repeat timer
	if (Board_GetModuelWorkState())
	{
		Timer_SetIdleConnTimeout();
	}
	else
	{
		// No module working, terminate connection
		GAP_TerminateConnection(0);
	}
}

/**
  * @brief  Battery check initialization
  * @param  timerID
  * @retval None
  */
static void Battery_Init(void)
{
	Battery_CheckLevel(0);

	// Set BAT check polling timer
	AB_Timer_AlertSet(TimerID_BatteryCheck, true, TimeQ_BatteryCheckPeriod, Battery_CheckLevel);
}

/**
  * @brief  Check battery level, Timer CB function
  * @param  timerID
  * @retval None
  */
static void Battery_CheckLevel(uint32_t id)
{
	// battery level percentage
	static uint8_t batteryLevel = 0;

	// Skip if microphone is working
	if ( Board_GetModuelWorkState() & MODULE_MIC )
	{
		printf("BATT skip checking, as microphone is working\r\n");
		return;
	}

	uint16_t voltage = AB_ADC_Get_Voltage(VBAT);
	uint8_t battPercentage;

	printf("BATT Voltage %d\r\n", voltage);
	// convert voltage value to percentage value
	switch (voltage)
	{
		// TODO: Must modify the case value if different battery used???
		case 330 ... 65535:
			battPercentage = 100;
			break;
		case 240 ... 329:
			battPercentage = 40 + ((voltage - 240) * 60 / 90);
			break;
		case 220 ... 239:
			battPercentage = 20 + ((voltage - 220) * 20 / 20);
			break;
		case 200 ... 219:
			battPercentage = 10 + ((voltage - 200) * 10 / 20);
			break;
		case 180 ... 199:
			battPercentage = 0 + ((voltage - 180) * 10 / 20);
			break;
		case 0 ... 179:
			battPercentage = 0;
			break;
	}

	// Update if level changed
	if (battPercentage != batteryLevel)
	{
		// Update batteryLevel
		batteryLevel = battPercentage;
		printf("BATT percent %%%d\r\n", batteryLevel);

		// notify if GAP connected
		if (GAP_GetGapStatus() == GAP_CONNECTED)
		{
			BAS_update_battery_level(batteryLevel, true);
		}
		else
		{
			BAS_update_battery_level(batteryLevel, false);
		}

		// TODO: forbid functions according to batteryLevel
	}
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
