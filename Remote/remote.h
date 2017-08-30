/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE__HH_
#define __REMOTE__HH_

#include "bt.h"
#include "ble_gap_sm.h"
#include "bsp_generic.h"
#include "Drv_timer32b0.h"
#include "Drv_Gpio.h"
#include "Drv_pwr.h"
#include "Drv_Mic.h"
#include "Drv_wdt.h"
#include "Drv_adc.h"
#include "Drv_spi.h"
#include "ab_pwr.h"
#include "ab_uart.h"
#include "ab_timer.h"
#include "ab_mp_sector.h"
#include "AIR_MOTION_Lib.h"
#include "mtd.h"
#include "remote_typedef.h"
#include "remote_led.h"
#include "remote_adv.h"
#include "remote_gatt.h"
#include "remote_button.h"
#include "remote_mouse.h"
#include "remote_microphone.h"
#include "remote_vcmd.h"

/****** Host specific define **************************************************/
#ifdef RC_HOST_1
#include "customer/host_1.h"
#endif
/******************************************************************************/

/* Dump microphone raw data */
/* #define RC_MIC_DBG */

/* RC won't into sleep/deep sleep */
/* #define RC_KEEP_ALIVE          */

/* RC support upto 6 dBm */
/* #define RF_6_DBM */

/* Dual-Direction Smart Remote Controller (DD-SRC)                                      */
/* The DD_SRC integrates AB1600 (BLE) and AB1520S (BT3.0) to provide the dual-direction */
/* smart remote controller which support the HID (HOGP), voice command and media,       */ 
/* #define DD_SRC                                                                       */

/* For specific demo device */
/* #define DEMO_HOST_HP7    */
/* #define DEMO_TV_BOX      */
/* #define DEMO_EVK_DTB     */
/* #define DEMO_EVK_DTB + EVK_AB1601 */

/* RX support IR TX mode */
/* #define RC_IRTX       */
/* RX support IR RX mode */
/* #define RC_IRRX       */

/* MT8852 - Press RC_BYPASS_IO then power-on */
#define RC_BYPASS_IO                        3

/* BOOST - To control AB1520S */
#define RC_BOOST_CONVERTER_IO               12


/****************************************************************************************/

typedef struct
{
    uint32_t POWER_ON;
    uint32_t MOUSE_ON;
    uint32_t MIC_ON;
    uint32_t KEY_PRESS;
    uint32_t GENERAL;
    uint32_t UNDIR_ADV;
    uint32_t BONDED_UNDIR_ADV;
    uint32_t WOBLE_ADV;
    uint32_t DFU_OTA_STARTED;
    uint32_t DFU_OTA_FINISHED;
}RC_DEEPSLEEP_TO_STRU;

typedef struct
{
    uint8_t KEY_HID;
    uint8_t MOUSE_HID;
    uint8_t AUDIO_HID;
    uint8_t WAKE_ON_MOTION;
    uint8_t CODEC_SEL;              // reference: CODEC_SEL_ENUM
    uint8_t IDEAL_CONN_INTERVAL;    // unit: 1.25ms
    uint8_t IDEAL_SLAVE_LATENCY;
    uint8_t SUPPORT_VAD;
}RC_MISC_CONFIG_STRU;

typedef struct
{
    uint8_t OTA         :1;
    uint8_t bonding     :1;
    uint8_t air_mouse   :1;
    uint8_t microphone  :1;
    uint8_t normal_led  :1;
    uint8_t rsvd        :3;
}RC_FORBIDDEN_FUNC;

/****************************************************************************************/

extern RC_FORBIDDEN_FUNC    rc_ffunc;
extern RC_MISC_CONFIG_STRU  rc_cfg;
extern RC_DEEPSLEEP_TO_STRU rc_deepsleep_timeout;
extern bsp_generic_ex2_parm rc_bsp_init_parm;
extern BOOT_REASON boot;
extern RC_BLE_STATUS remote_ble_status;
extern RC_MIC_STATUS remote_mic_status;
extern bool remote_bt_inited;
extern bool remote_bt_bonded;
extern bool remote_mouse_enabled;
extern bool remote_gesture_enabled;
extern bool remote_deepsleep_enabled;
extern bool remote_soft_reset_enabled;
extern bool remote_special_mode_enabled;
extern volatile bool remote_link_encrypted;
extern volatile bool remote_block_keycode_enabled;
extern volatile bool remote_firmware_updating;
extern volatile bool remote_vcmd_mouse_calibrating;
extern void *remote_MP_bd_addr;
extern uint8_t remote_vbat;

extern ble_addr_t ble_bonded_peer;
extern uint16_t ble_conn_handle;
extern uint16_t ble_conn_interval;
extern uint16_t ble_slave_latency;

extern RC_SLEEP_CTRL remote_sleep_disable;

void remote_bt_evt_hdl(bt_evt_t *evt);
void remote_init_before_BT(void);
void remote_init(void);
void remote_mainloop(void);
void remote_reset_deep_sleep_timer(uint32_t ms);

void remote_check_power_flag(void);
void remote_check_bt_bonding(void);
bool remote_check_is_device_bonded(ble_addr_t *addr);


#endif
