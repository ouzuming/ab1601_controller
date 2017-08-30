/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_UART_uart_loopback "Example/UART/uart_loopback"
      \code {.c}
*/

#define USE_BSP_INIT

#ifdef USE_BSP_INIT
#include "bsp_generic.h"

static void uart1_rx_data(uint16_t len)
{
    uint8_t buf[50];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 50))
        AB_UART_Write(uart1_ins, buf, rlen);
}

/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
    .uart1_rx_data = uart1_rx_data
};

   
const bsp_generic_ex2_parm bsp_init_parm = 
{
    .uart_parm  = (bsp_uart_parm *) & uart_parm
};

void main()
{      
    AB_BSP_initEx(&bsp_init_parm);    

    while (1);
}


#else
#include "ab1600.h"
#include <stdio.h>
#include "drv_uart.h"
#include <stdlib.h>
#include <string.h>
#include "ab_uart.h"
    
static void uart1_rx_data(uint16_t len)
{
    uint8_t buf[50];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 50))
        AB_UART_Write(uart1_ins, buf, rlen);
}

const Ab_UartParam  uart_param_3M = {3000000L, 380, uart_rx_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void main()
{    

    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M);
    
    while (1);
}

#endif

/*!
      \endcode
*/

