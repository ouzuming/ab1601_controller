/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_microphone.c
DESCRIPTION
NOTES
********************************************************************************/
#include "remote.h"
#include <math.h>

/**** external library API ****************************************************/
extern void ima_adpcm_encode_init(void);
extern int  ima_adpcm_encode_proc(short *signal, unsigned char *serial, int len);
extern int  ima_adpcm_encode_proc_halfrate(short *signal, unsigned char *serial, int len);

extern void adpcm_encode_init(void);
extern int  adpcm_encode_proc(short *signal, unsigned char *serial, int len);
extern int  adpcm_encode_proc_halfrate(short *signal, unsigned char *serial, int len);

extern uint8_t RC_adpcm_codecsel;
/******************************************************************************/

#ifndef CHIP_AB1601

/**** parameter define ********************************************************/
#define MIC_STARTUP_IGNORE_SAMPLE  3

#define MIC_FRAME_IN_BYTES  640
#define MIC_FRAME_IN_INT16  (MIC_FRAME_IN_BYTES/2)

#define MIC_INT_TYPE        mic_int_quarter_full
#define MIC_BUF_SIZE        (MIC_FRAME_IN_BYTES*MIC_INT_TYPE)

#define MIC_FILTER_THRESHOLD 70
#define MIC_UNDER_THRESHOLD_TOLERANCE  5
/******************************************************************************/

uint8_t mic_filter_threshold = MIC_FILTER_THRESHOLD;
uint8_t mic_under_threshold_tolerance = MIC_UNDER_THRESHOLD_TOLERANCE;

void (*_codec_init)(void) = NULL;
int  (*_codec_encoder)(short *signal, unsigned char *serial, int len) = NULL;


void _remote_mic_init(void);
void _remote_mic_standBy(void);
void _remote_mic_enabled(void);

RC_LOOP_FUNC fRemote_mic_loop = _remote_mic_init;

static bool buff_overflow = false;
static bool mic_timeout = false;
static uint16_t enc_num_byte   = 0;
static uint16_t unsend_audio_th = 8000;
static uint8_t *mic_record_ptr = NULL;
static uint8_t *mic_record_ptr_1 = NULL;
static uint8_t *mic_record_ptr_2 = NULL;
static uint8_t *mic_record_buf = NULL;
static uint8_t *mic_encode_buf = NULL;;
static uint8_t under_thld_cnt;
static uint32_t mic_int_count = 0;
static uint32_t mic_int_skip_count = 0;


void mic_hw_dbg_port_enable(void)
{
#ifdef RC_MIC_DBG

#define ww(addr, value)     (*((uint32_t volatile *) (addr)) = value)
#define rw(addr)            (*((uint32_t volatile *) (addr)))

    IOMUX.GRP.field.grp_sel_00 = 0;
    IOMUX.GRP.field.grp_sel_10 = 0;
    IOMUX.SIG[2].field.sig_sel_b4 = 9;
    IOMUX.SIG[2].field.sig_sel_b5 = 9;
    IOMUX.SIG[2].field.sig_sel_b6 = 9;
    IOMUX.SIG[2].field.sig_sel_b7 = 9;
    IOMUX.SIG[3].field.sig_sel_b2 = 9;
    IOMUX.SIG[3].field.sig_sel_b3 = 9;
    IOMUX.SIG[3].field.sig_sel_b4 = 9;
    IOMUX.SIG[3].field.sig_sel_b5 = 9;
    IOMUX.DBG.field.dbg_sel_1 = 0;
    IOMUX.DBG.field.dbg_sel_0 = 1;
    IOMUX.DBG.field.debug_sel = 10;

    ww( 0x21c00c , (rw(0x21c00c) | 0x00000400));
#endif
}

void mic_intrHandler(uint8_t * buf)
{
    if(++mic_int_count < MIC_STARTUP_IGNORE_SAMPLE)
        return;

    if(mic_record_ptr_2)
        buff_overflow = true;
    else
    {
        mic_record_ptr_2 = mic_record_ptr_1;
        mic_record_ptr_1 = mic_record_ptr;
        mic_record_ptr = buf;
    }
}

void _remote_mic_self_timeout(void* parm)
{
    mic_timeout = true;
}

