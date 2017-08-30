/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_IOMUX_console_odiomux_test "Example/IOMUX/console_odiomux_test"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "console.h"
#include "Drv_Odpinmux.h"

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
/*ODMUX command*/
/*************************************************************************/
typedef struct
{
    char* name;
    void* gfunc;
    void* sfunc;
    uint8_t param;
}io_mux_type;

io_mux_type od_io_mux [] = 
{
    {"GPIO",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_GPIO},
    {"I2C",     DRV_OdPinMux_GrpGet, DRV_OdPinMux_GrpSet, PIN_I2C},
    {"PWM1",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_PWM1}, 
    {"PWM2",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_PWM2}, 
    {"PWM3",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_PWM3}, 
    {"PWM4",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_PWM4}, 
    {"LED0",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_LED0},
    {"LED1",    DRV_OdPinMux_SigGet, DRV_OdPinMux_SigSet, PIN_OD_LED1},
 };

int cmd_odmux_get_f(void *no, int argc, char** argv)
{
        uint8_t mask;
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
        
        for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
        {
            if(od_io_mux[i].name)
            {
                if(all || !strcmp(od_io_mux[i].name, argv[1]))
                {
                    uint8_t (*f)(uint8_t) = od_io_mux[i].gfunc;
                    mask = f(od_io_mux[i].param);

                    if((all < 2) || (mask != 0))
                        printf("%s:\t0x%02X\n", od_io_mux[i].name, mask);
                    if(!all)
                        return 0;
                }                    
            }
        }

        if(!all && i == sizeof(od_io_mux)/sizeof(io_mux_type))
        {
            printf("Usage:\n");
            for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
            {
                if(od_io_mux[i].name)
                {
                    printf("mux get %s\n", od_io_mux[i].name);
                }
            }
            printf("odmux get ALL\t/*print all*/\n");
            printf("odmux get all\t/*print all but non zeros*/\n");
        }

        return 0;
}

int cmd_odmux_set_f(void *no, int argc, char** argv)
{
    uint8_t i;
    uint8_t mask;
    
    if(argc != 3)
    {
        return -3;
    }

    for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
    {
        if(od_io_mux[i].name)
        {
            if(!strcmp(od_io_mux[i].name, argv[1]))
            {
                uint32_t (*f)(uint8_t, uint8_t) = od_io_mux[i].sfunc;
                uint8_t mask;
                uint32_t val;

                if(AB_UTIL_Str2Num(argv[2], &val))
                {
                    mask = (uint8_t)val;
                    f(mask, od_io_mux[i].param);
                }
                
                return 0;
            }                    
        }
    }

    if(i == sizeof(od_io_mux)/sizeof(io_mux_type))
    {
        printf("Usage:\n");
        for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
        {
            if(od_io_mux[i].name)
            {
                printf("odmux set %s [pin_mask]\n", od_io_mux[i].name);
            }
        }
        return -2;
    }
    
    return 0;
}

int cmd_odmux_help_f(void *no, int argc, char** argv)
{
    uint8_t i;
    
    printf("Usage:\n");
    for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
    {
        if(od_io_mux[i].name)
        {
            printf("mux set %s [pin_mask]\n", od_io_mux[i].name);
        }
    }

    printf("\n");

    for(i = 0; i < sizeof(od_io_mux)/sizeof(io_mux_type); i++)
    {
        if(od_io_mux[i].name)
        {
            printf("mux get %s\n", od_io_mux[i].name);
        }
    }
    printf("mux get ALL\t/*print all*/\n");
    printf("mux get all\t/*print all but non zeros*/\n");
    return 0;
}



/*MUX command sub-tables*/
const console_cmds_t cmd_odmux_tbl[] =
{
    {"get", cmd_odmux_get_f, NULL},
    {"set", cmd_odmux_set_f, NULL},
    {"help", cmd_odmux_help_f, NULL},
    {NULL, NULL, NULL}
};

/*command table*/
const console_cmds_t cmd_tbl[] =
{
    {"mux", NULL, cmd_odmux_tbl},
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

