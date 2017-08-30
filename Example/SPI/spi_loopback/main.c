/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_SPI_spi_loopback "Example/SPI/spi_loopback"
      \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bsp_generic.h"
#include "ab_spi.h"
#include "drv_pinmux.h"

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};

static void uart_rx_data_ind(uint16_t len)
{
    uint8_t buf[50];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 50))
        AB_UART_Write(uart1_ins, buf, rlen);
}

volatile bool spi_flag = false;
uint8_t spi_rx_buf[256];

void spi_tran_comp(uint8_t *rxbuf, uint16_t rxlen)
{
    uint16_t i;
    spi_flag = false;

    if(rxlen != 256)
    {
        printf("fail!!\n");
        return;
    }
    
    for(i = 0; i < 256; i++)
    {
        if(rxbuf[i] != i)
        {
            printf("fail!!\n");
            return;
        }
    }

    printf("pass!!\n");
}

void main()
{    
    Ab_SpiParam init_parm;
    uint8_t spi_tx_buf[256];
    uint16_t i;
    SPI_MODE mode;
    
    init_parm.clk = 3000000;

    AB_BSP_init(&bsp_init_parm);
    printf("=========================================\n");
    printf("SPI test (3Mhz)\n");
    printf("=========================================\n");
    printf("Switch SPI to PIO 0~3\n");
    printf("PIO 0:   CS\n");
    printf("PIO 1: MOSI\n");
    printf("PIO 2: MISO\n");
    printf("PIO 3:  CLK\n");
    printf("Please connect PIO 1 with PIO 2\n");
    DRV_PinMux_GrpSet(SPI_PIN_MASK3, PIN_SPI);

    for(i = 0; i < 256; i++)
    {
        spi_tx_buf[i] = i;
    }

    for(mode = SPI_MODE0; mode <= SPI_MODE3; mode++)
    {
        printf(">>> mode %d start!!!\n", mode);
        init_parm.mode = mode;
        AB_SPI_Open(spi1_ins, &init_parm);
        spi_flag = true;
        AB_SPI_WriteAndRead(spi1_ins, spi_tx_buf, NULL, 256, spi_tran_comp);
        while(spi_flag);
        AB_SPI_Close(spi1_ins);
    }

    printf(">>> The End, thank you!! <<<\n");
    while (1);
}
/*!
      \endcode
*/


