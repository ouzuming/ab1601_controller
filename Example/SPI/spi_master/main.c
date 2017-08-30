/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_SPI_spi_master "Example/SPI/spi_master"
      \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_spi.h"
#include "ab_util.h"
#include "bsp_generic.h"
#include "drv_pinmux.h"
#include "drv_gpio.h"

#define ENABLE_DEBUG 0

#define SPI_INS spi1_ins
#define TX_BUFF_SIZE_MAX 256

// GPIO 23
#define SPI_SLAVE_GPIO_DATAREADY        23
#define SPI_SLAVE_GPIO_DATAREADY_MASK   (1<<SPI_SLAVE_GPIO_DATAREADY)

static void uart_rx_data_ind_console(uint16_t len);
static void write_to_slave();
static void read_from_slave();

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};
static uint32_t gTargetCount = TX_BUFF_SIZE_MAX;
static uint32_t gCount = 0;
static uint32_t gFailCount = 0;
bool is_console_exit = false;
static uint32_t gCmdRxLen = 0;

typedef enum {
    MASTER_STATE_IDLE = 0,
    MASTER_STATE_WRITING = 1,
    MASTER_STATE_WRITE_DONE = 2,
    MASTER_STATE_READING = 3,
    MASTER_STATE_READ_DONE = 4,
    MASTER_STATE_SINGLE_WRITE = 5,
    MASTER_STATE_SINGLE_DONE = 6,
}MasterState;

static MasterState gState = MASTER_STATE_IDLE;

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

void spi_tran_complete(uint8_t *rxbuf, uint16_t rxlen)
{
    uint16_t i;

    printf("rbuf = %x\n", rxbuf);
    printf("<==");
    for(i = 0; i < rxlen; i++)
        printf(" %02X", rxbuf[i]);
    printf("\n");
}

void spi_read_complete(uint8_t *rxbuf, uint16_t rxlen)
{
    if (rxbuf[0] != gCount%(TX_BUFF_SIZE_MAX-1)+1) {
        printf("NOT MATCH!! send %d, receive %d\n", gCount%(TX_BUFF_SIZE_MAX-1)+1, rxbuf[0]);
        gFailCount++;
    }
    gState = MASTER_STATE_READ_DONE;
}

void spi_write_complete(uint8_t *rxbuf, uint16_t rxlen)
{
    gState = MASTER_STATE_WRITE_DONE;
}

void read_from_slave()
{
#if ENABLE_DEBUG
    printf("read_from_slave\n");
#endif
    gState = MASTER_STATE_READING;
    AB_SPI_WriteThenRead(SPI_INS, NULL, 0, NULL, 1, spi_read_complete);
}

void write_to_slave()
{
#if ENABLE_DEBUG
    printf("write_to_slave\n");
#endif
    uint8_t txbuf[TX_BUFF_SIZE_MAX];
    uint32_t i, limit = gCount%(TX_BUFF_SIZE_MAX-1)+1;

    gState = MASTER_STATE_WRITING;

    for(i = 0; i < limit; i++)
    {
        txbuf[i] = (uint8_t)(i+1);
    }
    AB_SPI_WriteAndRead(SPI_INS, txbuf, NULL, limit, spi_write_complete);
}

void run_test_with_gpio(uint32_t count)
{
    printf("start the test for %d times\n", gTargetCount);

    if(gCount < gTargetCount) {
        gCount++;
        write_to_slave();
    } else {
        printf("end of the test, failed %d times\n", gFailCount);
    }
}

/*************************************************************************/
/*command function*/
/*************************************************************************/
// writeread <txlen> <rxlen> <write data>
// Ex: write 5 bytes (a b c d e) and read 1 byte response
//       spi_test> writeread 5 1 0x0a 0x0b 0x0c 0x0d 0x0e
static int cmd_writeread_f(void *no, int argc, char**argv)
{
    uint32_t txlen, i;
    uint8_t txbuf[20];
    
    if(argc < 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &txlen) || !AB_UTIL_Str2Num(argv[2], &gCmdRxLen))
        return RET_INVALID_PARAM;

    if(argc < (int)(3+txlen))
        return RET_WRONG_PRARM_NUMBER;

    for(i = 0; i < txlen; i++)
    {
        uint32_t tmp;
        if(!AB_UTIL_Str2Num(argv[3+i], &tmp))
            return RET_INVALID_PARAM;
        txbuf[i] = (uint8_t)tmp;
    }

    gState = MASTER_STATE_SINGLE_WRITE;
    AB_SPI_WriteThenRead(SPI_INS, txbuf, txlen, NULL, 0, spi_tran_complete);
    // TODO: wait for GPIO interrupt and then read from slave    

    return 0;
}

