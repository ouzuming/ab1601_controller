/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/

/*!
      \page Example_BT_AirSync "Example/BT/Airsync"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_queue.h"
#include "bsp_generic.h"
#include "ab_clk.h"
#include "ab_spi.h"
#include "ab_assert.h"
#include "bt.h"
#include "airsync.h"

/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = false
};
/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins, 
};
/*bt*/
const bsp_bt_parm bt_parm =
{
   .event_handler = airsync_bt_evt_hdl, 
   .log_level =  BT_LOG_NONE
};
/*mp*/
const bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins,
};
/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
};

const bsp_generic_ex2_parm bsp_init_parm = 
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,    
    .printf_parm    = (bsp_printf_parm *) &printf_parm,
    .bt_parm        = (bsp_bt_parm *) &bt_parm,
    .mp_parm        = (bsp_mp_parm *) &mp_parm,
    .uart_parm      = (bsp_uart_parm *) & uart_parm,
};

void main()
{
    AB_BSP_initEx(&bsp_init_parm);
    DRV_WDT_Enable(5);
    airsync_application_init();
    while(1)
    {
        DRV_WDT_Kick();
        airsync_mainloop();
    }
    while(1);
}

/*!
      \endcode
*/

