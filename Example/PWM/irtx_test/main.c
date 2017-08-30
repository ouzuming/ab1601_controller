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

#define IRTX_GPIO_28       	28
#define IRTX_GPIO_28_MASK	(1<<28)

#define GPIO_MEASURE       	29
#define GPIO_MEASURE_MASK	(1<<29)

#define GPIO_MEASURE_26       	26
#define GPIO_MEASURE_26_MASK	(1<<26)


#define GPIO_MEASURE_27       	27
#define GPIO_MEASURE_27_MASK	(1<<27)

#define GPIO_OUTPUT		1
#define GPIO_INPUT		0

uint8_t toggle = 1;
uint8_t toggle2 = 1;
#define TIMER_ONE_SHOT			true
#define TIMER_CONTINUE_SHOT		false

#define IRT_DATD_CMD     0xFD02FB04

static uint8_t byIRTPhase = 0;
uint32_t uiIRTData = IRT_DATD_CMD;
uint8_t byIRRTemp = 0;
uint8_t byIRCnt = 0;

uint8_t byTempCnt = 0;

uint32_t ulEmpty1 = 0;
uint32_t ulEmpty0 = 0;

bool bRepeat = false;



#define IRT_1_PULSE_WIDTH	800 // 1.69 ms
#define IRT_0_PULSE_WIDTH	230 // 560 us

//uint8_t uiData = 0;

#define PWM_HEAD		0x01
#define PWM_ADDRESS		0x02



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

static int cmd_pwm_enable(void *no, int argc, char** argv)
{
    uint32_t ctrl;
    uint32_t tick = 2;
    AB_UTIL_Str2Num(argv[1], &ctrl);
    AB_UTIL_Str2Num(argv[2], &tick );

    if (ctrl == 1 )
    {
        printf("Enable PWM, tick = %d\n", tick );
        DRV_TMR16_PWM_Enable( tick );
    }
    
    if ( ctrl == 0 )
    {
        printf("Disable PWM\n");
        DRV_TMR16_Disable();
    }
    
    return RET_SUCCESS;
}

static int cmd_pwm_match_setting(void *no, int argc, char** argv)
{
    uint32_t mr0 = 70;
    uint32_t mr0_2 = 140;
    
    AB_UTIL_Str2Num(argv[1], &mr0);
    AB_UTIL_Str2Num(argv[2], &mr0_2);

    printf("mr0 = %d, mr0_2= %d\n", mr0, mr0_2 );
    DRV_TMR16_PWM1(70, 140);
    
    return RET_SUCCESS;
}

static void Timer32_Measure(void* pTimer)
{
    uint32_t uiPinVal;

    DRV_Gpio_ValSet( GPIO_MEASURE_MASK, toggle );
    toggle = 1 - toggle;

    
}

static int cmd_tmrset(void *no, int argc, char** argv)
{
    uint32_t var1 = 3;
    uint32_t var2 = 10;

    AB_UTIL_Str2Num(argv[1], &var1);
    AB_UTIL_Str2Num(argv[2], &var2);

    printf("var1 = %d, var2= %d\n", var1, var2 );

    DRV_TMR32B0_Enable( var1 );
    DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, var2, TIMER_CONTINUE_SHOT, (void*)NULL, Timer32_Measure );

}
bool bTogglePWM = true;
static void timer32_pwm_cb(void* pTimer)
{
    uint32_t uiPinVal;
    
    if ( bTogglePWM )
    {
        bTogglePWM = false;
        DRV_TMR16_Disable();//disable pwm
        DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );

    }
    else
    {
        bTogglePWM = true;
        DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
        DRV_TMR16_PWM_Enable( 2 );
    }


}

static int cmd_pwm_toggle(void *no, int argc, char** argv)
{
    uint32_t var1 = 3;
    uint32_t var2 = 10;

    AB_UTIL_Str2Num(argv[1], &var1);
    AB_UTIL_Str2Num(argv[2], &var2);

    printf("var1 = %d, var2= %d\n", var1, var2 );

    DRV_TMR32B0_Enable( var1 );
    DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, var2, TIMER_CONTINUE_SHOT, (void*)NULL, timer32_pwm_cb );

}

void Pulse_Measure3()
{
    #if 1
    DRV_Gpio_ValSet( GPIO_MEASURE_26_MASK, toggle );
    toggle = 1 - toggle;	
    #endif
}

void Pulse_Measure27()
{
    #if 1
    DRV_Gpio_ValSet( GPIO_MEASURE_27_MASK, toggle2 );
    toggle2 = 1 - toggle2;	
    #endif
}

void Pulse_Measure()
{
    #if 0
    DRV_Gpio_ValSet( GPIO_MEASURE_MASK, toggle );
    toggle = 1 - toggle;	
    #endif
}

static void Tmr32_Not3_CB(void* pTimer)
{
    Pulse_Measure3();

}
static void Tmr32_Not1_CB(void* pTimer)
{
    Pulse_Measure27();

}


