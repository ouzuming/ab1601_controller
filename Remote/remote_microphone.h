/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_microphone.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_MICROPHONE_HH__
#define __REMOTE_MICROPHONE_HH__


extern RC_LOOP_FUNC fRemote_mic_loop;

void remote_mic_key_pressed(void);
void remote_mic_local_disable(void);

typedef enum
{
    CODEC_1_8_OPUS    = 0,
    CODEC_1_4_G726    = 1,
    CODEC_1_4_IMA     = 2,
    CODEC_1_8_IMA     = 3,
    CODEC_1_8_G726    = 4,
    CODEC_INVALID     = 0xFF
}CODEC_SEL_ENUM;

#endif
