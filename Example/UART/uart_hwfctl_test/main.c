/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_UART_uart_hwfctl_test "Example/UART/uart_hwfctl_test"
      \code {.c}
*/

#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_uart.h"
#include "drv_uart.h"
#include "drv_pinmux.h"

static void uart_rx_data_ind(uint16_t len)
{
    uint8_t buf[50];
    uint16_t rlen;

//    printf("len = %d\n", len);
//    while(rlen = Ab_UartRead(uart1_ins, buf, 50))
  //      Ab_UartWrite(uart1_ins, buf, rlen);
}

const Ab_UartParam  uart_param_3M = {3000000L, 380, uart_rx_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT | UART_FORMAT_HW_FLOW_CTL};

void main()
{    
    //pio 4 <= CTS
    DRV_PinMux_SigSet((1<<4), PIN_CTS);
    //pio 5 <= RTS
    DRV_PinMux_SigSet((1<<5), PIN_RTS);

    /*open uart*/    
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M);

    /*print output port*/
    Ab_printf_init(uart1_ins);
    
    while (1)
    {
        static volatile uint32_t cnt = 1000000;
        
        while(cnt--);
        cnt = 1000000;

        printf("Uart Rx = %X\n", UART.DMA_RX_CURRENT_W_ADDR.field.ADDR);
    }
}

/*!
      \endcode
*/

