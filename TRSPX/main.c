/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_trsp "TRSPX"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_queue.h"
#include "bsp_generic.h"
#include "ab_clk.h"
#include "ab_assert.h"
#include "bt.h"
#include "TRSPX.h"
#include "Drv_pinmux.h"
#include "drv_uart.h"
#include "TRSPX_gatt.h"
#include "drv_timer32b0.h"
#include "drv_odgpio.h"
#include "Drv_timer32b0.h"
#include "Drv_timer32b1.h"
#include "Drv_timer16.h"
#include "Drv_gpio.h"
#include "Drv_pinmux.h"
#include "console.h"
#include "ab_timer.h"
//#include "ab_i2c.h"
#include "drv_clk.h"
#include "AHRS_alg.h"

/******************************************************************************/
/* defines                                                                    */
/******************************************************************************/
#define TRSPX_RF_PENDING_TH 1000
#if (TRSPX_UART_PORT == UART_INS1)
#define CTS_PIN 18
#define RTS_PIN 19
#else
#define CTS_PIN 20
#define RTS_PIN 21
#endif
/******************************************************************************/
/* prototypes                                                                 */
/******************************************************************************/
static void uart_rx_data_ind(uint16_t len);

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
/*clock*/
bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M,
    .isrc = true
};

/*printf*/
bsp_printf_parm printf_parm =
{
    .uart_port = (1 - TRSPX_UART_PORT),
};

/*bt*/
bsp_bt_parm bt_parm =
{
   .event_handler = TRSPX_bt_evt_hdl,
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT,
   .is_uart_hci_mode = false
};

/*mp*/
bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins,
};

/*uart*/
bsp_uart_parm uart_parm =
{
	.uart1_baud = 115200L,

	.uart2_baud = 115200L,

#if (TRSPX_UART_PORT == UART_INS1)
	.uart2_pin_mask = UART2_PIN_MASK3,	
	.uart1_rx_data = &uart_rx_data_ind,
	.uart1_hw_flow_ctl_on = true,
	.uart1_rts_pin = RTS_PIN,  
	.uart1_cts_pin = CTS_PIN   
#else
	.uart2_pin_mask = UART2_PIN_MASK1,	
    .uart2_rx_data = &uart_rx_data_ind,
	.uart2_hw_flow_ctl_on = true,
	.uart2_rts_pin = RTS_PIN,  
	.uart2_cts_pin = CTS_PIN 
#endif
};


#ifdef TRSP_DEBUG
extern volatile uint16_t rx_woff;
extern volatile uint16_t rx_roff;
uint8_t ton = 0;
int cmd_debug(void *no, int argc, char** argv)
{
    printf("mtu = %d\n", TRSPX_mtu);
    printf("rts = %d\n", DRV_Gpio_PinValGet(RTS_PIN));
    printf("ble_status = %d\n", TRSPX_ble_status);
    printf("rx_woff, rx_roff = %d %d\n", rx_woff, rx_roff);
    printf("ton = %d\n", ton);
    return 0;
}


const  console_cmds_t cmds[] =
{
    {"debug", cmd_debug, NULL},
    {NULL, NULL, NULL}
};

/*console*/
const bsp_console_parm console_parm =
{
    .uart_port = (1 - TRSPX_UART_PORT),
    .tbl = (console_cmds_t *)cmds,
    .prompt = "TRSPX > ",
};
#endif

bsp_generic_ex2_parm bsp_init_parm =
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,
    .printf_parm    = (bsp_printf_parm*)&printf_parm,
    .bt_parm        = (bsp_bt_parm*)    &bt_parm,
    .mp_parm        = NULL,
    .uart_parm      = (bsp_uart_parm*)  &uart_parm,    
#ifdef TRSP_DEBUG
    .console_parm   = (bsp_console_parm*) &console_parm,
#endif
};

void uart_rx_timer(void*parm)
{
    uint16_t rlen;

    while (AB_UART_RxRecidue(TRSPX_UART_PORT))
    {
        if(BT_Pending_TxCnt() > TRSPX_RF_PENDING_TH)
        {
            //printf("%d\n", BT_Pending_TxCnt());

            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_1, 10, true, NULL, uart_rx_timer);
            return;
        }
        else
        {
            rlen = AB_UART_Read(TRSPX_UART_PORT, &TRSPX_Read_Data[0], TRSPX_mtu);

#ifdef TRSP_DEBUG
            if(rlen != TRSPX_mtu)
                ton++;
#endif
            TRSPX_send(rlen);

            rlen = AB_UART_RxRecidue(TRSPX_UART_PORT);
            if(rlen == 0)
            {
                return;
            }
            else if(rlen < TRSPX_mtu)
            {
                break;
            }
        }
    }

    DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_1, 2, true, NULL, uart_rx_timer);

    return;
}

