/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
 /*!
      \page Example_IRRX "Example/IRRX"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "Ab_clk.h"
#include "Drv_pwr.h"
#include "Drv_timer16.h"
#include "Drv_gpio.h"
#include "Drv_pinmux.h"
#include "console.h"
#include "ab_timer.h"
#include "drv_clk.h"

typedef enum
{
    TMR16B0_001US = 16-1,    ///< 16 cycles per tick
    TMR16B0_100US = 1600-1,    ///< 1600 cycles per tick
    TMR16B0_200US = 3200-1,    ///< 3200 cycles per tick
    TMR16B0_250US = 4800-1,    ///< 4800 cycles per tick
    TMR16B0_500US = 8000-1,   ///< 8000 cycles per tick
    TMR16B0_1MS = 16000-1,     ///< 16000 cycles per tick

}TMR16B0_TICK;


#define IRRX_GPIO           19
#define IRRX_GPIO_MASK	    ( 1<<IRRX_GPIO )


#define GPIO_29       	29
#define GPIO_29_MASK	(1<<29)

#define GPIO_MEASURE_18       	18
#define GPIO_MEASURE_18_MASK	(1<<GPIO_MEASURE_18)


#define GPIO_MEASURE_27       	27
#define GPIO_MEASURE_27_MASK	(1<<27)

#define GPIO_OUTPUT		1
#define GPIO_INPUT		0

uint8_t toggle = 1;
uint8_t toggle_18 = 1;

#define TIMER_ONE_SHOT			true
#define TIMER_CONTINUE_SHOT		false


static uint8_t byIRTPhase = 0;
static uint8_t byIrrPhase;
static uint8_t byIrrBitCount;
static uint8_t byIrrByteCount;
static uint16_t IRR_addr;
static uint8_t IRR_data, IRR_data1;
static uint8_t byIrrDelay;

#define  IRR_GAP_DELAY       5 //3



static uint8_t byIrrStatus = 0x00;

#define FLAG_IRR_ACTIVE         0x01
#define FLAG_IRR_REPEAT         0x02
#define FLAG_IRR_FINISH         0x04

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

static void tmr16_callback(void* pTimer)
{
    DRV_Gpio_ValSet( GPIO_MEASURE_18_MASK, toggle_18 );
    toggle_18 = 1 - toggle_18;	
}

static uint32_t tickBuf[100];
static uint8_t tickNum = 0;

static int cmd_IRRX(void *no, int argc, char** argv)
{
    uint32_t uiVar1 = 0;
    uint32_t uiVar2 = 0;
	uint8_t i;
    
    AB_UTIL_Str2Num( argv[1], &uiVar1 );
    AB_UTIL_Str2Num( argv[2], &uiVar2 );

	if ( uiVar1 == 1)
	{
	
        DRV_Gpio_DirSet( GPIO_MEASURE_18_MASK, GPIO_OUTPUT );
        DRV_Gpio_PullSet( GPIO_MEASURE_18_MASK, PULL_UP ); //PULL_DOWN, UP same result
		printf( "PR=%d\n ", uiVar2 );
		DRV_TMR16_Enable( uiVar2 );
		DRV_TMR16_NotifyEnable( TMR16_NOTIFY_3, 200 , TIMER_CONTINUE_SHOT,	(void*)NULL, tmr16_callback ) ;		
		return;
	}

	if ( uiVar1 == 0 )
	{
        tickNum = 0;
        for ( i = 0; i < 100; i++ )
       	{
            printf( "i=%d tick=%d\n", i, tickBuf[i]);
       	}
	}
}


static int cmd_gpio(void *no, int argc, char** argv)
{
    uint32_t uiVar1 = 0;
    uint32_t uiVar2 = 0;
	uint32_t value;
    
    AB_UTIL_Str2Num( argv[1], &uiVar1 );
	
	value = DRV_Gpio_LatchedIntStsGet();

	printf( "value = 0x%X %d\n", value , value );

	DRV_Gpio_DebEn( IRRX_GPIO, (bool)uiVar1 );
	printf( "IRRX_GPIO = %d\n", uiVar1 );	
}

const console_cmds_t cmds[] =
{
	{"rr", cmd_IRRX, NULL},
	{"gg", cmd_gpio, NULL},
    {NULL, NULL, NULL}
};

const Ab_UartParam  uart_param_115200_console = { 115200L, 380, uart_rx_data_ind, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

void irrx(){}

void irr_reset() 
{
    byIrrPhase = 0;
}

void irr_rx_done()
{
	byIrrDelay = IRR_GAP_DELAY;
	byIrrStatus |= FLAG_IRR_ACTIVE;
}


void irr_gpio_cb(uint8_t num)
{
    uint32_t tick;

	tick = DRV_TMR16_TickGet();

	if ( tick != 0 )
	{
		DRV_TMR16_Reset( true );
		DRV_TMR16_Reset( false );
		DRV_TMR16_Enable( TMR16B0_100US ); // 1 tick = 100us
	}

	if ( tick > 200 ) 
		byIrrPhase = 0;

	switch ( byIrrPhase )
	{
        case 0:
			byIrrPhase = 1;
			break;

		case 1:
			if (( tick > 77 ) && ( tick < 102 )) //header On = 9.0 ms
            {
                byIrrDelay = IRR_GAP_DELAY;
                byIrrPhase = 2;
            
            }else
            {
                //reset 
                if ( tick > 1 ) 
               	{
					byIrrPhase = 0;
               	}
            }
            break;

        case 2:
			if (( tick > 19 ) && ( tick < 26 )) //header off = 2.25 ms
			{
                byIrrDelay = IRR_GAP_DELAY;
			}
			else if (( tick > 38 ) && ( tick < 51 )) //header off = 4.5 ms
            {
                byIrrBitCount = byIrrByteCount = 0;
                IRR_addr = IRR_data = IRR_data1 = 0;
				byIrrPhase = 3;
            }else
                if ( tick > 1 ) 
               	{
					byIrrPhase = 0;
               	}
            break;

        case 3: // pulse on = 560 us
			if (( tick > 3 ) && ( tick < 8 ))
            {
				byIrrPhase = 4;
            }else
                if ( tick != 0 ) byIrrPhase = 0;
			break;

        case 4: // pulse off 
            if (( tick > 3 ) && ( tick < 8 )) // bit 0, 560us
            {
				IRR_data >>= 1;
            }else if (( tick > 8 ) && ( tick < 24 )) //bit 1, 1.69ms
           	{
				IRR_data >>= 1;
				IRR_data += 0x80;
           	}else
            {
                if ( tick != 0 ) byIrrPhase = 0;
            }

			byIrrPhase = 3;
			
            if ( ++byIrrBitCount == 8 ) 
            {
                byIrrBitCount = 0;
				switch ( ++byIrrByteCount ) 
				{
                    case 1:
                    case 2:
                        IRR_addr = IRR_addr * 0x100 + IRR_data;
                        break;
                    
                    case 3:
                        IRR_data1 = IRR_data;
                        break;
                    
                    case 4:
                        printf("IRR_addr = 0x%2X\n", IRR_addr);
                        printf("Data= 0x%2X  ~Data = 0x%2X\n", IRR_data1 , IRR_data );
                        //if ( ( IRR_addr == 0x2FC ) || ( IRR_addr == 0x2FD ))
                       	{
							irr_rx_done();
                            byIrrPhase = 0;
                       	}
                        break;
				}
            }
			
            break;

        default:
			printf("default\n");
            break;
			

	}
	
}


void main()
{    

    //clock switch to 16M xtal
    AB_CLK_Switch(AB_CLK_16M, true);

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_115200_console);

    AB_console_init("CMD > ", console_tx_to_uart, (console_cmds_t*)cmds);

	DRV_Gpio_DirSet( GPIO_29_MASK, GPIO_OUTPUT );

	// IR Receiver PIN, disabloe debouce
    DRV_Gpio_IntReg( IRRX_GPIO, EDGE_BOTH, irr_gpio_cb );
    DRV_Gpio_IntEn( IRRX_GPIO );
	DRV_Gpio_DebEn( IRRX_GPIO, false );
	DRV_TMR16_Enable( TMR16B0_100US ); // 1 tick = 1 us

    //TMR16B0.PR.reg = TMR16B0_US;    
    //TMR16B0.TCR.field.CEN = 1;    

    printf("\n");
    printf("================IR receiver ==========================\n");
    printf("GPIO_19 for IR RX Pin\n");
    printf("Get tick via timer16\n");

    while (1)
	{
        if ( byIrrStatus & FLAG_IRR_ACTIVE )
        {
			printf("IRR repeat\n");
			if ( byIrrDelay-- == 0 ) 
			{
				byIrrStatus &= ~FLAG_IRR_ACTIVE;
				printf("Disable IRR\n");
			}

        }

		OS_delay_ms(40);		
	}

}

/*!
      \endcode
*/

