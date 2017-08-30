/**
  ******************************************************************************
  * @file	 board.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _BOARD_H_
#define _BOARD_H_

/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_clk.h"
#include "ab_uart.h"
#include "ab_timer.h"
#include "ab_pwr.h"
#include "ab_led.h"
#include "ab_mp_sector.h"

#include "drv_timer32b0.h"
#include "drv_timer32b1.h"
#include "drv_pwr.h"
#include "drv_keyScan.h"
#include "drv_mic.h"
#include "drv_adc.h"
#include "drv_Gpio.h"
#include "Drv_PinMux.h"
#include "bt.h"

#include "smartRemote.h"
#include "peripheral.h"
#include "service.h"
#include "microphone.h"
#include "keyboard.h"
#include "led.h"
#include "irTx.h"
#include "irRx.h"

/* Exported macros -----------------------------------------------------------*/
// All modules which would affect powerSaving
#define	MODULE_MIC		0x01
#define MODULE_MOUSE	0x02
#define MODULE_IRTX		0x04
#define MODULE_OTA		0x08
#define MODULE_IRRX		0x10

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void Board_Init(void);
void MP_DataInit(void);
void Board_PowerManagement(void);
void Board_SoftResetEnable(uint32_t id);
void Board_DeepSleepEnable(uint32_t id);
void Board_SetModuleWorkState(bool isWorking, uint8_t module);
uint8_t Board_GetModuelWorkState(void);


#endif	/* End of _BOARD_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
