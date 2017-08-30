/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_MP_mptool_uart1_demo "Example/MP/mptool_uart1_demo"
      \code {.c}
*/

#include "bsp_generic.h"
#include "ab_adc.h"

static void bt_event_hanlder(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
        {
            printf("inited\n");
            break;
        }
    }
}


/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = true
};


/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins, 
};

/*bt*/
const bsp_bt_parm bt_parm =
{
   .event_handler = bt_event_hanlder, 
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
    .uart_parm      = (bsp_uart_parm *) & uart_parm
};


void power_fail()
{
   printf("power fail!!\n");
}


void main()
{  
    
    AB_BSP_initEx(&bsp_init_parm);

    AB_ADC_PowerFail_Monitor(true, power_fail);
    printf("log still can printed here~");
    

    while (1);
}

/*!
      \endcode
*/

