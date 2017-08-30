/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_remote "remote"
      \code {.c}
*/

#include "ab1600.h"
#include "ab_queue.h"
#include "ab_clk.h"
#include "ab_spi.h"
#include "ab_assert.h"
#include "bt.h"
#include "remote.h"
#include "Drv_timer32b0.h"
#include "ab_timer.h"

/******************************************************************************/
/*  function prototype                                                        */
/******************************************************************************/
extern void REMOTE_vcmd_handle(vcmd_packet *pkt);
/******************************************************************************/
/* callback function                                                        */
/******************************************************************************/
static void cpu_exception(uint8_t exp_id, uint32_t pc)
{
    Ab_printf_blocking("exception %d happen in 0x%08x!\n", exp_id, pc);
}

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/

/*clock*/
bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_16M,
    .isrc = true
};

/*printf*/
bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins,
};

/*bt*/
bsp_bt_parm bt_parm =
{
   .event_handler = remote_bt_evt_hdl,
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT,
   .is_uart_hci_mode = false
};

/*mp*/
bsp_mp_parm mp_parm =
{
  .uart_port = uart1_ins,
  .extend_cb = REMOTE_vcmd_handle,
};

/*uart*/
bsp_uart_parm uart_parm =
{
    .uart1_baud = 115200L,
};

bsp_cpu_parm cpu_parm =
{
    .exception_cb = cpu_exception
};

bsp_generic_ex2_parm rc_bsp_init_parm =
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,
    .printf_parm    = (bsp_printf_parm*)&printf_parm,
    .bt_parm        = (bsp_bt_parm*)    &bt_parm,
    .mp_parm        = (bsp_mp_parm*)    &mp_parm,
    .uart_parm      = (bsp_uart_parm*)  &uart_parm,
    .cpu_parm       = (bsp_cpu_parm*)   &cpu_parm
};

RC_DEEPSLEEP_TO_STRU rc_deepsleep_timeout =
{
   .POWER_ON         = 60*1000,
   .MOUSE_ON         = 60*1000,
   .MIC_ON           = 60*1000,
   .KEY_PRESS        = 60*1000,
   .GENERAL          = 60*1000,
   .UNDIR_ADV        = 5*1000 ,
   .BONDED_UNDIR_ADV = 1*1000 ,
   .WOBLE_ADV        = 5*1000 ,
   .DFU_OTA_STARTED  = 900*1000,
   .DFU_OTA_FINISHED = 5*1000 ,
};

RC_MISC_CONFIG_STRU rc_cfg =
{
    .KEY_HID        = 1,
    .MOUSE_HID      = 1,
    .AUDIO_HID      = 1,
    .WAKE_ON_MOTION = 0,
    .CODEC_SEL      = CODEC_1_4_IMA,
    .IDEAL_CONN_INTERVAL = 8,
    .IDEAL_SLAVE_LATENCY = 29,
    .SUPPORT_VAD    = 0,
};

RC_FORBIDDEN_FUNC    rc_ffunc =
{
    .OTA            = 0,
    .bonding        = 0,
    .air_mouse      = 0,
    .microphone     = 0,
    .normal_led     = 0,
    .rsvd           = 0,
};

/*-----------------------------------------------------
Command
------------------------------------------------------*/

static bool disable_application = false;

void main()
{

    if(ab_airoha_vcmd_mp_ongoing())
    {
        disable_application = true;
        rc_bsp_init_parm.uart_parm->uart1_baud = 3000000L;
        rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
        rc_bsp_init_parm.printf_parm = NULL;
        rc_bsp_init_parm.bt_parm->event_handler = NULL;
    }
    else if (!DRV_Gpio_PinValGet(RC_BYPASS_IO))
    {
        disable_application = true;
        rc_bsp_init_parm.printf_parm = NULL;
        rc_bsp_init_parm.bt_parm->event_handler = NULL;
        rc_bsp_init_parm.bt_parm->is_uart_hci_mode = true;
        rc_bsp_init_parm.bt_parm->rst_Bdie_if_Adie_rst = true;
    }
    else
    {
        remote_init_before_BT();
    }

    boot = AB_BSP_initEx(&rc_bsp_init_parm);


    if(!disable_application)
    {
        DRV_WDT_Enable(5);

        printf("\n remote init start: tick = %d\n",DRV_TMR32B0_TickGet());
        remote_init();
        printf("\n remote init end:   tick = %d\n",DRV_TMR32B0_TickGet());

        while(1)
        {
            remote_mainloop();
        }
    }
    else
    {
        while(1)
        {
            remote_mouse_vcmd_calibrate_in_loop();
        }
    }

    while(1);
}

/*!
      \endcode
*/

