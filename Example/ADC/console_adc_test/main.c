/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*! 
     \page Example_ADC_console_adc_test "Example/ADC/console_adc_test"
     \code {.c}
*/

#include "ab1600.h"
#include "ab_uart.h"
#include "console.h"
#include "Drv_adc.h"
#include "Ab_clk.h"

/*Uart interface*/
static void uart_rx_data_ind_console(uint16_t len)
{
    uint8_t buf[10];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 10))
    {
        AB_console_handle(buf, rlen);
    }
}


const Ab_UartParam  uart_param_115200_console = {115200, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

static void console_tx_to_uart(const uint8_t* buf, uint16_t len)
{
    AB_UART_Write(uart1_ins, (uint8_t*)buf, len);
}


static int cmd_drv_adcread(void *no, int argc, char** argv)
{
    int16_t adc;
    uint32_t channel;

    if(argc!=2 || !AB_UTIL_Str2Num(argv[1],&channel) || channel > 31)
    {
        return RET_INVALID_PARAM;
    }

    adc = DRV_ADC_Read(channel);

    printf("ADC value of channel %d = %d\n",channel ,adc);
    return 0;
}

static int cmd_ab_adcread(void *no, int argc, char** argv)
{
    uint16_t voltage;
    uint32_t channel;

    if(argc!=2 || !AB_UTIL_Str2Num(argv[1],&channel) || channel > 31)
    {
        return RET_INVALID_PARAM;
    }

    voltage = AB_ADC_Get_Voltage(channel);

    printf("Voltage of channel %d = %d\n",channel ,voltage);
    return 0;
}


/*command table*/
const console_cmds_t cmd_tbl[] =
{
    {"drv_adc", cmd_drv_adcread, NULL},
    {"ab_adc", cmd_ab_adcread, NULL},
    {NULL, NULL, NULL}
};

void main()
{

    //clock switch to 16M RC
    AB_CLK_Switch(AB_CLK_16M, true);


    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_console);

    AB_ADC_Init();
    
    /*console init*/
    AB_console_init("ADC tester > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);

    printf("\n===> type adc [0~31] to read adc channel\n");
    printf("ch 0~25 = AIO\n");
    printf("ch 27   = 1/3 VBat\n");
    printf("ch 28   = 2/3 VBat\n");
    printf("ch 29   = VBat\n");





    while (1);
}

/*! \endcode */


