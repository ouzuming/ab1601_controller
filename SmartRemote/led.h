/**
  ******************************************************************************
  * @file	 led.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _LED_H_
#define _LED_H_

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
typedef enum
{
	LED_Disable		= 0x01,
	LED_PowerKey	= 0x02,
	LED_Keyboard	= 0x04,
	LED_Microphone  = 0x08,
	LED_Mouse		= 0x10,
	LED_AlwaysOn	= 0x20,
	LED_Ota			= 0x40,
} ledEvent_t;


/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void LED_Init(void);
void LED_DeInit(void);
void LED_Process(void);
void LED_SetEvent(ledEvent_t event);


#endif	/* End of _LED_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
