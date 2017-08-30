/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_dongle "Dongle"
      \code {.c}
*/
#include "bsp_generic.h"
#include "dongle_console.h"
#include "dongle_vcmd.h"
#include "dongle_bt.h"

/******************************************************************************/
/* prototype                                                                  */
/******************************************************************************/
static void cpu_exception(uint8_t exp_id, uint32_t pc);

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/

/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = true
};

/*console*/
const bsp_console_parm console_parm =
{
    .uart_port = uart2_ins, 
    .tbl = (console_cmds_t *)DONGLE_shell_cmds,
    .prompt = DONGLE_SHELL_PROMPT,
};

/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart2_ins, 
};

/*bt*/
const bsp_bt_parm bt_parm =
{
   .event_handler = DONGLE_bt_event_handler, 
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT
};

/*mp*/
const bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins, 
  .extend_cb = DONGLE_vcmd_handle,
};

/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
    .uart2_baud = 3000000L,
    .uart2_pin_mask = UART2_PIN_MASK3,
};

/*cpu*/
const bsp_cpu_parm cpu_parm =
{
    .exception_cb = cpu_exception
};

const bsp_generic_ex2_parm bsp_init_parm = 
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,    
    .printf_parm    = (bsp_printf_parm *) &printf_parm,
    .console_parm   = (bsp_console_parm *)&console_parm,     
    .bt_parm        = (bsp_bt_parm *) &bt_parm,
    .mp_parm        = (bsp_mp_parm *) &mp_parm,
    .uart_parm      = (bsp_uart_parm *) & uart_parm,
    .cpu_parm       = (bsp_cpu_parm *) &cpu_parm
};



/******************************************************************************/
/* PRIVATE                                                                    */
/******************************************************************************/
static void cpu_exception(uint8_t exp_id, uint32_t pc)
{
    Ab_printf_blocking("exception %d happen in 0x%08x\n", exp_id, pc);
}

/******************************************************************************/
/* PUBLIC                                                                     */
/******************************************************************************/

void main()
{  
    AB_BSP_initEx(&bsp_init_parm);
#if 0
    if(ab_airoha_vcmd_mp_ongoing())
        printf("mp is ongoing\n");
    else
        printf("mp is not ongiing\n");
#endif
    DONGLE_vcmd_sip_init(mp_parm.uart_port);

    while (1);
}

/*!
      \endcode
*/

