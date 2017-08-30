/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_SPI_spi_slave "Example/SPI/spi_slave"
      \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_spis.h"
#include "bsp_generic.h"
#include "drv_pinmux.h"
#include "Drv_gpio.h"

#define ENABLE_DEBUG 0

#define TX_BUFF_SIZE 1
#define RX_BUFF_SIZE 512
#define SPI_INS spi1_ins

// GPIO 23
#define SPI_SLAVE_GPIO_DATAREADY        23
#define SPI_SLAVE_GPIO_DATAREADY_MASK   (1<<SPI_SLAVE_GPIO_DATAREADY)

static void uart_rx_data_ind_console(uint16_t len);

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};
static uint8_t rx_buf[RX_BUFF_SIZE];
static uint8_t tx_buf[TX_BUFF_SIZE] = {0};
bool is_console_exit = false;
bool flipflop = false;

static void uart_rx_data_ind_console(uint16_t len)
{
    uint8_t buf[10];
    uint16_t rlen;

    if(!is_console_exit)
    {
        while(rlen = AB_UART_Read(uart1_ins, buf, 10))
            is_console_exit = !AB_console_handle(buf, rlen);
    }
    else
    {
    
        while(rlen = AB_UART_Read(uart1_ins, buf, 10));
        printf("console was closed\n");
    }
}

static void console_tx_to_uart(const uint8_t* buf, uint16_t len)
{
    AB_UART_Write(uart1_ins, (uint8_t*)buf, len);
}

void spi_slave_hanlder(SPI_EVENT_TYPE event, uint8_t *rxbuf, uint16_t rxlen)
{
    switch(event) {
        case SPI_EVENT_TYPE_TRANSACTION_DONE:
            {
#if ENABLE_DEBUG
                uint16_t i;

                printf("rbuf = %x\n", rxbuf);
                printf("<==");
                for(i = 0; i < rxlen; i++)
                    printf(" %02X", rxbuf[i]);
                printf("\n");
#endif
                tx_buf[0] = rxlen;
                if (!AB_SPIS_SetData(SPI_INS, tx_buf, TX_BUFF_SIZE)) {
                    printf("no memory!!!\n");
                }
#if ENABLE_DEBUG
                printf("tbuf = %x\n", tx_buf);
                printf("==>");
                for(i = 0; i < TX_BUFF_SIZE; i++)
                    printf(" %02X", tx_buf[i]);
                printf("\n\n");
#endif
                flipflop = !flipflop;
                DRV_Gpio_ValSet(SPI_SLAVE_GPIO_DATAREADY_MASK, flipflop);
            }
            break;
        default:
            break;
    }

    if (rxbuf) {
        free(rxbuf);
    }
}

static int cmd_exit_f(void *no, int argc, char** argv)
{
    AB_SPIS_Close(SPI_INS);
    printf("spi slave is close on spi %d\n", SPI_INS);

    printf(">>> The End, thank you!! <<<\n");
    return RET_CONSOLE_EXIT;
}

/*************************************************************************/
/*GPIO related function*/
/*************************************************************************/

void slave_gpio_init (void)
{
    DRV_Gpio_DirSet(SPI_SLAVE_GPIO_DATAREADY_MASK, true);
    DRV_Gpio_ValSet(SPI_SLAVE_GPIO_DATAREADY_MASK, flipflop);
}

/*************************************************************************/
/*command table*/
/*************************************************************************/
const console_cmds_t cmd_tbl[] =
{
    {"exit", cmd_exit_f, NULL},
    {NULL, NULL, NULL}
};

void main()
{    
    Ab_SpisParam init_parm;
    uint16_t i;
    
    AB_BSP_init(&bsp_init_parm);
    printf("=========================================\n");
    printf("SPI communication test (slave):\n");
    printf("=========================================\n");
    printf("PIO 23: indicate data ready, please connect it with master's PIO 23\n");
    printf("=========================================\n");
    slave_gpio_init();

    printf("Switch SPI to PIO 14-17\n");
    printf("PIO 14:   CS\n");
    printf("PIO 15: MOSI\n");
    printf("PIO 16: MISO\n");
    printf("PIO 17:  CLK\n");
    DRV_PinMux_GrpSet(SPI_PIN_MASK2, PIN_SPI);

    init_parm.mode = SPI_MODE0;
    init_parm.is_bidirection = false; // slave doesn't support 3-wire mode
    init_parm.slv_handler = spi_slave_hanlder;
    init_parm.rxbuf = rx_buf; // if NULL, use default rx buffer (size: 256 bytes)
    init_parm.rxsize = RX_BUFF_SIZE;
    init_parm.txbuf = NULL;
    init_parm.txsize = 0;

    AB_SPIS_Open(SPI_INS, &init_parm);
    printf("spi slave is open on spi %d\n", SPI_INS);

    AB_console_init("spislvtest > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);

    while (1);
}

/*!
      \endcode
*/

