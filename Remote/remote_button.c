/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_button.c
DESCRIPTION
NOTES
********************************************************************************/
#include "remote.h"
#include "Drv_keyScan.h"
#include "Drv_Gpio.h"

#if defined(RC_IRTX) || defined(RC_IRRX)
#include "ir_NEC.h"
#include "Ab_led.h"
#endif

#if R5C7
const uint16_t KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM] =
{
    0x00E9,         //  Volume +
    0x0221,         //  Audio search
    0x0224,         //  AC back
    0x0045,         //  Menu Right
    0xFFFF,         //  unknown color button4
    0x0005,
    0x000A,

    0x00EA,         //  Volume -
    0x009C,         //  channel increment
    0x0042,         //  Menu Up
    0xEEEE,         //  reset gesture  //0x0046,         //  Menu Escape
    0x0001,
    0x0006,
    0x0040,         //  menu

    0x0084,         //  enter channel
    0x009D,         //  channel decrement
    0x0041,         //  Menu Pick
    0xFFFF,         //  unknown color button1
    0x0002,
    0x0007,
    0x0036,         //  function buttons

    0x00E2,         //  mute
    0x0223,         //  AC home
    0x0043,         //  Menu Down
    0xFFFF,         //  unknown color button2
    0x0003,
    0x0008,
    0xFFFF,         //  unused

    0x0083,         //  Recall Last
    0x0044,         //  Menu Left
    0xAAAA,         //  Air Mouse
    0xFFFF,         //  unknown color button3
    0x0004,
    0x0009,
    0xFFFF,         //  unused
};
#endif

#if R3C4
const uint16_t KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM] =
{
    0xAAAA,         //  Air Mouse
    0x0044,         //  Menu Left
    0x0040,         //  menu
    0x0221,         //  Audio search (0xBBBB for Linux Demo)

    0x0042,         //  Menu Up
    0x0045,         //  Menu Right
    0x0224,         //  AC back
    0x0036,         //  function buttons

    0x0043,         //  Menu Down
    0x0041,         //  Menu Pick
    0x0223,         //  AC home


};
#endif

#if R5C3
const uint16_t KEY_MATRIX[RC_ROW_NUM*RC_COL_NUM] =
{
    0x0030,         //  Power
	0x0042, 		//	Menu Up
    0xAAAA,         //  Air Mouse
    
    0x0044,         //  Menu Left
	0x0041, 		//	Menu Pick
	0x0045, 		//	Menu Right

    0x0040,         //  Menu
	0x0043, 		//	Menu Down
	0x0224, 		//	AC back

    0xFFFF,         //  unused
	0x0223, 		//	AC home
	0xFFFF, 		//	unused
	
	0xFFFF, 		//	unused
    0x0221,         //  Audio search (0xBBBB for Linux Demo)
    0x0036,         //  function buttons
};
#endif

typedef struct
{
    uint8_t wPtr     :4;
    uint8_t rPtr     :4;
} KEY_BUF_INDEX_STRU;

static uint16_t gKeyRingBuf[15];
static KEY_BUF_INDEX_STRU gKeyBufIdx =
{
    .wPtr = 0,
    .rPtr = 0,
};




KS_STATUS keyStatus = KS_ALL_RELEASED;

uint8_t kslastKey = 0xFF;

#if R5C7
uint8_t combo2Key[2] = {4,17};
uint8_t combo3Key[3] = {4,24,31};
#endif

#if R3C4
uint8_t combo2Key[2] = {2,6};
uint8_t combo3Key[3] = {1,4,10};
#endif

#if R5C3
uint8_t combo2Key[2] = {6,8};
uint8_t combo3Key[3] = {1,3,10};
#endif

