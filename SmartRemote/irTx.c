/**
  ******************************************************************************
  * @file    irTx.c
  * @author  JackChen
  * @version V1.0
  * @date    2017-03-24
  * @brief   Caution: Timer32 instance0 tick must be 125us and Timer16 use core clock 16MHz, be careful of the PowerSaving
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "Drv_timer16.h"
#include "Drv_gpio.h"
#include "Drv_pinmux.h"
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
// pluse levle
typedef enum
{
	IR_HIGH = 0,
	IR_LOW,
} irLevel_t;

// different stage in one IR frame
typedef enum
{
	IR_LeaderCode0,
	IR_KeyCode,
	IR_StopBit0,
	IR_LeaderCode1,
	IR_StopBit1,
	IR_Idle,
} irStage_t;

typedef uint32_t irItem_t[2];

typedef struct
{
	irStage_t stage;
	irItem_t  priod;
	irLevel_t level;
	uint8_t   ind;
	uint32_t  keyCode;
	bool	  isDepressed;
} irController_t;

// Data structure of one IR frame
typedef union
{
	uint32_t frameCode;
	struct
	{
		uint16_t customCode;
		uint8_t  dataCode;
		uint8_t	 dataCodeR;
	} field;
} irFrame_t;


/* Private define ------------------------------------------------------------*/
// IR GPIO define, GPIO21
#define GPIO_IR_TX			23
#define GPIO_IR_TX_MASK		(1<<GPIO_IR_TX)

// PWM start, Disable MR0S, Enable PWM
#define PWM_Start()			do { TMR16B0.MCR.field.MR0S = 0; TMR16B0.TCR.field.CEN = 1; } while(0)
// PWM stop, Set MR0S then CEN will reset automatically
#define PWM_Stop()			do { TMR16B0.MCR.field.MR0S = 1; } while(0)

/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void IR_TimerHandle(void *para);

/* Private variables ---------------------------------------------------------*/
static const irItem_t item_LeadCode0 = 	{ 73, 	36 };			// 9ms, 	4.5ms
static const irItem_t item_CodeBit0 = 	{ 5,	5 };			// 0.56ms,	0.565ms
static const irItem_t item_CodeBit1 = 	{ 5, 	14 };			// 0.56ms,	1.69ms
static const irItem_t item_LeadCode1 = 	{ 73, 	18 };			// 9ms,		2.25ms
static const irItem_t item_StopBit1  = 	{ 5,  	770 };			// 0.56ms,  96.19ms
static irItem_t item_StopBit0   = { 5, 400 };				// average
static const uint32_t irTime108000us = 864;
static const uint32_t irTime14060us = 113;
static const uint32_t irTime1125us = 9;

// custom code, LSB send first
static const uint16_t irCustomCode = 0xFE01;

// IR controller
static irController_t irCtl = 
{
	IR_Idle,
	{ 0, 0 },
	IR_LOW,
	0,
	0,
	false,
};

/* Public functions ----------------------------------------------------------*/

/**
  * @brief  IR initialization
  * @param  None
  * @retval None
  */
void IRTX_Init(void)
{
	// GPIO_IR_TX MUX to GPIO first
	DRV_Gpio_ValSet( GPIO_IR_TX_MASK, 0 );
    DRV_Gpio_DirSet( GPIO_IR_TX_MASK, false );
    DRV_Gpio_PullSet( GPIO_IR_TX_MASK, PULL_DOWN );

    // PR = 0, 32 tick 1ms
    TMR16B0.PR.reg = 0;
    // PWM1 used, Configure the PWM duty and frequency, 38KHz(8.77us - 26.3us)
    // 139 = 16*8.77 - 1; 420 = 16*26.3 - 1
    TMR16B0.MR0.reg = 139;
    TMR16B0.MR0_2.reg = 420;

	// TODO, config polarity here, high active!!!
    TMR16B0.EMR.field.EMC0 = 0x01;
    TMR16B0.EMR.field.EMC0_2 = 0x02;
    TMR16B0.MCR.field.MR0R_2 = 1;

    // TIME32 instance0 mathch3 used, Time32 instance0 is inited in smartRemote.c, AB_Timer_Enable_Ext(1000, TMR32B0_125US);
}

/**
  * @brief  IR KeyCode send, use fixed keyCode 0x0EF18877
  * @param  None
  * @retval None
  */
