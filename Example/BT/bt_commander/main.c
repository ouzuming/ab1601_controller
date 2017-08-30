/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_BT_bt_commander "Example/BT/bt_commander"
      \code {.c}
*/
#include "ab1600.h"
#include "bsp_generic.h"
#include "bt_commander.h"


/******************************************************************************/
/* Prototype                                                                  */
/******************************************************************************/


/******************************************************************************/
/* static functions                                                           */
/******************************************************************************/
static void cpu_exception(uint8_t exp_id, uint32_t pc)
{
    Ab_printf_blocking("exception %d happen in 0x%08x\n", exp_id, pc);
}

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
extern const console_cmds_t bt_cmd_tbl[];

/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = true
};

/*console*/
const bsp_console_parm console_parm =
{
    .uart_port = uart1_ins, 
    .tbl = (console_cmds_t *)bt_cmd_tbl,
    .prompt = "bt commander > "
};

/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins, 
};

/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
};

/*bt*/
const bsp_bt_parm bt_parm =
{
   .event_handler = bt_commander_event, 
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT | BT_LOG_HCI_TXDAT | BT_LOG_HCI_RXDAT,
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
    .uart_parm      = (bsp_uart_parm *) & uart_parm,
    .bt_parm        = (bsp_bt_parm *) &bt_parm,
    .cpu_parm       = (bsp_cpu_parm *) & cpu_parm
};

/******************************************************************************/
/* main                                                                       */
/******************************************************************************/

void main()
{  
    AB_BSP_initEx(&bsp_init_parm);

    
    AB_Timer_Enable(1000); //1 second
    while (1);
}
/*!
      \endcode
*/