void keyIntrHandler(uint8_t * idAry, uint8_t num, bool isGhost)
{
    bool allKeyReleased = keyStatus == KS_ALL_RELEASED;
    bool lastKeyReleased = kslastKey!=0xFF;
    uint8_t i;

    for(i = 0; i < num; i++)
    {
        if(idAry[i] == kslastKey)
        {
            lastKeyReleased = false;
            break;
        }
    }

    keyStatus = KS_NONE;

    if(isGhost)
        return;

    switch(num)
    {
        case 0:
            keyStatus = KS_ALL_RELEASED;
            break;
        case 1:
            if(allKeyReleased)
            {
                keyStatus = KS_SINGLE;
                #if defined(RC_IRRX)
                if (remote_sleep_disable.field.ir_learning)
                {
                    NEC_StartLearning(idAry[0]);
                    gIRKeyBufIdx.rPtr = gIRKeyBufIdx.wPtr;
                    repeatCode = false;
                }
                else
                #endif
                {
                    #if defined(RC_IRTX)
                    uint16_t data = 0;
                    data = data | IR_KEY_MATRIX[idAry[0]].Command;
                    data = (data << 8) | IR_KEY_MATRIX[idAry[0]].Address;
                    printf("key is 0x%2X , \n", data);
                    gIRKeyRingBuf[gIRKeyBufIdx.wPtr++] = data;
                    repeatCode = true;
                    #endif
                    gKeyRingBuf[gKeyBufIdx.wPtr++] = KEY_MATRIX[kslastKey= idAry[0]];
                }
            }
            break;
        case 2:
            if( idAry[0]==combo2Key[0] && idAry[1]==combo2Key[1])
            {
                keyStatus = KS_COMBO2;
            }
            
            #if defined(RC_IRRX)
            else if (idAry[0] == combo2IRKey[0] && idAry[1]==combo2IRKey[1])
            {
                keyStatus = KS_COMBOIR2;
                // printf("KS_COMBOIR2 \n");
            }
            #endif

            break;
        case 3:
            if( idAry[0]==combo3Key[0] && idAry[1]==combo3Key[1] && idAry[2]==combo3Key[2])
                keyStatus = KS_COMBO3;

            break;
    }

    if(lastKeyReleased)
    {
        kslastKey = 0xFF;
        gKeyRingBuf[gKeyBufIdx.wPtr++] = 0x0000;
        #if defined(RC_IRTX)
        gIRKeyRingBuf[gIRKeyBufIdx.wPtr++] = 0x0000;
        repeatCode = false;
        printf("IR release key \n");
        #endif
    }

}

void remote_button_init(void)
{
    KS_INIT_STRUCTURE kis =
    {
        .swt = KS_IO_SW_TIME_SEL_4T,
        .dly = KS_RATE_DLY_520T,
        .row_num = RC_ROW_NUM,
        .col_num = RC_COL_NUM,
    #if R5C7
        .row = {RC_KS_R0,RC_KS_R1,RC_KS_R2,RC_KS_R3,RC_KS_R4},
        .col = {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3,RC_KS_C4,RC_KS_C5,RC_KS_C6,},
    #elif R3C4
        .row = {RC_KS_R0,RC_KS_R1,RC_KS_R2},
        .col = {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3},
    #elif R5C3
        .row = {RC_KS_R0,RC_KS_R1,RC_KS_R2,RC_KS_R3,RC_KS_R4},
        .col = {RC_KS_C0,RC_KS_C1,RC_KS_C2},
    #endif
    };

    remote_keyscan_column_interrupt_disable();


    DRV_KeyScan_Init(kis, keyIntrHandler);
    DRV_KeyScan_En();

    DRV_Gpio_IntReg(RC_PWRKEY_IO, EDGE_NEG, remote_powerkey_pressed);
    DRV_Gpio_IntEn(RC_PWRKEY_IO);

    remote_InitialCheckPowerKey();

}

void remote_button_drop_all(void)
{
    gKeyBufIdx.rPtr = gKeyBufIdx.wPtr;
}

void _remote_SendKey(uint16_t keyCode)
{
    if(keyCode)
    {
        remote_led_rc_function_enable(F_LED_BUTTON_PRESSED);
        remote_led_rc_function_state_clear(F_LED_BUTTON_PRESSED);
    }

    RC_hids_report1[0] = (uint8_t)(keyCode & 0xFF);
    RC_hids_report1[1] = (uint8_t)(keyCode >> 8);
    RC_hids_report1[2] = 0;

    remote_send_hid_report(report1_handle);
}

