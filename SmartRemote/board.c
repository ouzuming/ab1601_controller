/**
  ******************************************************************************
  * @file  	 board.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief	 board configuration, power management
  ******************************************************************************
  Tips:
	���ļ��ṩ���Ĺ���������ģ�顣��Ҫ����softReset��DeepSleep��sleep������Ҫע�⣬��Sleepģʽ�£�MCU�͸�������clock�ǹرյģ�����Timer32 instance0����
	�ɴ�����Ҫ����ʹ��ĳ�����裨��Microphone��IR��ʱ�����˳�Sleepģʽ������ʹ��moduleWorkState��ָʾ����ģ���Ĺ���״̬������MODULE_MIC��MODULE_MOUSE��
	MODULE_OTA��MODULE_IRTX��MODULE_IRRX��ֻ�е�����ģ�鶼���������豸�Ż�����powerSaving��

  */
/* Includes ------------------------------------------------------------------*/
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
typedef struct
{
	uint8_t softResetEnable		: 1;
	uint8_t deepSleepEnable		: 1;
	uint8_t sleepEnable			: 1;
	uint8_t reserved			: 5;
} pwrManage_t;

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void Board_CheckBootReason(void);
static void Board_SoftResetRoutine(void);
static void Board_DeepSleepRoutine(void);
static void Board_SleepRoutine(void);

/* Private variables ---------------------------------------------------------*/
// power manage flag
pwrManage_t boardManage =
{
	.softResetEnable	= 0,
	.deepSleepEnable	= 0,
//	.sleepEnable		= 1,	// PowerSaving enable default
	.sleepEnable		= 0,	// dylan
	.reserved			= 0,
};

// store the boot reason
static BOOT_FROM bootReason;

// module working state, 1bit field define 1 module state
static uint8_t moduleWorkState = 0x00;

/* Public functions ----------------------------------------------------------*/
/**
  * @brief  Board initialization
  * @param  None
  * @retval None
  */
void Board_Init(void)
{
	Board_CheckBootReason();

	// set REGEN no pull to eliminate small leakage
	SYS_3WireBitWrite(0x15, 0x0020);
}

/**
  * @brief  Board power management
  * @param  None
  * @retval None
  */
void Board_PowerManagement(void)
{
	if (boardManage.softResetEnable)
	{
		Board_SoftResetRoutine();
	}

	if (boardManage.deepSleepEnable)
	{
		Board_DeepSleepRoutine();
	}

	if (boardManage.sleepEnable)
	{
		Board_SleepRoutine();
	}
}

/**
  * @brief  Reset device, could be called as Timer CB
  * @param  None
  * @retval None
  */
void Board_SoftResetEnable(uint32_t id)
{
	boardManage.softResetEnable = 1;
}

/**
  * @brief  Go to deepSleep, could be called as Timer CB
  * @param  None
  * @retval None
  */
void Board_DeepSleepEnable(uint32_t id)
{
	boardManage.deepSleepEnable = 0;
}

/**
  * @brief  Set module working state, then change powerSaving flag
  * @param  None
  * @retval None
  */
void Board_SetModuleWorkState(bool isWorking, uint8_t module)
{
	if (isWorking)
	{
		moduleWorkState |= module;
	}
	else
	{
		moduleWorkState &= ~module;
	}

	if (moduleWorkState)
	{
		// a module is working at least, disable sleep
		boardManage.sleepEnable = 0;
	}
	else
	{
		boardManage.sleepEnable = 1;
	}
}

/**
  * @brief  Get module working state
  * @param  None
  * @retval None
  */
uint8_t Board_GetModuelWorkState(void)
{
	return moduleWorkState;
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Check boot reason
  * @param  None
  * @retval None
  */
static void Board_CheckBootReason(void)
{
	BOOT_REASON boot;
	boot = DRV_Pwr_BootFrom();

	printf("Boot From ");
	switch (bootReason = boot.from)
	{
		// Boot by HW reset
		case BOOT_HW_RST:
		{
			printf("HW Reset\r\n");
		} break;
		// Indicates power on by button
		case BOOT_POWER_OFF:
		{
			printf("PowerOn\r\n");
		} break;
		// Indicates wakeUp from deepSleep
		case BOOT_DEEP_SLEEP:
		{
			printf("DeepSleep\r\n");
		} break;
		// Indicates boot is caused by soft_rst
		case BOOT_SW_RST:
		{
			printf("Soft Reset\r\n");
		} break;
		// Indicates WatchDog be reset
		case BOOT_WDT_RST:
		{
			printf("WDT\r\n");
		} break;
		default:
		{
			printf("%d\r\n", bootReason);
		} break;
	}
}

/**
  * @brief  SoftReset Routine
  * @param  None
  * @retval None
  */
static void Board_SoftResetRoutine(void)
{
    Drv_1602Reset(true);
    DRV_KeyScan_Dis();
    DRV_TMR32B0_Disable();

    printf("Ready to soft reset\r\n");
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);

    OS_delay_ms(10);

    ndis_enter_critical();

    AB_CLK_Switch(AB_CLK_16M, true);
    DRV_Pwr_EnterMode(POWER_MODE_SW_RST);

    while(1);
}

/**
  * @brief  DeepSleep Routine
  * @param  None
  * @retval None
  */
static void Board_DeepSleepRoutine(void)
{
    uint8_t i;

    printf("Ready to deepSleep\r\n");

    /* Disable all peripheral */
    DRV_Mic_Disable();
    // Enable Mouse interrupt if (WAKEUP_BY_MOTION) set
#if (WAKEUP_BY_MOTION)
    //Motion_EnterWOM(0xA0);
#else
    //Motion_TurnOff();
#endif
    AB_Timer_Disable();
    DRV_TMR32B0_NotifyDisable(TMR32B0_NOTIFY_1);
    DRV_TMR32B0_NotifyDisable(TMR32B0_NOTIFY_2);
    DRV_TMR32B0_NotifyDisable(TMR32B0_NOTIFY_3);

    // Enable keyboard column interrupt
    Keyboard_ColumnInterruptEnable();

    // Disable KeyScan interrupt, prevent unexpected key code
    DRV_KeyScan_Dis();

    /* Dump 3wireReg information */
    for (i=1; i<0x53; i++)
    {
    	SYS_3WireRead(i);
    }

    // Flush UART then close it
    AB_UART_Flush(uart1_ins);
    AB_UART_Close(uart1_ins);

    // Switch clock and reset 1602
    ndis_enter_critical();
    AB_CLK_Switch(AB_CLK_16M, true);
    Drv_1602Reset(true);
    ndis_exit_critical();

    DRV_Pwr_EnterMode(POWER_MODE_DEEP_SLEEP);

    while(1);
}

/**
  * @brief  Sleep Routine
  * @param  None
  * @retval None
  */
static void Board_SleepRoutine(void)
{
    if (AB_PWR_Sleep(1))
    {
        AB_SYS_WaitIClear();
    }
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
