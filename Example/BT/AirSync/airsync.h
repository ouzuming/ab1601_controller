/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __AIRSYNC__HH_
#define __AIRSYNC__HH_

#include "bt.h"
#include "ble_gap_sm.h"
#include "Drv_Gpio.h"
#include "Drv_pwr.h"
#include "Drv_wdt.h"
#include "ab_pwr.h"
#include "airsync_gatt.h"
#include "airsync_auth.h"
#include "airsync_typedef.h"

//#define Protocol_Buffer_Test

#define Md5AndAesEncrypt
//#define MacNoEncrypt
//#define Md5AndNoEncypt

#ifdef Md5AndNoEncypt
#ifndef MacNoEncrypt
#define MacNoEncrypt
#endif
#endif

extern AIRSYNC_BLE_STATUS airsync_ble_status;

#define AIRSYNC_DEBUG 1

#if AIRSYNC_DEBUG
int AIRSYNC_PRINT(const char *fmt, ...);
#else
#define AIRSYNC_PRINT(X,Y...) do{}while(0)
#endif

void airsync_application_init(void);
void airsync_mainloop(void);
void airsync_bt_evt_hdl(bt_evt_t *evt);

#endif