/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_Mouse_wheel "Example/Mouse/wheel"
      \code {.c}
*/

#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_util.h"
#include "bsp_generic.h"
#include "drv_pinmux.h"
#include "drv_gpio.h"
#include "drv_mouse.h"

static void uart_rx_data_ind_console(uint16_t len);

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};

bool is_console_exit = false;

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



static int cmd_wheel_f(void *no, int argc, char** argv)
{
 
    return 0;
}



/*************************************************************************/
/*command table*/
/*************************************************************************/
const console_cmds_t cmd_tbl[] =
{
    {"wheel", cmd_wheel_f, NULL},
    {NULL, NULL, NULL}
};

 
void main()
{    

    uint32_t ulZcnt;
    MOUSE_INIT_PARAMS init_params;

    
    AB_BSP_init(&bsp_init_parm);
    printf("=========================================\n");
    printf("Scroll wheel test :\n");
    printf("=========================================\n");
    printf("Switch Mouse's IO to PIO 0~5\n");
    printf("PIO 4:   ZA\n");
    printf("PIO 5:   ZB\n");
    printf("=========================================\n");
    printf("Please connect ZA to PIO_4, ZB to PIO_5\n");

    DRV_PinMux_GrpSet( MOUSE_PIN_MASK3, PIN_MOUSE );


    AB_console_init("mouse > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);

    init_params.z_sel = 0;
    init_params.z_enable = 1;
    init_params.z_dir_sel = 1;
    init_params.rambo_enable = 0;
    init_params.debounce_enable = 0;

    DRV_MouseZ_Init( init_params );

    DRV_MouseZ_ClearLatch();

    while (1)
    {

        OS_delay_ms(10);

        ulZcnt = DRV_MouseZ_GetCnt();
        DRV_MouseZ_ClearLatch();

        if ( ulZcnt != 0 )
            printf("0x%X\n", ulZcnt );

    }
}

/*!
      \endcode
*/