// writeread <txlen> <write data>
// Ex: write 5 bytes (a b c d e)
//       spi_test> write 5 0x0a 0x0b 0x0c 0x0d 0x0e
static int cmd_write_f(void *no, int argc, char**argv)
{
    uint32_t txlen, i;
    uint8_t txbuf[20];
    
    if(argc < 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &txlen))
        return RET_INVALID_PARAM;

    if(argc < (int)(2+txlen))
        return RET_WRONG_PRARM_NUMBER;

    for(i = 0; i < txlen; i++)
    {
        uint32_t tmp;
        if(!AB_UTIL_Str2Num(argv[2+i], &tmp))
            return RET_INVALID_PARAM;
        txbuf[i] = (uint8_t)tmp;
    }

    gState = MASTER_STATE_SINGLE_DONE;
    AB_SPI_WriteAndRead(SPI_INS, txbuf, NULL, txlen, spi_tran_complete);
    return 0;
}

// read <rxlen>
// Ex: read 5 bytes
//       spi_test> read 5
static int cmd_read_f(void *no, int argc, char**argv)
{
    uint32_t rxlen;

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &rxlen))
        return RET_INVALID_PARAM;

    gState = MASTER_STATE_SINGLE_DONE;
    AB_SPI_WriteThenRead(SPI_INS, NULL, 0, NULL, rxlen, spi_tran_complete);
    return 0;
}

// start <times>
// Ex: start running test for 100 times
//       spi_test> start 100
static int cmd_start_f(void *no, int argc, char** argv)
{
    gCount = 0;
    gFailCount = 0;

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;
    if(!AB_UTIL_Str2Num(argv[1], &gTargetCount))
        return RET_INVALID_PARAM;

    run_test_with_gpio(gTargetCount);
    return 0;
}

static int cmd_exit_f(void *no, int argc, char** argv)
{
    AB_SPI_Close(SPI_INS);
    printf("spi master is close on spi %d\n", SPI_INS);

    printf(">>> The End, thank you!! <<<\n");
    return RET_CONSOLE_EXIT;
}

/*************************************************************************/
/*GPIO related function*/
/*************************************************************************/
static void gpio_detect_intr (uint8_t io_num)
{
    uint8_t val;

#if ENABLE_DEBUG
    printf("gpio_detect_intr[%d] state: %d, gCount %d\n", io_num, gState, gCount);
#endif

    if (io_num == SPI_SLAVE_GPIO_DATAREADY) {
        if (gState == MASTER_STATE_WRITE_DONE) {
            read_from_slave();
        } else if (gState == MASTER_STATE_READ_DONE){
            if (gCount < gTargetCount) {
                gCount++;
                write_to_slave();
            } else {
                printf("end of the test, failed %d times\n", gFailCount);
            }
        } else if (gState == MASTER_STATE_SINGLE_WRITE) {
            gState = MASTER_STATE_SINGLE_DONE;
            AB_SPI_WriteThenRead(SPI_INS, NULL, 0, NULL, gCmdRxLen, spi_tran_complete);
        } else {
#if ENABLE_DEBUG
            printf("wrong state %d\n", gState);
#endif
        }
    }
}

void master_gpio_init (void)
{
    DRV_Gpio_DirSet(SPI_SLAVE_GPIO_DATAREADY_MASK, false);
    DRV_Gpio_IntReg(SPI_SLAVE_GPIO_DATAREADY, EDGE_BOTH, gpio_detect_intr);
    DRV_Gpio_IntEn(SPI_SLAVE_GPIO_DATAREADY);
    DRV_Gpio_DebEn(SPI_SLAVE_GPIO_DATAREADY, false);
}

/*************************************************************************/
/*command table*/
/*************************************************************************/
const console_cmds_t cmd_tbl[] =
{
    {"start", cmd_start_f, NULL},
    {"writeread", cmd_writeread_f, NULL},
    {"write", cmd_write_f, NULL},
    {"read", cmd_read_f, NULL},
    {"exit", cmd_exit_f, NULL},
    {NULL, NULL, NULL}
};

/*
    This test will send several bytes data to slave, 
    and receive the transmitted data count from slave.
    Use PIO 23 to check if slave's response data is ready.
    USAGE: start <times>
 */
void main()
{    
    Ab_SpiParam init_parm;
    
    AB_BSP_init(&bsp_init_parm);
    printf("=========================================\n");
    printf("SPI communication test (master):\n");
    printf("=========================================\n");
    printf("PIO 23: receive slave data ready, please connect it with slave's PIO 23\n");
    printf("=========================================\n");
    printf("Switch SPI to PIO 14-17\n");
    printf("PIO 14:   CS\n");
    printf("PIO 15: MOSI\n");
    printf("PIO 16: MISO\n");
    printf("PIO 17:  CLK\n");
    printf("=========================================\n");
    printf("Please connect CS, MOSI, MISO and CLK between master/slave\n");

    DRV_PinMux_GrpSet(SPI_PIN_MASK2, PIN_SPI);

    init_parm.clk = 3000000;
    init_parm.mode = SPI_MODE0;
    init_parm.is_bidirection = false;
    AB_SPI_Open(SPI_INS, &init_parm);
    printf("spi master is open on spi %d\n", SPI_INS);

    AB_console_init("spitest > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);

    master_gpio_init();

    //run_test_with_gpio(gTargetCount);   

    while (1);
}

/*!
      \endcode
*/

