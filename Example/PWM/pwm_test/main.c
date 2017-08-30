/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
 /*!
      \page Example_PWM "Example/PWM"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"
#include "Drv_timer32b0.h"
#include "Drv_timer32b1.h"
#include "Drv_timer16.h"
#include "Drv_gpio.h"
#include "Drv_pinmux.h"
#include "console.h"
#include "ab_timer.h"

#include "drv_clk.h"


#define GPIO_PWM_1			11
#define GPIO_PWM_1_MASK		(1<<GPIO_PWM_1)
#define GPIO_PWM_2			12
#define GPIO_PWM_2_MASK		(1<<GPIO_PWM_2)
#define GPIO_PWM_3			13
#define GPIO_PWM_3_MASK		(1<<GPIO_PWM_3)
#define GPIO_PWM_4			14
#define GPIO_PWM_4_MASK		(1<<GPIO_PWM_4)

#define TMR16B0_TICK_1US		(16-1)
#define TMR16B0_TICK_100US		(16*100-1)

static void uart_rx_data_ind(uint16_t len)
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

static int cmd_pwm_all(void *no, int argc, char** argv)
{
	PWM_MATCH_REG pwm_init;

	pwm_init.pwm_mr0 = 0;
	pwm_init.pwm_mr0_2 = 30;
	pwm_init.pwm_mr1 = 20;
	pwm_init.pwm_mr1_2 = 50;
	pwm_init.pwm_mr2 = 50;
	pwm_init.pwm_mr2_2 = 80;
	pwm_init.pwm_mr3 = 80;
	pwm_init.pwm_mr3_2 = 100;

	DRV_TMR16_PWM(  pwm_init );

	DRV_PinMux_SigSet( GPIO_PWM_1_MASK, PIN_PWM1 );
	DRV_PinMux_SigSet( GPIO_PWM_2_MASK, PIN_PWM2 );
	DRV_PinMux_SigSet( GPIO_PWM_3_MASK, PIN_PWM3 );
	DRV_PinMux_SigSet( GPIO_PWM_4_MASK, PIN_PWM4 );
	OS_delay_ms( 10 );

    DRV_TMR16_PWM_Enable( TMR16B0_TICK_1US );
}

const console_cmds_t cmds[] =
{
	{"pwm", cmd_pwm_all, NULL},
    {NULL, NULL, NULL}
};

const Ab_UartParam  uart_param_115200_console = { 115200L, 380, uart_rx_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void pwm(){}

void main()
{    
    //clock switch to 16M xtal
    AB_CLK_Switch(AB_CLK_16M, true);

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_console);

    AB_console_init("CMD > ", console_tx_to_uart, (console_cmds_t*)cmds);


    printf("\n");
    printf("================PWM testing use timer16==========================\n");
    printf("PWM1 output pin is GPIO_11, please connect it!!\n");
    printf("PWM2 output pin is GPIO_12, please connect it!!\n");
    printf("PWM3 output pin is GPIO_13, please connect it!!\n");
    printf("PWM4 output pin is GPIO_14, please connect it!!\n");


    while (1)
	{

        OS_delay_ms(100);
    }
    
}

/*!
      \endcode
*/

