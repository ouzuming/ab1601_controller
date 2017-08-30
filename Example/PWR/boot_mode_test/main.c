/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_PWR_boot_mode_test "Example/PWR/boot_mode_test"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Drv_gpio.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"


const Ab_UartParam  uart_param_115200_noRx = {115200L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void main()
{
    BOOT_REASON boot;

    //check boot reason    
    boot = DRV_Pwr_BootFrom();
    
    //clock switch to 16M xtal
    AB_CLK_Switch(AB_CLK_16M, true);   

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_noRx);
    
        
    switch(boot.from)
    {
        case BOOT_HW_RST:
            printf("OK! Boot from hw reset\n");
            printf("\n==> Issue software reset\n");
            AB_UART_Flush(uart1_ins);                
            DRV_Pwr_EnterMode(POWER_MODE_SW_RST);
            break;
        case BOOT_POWER_OFF:
            printf("Boot from power off\n");
            printf("\n==> We are in normal mode\n");
            printf("Please press HW reset pin!\n");
            break;
        case BOOT_DEEP_SLEEP:
            printf("OK! Boot from deep sleep\n");
            printf("\n==> Enter power off\n");
            printf("Please press wakeup key!\n");
            AB_UART_Flush(uart1_ins);                
            DRV_Pwr_EnterMode(POWER_MODE_OFF);
            break;
        case BOOT_SW_RST:
            DRV_Gpio_IntReg(7, EDGE_POS, NULL);
            DRV_Gpio_IntEn(7);
            printf("OK! Boot from SW reset\n");
            printf("\n==> Enter deep sleep\n");
            printf("Please press gpio7/wakeup key!\n");
            AB_UART_Flush(uart1_ins);                
            DRV_Pwr_EnterMode(POWER_MODE_DEEP_SLEEP);
            break;
        case BOOT_WDT_RST:
            printf("boot from WDT\n");
            break;
        case BOOT_LPO:
            printf("boot from LPO\n");
            break;
        case BOOT_UVLO:
            printf("boot from UVLO\n");
            break;
    }
            
    while (1);
}
/*!
      \endcode
*/

