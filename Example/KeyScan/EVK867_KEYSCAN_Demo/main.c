/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_KeyScan_EVK867_KEYSCAN_Demo "Example/KeyScan/EVK867_KEYSCAN_Demo"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Drv_KeyScan.h"

#define ROW 8
#define COL 16 //18 , GPIO23 and GPIO 15 are short in my EVK.

const Ab_UartParam  uart_param_3M_noRX = {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

const uint8_t rows[ROW] = {0, 1, 2, 3, 4, 5, 6, 7};
const uint8_t cols[COL] = {18, 19, 20, 21, 22, /*23,*/ 26, 27, 28, 29, 8, 14, /*15,*/ 16, 17, 24, 25, 12};

void ks_cb(uint8_t *keys, uint8_t num, bool is_ghost)
{
    uint8_t i;

    if(is_ghost)
        printf("*[");
    else
        printf(" [");
    for(i = 0; i < num; i++)
        printf(" %d", keys[i]);
    printf("]\n");
}

void main()
{
    KS_INIT_STRUCTURE kis;

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_noRX);

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*keyscan init*/
    kis.swt = KS_IO_SW_TIME_SEL_4T;
    kis.dly = KS_RATE_DLY_2080T;
    kis.row_num = ROW;
    kis.col_num = COL;
    memcpy(kis.row, rows, ROW);
    memcpy(kis.col, cols, COL);
    
    DRV_KeyScan_Init(kis, ks_cb); 
    DRV_KeyScan_En();

    while (1);
}

/*!
      \endcode
*/