void IR_Send(uint8_t irKeyCode)
{
	irFrame_t irFrameData;
	irFrameData.field.customCode = irCustomCode;
	irFrameData.field.dataCode = irKeyCode;
	irFrameData.field.dataCodeR = ~irKeyCode;

	if (irCtl.isDepressed == true)
	{
		printf("IR bypass\r\n");
		return;
	}

	irCtl.stage = IR_LeaderCode0;
	irCtl.level = IR_HIGH;
	irCtl.isDepressed = true;
	irCtl.keyCode = irFrameData.frameCode;
	
	memcpy(irCtl.priod, item_LeadCode0, sizeof(irItem_t));

    ndis_enter_critical();

	DRV_TMR32B0_NotifyEnable( TIMER_IR_CTRL, irCtl.priod[IR_HIGH], true, NULL, IR_TimerHandle );

	// Mux Buzzer GPIO to PWM1
	DRV_PinMux_SigSet( GPIO_IR_TX_MASK, PIN_PWM1 );
	PWM_Start();

    ndis_exit_critical();

	// We'll pause bt transfer when the first NEC frame start
    BT_Pause_Tx(true);

	// Disable powerSaving
    Board_SetModuleWorkState(true, MODULE_IRTX);

	printf("IR start\r\n");
}

/**
  * @brief  Depressed release, not used
  * @param  None
  * @retval None
  */
void IR_KeyReleased(void)
{
	ndis_enter_critical();
	irCtl.isDepressed = false;
	ndis_exit_critical();

	printf("IR stop\r\n");
}

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  IR timer handler
  * @param  None
  * @retval None
  */
static void IR_TimerHandle(void *para)
{
	static uint8_t bitLength;

	if (IR_LOW == irCtl.level)
	{
		switch (irCtl.stage)
		{
			case IR_LeaderCode0:
			{
				irCtl.stage = IR_KeyCode;
				irCtl.ind = 0;

				// Reset number of Bit0 and Bit1
				bitLength = 0;

				if (irCtl.keyCode & 0x01)
				{
					memcpy(irCtl.priod, item_CodeBit1, sizeof(irItem_t));
				}
				else
				{
					memcpy(irCtl.priod, item_CodeBit0, sizeof(irItem_t));
				}
			} break;
			case IR_KeyCode:
			{
				if (++irCtl.ind >= 32)
				{
					irCtl.stage = IR_StopBit0;

					// Compute IR_StopBit0
					item_StopBit0[1] = irTime108000us - irTime14060us - irTime1125us*bitLength;

					memcpy(irCtl.priod, item_StopBit0, sizeof(irItem_t));

					// We'll start bt transfer when the first NEC frame end
					BT_Pause_Tx(false);
				}
				else
				{
					if (irCtl.keyCode & (0x00000001 << irCtl.ind))
					{
						memcpy(irCtl.priod, item_CodeBit1, sizeof(irItem_t));

						bitLength += 2;
					}
					else
					{
						memcpy(irCtl.priod, item_CodeBit0, sizeof(irItem_t));

						bitLength++;
					}
				}
			} break;
			case IR_StopBit0:
			{
				//if (irCtl.isDepressed)
				if (0)
				{
					irCtl.stage = IR_LeaderCode1;

					memcpy(irCtl.priod, item_LeadCode1, sizeof(irItem_t));
				}
				else
				{
					irCtl.stage = IR_Idle;

					// IR stop
					DRV_PinMux_SigSet( GPIO_IR_TX_MASK, PIN_GPIO );
				    // Enable powerSaving
					Board_SetModuleWorkState(false, MODULE_IRTX);
					return;
				}
			} break;
			case IR_LeaderCode1:
			{
				irCtl.stage = IR_StopBit1;

				memcpy(irCtl.priod, item_StopBit1, sizeof(irItem_t));
			} break;
			case IR_StopBit1:
			{
				//if (irCtl.isDepressed)
				if (0)
				{
					irCtl.stage = IR_LeaderCode1;

					memcpy(irCtl.priod, item_LeadCode1, sizeof(irItem_t));
				}
				else
				{
					irCtl.stage = IR_Idle;

					// IR stop
					DRV_PinMux_SigSet( GPIO_IR_TX_MASK, PIN_GPIO );	
				    // Enable powerSaving
					Board_SetModuleWorkState(false, MODULE_IRTX);
					return;
				}
			} break;
			default: break;
		}
	}

	if (IR_LOW == irCtl.level)
	{
		irCtl.level = IR_HIGH;
		PWM_Start();
	}
	else
	{
		irCtl.level = IR_LOW;
		PWM_Stop();
	}
	DRV_TMR32B0_NotifyEnable( TIMER_IR_CTRL, irCtl.priod[irCtl.level], true, NULL, IR_TimerHandle);
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
