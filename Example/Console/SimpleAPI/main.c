/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
  \page Example_Console_simpleapi "Example/Console/simpleapi"
  \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_uart.h"
#include "console.h"

static void uart_rx_data_ind_console(uint16_t len);

/*-----------------------------------------------------
UART
------------------------------------------------------*/
const Ab_UartParam  uart_param_3M_console = 
    {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

static void uart_rx_data_ind_console(uint16_t len)
{
    uint8_t buf[10];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 10))
    {
        AB_console_handle(buf, rlen);
    }
}

static void console_tx_to_uart(const uint8_t* buf, uint16_t len)
{
    AB_UART_Write(uart1_ins, (uint8_t*)buf, len);
}


/*-----------------------------------------------------
Command
------------------------------------------------------*/
int cmd_echo(void *no, int argc, char** argv)
{
    int i;
    for(i = 1; i < argc; i++)
        printf("%s", argv[i]);
    printf("\n");
    return 0;
}

int cmd_cmd(void *no, int argc, char** argv)
{
    printf("I am %s command\n", argv[0]);
    return 0;
}


const  console_cmds_t cmds[] = 
{
    {"echo", cmd_echo, NULL},
    {"cmd1", cmd_cmd, NULL},
    {"cmd2", cmd_cmd, NULL},
    {"cmd3", cmd_cmd, NULL},
    {NULL, NULL, NULL}
};


/*-----------------------------------------------------
main
------------------------------------------------------*/
void main()
{    

    /*Open Uart1*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_console);

    /*print output port*/
    Ab_printf_init(uart1_ins);

    /*console init*/
    AB_console_init("prompt > ", console_tx_to_uart, (console_cmds_t*)cmds);

    while (1);
}

/*!
  \endcode
*/

