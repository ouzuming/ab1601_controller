/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_Timer_SystemTickByTimer32 "Example/Timer/SystemTickByTimer32"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"
#include "Drv_timer32b0.h"
#include "Drv_timer32b1.h"

const Ab_UartParam  uart_param_115200_noRx = {115200L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};


void main()
{    
    //clock switch to 16M xtal
    AB_CLK_Switch(AB_CLK_16M, true);   

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRx);

    /*timer32_b0 timer32_b1 init*/
    DRV_TMR32B0_Enable(TMR32B0_1MS); //1ms ticks

    while (1)
    {
        static bool is_one_second = false;
        if(!(DRV_TMR32B0_TickGet() % 1000)) //1 second print onces
        {
            if(is_one_second == false)
            {
                printf("^");
                is_one_second = true;
            }
        }
        else
            is_one_second = false;
    }
}
/*!
      \endcode
*/

