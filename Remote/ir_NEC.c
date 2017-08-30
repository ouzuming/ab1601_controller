/******************************************************************************
Copyright (c) Airoha 2017 - All rights reserved

FILE NAME 
    ir_NEC.c
DESCRIPTION
NOTES
********************************************************************************/

#include "ir_NEC.h"
#include "Drv_timer32b0.h"
#include "Drv_timer16.h"
#include "Drv_pinmux.h"
#include "Drv_gpio.h"
#include "remote.h"
#include "Ab_led.h"

#if R5C3
NEC_FRAME IR_KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM] = {
    {0x02, 0x12}, // system power
    {0x02, 0x0A}, // keyboard mute
    {0x02, 0x05}, // up arrow
    {0x02, 0x1b}, // down arrow
    {0x02, 0x08}, // Keypad Enter
    {0x02, 0x0C}, // Keyboard Volume Up
    {0x02, 0x0E}, // Keyboard Volume Dn
    {0x02, 0x05}, // Up Arrow
    {0x02, 0x1B}, // Down Arrow
    {0x02, 0x07}, // Left Arrow
    {0x02, 0x09}, // Right Arrow
    {0x02, 0x08}, // Keypad Enter  
    {0x02, 0x04}, // Keyboard Menu
    {0x02, 0x01}, // Home
    {0x02, 0x06}, // Escape
};
uint8_t combo2IRKey[2] = {4,10};
#endif

#if R3C4
NEC_FRAME IR_KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM] = {
    {0x02, 0x12}, // system power
    {0x02, 0x0A}, // keyboard mute
    {0x02, 0x05}, // up arrow
    {0x02, 0x1b}, // down arrow
    {0x02, 0x08}, // Keypad Enter
    {0x02, 0x0C}, // Keyboard Volume Up
    {0x02, 0x0E}, // Keyboard Volume Dn
    {0x02, 0x07}, // Left Arrow
    {0x02, 0x09}, // Right Arrow
    {0x02, 0x04}, // Keyboard Menu
    {0x02, 0x01}, // Home
    {0x02, 0x06}, // Escape
};
uint8_t combo2IRKey[2] = {4,10};
#endif

// Transmiter
uint8_t byIRCnt = 0;
uint8_t byIRTPhase = 0;
uint32_t uiIRTData = 0;
bool repeatCode = false;

// Receiver
uint8_t byIrrPhase;
uint8_t byIrrBitCount;
uint8_t byIrrByteCount;
uint8_t IRR_addr, IRR_addr1;
uint8_t IRR_data, IRR_data1;
uint8_t byIrrDelay;
uint8_t byIrrStatus = 0x00;
bool writeToFlash_flag = false;
bool remote_ir_enabled = false;
static bool irrxEnable_flag = false;
uint8_t buttonIndex = 0;

// Button
uint16_t gIRKeyRingBuf[15];
IRKEY_BUF_INDEX_STRU gIRKeyBufIdx =
{
    .wPtr = 0,
    .rPtr = 0,
};

NEC_FRAME nec_frame;

const volatile NEC_FRAME_LIST __attribute__ ((section (".ap_sector"), aligned(4096))) frame_sector;

static void Timer32_PwmCB(void* pTimer)
{
    uint32_t uiPinVal;
    // Debug 
    // DRV_Gpio_ValSet(IRTX_GPIO_MASK, false);
    // DRV_Gpio_ValSet(IRTX_GPIO_MASK, true);

    switch (byIRTPhase)
    {
        case 0:
            byIRTPhase = 1;
            //Disable PWM 100ms
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_GPIO);
            DRV_TMR16_Disable();// 
            
            //Header 4.5ms
            //2200 GOOD
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_4_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB);  
            break;

        case 1:  //Enable PWM
            byIRTPhase = 2;
            //Enable PWM
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_PWM1);
            DRV_TMR16_PWM_Enable( 2 );
            
            //Address , 560us,
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB);
            break;

        case 2:  //Disable PWM

            if (byIRCnt++ < 32)
                byIRTPhase = 1;
            else
            {
                byIRTPhase = 3;
            }
                
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_GPIO);
            DRV_TMR16_Disable();

            if (uiIRTData & 0x01)
            {
                DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_1_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB); 
            }
            else
            {
                //0: 1.12 - 560 us = 560 us
                //ulEmpty0
                DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB);
            }

            uiIRTData >>= 1; //next bit
            break;


        case 3:
            //110 ms - 67.5 ms, Tail start
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_5_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB);
            byIRTPhase = 0xFF;
            break;

        case 0xFF:
            // DRV_PinMux_SigSet( IRTX_GPIO_MASK, PIN_GPIO );
            // DRV_TMR16_Disable();

            // // We'll start bt transfer when the first NEC frame end
            BT_Pause_Tx(false);

            if (repeatCode) {
                NEC_RepeatCommand();
            } else {
                remote_sleep_disable.field.ir_on = false;
            }

            break;

        default:
            break;
    }
}

