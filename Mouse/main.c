/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_Mouse "Mouse"
      \code {.c}
*/

#include "ab1600.h"
#include "ab_queue.h"
#include "bsp_generic.h"
#include "ab_clk.h"
#include "ab_spi.h"
#include "ab_assert.h"
#include "bt.h"
#include "mouse.h"
#include "Drv_timer32b0.h"
#include "dfu.h"
#include "ab_timer.h"
#include "Drv_timer16.h"
#include "Paw3205db_spi.h"

/******************************************************************************/
/*  function prototype                                                        */
/******************************************************************************/
extern void MOUSE_vcmd_handle(vcmd_packet *pkt);
/******************************************************************************/
/* callback function                                                        */
/******************************************************************************/
static void cpu_exception(uint8_t exp_id, uint32_t pc)
{
    Ab_printf_blocking("exception %d happen in 0x%08x!\n", exp_id, pc);
    while(1);
}

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/

/*clock*/
bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_16M,
    .isrc = true
};

/*printf*/
bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins,
};

/*bt*/
bsp_bt_parm bt_parm =
{
   .event_handler = mouse_bt_evt_hdl,
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT,
   .is_uart_hci_mode = false
};

/*mp*/
bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins,
  .extend_cb = MOUSE_vcmd_handle,
};

/*uart*/
bsp_uart_parm uart_parm =
{
    .uart1_baud = 115200L,
};

bsp_cpu_parm cpu_parm =
{
    .exception_cb = cpu_exception
};

void VersionDisplay()
{
    MS_PRINT( "\nProject : " );
    MS_PRINT( MOUSE_PROJECT_NAME );
    MS_PRINT( "\nVersion : " );
    MS_PRINT( MOUSE_VERSION );
    MS_PRINT( "\nDate : " );
    MS_PRINT( MOUSE_MODIFIED_DATE );
    MS_PRINT( "\n" );
}

static int cmd_ver(void *no, int argc, char** argv)
{
    VersionDisplay();
    return RET_SUCCESS;
}

static int cmd_sensor(void *no, int argc, char** argv)
{
    uint32_t val;
	uint8_t val2;
	uint8_t val3;
	
    AB_UTIL_Str2Num(argv[1], &val);

	val3 = (uint8_t)val;
	
    printf( "val3= 0x%X\n" , val3 );

    val2 =  SpiSensorRead( val3 );	
    printf( "Address = 0x%4X Val= 0x%X\n" , val , val2);
	
    return RET_SUCCESS;
}

const console_cmds_t cmds[] =
{
    {"ver", cmd_ver, NULL},
	{"r", cmd_sensor, NULL},
    {NULL, NULL, NULL}
};

bsp_console_parm console_parm =
{
    .uart_port = uart1_ins,
	.tbl = (console_cmds_t*)cmds,
	.prompt = "CMD> "
};

bsp_generic_ex2_parm ms_bsp_init_parm =
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,
    .printf_parm    = (bsp_printf_parm*)&printf_parm,
    .bt_parm        = (bsp_bt_parm*)    &bt_parm,
    .mp_parm        = (bsp_mp_parm*)    &mp_parm,
    .uart_parm      = (bsp_uart_parm*)  &uart_parm,
    .cpu_parm       = (bsp_cpu_parm*)   &cpu_parm,
    .console_parm  = (bsp_console_parm*) &console_parm
};

/*-----------------------------------------------------
Command
------------------------------------------------------*/

static bool disable_application = false;

void Cobra()
{
    MS_PRINT( MOUSE_PROJECT_NAME );
}

void main()
{

	if(ab_airoha_vcmd_mp_ongoing())
	{
		disable_application = true;
		ms_bsp_init_parm.uart_parm->uart1_baud = 3000000L;
		ms_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
		ms_bsp_init_parm.printf_parm = NULL;
		ms_bsp_init_parm.bt_parm->event_handler = NULL;
		ms_bsp_init_parm.console_parm = NULL;
	}
	else if (!DRV_Gpio_PinValGet(MS_BYPASS_IO))
	{
		disable_application = true;
		ms_bsp_init_parm.printf_parm = NULL;
		ms_bsp_init_parm.bt_parm->event_handler = NULL;
		ms_bsp_init_parm.bt_parm->is_uart_hci_mode = true;
	}
	else
	{
		mouse_init_before_BT();
	}

	boot = AB_BSP_initEx(&ms_bsp_init_parm);

	if(!disable_application)
	{
		DRV_WDT_Enable(5);

		printf("\nmouse init start: tick =%d\n",DRV_TMR32B0_TickGet());
		mouse_init();
		printf("mouse init end: tick =%d\n",DRV_TMR32B0_TickGet());
		VersionDisplay();
		
		mouse_led_rc_function_enable( F_LED_ALL_DISABLED );
		mouse_led_rc_function_enable( F_LED_MOUSE_POWER_ON );

		while(1)
		{
			mouse_mainloop();
		}
	}

	while(1);
}



/*!
      \endcode
*/

