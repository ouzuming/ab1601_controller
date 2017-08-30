/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_LED_led_commander "Example/LED/led_commander"
      \code {.c}
*/

#include "ab1600.h"
#include "bsp_generic.h"
#include "Drv_odpinmux.h"
/******************************************************************************
* variables
******************************************************************************/
extern const console_cmds_t cmd_led_tbl[] ;

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};
const bsp_generic_ex_parm bsp_init_ex_parm = {AB_CLK_48M, uart1_ins, 3000000L, (console_cmds_t*)cmd_led_tbl, "led_commander >"};

/******************************************************************************
* main
******************************************************************************/
void main()
{
    AB_BSP_init_with_console(&bsp_init_ex_parm);

   
    printf("\nODIO2 is switched to LED0\n");
    printf("ODIO3 is switched to LED1\n");
    
    DRV_OdPinMux_SigSet((1 << 2), PIN_OD_LED0);
    DRV_OdPinMux_SigSet((1 << 3), PIN_OD_LED1);

    while(1);
}

/*!
      \endcode
*/