void remote_powerkey_pressed(uint8_t id)
{
    switch(remote_ble_status)
    {
        case BLE_IDLE:
            remote_ble_status = BLE_WOBLE;
            break;
        case BLE_CONNECTED:
            remote_reset_deep_sleep_timer(rc_deepsleep_timeout.KEY_PRESS);
            _remote_SendKey(0x0030);
            _remote_SendKey(0x0000);
            break;
        case BLE_ADVERTISING:
            remote_switch_to_woble_adv();
            break;
    }
}

void remote_num_key_pressed(uint16_t keyCode)
{
    printf("sending number key: %04X\n", keyCode);

    RC_hids_report1[0] = 0;
    RC_hids_report1[1] = 0;
    RC_hids_report1[2] = (uint8_t)keyCode;
    remote_send_hid_report(report1_handle);
}

void remote_menu_key_pressed(void)
{
    if(1)
        _remote_SendKey(0x0040);
    else
        remote_switch_mouse_sensitivity();
}

void remote_ok_key_pressed(void)
{
    if(remote_mouse_enabled)
        RC_hids_report3[2] |= 0x01;
    else
        _remote_SendKey(0x0041); // menu select
}

void _remote_ProcessSingleKey(uint16_t keyCode)
{
    switch(keyCode)
    {
        case 1 ... 10:
            remote_num_key_pressed(keyCode);
            break;
        case 0x0036:    // function button, used as mouse calibration key
            remote_mouse_calibration_key_pressed();
            break;
        case 0x0040:    // menu key, treat as mouse sensitivity adjust
            remote_menu_key_pressed();
            break;
        case 0x0041:    // menu select, treat as left button while air mouse enabled
            remote_ok_key_pressed();
            break;
        case 0x0221:    // Audio Search command
        case 0xBBBB:
            remote_mic_key_pressed();
            break;
        case 0x0224:    //ac back
            if(remote_mouse_enabled)
                remote_gesture_key_pressed();
            else
                _remote_SendKey(keyCode);

            break;
        case 0xAAAA:    // Air mouse
            remote_mouse_key_pressed();
            break;
        case 0xEEEE:    // gesture recognition key
            remote_gesture_key_pressed();
            break;
        case 0xFFFF:
            break;

        case 0x0000:

        #ifdef RC_HOST_1
            HOST_1_KEY_RELEASE_BEHAVIOR
        #else
            if(remote_mic_status == MIC_ENABLED)
                remote_mic_local_disable();
            if(remote_gesture_enabled)
                remote_gesture_enabled = false;

            RC_hids_report3[2] = 0x00;
            _remote_SendKey(keyCode);
            break;
        #endif

        default:
            _remote_SendKey(keyCode);
            break;
    }
}

void remote_CheckSingleKey(void)
{
    if(gKeyBufIdx.rPtr == gKeyBufIdx.wPtr)
    {
        return;
    }

    if(remote_ble_status != BLE_CONNECTED)
    {
        if(remote_ble_status == BLE_IDLE)
        {
            remote_ble_status = BLE_ACTIVATED;
        }
        else
        {
            if(!remote_bt_bonded)
            {
                printf("gKeyBufIdx.rPtr:%02d  drop key: %04X\n",gKeyBufIdx.rPtr,gKeyRingBuf[gKeyBufIdx.rPtr]);
                gKeyBufIdx.rPtr = gKeyBufIdx.wPtr;
            }
        }
    }
    else
    {
        if(!remote_block_keycode_enabled)
        {
            _remote_ProcessSingleKey(gKeyRingBuf[gKeyBufIdx.rPtr++]);
            remote_reset_deep_sleep_timer(rc_deepsleep_timeout.KEY_PRESS);
        }
    }
}