static void Timer32_PWMRepeatCB(void* pTimer)
{
    switch (byIRTPhase) {
        case 5:
            // Disable PWM, 2.25 ms
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_GPIO);
            DRV_TMR16_Disable();
            DRV_TMR32B0_NotifyEnable( TMR32B0_NOTIFY_3, IRT_2_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PWMRepeatCB);
            byIRTPhase = 6;
            break;

        case 6:
            //Enable 560us burst
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_PWM1);
            DRV_TMR16_PWM_Enable(2);
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_0_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PWMRepeatCB);
            byIRTPhase = 7;
            break;

        case 7: 
            //Disable PWM, 110ms - 9 ms - 2.25 ms
            DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_GPIO);
            DRV_TMR16_Disable();
            DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_6_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PWMRepeatCB);
  
            byIRTPhase = 0xFE;

            break;

        case 0xFE:
            if (repeatCode) {
                NEC_RepeatCommand();
            } else {
                remote_sleep_disable.field.ir_on = false;
            }

            break;
    }
}

void NEC_StartCommand(NEC_FRAME* frame)
{
    // We'll pause bt transfer when the first NEC frame start
    BT_Pause_Tx(true);

    DRV_TMR16_Disable();
    DRV_TMR16_Reset(true);
    DRV_TMR16_Reset(false);
    DRV_TMR16_PWM1(70, 140);

    byIRTPhase = 0;
    byIRCnt = 0;

    // TODO
    uint16_t data = ~frame->Command;
    data = (data << 8) | frame->Command;
    uiIRTData = data;
    printf("1 uiIRTData 0x%2X \n", uiIRTData);

    data = (data & 0x0000) | ~frame->Address;
    data = (data << 8) | frame->Address;
    uiIRTData = (uiIRTData << 16) | data;
    printf("2 uiIRTData 0x%2X \n", uiIRTData);

    // 9 ms , GOOD
    // Actually, 148 ~ 150 us
    DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, 72, TIMER_ONE_SHOT, (void*)NULL, Timer32_PwmCB);

    // PWM enable
    DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_PWM1);
    DRV_TMR16_PWM_Enable(2);

    // DRV_Gpio_DirSet(IRTX_GPIO_MASK, GPIO_OUTPUT);
}

void NEC_RepeatCommand(void)
{
    // Tail from here, phase 4,5,6.
    //Enable PWM 9ms
    DRV_PinMux_SigSet(IRTX_GPIO_MASK, PIN_PWM1);
    DRV_TMR16_PWM_Enable(2);
    DRV_TMR32B0_NotifyEnable(TMR32B0_NOTIFY_3, IRT_3_PULSE_WIDTH, TIMER_ONE_SHOT, (void*)NULL, Timer32_PWMRepeatCB);
    byIRTPhase = 5;
}

void NEC_StartLearning(uint8_t index) {
    AB_LED_set_on(ab_led0);
    AB_LED_start(ab_led0);       
    IRRX_Enable();
    buttonIndex = index;
    // irr_reset
    byIrrPhase = 0;
    printf("IR Learning Button index %d Start \n", index);
}

void irr_rx_done(void)
{
    byIrrDelay = IRR_GAP_DELAY;
    byIrrStatus |= FLAG_IRR_ACTIVE;
}

