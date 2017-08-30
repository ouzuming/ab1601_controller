/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/

/*! 
     \page Example_WDT "Example\wdt"
     \code {.c}
*/
#include "ab1600.h"
#include "bsp_generic.h"
#include "drv_pwr.h"
#include "drv_wdt.h"
#include "drv_gpio.h"

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};

void gpio0_int(uint8_t num)
{
    DRV_WDT_Kick();
}

void main()
{    
    BOOT_REASON boot;

    boot = DRV_Pwr_BootFrom();
    
    AB_BSP_init(&bsp_init_parm);
    
    switch(boot.from)
    {
        case BOOT_HW_RST:
            printf("boot from hw reset\n");
            break;
        case BOOT_POWER_OFF:
            printf("boot from power off\n");
            break;
        case BOOT_DEEP_SLEEP:
            printf("boot from deep sleep\n");
            break;
        case BOOT_SW_RST:
            printf("boot from SW reset\n");
            break;
        case BOOT_WDT_RST:
            printf("boot from WDT, last PC = 0x%x\n", DRV_WDT_LastPC());
            break;
        case BOOT_LPO:
            printf("boot from LPO\n");
            break;
        case BOOT_UVLO:
            printf("boot from UVLO\n");
            break;
    }

    printf("=====================================\n");
    printf("Watch Dog Demo\n");
    printf("=====================================\n");
    printf("Set watch dog to 5 seconds\n");
    printf("Please press pio 0 to kick dog\n");

    DRV_WDT_Enable(5);

    DRV_Gpio_IntReg(0, EDGE_NEG, gpio0_int);
    DRV_Gpio_IntEn(0);
    
    while (1);
}

/*!
    \endcode
*/

