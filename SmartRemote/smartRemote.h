/**
  ******************************************************************************
  * @file	 voiceRemote.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _VOICE_REMOTE_H_
#define _VOICE_REMOTE_H_

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
// All timer queue ID, take care of the resolution, the resolution is 1000ms now
typedef enum
{
	TimerID_BatteryCheck,			// check battery level polling period
	TimerID_LinkTerminateControl,	// delay before terminate link
	TimerID_KeyLongPressed,			// button long pressed check timer
	TimerID_IdleConnTimeout,		// device should perform the GAP Terminate Connection procedure after waiting for an idle connection timeout.
	TimerID_MouseStaticTimeout,		// Mouse stay static timeout, device should disable the airMouse
	TimerID_MicTimeout,				// Microphone work timeout
	TimerID_OtaTimeout,				// OTA timeout
	TimerID_Common,					// It's a common timer
} timerQueueID_t;

/* Exported constants --------------------------------------------------------*/
#define ClockRatio						(8)

// All time define
#define TimeQ_BatteryCheckPeriod		(25000*ClockRatio)
#define TimeQ_IdleConnTimeout			(30000*ClockRatio)
#define TimeQ_DisconnecAfterPowerKey	(2000*ClockRatio)
#define TimeQ_KeyLongPress				(2000*ClockRatio)
#define TimeQ_MouseStaticTime			(6000*ClockRatio)
#define TimeQ_MicOvertime				(10000*ClockRatio)
#define TimeQ_OtaTimeout				(600000*ClockRatio)

// preCompile define
#define WAKEUP_BY_MOTION				(1)
#define GESTURE_BY_MOTION				(1)

/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void APP_InitBeforeBt(void);
void Remote_Init(void);
void Remote_MainLoop(void);

void Timer_SetIdleConnTimeout(void);
void Timer_ReleaseIdleConnTimeout(void);

#endif	/* End of _VOICE_REMOTE_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
