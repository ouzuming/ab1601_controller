/**
  ******************************************************************************
  * @file	 microphone.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _MICROPHONE_H
#define _MICROPHONE_H

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
#define ADPCM_SEL_IMA				(true)		// true: IMA ADPCM, false: G726
#define ADPCM_HALFRATE				(false)		// true: 1/8 compression rate, false: 1/4 compression rate

/* Exported functions ------------------------------------------------------- */
void MIC_Init(void);
void MIC_Polling(void);
void MIC_Enable(void);
void MIC_Disable(void);

void MIC_CodecSel_IMA(void);
void MIC_CodecSel_G726(void);


#endif	/* End of _MICROPHONE_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
