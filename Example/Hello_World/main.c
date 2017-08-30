/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_Hello_World "Example/Hello_World"
      \code {.c}
*/

#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_uart.h"

const Ab_UartParam  uart_param_3M_noRX = {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void main()
{    
    /*open uart 1*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_noRX);

    /*set print to uart1*/
    Ab_printf_init(uart1_ins);

    /*Say HI (case1)*/
    printf("Hello world from printf\n");

    /*Say HI (case2)*/
    AB_UART_Write(uart1_ins, "Hello world from Ab_UartWrite\n", strlen("Hello world from Ab_UartWrite\n"));

    while (1);
}

/*!
      \endcode
*/

