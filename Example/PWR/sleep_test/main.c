/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_PWR_sleep_test "Example/PWR/sleep_test"
      \code {.c}
*/
#include "ab1600.h"
#include "bsp_generic.h"
#include "ab_uart.h"
#include "Drv_gpio.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"


const Ab_UartParam  uart_param_115200_noRx = {115200L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void gpio_int(uint8_t num)
{
    printf("wake by io %d\n", num);
}

const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_16M,
    .isrc = true
};

const bsp_printf_parm printf_parm = 
{
    .uart_port = uart1_ins
};

const bsp_uart_parm uart_parm =
{
    .uart1_baud = 115200,
};

const bsp_gpio_parm gpio_parm =
{
    /*0~15 is both edge wakeup*/
    .int_fn[0] =
    {
        .int_mask = 0xFFFF,
        .type = EDGE_BOTH,
        .fn = gpio_int
    },
    /*16~29 is pos edge wakeup*/
    .int_fn[1] =
    {
        .int_mask = 0x3FFF0000,
        .type = EDGE_POS,
        .fn = gpio_int
    }
};

const bsp_generic_ex2_parm bsp_init_parm = 
{
    .clk_parm = (bsp_clock_parm*)&clock_parm,
    .printf_parm = (bsp_printf_parm*) &printf_parm,
    .uart_parm = (bsp_uart_parm*) &uart_parm,
    .gpio_parm = (bsp_gpio_parm*)&gpio_parm
};

void main()
{
    uint8_t i;
    BOOT_REASON boot;

    //check boot reason    
    boot = AB_BSP_initEx(&bsp_init_parm);
    
    printf("We are sleeping all the time. Please press any key to wakeup\n");
    while (1)
    {
        AB_PWR_Sleep(true);
    }
}

/*!
      \endcode
*/

