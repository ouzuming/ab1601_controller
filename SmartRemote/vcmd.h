/**
  ******************************************************************************
  * @file	 vcmd.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _VCMD_H_
#define _VCMD_H_

/* Includes ------------------------------------------------------------------*/
#include "ab_airoha_vcmd.h"

/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
typedef enum
{
    RC_VCMD_SUCCESS = 0,
    RC_VCMD_ERROR_GENERAL = 1,
    RC_VCMD_ERROR_COMMAND_NOT_SUPPORT = 2,
    RC_VCMD_EXECUTING = 0xFF,
 /* Speicial case, use for control non-blocking handler*/
} RC_VCMD_ERROR_CODE;

/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void VCMD_Handler(vcmd_packet *pkt);
void VCMD_MouseCalibrateInLoop(void);

#endif	/* End of _VCMD_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