void remote_mouse_combo2_cb(uint32_t id)
{
    printf("combo 2 key time up! \n");
    BLE_gap_sm_delete_paired_record(NULL);

    remote_soft_reset_enabled = true;
}

#if defined(RC_IRRX)
void remote_ir_combo2_cb(uint32_t id)
{
    printf("combo ir 2 key time up! \n");
    if (remote_sleep_disable.field.ir_learning) {
        remote_sleep_disable.field.ir_learning = false;
        AB_LED_stop(ab_led0);
        printf("IR Learning Button Stop \n");
    } else {
        remote_sleep_disable.field.ir_learning = true;
        AB_LED_set_blink(ab_led0, 1000, 0, 0);
        AB_LED_start(ab_led0);
        printf("IR Learning Button Start \n");
    }
}
#endif

void remote_mouse_combo3_cb(uint32_t id)
{
    printf("combo 3 key time up! \n");
    BLE_gap_sm_delete_paired_record(NULL);
}

void remote_CheckComboKey(void)
{
    static KS_STATUS lastkeyStatus = KS_ALL_RELEASED;


    if(keyStatus != lastkeyStatus)
    {

        switch(keyStatus)
        {
            case KS_COMBO2:
                #if defined(RC_IRTX) || defined(RC_IRRX)
                AB_Timer_AlertSet(TIMER_ID_COMBO_KEY, false, 3000 * 8, remote_mouse_combo2_cb);
                #else
                AB_Timer_AlertSet(TIMER_ID_COMBO_KEY, false, 3000, remote_mouse_combo2_cb);
                #endif

                printf("combo 2 key start counting! \n");
                break;

            #if defined(RC_IRRX)
            case KS_COMBOIR2:
                AB_Timer_AlertSet(TIMER_ID_COMBO_KEY, false, 3000 * 8, remote_ir_combo2_cb);
                printf("combo ir 2 key start counting! \n");
                break;
            #endif    

            case KS_COMBO3:
                #if defined(RC_IRTX) || defined(RC_IRRX)
                AB_Timer_AlertSet(TIMER_ID_COMBO_KEY, false, 3000 * 8, remote_mouse_combo3_cb);
                #else
                AB_Timer_AlertSet(TIMER_ID_COMBO_KEY, false, 3000, remote_mouse_combo3_cb);
                #endif

                printf("combo 3 key start counting! \n");
                break;
            default:
            {
                if(lastkeyStatus == KS_COMBO2 || lastkeyStatus == KS_COMBOIR2 | lastkeyStatus == KS_COMBO3)
                    AB_Timer_AlertUnset(TIMER_ID_COMBO_KEY);
                break;
            }
        }

        lastkeyStatus = keyStatus;
    }
}

void remote_InitialCheckPowerKey(void)
{
    if(DRV_Gpio_PinLatchedIntStsGet(RC_PWRKEY_IO))
    {
        printf("latched power key detected\n");
        remote_powerkey_pressed(RC_PWRKEY_IO);
    }
}



void remote_keyscan_column_interrupt_enable(void)
{
    uint8_t i;

    for(i = 0; i < RC_COL_NUM; i++)
    {
        #if R5C7
        uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3,RC_KS_C4,RC_KS_C5,RC_KS_C6};
        #elif R3C4
        uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3};
		#elif R5C3
		uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2};
        #endif

        DRV_Gpio_IntReg(rc_ks_col[i], EDGE_NEG, NULL);
        DRV_Gpio_IntEn(rc_ks_col[i]);
    }
}

void remote_keyscan_column_interrupt_disable(void)
{
    uint8_t i;

    for(i = 0; i < RC_COL_NUM; i++)
    {
        #if R5C7
        uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3,RC_KS_C4,RC_KS_C5,RC_KS_C6};
        #elif R3C4
        uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2,RC_KS_C3};
        #elif R5C3
		uint8_t rc_ks_col[]= {RC_KS_C0,RC_KS_C1,RC_KS_C2};
        #endif

        DRV_Gpio_IntEn(rc_ks_col[i]);
    }
}