void _remote_mic_standBy(void)
{
    if(remote_mic_status == MIC_ENABLED)
    {
        _remote_mic_enabled();
        AB_PWR_Stanby();
    }
    else if(remote_mic_status == MIC_LOCAL_DISABLED)
    {
        printf("microphone stopped.\n");
        printf("mic key pressed for %6.2f seconds. %6.2f seconds have been muted.\n",\
            ((float)mic_int_count*(MIC_FRAME_IN_BYTES/32))/1000,((float)mic_int_skip_count*(MIC_FRAME_IN_BYTES/32))/1000);
        remote_mic_status = MIC_REMOTE_DISABLED;
    }
    else if(remote_mic_status == MIC_REMOTE_DISABLED)
    {
        if( RC_hids_report4[0] == 1)
        {
            _remote_mic_init();

            ndis_enter_critical();
            DRV_TMR32B0_NotifyDisable(REMOTE_MIC_MOUSE_TIMER);
            DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 30000, true, NULL, _remote_mic_self_timeout);
            RC_hids_report4[0] = 2;

            buff_overflow = false;
            mic_timeout = false;
            mic_record_ptr = NULL;
            mic_record_ptr_1 = NULL;
            mic_record_ptr_2 = NULL;
            mic_int_skip_count = 0;
            mic_int_count = 0;

            remote_mic_status = MIC_ENABLED;
            remote_sleep_disable.field.mic_on = true;
            ndis_exit_critical();

            remote_led_rc_function_enable(F_LED_MICROPHONE);
            DRV_Mic_Enable();
        }
    }
}

void remote_mic_local_disable(void)
{
    DRV_Mic_Disable();
    remote_led_rc_function_disable(F_LED_MICROPHONE);

    //global variable that might be written in ISR, should be protected by critical section
    ndis_enter_critical();

    remote_check_mouse_continue();

    remote_mic_status = MIC_LOCAL_DISABLED;
    buff_overflow = false;
    mic_record_ptr = NULL;
    mic_record_ptr_1 = NULL;
    mic_record_ptr_2 = NULL;
    RC_hids_report4[0] = 0;
    remote_sleep_disable.field.mic_on = false;

    ndis_exit_critical();

    #ifdef RC_HOST_1
    #else
    _remote_SendKey(0xCCCC);
    #endif
}

void _remote_mic_raw_to_uart(void)
{
#ifdef RC_MIC_DBG
    AB_UART_Write(uart1_ins,mic_record_ptr, MIC_INT_DATA_SIZE);
    AB_UART_Write(uart1_ins,mic_record_ptr+ MIC_INT_DATA_SIZE, MIC_INT_DATA_SIZE);
#endif
}

#define CLAMP(x, low, high)  (((x) > (high)) ? (high) : (((x) < (low)) ? (low) : (x)))
//char star[] = "*********************************\0";
bool _remote_voice_active_detection(void)
{
    double power;
    uint16_t i;
    uint16_t sum;
    uint16_t num;
    int16_t *ppcm;

    ppcm = (int16_t *)mic_record_ptr;

    for(i=0,sum=0;i<MIC_FRAME_IN_INT16;i++)
    {
       int16_t raw;
       raw = *ppcm;

       sum += (raw>0)?raw:-raw;
       *ppcm++;
    }

    sum /= MIC_FRAME_IN_INT16;

    power = 100*log10(sum);
    num = (uint16_t)CLAMP(power, 130, 229);
    num -= 130;
/*
    star[num/3] = '\0';
    printf("%5d :%s\n", num, star);
    star[num/3] = '*';
*/
    printf("%3d:", num);

    if(num < mic_filter_threshold)
    {
        if(under_thld_cnt == mic_under_threshold_tolerance)
        {
            printf("XX  \n");
            return 0; // Inactive
        }
        else
            under_thld_cnt++;
    }
    else
    {
        under_thld_cnt = 0;
    }
    printf("  OO\n");
    return 1;   //Active
}