static void uart_rx_data_ind(uint16_t len)
{
	uint16_t rlen;

    DRV_TMR32B0_NotifyDisable(TMR32B0_NOTIFY_1);

	while(AB_UART_RxRecidue(TRSPX_UART_PORT) > TRSPX_mtu)
	{
        if(BT_Pending_TxCnt() > TRSPX_RF_PENDING_TH)
        {
        
            //printf("%d\n", BT_Pending_TxCnt());
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_1, 10, true, NULL, uart_rx_timer);
            return;
        }

        if(rlen = AB_UART_Read(TRSPX_UART_PORT, &TRSPX_Read_Data[0], TRSPX_mtu))
        {
            TRSPX_send(rlen);
        }
	}

    if(rlen = AB_UART_RxRecidue(TRSPX_UART_PORT))
    {    
        DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_1, 2, true, NULL, uart_rx_timer);                
    }
}

/*******************************************************************************************/

static void Calibration_Init(void) {

    acc_coeff[0] = 0.000487945624627173f;
    acc_coeff[1] = 2.81168240690022e-06f;
    acc_coeff[2] = 9.36260130401934e-06f;
    acc_coeff[3] = 0.00458341091871262f;

    acc_coeff[4] = -5.18062779519823e-06f;
    acc_coeff[5] = 0.000488027260871604f;
    acc_coeff[6] = 2.92719914796180e-06f;
    acc_coeff[7] = 0.00383149320259690f;

    acc_coeff[8] = -5.45604098078911e-06f;
    acc_coeff[9] = -8.31334261874872e-07f;
    acc_coeff[10] = 0.000488498655613512f;
    acc_coeff[11] = 0.0101214442402124f;

    gyro_coeff[0] = 0.00106422509998083f;
    gyro_coeff[1] = 0.000000000f;
    gyro_coeff[2] = 0.000000000f;
    gyro_coeff[3] = -0.00147315871436149f;

    gyro_coeff[4] = 0.000000000f;
    gyro_coeff[5] = 0.00106422509998083f;
    gyro_coeff[6] = 0.000000000f;
    gyro_coeff[7] = -0.0164040885865688f;

    gyro_coeff[8] = 0.000000000f;
    gyro_coeff[9] = 0.000000000f;
    gyro_coeff[10] = 0.00106422509998083f;
    gyro_coeff[11] = 0.00491855200380087f;

    mag_coeff[0] = 0.00366684910841286f;
    mag_coeff[1] = 0.0f;
    mag_coeff[2] = 0.0f;
    mag_coeff[3] = -0.200160861015320f;

    mag_coeff[4] = 0.0f;
    mag_coeff[5] = 0.00362891680561006f;
    mag_coeff[6] = 0.0f;
    mag_coeff[7] = 0.102105632424355f;


    mag_coeff[8] = 0.000000000f;
    mag_coeff[9] = 0.000000000f;
    mag_coeff[10] = 0.00357476784847677f;
    mag_coeff[11] = -0.398356974124908f;

    gyro_error = 30.0f;
    gyro_drift = 0.0f;
    acc_max_range = pow(2.0f, 15) - 1;
    gyro_max_range = pow(2.0f, 15) - 1;
    mag_max_range = pow(2.0f, 11) - 1;
    scale_valid = 0.80f;
    correct_bias_scale = 0.001f;
}

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

