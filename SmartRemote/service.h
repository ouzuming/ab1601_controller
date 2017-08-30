/**
  ******************************************************************************
  * @file	 service.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _SERVICE_H_
#define _SERVICE_H_

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
extern uint8_t hids_Report2[20];
extern uint8_t hids_Report4[1];

extern uint16_t hids_HandleReport2;

/* Exported functions ------------------------------------------------------- */
void GATT_ServiceInit(void);
void HOGP_SendReport(uint16_t attHandle);
void HOGP_SendConsumerKey(uint16_t keyCode);
void HOGP_SendKeyboard(uint16_t keyCode);
void HOGP_SendMouse(uint8_t x, uint8_t y);
void HOGP_SetMouseButton(uint8_t button);
uint8_t HOGP_GetMouseButton(void);

#endif	/* End of _SERVICE_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