void irr_gpio_cb(uint8_t num)
{
    uint32_t tick;

    tick = DRV_TMR16_TickGet();

    if (tick != 0)
    {
        DRV_TMR16_Reset(true);
        DRV_TMR16_Reset(false);
        DRV_TMR16_Enable(TMR16B0_100US); // 1 tick = 100us
    }
    // printf("irr_gpio_cb %d, byIrrPhase %d\n", tick, byIrrPhase);
    if (tick > 200) 
        byIrrPhase = 0;

    switch (byIrrPhase)
    {
        case 0:
            byIrrPhase = 1;
            break;

        case 1:
            if ((tick > NEC_9000US_MIN) && (tick < NEC_9000US_MAX)) //header On = 9.0 ms
            {
                byIrrDelay = IRR_GAP_DELAY;
                byIrrPhase = 2;
            } 
            else
            {
                // reset 
                if (tick > 1) 
                {
                    byIrrPhase = 0;
                }
            }
            break;

        case 2:
            if ((tick > NEC_225US_MIN) && (tick < NEC_225US_MAX)) //header off = 2.25 ms
            {
                byIrrDelay = IRR_GAP_DELAY;
            }
            else if ((tick > NEC_4500US_MIN) && ( tick < NEC_4500US_MAX)) //header off = 4.5 ms
            {
                byIrrBitCount = byIrrByteCount = 0;
                IRR_addr = IRR_addr1 = IRR_data = IRR_data1 = 0;
                byIrrPhase = 3;
                // printf("4.5ms \n");
            }else
                if (tick > 1) 
                {
                    byIrrPhase = 0;
                }
            break;

        case 3: // pulse on = 560 us
            if ((tick > NEC_560US_MIN) && (tick < NEC_560US_MAX))
            {
                byIrrPhase = 4;
            }else
                if (tick != 0) byIrrPhase = 0;
            break;

        case 4: // pulse off 
            if (( tick > NEC_560US_MIN) && (tick < NEC_560US_MAX)) // bit 0, 560us
            {
                IRR_data >>= 1;
                // printf("0 \n");
            }
            else if ((tick > NEC_1690US_MIN) && (tick < NEC_1690US_MAX)) //bit 1, 1.69ms
            {
                IRR_data >>= 1;
                IRR_data += 0x80;
                // printf("1 \n");
            }else
            {
                if (tick != 0) byIrrPhase = 0;
            }

            byIrrPhase = 3;
            
            if (++byIrrBitCount == 8) 
            {
                byIrrBitCount = 0;
                switch (++byIrrByteCount) 
                {
                    case 1:
                        IRR_addr1 = IRR_data;
                        printf("IRR_addr = 0x%2X\n", IRR_addr1);
                        break;

                    case 2:
                        IRR_addr = IRR_data;
                        printf("~IRR_addr = 0x%2X\n", IRR_addr);
                        break;
                    
                    case 3:
                        IRR_data1 = IRR_data;
                        break;
                    
                    case 4:
                        printf("Data= 0x%2X  ~Data = 0x%2X\n", IRR_data1 , IRR_data);
                        {
                            irr_rx_done();
                            byIrrPhase = 0;
                            nec_frame.Address = IRR_addr1;
                            nec_frame.Command = IRR_data1;

                            // nec_frame.Address = IRR_addr;
                            // nec_frame.Address = (nec_frame.Address * 0x100) | IRR_addr1;
                            // nec_frame.Command = IRR_data;
                            // nec_frame.Command = (nec_frame.Command * 0x100) | IRR_data1;
                            writeToFlash_flag = true;
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

void remote_irtx_init(void) {
    //IRTX PIN init
    DRV_Gpio_DirSet(IRTX_GPIO_MASK, GPIO_INPUT);
    DRV_Gpio_PullSet(IRTX_GPIO_MASK, PULL_DOWN);

    // DRV_TMR32B0_Enable(TMR32B0_125US);
    remote_ir_get_flash_data();

    // default repeatCode reset
    // sometimes wake up from deep system can't detect IR key release
    // reset key when system init
    // repeatCode = false;
}

void remote_irrx_init(void) {
    // IR Receiver PIN
    DRV_Gpio_IntReg(IRRX_GPIO, EDGE_BOTH, irr_gpio_cb);
}

void IRRX_Enable(void)
{
    if (irrxEnable_flag) {
        printf("IRRX enable ready \n");
    } else {
        irrxEnable_flag = true;
        DRV_TMR16_Disable();
        DRV_TMR16_Reset(true);
        DRV_TMR16_Reset(false);

        // Disable debouce
        DRV_Gpio_IntEn(IRRX_GPIO);
        DRV_Gpio_DebEn(IRRX_GPIO, false);

        DRV_TMR16_Enable(TMR16B0_100US); // 1 tick = 1 us
    }
}

void IRRX_Disable(void) {
    if (irrxEnable_flag) {
        irrxEnable_flag = false;
        DRV_Gpio_IntDis(IRRX_GPIO);
        DRV_TMR16_Disable();
        DRV_TMR16_Reset(true);
        DRV_TMR16_Reset(false);
    } else {
        printf("IRRX disable ready \n");
    }
}

void remote_ir_get_flash_data(void) 
{
    uint8_t i = 0;

    /*
    // for initial use
    bool status = false;
    status = AB_Flash_SectorErase(&frame_sector);
    printf("Erase %s\n", status ? "success" : "fail");
   
    for (i = 0; i < RC_ROW_NUM*RC_COL_NUM; i++)
    {
        status = AB_Flash_ByteProgram(&frame_sector.Frame[i], &(IR_KEY_MATRIX[i]), sizeof(NEC_FRAME));
        printf("Write %s\n", status ? "success" : "fail");
        printf("index %d, address 0x%2X, data 0x%2X \n", i, IR_KEY_MATRIX[i].Address, IR_KEY_MATRIX[i].Command);
    }
    */

    for (i; i < RC_ROW_NUM*RC_COL_NUM; i++) {
        IR_KEY_MATRIX[i].Address = frame_sector.Frame[i].Address;
        IR_KEY_MATRIX[i].Command = frame_sector.Frame[i].Command;
        printf("index %d, address 0x%2X, data 0x%2X \n", i, IR_KEY_MATRIX[i].Address, IR_KEY_MATRIX[i].Command);
    }
}

void remote_ir_write_flash_data(uint8_t index)
{
    uint8_t i = 0;
    bool status = false;

    // update sram data from flash before erase
    memcpy(&IR_KEY_MATRIX[index], &nec_frame, sizeof(nec_frame));

    // flash sector erase
    status = AB_Flash_SectorErase(&frame_sector);
    printf("Erase %s\n", status ? "success" : "fail");

    for (i = 0; i < MATRIX; i++)
    {
        status = AB_Flash_ByteProgram(&frame_sector.Frame[i], &(IR_KEY_MATRIX[i]), sizeof(NEC_FRAME));
        printf("Write %s\n", status ? "success" : "fail");
        printf("index %d, address 0x%2X, data 0x%2X \n", i, IR_KEY_MATRIX[i].Address, IR_KEY_MATRIX[i].Command);
    }
}


void remote_CheckIRStatus(void) {
    if (writeToFlash_flag) {
        writeToFlash_flag = false;

        remote_ir_write_flash_data(buttonIndex);

        AB_LED_set_blink(ab_led0, 1000, 0, 0);
        AB_LED_start(ab_led0);
        IRRX_Disable();

        printf("index %d learning success\n", buttonIndex);
    }
}

void remote_CheckIRSingleKey(void) {
    if(gIRKeyBufIdx.rPtr == gIRKeyBufIdx.wPtr)
    {
        return;
    }

    // keep timer alive
    remote_sleep_disable.field.ir_on = true;
    
    uint16_t data = gIRKeyRingBuf[gIRKeyBufIdx.rPtr++];
    if (data != 0) {
        // TODO: 0x0000 for release key, need do code review
        NEC_FRAME frame;
        frame.Address = data & 0x00FF;
        frame.Command = (data >> 8) & 0x00FF;
        printf("key code addr is 0x%2X , cmd is 0x%2X \n", frame.Address, frame.Command);
        NEC_StartCommand(&frame);
    }
}