/******************************************************************************
Copyright (c) Airoha 2017 - All rights reserved

FILE NAME 
    ir_NEC.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __IR_NEC__HH_
#define __IR_NEC__HH_

#include "remote_button.h"

// first "AGC" pulse
#define NEC_AGC_PULSE    60 // 9 ms = 148 us * 60
// space after "AGC" pulse
#define NEC_AGC_SPACE    30 // 4.5 ms = 148 us * 30
// IR burst length
#define NEC_ZERO_SPACE   4 // 560 us = 148 us * 4
// IR burst length
#define NEC_ONE_SPACE   4 // 1.69 ms  = 148 us * 11

#define IRT_6_PULSE_WIDTH   790 // 98.75 ms (110 ms - 9 - 2.25 ms) = 155 us * 667
#define IRT_5_PULSE_WIDTH   340 // 42.5 ms(110 ms - 67.5 ms) = 155 us * 287
#define IRT_4_PULSE_WIDTH   36  // 4.5 ms = 155 us * 30
#define IRT_3_PULSE_WIDTH   72  // 9 ms = 155 us * 60
#define IRT_2_PULSE_WIDTH   18  // 2.25 ms = 155 us * 15
#define IRT_1_PULSE_WIDTH   13  // 1.69 ms = 155 us * 11
#define IRT_0_PULSE_WIDTH   4   // 560 us = 155 us * 4

#define NEC_9000US_MIN     77  //  77 * 100 us = 7.7 ms
#define NEC_9000US_MAX    102  // 102 * 100 us = 10.2 ms
#define NEC_225US_MIN      19  //  19 * 100 us = 1.9 ms
#define NEC_225US_MAX      26  //  26 * 100 us = 2.6 ms
#define NEC_4500US_MIN     38  //  38 * 100 us = 3.8 ms
#define NEC_4500US_MAX     51  //  51 * 100 us = 5.1 ms
#define NEC_560US_MIN       3  //   3 * 100 us = 300 us
#define NEC_560US_MAX       8  //   8 * 100 us = 800 us
#define NEC_1690US_MIN      8  //   8 * 100 us = 800 us
#define NEC_1690US_MAX     24  //  24 * 100 us = 2.4 ms

// Transmiter
#define IRTX_GPIO      12
#define IRTX_GPIO_MASK   (1 << IRTX_GPIO)

// Receiver
#define IRRX_GPIO           13
#define IRRX_GPIO_MASK	    (1 << IRRX_GPIO)

#define GPIO_OUTPUT		1
#define GPIO_INPUT		0

#define TIMER_ONE_SHOT			true
#define TIMER_CONTINUE_SHOT		false

#define  IRR_GAP_DELAY       5 //3

#define MATRIX 15

#define FLAG_IRR_ACTIVE         0x01
#define FLAG_IRR_REPEAT         0x02
#define FLAG_IRR_FINISH         0x04

typedef enum
{
    TMR16B0_001US = 16-1,    ///< 16 cycles per tick
    TMR16B0_100US = 1600-1,    ///< 1600 cycles per tick
    TMR16B0_200US = 3200-1,    ///< 3200 cycles per tick
    TMR16B0_250US = 4800-1,    ///< 4800 cycles per tick
    TMR16B0_500US = 8000-1,   ///< 8000 cycles per tick
    TMR16B0_1MS = 16000-1,     ///< 16000 cycles per tick

}TMR16B0_TICK;

typedef enum
{
    POWER      = 0x1CE3,
    CH_UP      = 0x11EE,
    CH_DOWN    = 0x1EE1,
    VOL_UP     = 0x1BE4,
    VOL_DOWN   = 0x10EF,
}NEC_KEY;

typedef struct
{
    uint8_t    Address;
    uint8_t    Command;
} NEC_FRAME;

typedef struct 
{
    NEC_FRAME Frame[MATRIX];
}NEC_FRAME_LIST;

typedef struct
{
    uint8_t wPtr     :4;
    uint8_t rPtr     :4;
} IRKEY_BUF_INDEX_STRU;

extern bool cmdrepeat_flag;
extern bool repeatCode;
extern bool irLearning_enabled;
extern bool writeToFlash_flag;
extern bool remote_ir_enabled;
extern uint8_t byIrrStatus;
extern uint8_t byIrrDelay;
extern NEC_FRAME nec_frame;
extern NEC_FRAME_LIST initFrameList;
extern NEC_FRAME IR_KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM];
extern uint8_t combo2IRKey[2];
extern IRKEY_BUF_INDEX_STRU gIRKeyBufIdx;
extern uint16_t gIRKeyRingBuf[15];

void NEC_StartCommand(NEC_FRAME* frame);
void NEC_RepeatCommand(void);
void NEC_StartLearning(uint8_t index);
void IRRX_Enable(void);
void IRRX_Disable(void);
void remote_ir_get_flash_data(void);
void remote_ir_write_flash_data(uint8_t index);
void remote_irtx_init(void);
void remote_irrx_init(void);
void remote_ir_button_init(void);
void remote_CheckIRStatus(void);
void remote_CheckIRSingleKey(void);

#endif