/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_gatt.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __AIRSYNC_GATT_HH__
#define __AIRSYNC_GATT_HH__

#include "ab1600.h"
#include "ble_gatt_server.h"
#include "service_trspx.h"
#include "airsync.h"
#include "airsync_typedef.h"

uint8_t AirSync_Indicate_Data[20];
uint8_t AirSync_Write_Data[110];
uint8_t AirSync_Read_Data[20];
uint8_t AirSync_CCCD_Data[2];

void airsync_service_init(void);

#endif
