/**
  ******************************************************************************
  * @file    irTx.h
  * @author  JackChen
  * @version V1.0
  * @date
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _IRTX_H_
#define _IRTX_H_

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void IRTX_Init(void);
void IR_Send(uint8_t irKeyCode);
void IR_KeyReleased(void);

#endif	/* End of _IRTX_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