void _remote_mic_enabled(void)
{

    if( RC_hids_report4[0] == 0)
    {
        printf("MIC disabled by central \n");
        remote_mic_local_disable();
    }

    if(buff_overflow)
    {
        printf("MIC buffer overflow \n");
        remote_mic_local_disable();
    }

    if(mic_timeout)
    {
        printf("MIC self timeout \n");
        remote_mic_local_disable();
    }

    if(mic_record_ptr_2)
    {
        uint32_t tick;
        uint32_t tick2;
        uint16_t encRoffset = 0;

        remote_reset_deep_sleep_timer(rc_deepsleep_timeout.MIC_ON);

        ndis_enter_critical();

        _remote_mic_raw_to_uart();

        if(rc_cfg.SUPPORT_VAD && !_remote_voice_active_detection())
        {
            mic_int_skip_count++;
            mic_record_ptr_2 = NULL;
            /* TODO:  should inform decoder side  */
            /* TODO:  detailed method needs further discussion  */
            memset(RC_hids_report2,0,20);
            remote_send_hid_report(report2_handle);
            ndis_exit_critical();
			return;
        }

        tick = DRV_TMR32B0_TickGet();
        _codec_encoder((short*)mic_record_ptr_2, mic_encode_buf, MIC_FRAME_IN_INT16);
        mic_record_ptr_2 = NULL;
        tick2 = DRV_TMR32B0_TickGet();

        ndis_exit_critical();

        if(mic_int_count%50 == 0)
        {
            printf("time spent in encode = %d ms\n",tick2- tick);
        }

        while(encRoffset != enc_num_byte)
        {
            memcpy(RC_hids_report2, mic_encode_buf+encRoffset, 20);
            remote_send_hid_report(report2_handle);
            encRoffset += 20;
        }

        if(BT_Pending_TxCnt() > unsend_audio_th)
        {
            printf("bad BT link status, stop collecting audio data!!!\n");
            remote_mic_local_disable();
        }
    }
}
#ifdef CHIP_AB1600
/////////////////////////////////////////////////////////////////////////////////////////////////////////
#include "opus_custom.h"

OpusCustomEncoder *enc = NULL;
OpusCustomMode *mode = NULL;

void opus_encode_deinit(void)
{
    if(enc)
    {
        opus_custom_encoder_destroy(enc);
        enc = NULL;
    }
    if(mode)
    {
        opus_custom_mode_destroy(mode);
        mode = NULL;
    }
}

void opus_encode_init(void)
{
    int err;

    if(mode == NULL)
    {
        mode = opus_custom_mode_create (16000, 320, NULL);
        enc = opus_custom_encoder_create (mode, 1, &err);
        opus_custom_encoder_ctl (enc, OPUS_SET_COMPLEXITY (3));

        if(mode==NULL || enc==NULL)
        {
            opus_encode_deinit();
            printf("opus init failed!\n");
        }
    }
}

