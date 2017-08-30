/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_button.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_BUTTON_HH__
#define __REMOTE_BUTTON_HH__


#define RC_PWRKEY_IO      1

#if defined(DEMO_EVK_DTB)
#define R5C3        (true)
#else
#define R5C7        (false)
#define R3C4        (true)
#endif

#if  R5C7

    #define RC_ROW_NUM    5
    #define RC_COL_NUM    7
    // >> Rows
    #define RC_KS_R0     14
    #define RC_KS_R1     15
    #define RC_KS_R2     16
    #define RC_KS_R3     17
    #define RC_KS_R4     18
    // >> Columns
    #define RC_KS_C0      5
    #define RC_KS_C1      6
    #define RC_KS_C2      7
    #define RC_KS_C3      8
    #define RC_KS_C4     20
    #define RC_KS_C5     21
    #define RC_KS_C6     22
#endif

#if  R3C4
    #define RC_ROW_NUM    3
    #define RC_COL_NUM    4
#ifdef EVB_B922
    // >> Rows
    #define RC_KS_R0     12
    #define RC_KS_R1     13
    #define RC_KS_R2     19
#else
    #define RC_KS_R0     14
    #define RC_KS_R1     15
    #define RC_KS_R2     16
#endif
    // >> Columns
    #define RC_KS_C0      5
    #define RC_KS_C1      6
    #define RC_KS_C2      7
    #define RC_KS_C3      8
#endif

#if  R5C3
    #define RC_ROW_NUM	  5
    #define RC_COL_NUM	  3
    // >> Rows
    #define RC_KS_R0	 19
    #define RC_KS_R1	 20
    #define RC_KS_R2	 21
    #define RC_KS_R3	 22
    #define RC_KS_R4	 23
    // >> Columns
    #define RC_KS_C0	  0
    #define RC_KS_C1	  4
    #define RC_KS_C2	  5
#endif

typedef enum
{
    KS_NONE,
    KS_ALL_RELEASED,
    KS_SINGLE,
    KS_COMBO2,
    KS_COMBOIR2,
    KS_COMBO3,
}KS_STATUS;

extern KS_STATUS keyStatus;


void remote_button_init(void);
void remote_button_drop_all(void);

void remote_CheckSingleKey(void);
void remote_CheckComboKey(void);
void remote_InitialCheckPowerKey(void);

void remote_powerkey_pressed(uint8_t id);
void remote_keyscan_column_interrupt_enable(void);
void remote_keyscan_column_interrupt_disable(void);

#endif
