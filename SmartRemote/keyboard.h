/**
  ******************************************************************************
  * @file	 keyboard.h
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  *******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _KEYBOARD_H_
#define _KEYBOARD_H_

/* Includes ------------------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/** 5 Rows, 5 Columns, 0 PowerKey GPIO **/
#define ROW_NUM      3
#define COL_NUM      4
// Rows
#define KS_R0     	18
#define KS_R1     	19
#define KS_R2     	20

// Columns
#define KS_C0      	0
#define KS_C1      	1
#define KS_C2      	4
#define KS_C3       5


/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void Keyboard_Init(void);
void Keyboard_Polling(void);
void Keyboard_DropAllKeyCode(void);
void Keyboard_ColumnInterruptEnable(void);


#endif	/* End of _KEYBOARD_H_ */
/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
