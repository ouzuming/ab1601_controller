/**
  ******************************************************************************
  * @file    main.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   main.c
  ******************************************************************************
  information:
  
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_queue.h"
#include "ab_clk.h"
#include "ab_spi.h"
#include "ab_assert.h"
#include "Drv_timer32b0.h"
#include "dfu.h"
#include "ab_timer.h"
#include "ab_airoha_vcmd.h"
#include "bt.h"

#include "peripheral.h"
#include "smartRemote.h"
#include "service.h"
#include "vcmd.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
// Pull low ByPass Key then powerOn will Enter HCI bypass mode
#define BYPASS_ENTER_IO		3

/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
// CPU exception CB function
static void CPU_Exception(uint8_t exp_id, uint32_t pc);

/* Private variables ---------------------------------------------------------*/
// Customer production key, you can modify it, but remember to enable encryption in MP tool and use this CPK!!!
uint8_t remote_CPK[] = "123456";

/** InitParameter: system clock **/
bsp_clock_parm clock_param =
{
	.sys_clk_rate = AB_CLK_16M,
	.isrc = true
};

/** InitParameter: printf **/
bsp_printf_parm printf_param =
{
    .uart_port = uart1_ins,			// CONFIG to uart_inss to disable print, uart1_ins
};

/** InitParameter: BT **/
bsp_bt_parm bt_param =
{
   .event_handler = gapRole_GapEventHandle,			// BT event handle CB function
   //.log_level = BT_LOG_HCI_CMD | BT_LOG_HCI_EVT,
   .log_level = BT_LOG_NONE,
   .is_uart_hci_mode = false,
   .cpk = remote_CPK,				// customer production key used!!!
};

/** InitParameter: MP **/
bsp_mp_parm mp_param =
{
  .uart_port = uart1_ins,
  .extend_cb = VCMD_Handler,		// Vendor command handler
};

/** InitParameter: UART **/
bsp_uart_parm uart_param =
{
    .uart1_baud = 115200L,
    // get more detail in bsp_generic.c
};

/** InitParameter: CPU exception **/
bsp_cpu_parm cpu_param =
{
    .exception_cb = CPU_Exception	// CPU exception CB function
};

// system initialization parameter, include clock/print/console/BT/MP/UART/GPIO/CPU
bsp_generic_ex2_parm bsp_init_param =
{
    .clk_parm       = (bsp_clock_parm*) &clock_param,
    .printf_parm    = (bsp_printf_parm*)&printf_param,
    .bt_parm        = (bsp_bt_parm*)    &bt_param,
    .mp_parm        = (bsp_mp_parm*)    &mp_param,
    .uart_parm      = (bsp_uart_parm*)  &uart_param,
    .cpu_parm       = (bsp_cpu_parm*)   &cpu_param
    // GPIO and console INIT not used!!!
};

static bool appDisabled = false;

/* Public functions ----------------------------------------------------------*/
/**
  * @brief  main function.
  * @param  None
  * @retval None
  */
void main()
{
	// check if in MP state
	if (ab_airoha_vcmd_mp_ongoing())
	{
		appDisabled = true;

        bsp_init_param.uart_parm->uart1_baud = 3000000L;
        bsp_init_param.clk_parm->sys_clk_rate = AB_CLK_48M;
        bsp_init_param.printf_parm = NULL;
        bsp_init_param.bt_parm->event_handler = NULL;
	}
	else if (!DRV_Gpio_PinValGet(BYPASS_ENTER_IO))
	{
		// Enter HCI bypass mode setting
		appDisabled = true;

        bsp_init_param.printf_parm = NULL;
        bsp_init_param.bt_parm->event_handler = NULL;
        bsp_init_param.bt_parm->is_uart_hci_mode = true;
	}
	else
	{
		// application initialization before BT
		appDisabled = false;

		APP_InitBeforeBt();
	}

	// system initialization
	AB_BSP_initEx(&bsp_init_param);

	if (appDisabled)
	{
		// MP routine or HCI bypass mode
		while (1)
		{
			// calibrate motion here
			VCMD_MouseCalibrateInLoop();
		}
	}
	else
	{
		// Enable WDT
		DRV_WDT_Enable(5);

		// GATT service initialization
		GATT_ServiceInit();

		// Board initialization
		Board_Init();

		// Wait until BT INIT
		while (GAP_GetGapStatus() != GAP_INIT);

		// application initialization
		Remote_Init();

		// Main loop
		while (1)
		{
			Remote_MainLoop();
		}
	}

	while(1);
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief  CPU exception CB
  * @param  None
  * @retval None
  */
static void CPU_Exception(uint8_t exp_id, uint32_t pc)
{
    Ab_printf_blocking("CPU exception %d happen in 0x%08x!\r\n", exp_id, pc);
    while(1);
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
