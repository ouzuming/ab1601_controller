/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_IOMUX_console_iomux_test "Example/IOMUX/console_iomux_test"
      \code {.c}
*/

#include "ab1600.h"
#include "ab_uart.h"
#include "console.h"
#include "Drv_pinmux.h"

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


const Ab_UartParam  uart_param_3M_console = {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

static void console_tx_to_uart(const uint8_t* buf, uint16_t len)
{
    AB_UART_Write(uart1_ins, (uint8_t*)buf, len);
}



/*************************************************************************/
/*MUX command*/
/*************************************************************************/
typedef struct
{
    char* name;
    void* gfunc;
    void* sfunc;
    uint8_t param;
}io_mux_type;

io_mux_type io_mux [] = 
{
    {"AIO",     DRV_PinMux_AioGet, DRV_PinMux_AioSet, 0},
    {"SPI",     DRV_PinMux_GrpGet, DRV_PinMux_GrpSet, PIN_SPI},
    {"TIMER",   DRV_PinMux_GrpGet, DRV_PinMux_GrpSet, PIN_TIMER},
    {"UART2",   DRV_PinMux_GrpGet, DRV_PinMux_GrpSet, PIN_UART2},
    {"MOUSE",   DRV_PinMux_GrpGet, DRV_PinMux_GrpSet, PIN_MOUSE},
    {"SCR",     DRV_PinMux_GrpGet, DRV_PinMux_GrpSet, PIN_SCR},
    {"GPIO",    DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_GPIO},
    {"PWM1",    DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_PWM1}, 
    {"PWM2",    DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_PWM2}, 
    {"PWM3",    DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_PWM3}, 
    {"PWM4",    DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_PWM4}, 
    {"XO16M",   DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_XO16M},
    {"RTS",     DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_RTS},
    {"IR32K",   DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_IR32K},
    {"OR32K",   DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_OR32K},            
    {"CTS",     DRV_PinMux_SigGet, DRV_PinMux_SigSet, PIN_CTS},
 };

int cmd_mux_get_f(void *no, int argc, char** argv)
{
        uint32_t mask;
        uint8_t i;
        int all;
 
        if(argc != 2)
            return -3;

        if(!strcmp("ALL", argv[1]))
            all = 1;
        else if(!strcmp("all", argv[1]))
            all = 2;
        else 
            all = 0;
        
        for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
        {
            if(io_mux[i].name)
            {
                if(all || !strcmp(io_mux[i].name, argv[1]))
                {
                    uint32_t (*f)(uint8_t) = io_mux[i].gfunc;
                    mask = f(io_mux[i].param);

                    if((all < 2) || (mask != 0))
                        printf("%s:\t0x%08X\n", io_mux[i].name, mask);
                    if(!all)
                        return 0;
                }                    
            }
        }

        printf("\n");
        if(!all && i == sizeof(io_mux)/sizeof(io_mux_type))
        {
            printf("Usage:\n");
            for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
            {
                if(io_mux[i].name)
                {
                    printf("mux get %s\n", io_mux[i].name);
                }
            }
            printf("mux get ALL\t/*print all*/\n");
            printf("mux get all\t/*print all but non zeros*/\n");
        }

        return 0;
}

int cmd_mux_set_f(void *no, int argc, char** argv)
{
    uint8_t i;
    uint32_t mask;
    
    if(argc != 3)
    {
        return -3;
    }

    for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
    {
        if(io_mux[i].name)
        {
            if(!strcmp(io_mux[i].name, argv[1]))
            {
                uint32_t (*f)(uint32_t, uint8_t) = io_mux[i].sfunc;
                uint32_t mask;

                if(AB_UTIL_Str2Num(argv[2], &mask))
                    f(mask, io_mux[i].param);
                
                return 0;
            }                    
        }
    }

    if(i == sizeof(io_mux)/sizeof(io_mux_type))
    {
        printf("Usage:\n");
        for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
        {
            if(io_mux[i].name)
            {
                printf("mux set %s [pin_mask]\n", io_mux[i].name);
            }
        }
        return -2;
    }
    
    return 0;
}

int cmd_mux_help_f(void *no, int argc, char** argv)
{
    uint8_t i;
    
    printf("Usage:\n");
    for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
    {
        if(io_mux[i].name)
        {
            printf("mux set %s [pin_mask]\n", io_mux[i].name);
        }
    }
    for(i = 0; i < sizeof(io_mux)/sizeof(io_mux_type); i++)
    {
        if(io_mux[i].name)
        {
            printf("mux get %s\n", io_mux[i].name);
        }
    }
    printf("mux get ALL\t/*print all*/\n");
    printf("mux get all\t/*print all but non zeros*/\n");
    return 0;
}



/*MUX command sub-tables*/
const console_cmds_t cmd_mux_tbl[] =
{
    {"get", cmd_mux_get_f, NULL},
    {"set", cmd_mux_set_f, NULL},
    {"help", cmd_mux_help_f, NULL},
    {NULL, NULL, NULL}
};

/*command table*/
const console_cmds_t cmd_tbl[] =
{
    {"mux", NULL, cmd_mux_tbl},
    {NULL, NULL, NULL}
};

void main()
{

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_console);
    
    /*console init*/
    printf("Type \"mux help\" for usage\n");
    AB_console_init("mux commander > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);
    while (1);
}

/*!
      \endcode
*/

