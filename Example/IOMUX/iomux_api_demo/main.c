/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_IOMUX_iomux_api_demo "Example/IOMUX/iomux_api_demo"
      \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include "drv_uart.h"
#include <stdlib.h>
#include <string.h>
#include "ab_queue.h"
#include "ab_uart.h"
#include <sys/stat.h>
#include "Drv_pinmux.h"

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

void print_pin_status(bool printf_if_zero)
{
    uint32_t pins;
    
    pins = DRV_PinMux_AioGet();
    if(printf_if_zero || pins) printf("AIO:\t0x%08X\n", pins); 
    pins = DRV_PinMux_GrpGet(PIN_SPI);  
    if(printf_if_zero || pins)  printf("SPI:\t0x%08X\n", pins); 
    pins = DRV_PinMux_GrpGet(PIN_TIMER);
    if(printf_if_zero || pins)  printf("TIMER:\t0x%08X\n", pins);
    pins = DRV_PinMux_GrpGet(PIN_UART2);
    if(printf_if_zero || pins)  printf("UART2:\t0x%08X\n", pins);
    pins = DRV_PinMux_GrpGet(PIN_MOUSE);
    if(printf_if_zero || pins)  printf("MOUSE:\t0x%08X\n", pins);
    pins = DRV_PinMux_GrpGet(PIN_SCR);  
    if(printf_if_zero || pins)  printf("SCR:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_GPIO); 
    if(printf_if_zero || pins)  printf("GPIO:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_PWM1); 
    if(printf_if_zero || pins)  printf("PWM1:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_PWM2); 
    if(printf_if_zero || pins)  printf("PWM2:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_PWM3); 
    if(printf_if_zero || pins)  printf("PWM3:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_PWM4); 
    if(printf_if_zero || pins)  printf("PWM4:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_XO16M);
    if(printf_if_zero || pins)  printf("XO16M:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_RTS);  
    if(printf_if_zero || pins)  printf("RTS:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_IR32K);
    if(printf_if_zero || pins)  printf("IR32K:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_OR32K);
    if(printf_if_zero || pins)  printf("OR32K:\t0x%08X\n", pins);
    pins = DRV_PinMux_SigGet(PIN_CTS);     
    if(printf_if_zero || pins)  printf("CTS:\t0x%08X\n", pins);
}

void SetMuxGrp(uint32_t mask, PIN_GRP grp, char *str)
{
    uint32_t pins;
    pins = mask;

    printf("\n============================\n");
    printf(str, mask);
    printf("============================\n");
    DRV_PinMux_GrpSet(pins, grp);
    print_pin_status(false);
}

void SetMuxSig(uint32_t mask, PIN_SIG sig, char *str)
{
    uint32_t pins;
    pins = mask;

    printf("\n============================\n");
    printf(str, mask);
    printf("============================\n");
    DRV_PinMux_SigSet(pins, sig);
    print_pin_status(false);
}

const Ab_UartParam  uart_param_3M_noRX = {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void main()
{
    uint32_t pins;

    /*print output port*/
    Ab_printf_init(uart1_ins);

    /*open uart 1*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_noRX);

    printf("============================\n");
    printf("Initial\n");
    printf("============================\n");

    print_pin_status(true);

    //AIO mux test
    pins = 0xFFFFFFFF;
    printf("\n============================\n");
    printf("Set 0xFFFFFFFF to AIO\n");    
    printf("============================\n");
    DRV_PinMux_AioSet(pins);
    print_pin_status(false);
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");

    //SPI mux test
    SetMuxGrp(0xFFFFFFFF, PIN_SPI, "Set 0x%08X to SPI\n");    
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //timer mux test
    SetMuxGrp(0xFFFFFFFF, PIN_TIMER, "Set 0x%08X to TIMER\n");    
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //uart2 mux test
    SetMuxGrp(0xFFFFFFFF, PIN_UART2, "Set 0x%08X to UART2\n");    
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //mouse mux test
    SetMuxGrp(0xFFFFFFFF, PIN_MOUSE, "Set 0x%08X to MOUSE\n");    
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //spi mux test
    SetMuxGrp(0xFFFFFFFF, PIN_SCR, "Set 0x%08X to SCR\n");    
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //pwm1
    SetMuxSig(0xFFFFFFFF, PIN_PWM1, "Set 0x%08X to PWM1\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //PWM2
    SetMuxSig(0xFFFFFFFF, PIN_PWM2, "Set 0x%08X to PWM2\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //PWM3
    SetMuxSig(0xFFFFFFFF, PIN_PWM3, "Set 0x%08X to PWM3\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //PWM4
    SetMuxSig(0xFFFFFFFF, PIN_PWM4, "Set 0x%08X to PWM4\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //XO16M
    SetMuxSig(0xFFFFFFFF, PIN_XO16M, "Set 0x%08X to XO16M\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //RTs
    SetMuxSig(0xFFFFFFFF, PIN_RTS, "Set 0x%08X to RTS\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //IR32K
    SetMuxSig(0xFFFFFFFF, PIN_IR32K, "Set 0x%08X to IR32K\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //OR32K
    SetMuxSig(0xFFFFFFFF, PIN_OR32K, "Set 0x%08X to OR32K\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
    //CTS
    SetMuxSig(0xFFFFFFFF, PIN_CTS, "Set 0x%08X to CTS\n");
    //back
    SetMuxSig(0xFFFFFFFF, PIN_GPIO, "Set 0x%08X to GPIO back\n");
 
   
    while (1);
}
/*!
      \endcode
*/