int opus_encode_proc(short *signal, unsigned char *serial, int len)
{
    return opus_custom_encode(enc, signal, len, serial, enc_num_byte);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
#endif

void _remote_mic_init(void)
{
    if(enc_num_byte == 0)
    {
#ifdef CODEC_OPUS_ONLY
        // CODEC_OPUS_ONLY would ignore encoder and compress rate setting
        _codec_init = opus_encode_init;
        _codec_encoder = opus_encode_proc;
        enc_num_byte = MIC_FRAME_IN_BYTES/8;
        unsend_audio_th = 4000;
        printf("codec:1/8 opus\n");
#else

        unsend_audio_th = 8000;

        switch(rc_cfg.CODEC_SEL)
        {
            #ifdef CHIP_AB1600
            case CODEC_1_8_OPUS:
                _codec_init     = opus_encode_init;
                _codec_encoder  = opus_encode_proc;
                enc_num_byte    = MIC_FRAME_IN_BYTES/8;
                unsend_audio_th = 4000;
                printf("codec:1/8 opus\n");
                break;
            #endif
            case CODEC_1_4_G726:
                _codec_init     = adpcm_encode_init;
                _codec_encoder  = adpcm_encode_proc;
                enc_num_byte    = MIC_FRAME_IN_BYTES/4;
                printf("codec:1/4 g726\n");
                break;
            case CODEC_1_4_IMA:
                _codec_init     = ima_adpcm_encode_init;
                _codec_encoder  = ima_adpcm_encode_proc;
                enc_num_byte    = MIC_FRAME_IN_BYTES/4;
                printf("codec:1/4 ima\n");
                break;
            case CODEC_1_8_IMA:
                _codec_init     = ima_adpcm_encode_init;
                _codec_encoder  = ima_adpcm_encode_proc_halfrate;
                enc_num_byte    = MIC_FRAME_IN_BYTES/8;
                printf("codec:1/8 ima\n");
                break;
            case CODEC_1_8_G726:
                _codec_init     = adpcm_encode_init;
                _codec_encoder  = adpcm_encode_proc_halfrate;
                enc_num_byte    = MIC_FRAME_IN_BYTES/8;
                printf("codec:1/8 g726\n");
                break;
        }

#endif
        mic_record_buf = malloc(MIC_BUF_SIZE);
        mic_encode_buf = malloc(enc_num_byte);
    }

    if(mic_record_buf && mic_encode_buf)
    {
        MIC_INIT_PARA mip =
        {
            .gain = mic_gain_27dB,
            .intsel = MIC_INT_TYPE,
            .cb = mic_intrHandler,
            .rx_bufLenInByte = MIC_BUF_SIZE,
            .rx_buf = mic_record_buf,
        };

        DRV_Mic_Init(&mip);
        _codec_init();

        fRemote_mic_loop = _remote_mic_standBy;
        under_thld_cnt = mic_under_threshold_tolerance;

        mic_hw_dbg_port_enable();
    }
    else
    {
        printf("mic init failed\n");
    }
}

void _remote_mic_deinit(void)
{
    if(mic_record_buf)
    {
        free(mic_record_buf);
        mic_record_buf = NULL;
    }
    if(mic_encode_buf)
    {
        free(mic_encode_buf);
        mic_encode_buf = NULL;
    }
#ifdef CHIP_AB1600
    if(rc_cfg.CODEC_SEL == CODEC_1_8_OPUS)
    {
        printf("deinit opus\n");
        opus_encode_deinit();
    }

#endif
    enc_num_byte = 0;
}

void remote_mic_key_pressed(void)
{
    printf("press microphone key\n");

    if(rc_ffunc.microphone)
    {
        printf("microphone function forbidden due to low battery level!\n");
        remote_led_rc_function_enable(F_LED_FUNC_DISABLED_BY_LOW_BAT);
        remote_led_rc_function_state_clear(F_LED_FUNC_DISABLED_BY_LOW_BAT);
        return;
    }


#ifdef RC_HOST_1
    HOST_1_MIC_KEY_PRESSED_BEHAVIOR
#else
    #if !defined(DEMO_HOST_HP7)
    _remote_SendKey(0xBBBA+rc_cfg.CODEC_SEL);
    #else
    _remote_SendKey(0x020C);	//Audio feature in HP 7 G2
    _remote_SendKey(0x0000);
    #endif
    
    RC_hids_report4[0] = 0x01;
#endif

}

bool remote_check_if_codec_supproted(void)
{
#ifdef CODEC_OPUS_ONLY
    if(RC_adpcm_codecsel == CODEC_1_8_OPUS)
        return true;
#else
  #ifdef CHIP_AB1600
    switch(RC_adpcm_codecsel)
    {
        case CODEC_1_8_OPUS:
        case CODEC_1_4_G726:
        case CODEC_1_4_IMA :
        case CODEC_1_8_IMA :
        case CODEC_1_8_G726:
            return true;
    }
  #endif

  #ifdef CHIP_AB1603
    switch(RC_adpcm_codecsel)
    {
        case CODEC_1_4_G726:
        case CODEC_1_4_IMA :
        case CODEC_1_8_IMA :
        case CODEC_1_8_G726:
            return true;
    }
  #endif

#endif
    return false;
}

void remote_codecsel_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        if(rc_cfg.CODEC_SEL == RC_adpcm_codecsel)
        {
            printf("codec not changed.\n");
        }
        else if(remote_check_if_codec_supproted())
        {
            _remote_mic_deinit();
            DRV_WDT_Disable();

            rc_cfg.CODEC_SEL = RC_adpcm_codecsel;

            switch(rc_cfg.CODEC_SEL)
            {
                case CODEC_1_8_OPUS:
                case CODEC_1_4_G726:
                case CODEC_1_8_G726:
                    rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_48M;
                    break;
                case CODEC_1_4_IMA:
                case CODEC_1_8_IMA:
                    rc_bsp_init_parm.clk_parm->sys_clk_rate = AB_CLK_16M;
                    break;
            }

            AB_CLK_Switch(rc_bsp_init_parm.clk_parm->sys_clk_rate, rc_bsp_init_parm.clk_parm->isrc);
            AB_UART_Flush(uart1_ins);
            AB_UART_SetBaud(uart1_ins, rc_bsp_init_parm.uart_parm->uart1_baud);
            DRV_SPI_ClkRefresh();
            DRV_WDT_Enable(5);

            _remote_mic_init();
        }
        else
        {
            printf("invalid codec selector\n");
            RC_adpcm_codecsel = CODEC_INVALID;
        }
    }
    else
    {

        if(RC_adpcm_codecsel == 0)
            RC_adpcm_codecsel = rc_cfg.CODEC_SEL;

        printf("read codec:0x%02X\n",RC_adpcm_codecsel);
    }
}

#else   //#ifndef CHIP_AB1601

void remote_mic_key_pressed(void)
{
}

void remote_mic_local_disable(void)
{
}

void _remote_mic_null(void)
{
}

RC_LOOP_FUNC fRemote_mic_loop = _remote_mic_null;

void remote_codecsel_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    RC_adpcm_codecsel = CODEC_INVALID;
}

#endif  //#ifndef CHIP_AB1601


