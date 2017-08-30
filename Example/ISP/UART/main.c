/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_ISP_UART "Example/ISP/UART"
      \code {.c}
*/

#include "ab1600.h"
#include "ab_uart.h"
#include "bsp_generic.h"
#include "ab_airoha_vcmd.h"
void uart_data_ind(uint16_t len);

const bsp_generic_parm uart_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, uart_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};


void tx_send(uint8_t *buf, uint8_t len)
{
    AB_UART_Write(uart1_ins, buf, len);
}

void uart_data_ind(uint16_t len)
{
    uint16_t rlen;
    uint8_t buf[20];
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 20))
        ab_airoha_vcmd_dispatch(buf, rlen, tx_send);
}

void main()
{  
    AB_BSP_init(&uart_init_parm);
    printf("boot\n");

    ab_airoha_vcmd_enable();

    while (1);
}


/*!
      \endcode
*/

