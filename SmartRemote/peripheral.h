/**
  ******************************************************************************
  * @file    peripheral.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _PERIPHERAL_H_
#define _PERIPHERAL_H_

/* Includes ------------------------------------------------------------------*/
#include "bt.h"
#include "ble_gap_sm.h"
#include "bsp_generic.h"
#include "Drv_timer32b0.h"
#include "Drv_Gpio.h"
#include "Drv_pwr.h"
#include "Drv_Mic.h"
#include "Drv_wdt.h"
#include "Drv_adc.h"
#include "ab_pwr.h"
#include "ab_uart.h"
#include "ab_timer.h"
#include "ab_mp_sector.h"

/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
// GAP state enum
typedef enum
{
	GAP_INIT,
	GAP_STANDBY,
	GAP_ADVERTISING,
	GAP_CONNECTED,
	GAP_DISCONNECTED,
	GAP_ERROR,
} gapStatus_t;

// Timer0 Match used
typedef enum
{
										// Match0 is occupied by timer queue
	TIMER_GAP_CTRL		= 1,			// Match1 is used for GAP timer
	TIMER_MOUSE_CTRL	= 2,			// Match2 is used for motion
	TIMER_IR_CTRL		= 3,			// Match3 is used for IR
} hardTimerAssign_t;

/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void gapRole_GapEventHandle(bt_evt_t *evt);
gapStatus_t GAP_GetGapStatus(void);
bool GAP_IsLinkEncrypted(void);
bool GAP_IsBonded(void);
bool GAP_IsConnIntervalIdeal(void);

void MP_DataInit(void);
void GAP_TerminateConnection(uint32_t timerID);
void GAP_UpdateConnParam4OTA(void);

void GapTimer_Set(uint32_t ms, void (*cb)(void *param));
void GapTimer_Release(void);

#endif	/* End of _PERIPHERAL_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