/*PWM*/
static int cmd_pwm_all(void)
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

    DRV_TMR16_PWM_Enable( TMR16B0_TICK_100US );
}
/**IIC:*******************************************************************************************/
//static bool akm_read(uint16_t RegAddr, uint8_t *buf, uint16_t size)
//{
//    I2C_BUS_CTRL_T I2cCtrl;
//
//    I2cCtrl.FreqSel       = I2C_CLK_FREQ_400K;
//    I2cCtrl.DeviceAddr    = 0x0c;
//    I2cCtrl.RegAddr		  = RegAddr;
//    I2cCtrl.NumOfReg      = size;
//    I2cCtrl.ValueAddr.Dst = buf;
//    I2cCtrl.repeat        = 0x01;
//
//    return AB_I2C_BlockingRead(&I2cCtrl);
//}
//
//static bool akm_write(uint16_t RegAddr, uint8_t *buf, uint16_t size)
//{
//    I2C_BUS_CTRL_T I2cCtrl;
//
//    I2cCtrl.FreqSel       = I2C_CLK_FREQ_400K;
//    I2cCtrl.DeviceAddr    = 0x0c;
//    I2cCtrl.RegAddr		  = RegAddr;
//    I2cCtrl.NumOfReg      = size;
//    I2cCtrl.ValueAddr.Src = buf;
//    I2cCtrl.repeat        = 0x01;
//
//    return  AB_I2C_BlockingWrite(&I2cCtrl);
//}
//static uint8_t AKM_read_whoami( void )
//{
//    uint8_t akmBuf[2] = { 0 };
//	uint8_t res = 0;
//    AB_I2C_Open();
//    res = akm_read(0x00, akmBuf, 2);
//    if( res == I2C_TRANSACTION_SUCCEEDED  ){
//    	printf("akm who i am  00H= 0x%x  01H= 0x%x \n", akmBuf[0], akmBuf[1]);
//    }else{
//    	printf("akm read fail:%d\n",res );
//    }
//    AB_I2C_Close();
//}
/*******************************************************************************************/
// LED0 : OD_GPIO0  0:on; 1:off
// LED1 : OD_GPIO1
void main()
{
	float sensorBuf[9] = { 0 };
	static uint32_t pending_num = 0;
	static uint32_t micrsecond = 0;
	uint8_t ledValue = 0;
	uint16_t i = 0;
	uint8_t res = 0;

	/*For MP-Tool*/
	if(ab_airoha_vcmd_mp_ongoing())
	{
		bsp_init_parm.mp_parm = (bsp_mp_parm *)&mp_parm;
		bsp_init_parm.printf_parm = NULL;		
		bsp_init_parm.bt_parm->event_handler = NULL;
		bsp_init_parm.uart_parm->uart1_rx_data = NULL;
		bsp_init_parm.uart_parm->uart1_hw_flow_ctl_on = false;
        AB_BSP_initEx(&bsp_init_parm);
		while(1);
	}
    /*Normal*/
    else
    {    
    	AB_BSP_initEx(&bsp_init_parm);

		DRV_WDT_Enable(5);		
		TRSPX_init();
		DRV_TMR32B0_Enable(TMR32B0_1MS);

        #if 0
        #define DEBUG_PINS (1L << 21) | (1L << 22) | (1L << 23) | (1L << 28)| (1L << 29)        
        DRV_PinMux_SigSet(DEBUG_PINS, PIN_GPIO);
        DRV_Gpio_DirSet(DEBUG_PINS, true); //output
        DRV_Gpio_ValSet(DEBUG_PINS, false); //low;
        #endif
        
        printf("while: \n");
        ble_gap_tx_power_set(6, NULL);
        cmd_pwm_all();
        DRV_OdGpio_OeSet((1<<7), 1);   // led2

        Calibration_Init();
        InitAlg();
		while(1)
		{	
#if 0
			sensorBuf[0] = -0.10f;
			sensorBuf[1] =  0.10f;
			sensorBuf[2] =  1.10f;
			sensorBuf[3] =  0.112130f;
			sensorBuf[4] =  0.101142f;
			sensorBuf[5] = -0.111110f;
			sensorBuf[6] = 0.104781f;
			sensorBuf[7] = -0.0f;
			sensorBuf[8] = 0.13140f;
			DRV_OdGpio_ValSet(0x4, 0);
			for( i=0; i<1000;i++ ){
				micrsecond += 2;
		        res = AlgorithmProcess(sensorBuf, micrsecond);
		        if (!res) {
		          //printf(" AlgorithmProcess fail\n ");
		          continue;
		        }else{
		         // printf(" AlgorithmProcess success\n ");
		        }
			}
			DRV_OdGpio_ValSet(0x04, 1);
#endif

			// I2C_______________________________________
//			AKM_read_whoami();

			if( ledValue ){
				DRV_OdGpio_ValSet(0x7, 0);
				ledValue != ledValue;
			}else{
				ledValue != ledValue;
				DRV_OdGpio_ValSet(0x07, 1);
			}

			DRV_WDT_Kick();            
            //AB_UART2_FlowControl_Loop();
            TRSPX_send(20);
            OS_delay_ms(10);
            pending_num = BT_Pending_TxCnt();
            if( pending_num > 0  ){
            	 printf("pending5:%d\n",pending_num);
            	 pending_num = 0;
            }
		}
    }
}

/*!
      \endcode
*/

