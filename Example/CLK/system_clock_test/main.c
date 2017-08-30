/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_CLK_system_clock_test "Example/CLK/system_clock_test"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_queue.h"
#include "ab_uart.h"
#include "Drv_pinmux.h"
#include "Drv_Odpinmux.h"
#include "Drv_gpio.h"
#include "ab_clk.h"

#define TEST_ITEMS 6

typedef struct
{
    char *name;
    AB_CLK_TYPE type;
}CLK_TEST;

const Ab_UartParam  uart_param_115200_noRx = {115200, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

CLK_TEST test[TEST_ITEMS] =
{

    {"48MHz", AB_CLK_48M},
    {"24MHz", AB_CLK_24M},
    {"16MHz", AB_CLK_16M},
    {" 8MHz", AB_CLK_8M},
    {" 4MHz", AB_CLK_4M},
    {" 1MHz", AB_CLK_1M},
};

void main()
{ 
     uint32_t i, j;

    //switch 16M XTAL
    AB_CLK_Switch(AB_CLK_16M, false);
    
    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRx);
 
    for(i = 0; i < 100; i++)
    {
        printf(">>>>>>>>>> times = %d <<<<<<<<<<\n", i);
        for(j =0; j < TEST_ITEMS; j++)
        {
            printf("clock switch to %s from XTAL 16M\n", test[j].name);
            AB_UART_Close(uart1_ins);
            AB_CLK_Switch(test[j].type, false);   
            AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRx);
        }
        for(j =0; j < TEST_ITEMS; j++)
        {
            printf("clock switch to %s from RC 16M\n", test[j].name);
            AB_UART_Close(uart1_ins);
            AB_CLK_Switch(test[j].type, true);   
            AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRx);
        }
    }
    

    while (1);
}

/*!
      \endcode
*/

