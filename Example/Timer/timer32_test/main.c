/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_Timer_timer32_test "Example/Timer/timer32_test"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"
#include "Drv_timer32b0.h"
#include "Drv_timer32b1.h"

#define TEST_CONTROL_NON_START 0
#define TEST_CONTROL_STARTING 1
#define TEST_CONTROL_TESTING_NORMAL 2
#define TEST_CONTROL_TESTING_SLEEPING 3

static uint8_t test_control = TEST_CONTROL_NON_START;

static void uart_rx_data_ind(uint16_t len)
{
    uint8_t buf[10];

    //drop data
    while(AB_UART_Read(uart1_ins, buf, 10));

    if(test_control == TEST_CONTROL_NON_START)
        test_control = TEST_CONTROL_STARTING;
    else if(test_control == TEST_CONTROL_TESTING_NORMAL)
        test_control = TEST_CONTROL_TESTING_SLEEPING;
}

static void timer_cb(void* timer)
{
    if((uint32_t)timer == 0)
        printf("<0>");
    else if((uint32_t)timer == 1)
        printf("<1>");
}

const Ab_UartParam  uart_param_115200_console = {115200L, 380, uart_rx_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};


void main()
{    
    //clock switch to 16M xtal
    AB_CLK_Switch(AB_CLK_16M, true);   

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_console);

    /*timer32_b0 timer32_b1 init*/
    DRV_TMR32B0_Enable(TMR32B0_1MS); //1ms ticks
    DRV_TMR32B1_Enable(16000000/1000); //1ms ticks


    printf("=================================timer32 testing=================================\n");
    printf("timer32b0 5 second print <0>\n");
    printf("timer32b1 1 second print <1>\n");
    printf("User could press any key to enter sleep\n");
    printf("timer32b0 will wake system up in next 5 seconds expired\n");
    printf("Press any key to start!!!!!\n");
    while (1)
    {
        if(test_control == TEST_CONTROL_STARTING)
        {
            printf("Start go !!!\n");
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_0, 5000 , false, (void*)0, timer_cb);
            DRV_TMR32B1_NotifyEnable(TMR32B1_NOTIFY_0, 1000 , false, (void*)1, timer_cb);       
            test_control = TEST_CONTROL_TESTING_NORMAL;
        }
        else if(test_control == TEST_CONTROL_TESTING_SLEEPING)
        {
            printf("Enter sleep\n");
            AB_UART_Flush(uart1_ins);
            DRV_Pwr_EnterMode(POWER_MODE_SLEEP);
            printf("Wakeup\n");
            test_control = TEST_CONTROL_TESTING_NORMAL;
        }
    }
}

/*!
      \endcode
*/