static void Timer32_PwmCB(void* pTimer)
{
    uint32_t uiPinVal;

    switch ( byIRTPhase )
    {
        case 0:
            byIRTPhase = 1;
            //Disable PWM 100ms
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );
            DRV_TMR16_Disable();// 
            Pulse_Measure();
            
            //Header 4.5ms
            //2200 GOOD
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 2200, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            
            break;


        case 1:  //Enable PWM
            byIRTPhase = 2;
            //Enable PWM
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
            DRV_TMR16_PWM_Enable( 2 );
            
            //Address , 560us,
            //235  , ===== 553, 451, 448
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );

            break;

        case 2:  //Disable PWM

            if ( byIRCnt++ < 32 )
                byIRTPhase = 1;
            else
            {
                byIRTPhase = 3;
            }
                
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );
            DRV_TMR16_Disable();

//			byIRRTemp = uiIRTData & 0x0001;

            if ( uiIRTData & 0x01 )
            {
                
                DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, IRT_1_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
                
            }
            else
            {
                //0: 1.12 - 560 us = 560 us
                //ulEmpty0
                DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            }

            uiIRTData >>= 1; //next bit

            Pulse_Measure();
            break;


        case 3:
            //41.745  ,Tail start
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 19250, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            byIRTPhase = 4;
            break;

        // Tail from here, phase 4,5,6.
        case 4:
            //Enable PWM 9ms
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
            DRV_TMR16_PWM_Enable( 2 );
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 4490, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            byIRTPhase = 5;
            break;

        case 5:
            //Disable PWM, 2.25 ms
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );
            DRV_TMR16_Disable();
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 1060, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            byIRTPhase = 6;
            break;

        case 6:
            //Enable 560us burst
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
            DRV_TMR16_PWM_Enable( 2 );
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );
            
            byIRTPhase = 7;
            break;

        case 7:	
            //Disable PWM, 100 ms = 100 000/2 
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );
            DRV_TMR16_Disable();
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 50000-1000+ulEmpty1, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );


            
            if ( byTempCnt++ == 20 )
            {
                bRepeat = false;
                byTempCnt = 0;
            }

            if ( bRepeat )
            {
                byIRTPhase = 4;
            }else
                byIRTPhase = 0xFF;
            
            break;


        
            
            
        case 0xFF:
            DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_GPIO );
            DRV_TMR32B0_Disable();
            DRV_TMR16_Disable();
            break;

        default:
            break;



    }
    
}

static int cmd_IRTX(void *no, int argc, char** argv)
{
    uint32_t uiVar1 = 0;
    uint32_t uiVar2 = 0;
    
    AB_UTIL_Str2Num( argv[1], &uiVar1 );
    AB_UTIL_Str2Num( argv[2], &uiVar2 );

//	DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
    DRV_TMR16_PWM1(70, 140);


    printf("uiVar1 = %d, uiVar2 = %d\n", uiVar1, uiVar2 );
    DRV_TMR32B0_Disable();
    DRV_TMR16_Disable();

    ulEmpty1 = uiVar1;

    bTogglePWM = true;
    bRepeat = true;


    byIRTPhase = 0;
    uiIRTData = IRT_DATD_CMD;
    byIRRTemp = 0;
    byIRCnt = 0;
    byTempCnt = 0;

    DRV_TMR32B0_Enable_Ext( 31 ,CLK_SWITCH_TMR0_SYS );

    // 9 ms , GOOD
    DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_0, 4490, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB );

    Pulse_Measure();
    //PWM enable
    DRV_PinMux_SigSet( IRTX_GPIO_28_MASK, PIN_PWM1 );
    DRV_TMR16_PWM_Enable( 2 );
//	DRV_TMR16_NotifyEnable( TMR16_NOTIFY_3, 200 , TIMER_CONTINUE_SHOT,	(void*)NULL, Tmr32_Not3_CB ) ;
    
    
    return RET_SUCCESS;
}


const console_cmds_t cmds[] =
{
    {"en", cmd_pwm_enable, NULL},
    {"mat", cmd_pwm_match_setting, NULL},
    {"ir", cmd_IRTX, NULL},
    {"tm", cmd_tmrset, NULL},
    {"pwm", cmd_pwm_toggle , NULL},
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

//	DRV_Gpio_DirSet( GPIO_MEASURE_MASK, GPIO_OUTPUT );
    DRV_Gpio_DirSet( GPIO_MEASURE_26_MASK, GPIO_OUTPUT );
    DRV_Gpio_DirSet( GPIO_MEASURE_27_MASK, GPIO_OUTPUT );

    //IRTX PIN init
    DRV_Gpio_DirSet( IRTX_GPIO_28_MASK, GPIO_INPUT );
    DRV_Gpio_PullSet( IRTX_GPIO_28_MASK, PULL_DOWN );

    printf("\n");
    printf("================PWM testing use timer16==========================\n");
    printf("PWM output pin is GPIO_28, please connect it!!\n");
    printf("Using below cmd to enable PWM\n");
    printf("CMD> mat 50 100  \n");
    printf("CMD> en 1 10  //enable PWM\n");
    printf("CMD> en 0 // Disable PWM\n");
    printf("CMD> ir // IR transmit data\n");

//	DRV_TMR32B0_GetPrioty_HW1();

    while (1){

        OS_delay_ms(100);


    }
    
}

/*!
      \endcode
*/

