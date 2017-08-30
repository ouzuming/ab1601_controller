/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_manufacture_data.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __AIRSYNC_MANUFACTURE_DATA_HH__
#define __AIRSYNC_MANUFACTURE_DATA_HH__

#include "airsync.h"
#include "crc32.h"
#include "aes_crypt.h"
#include "airsync_gatt.h"
#include "ble_gatt_server.h"
#include "airsync_typedef.h"

void airsync_manufacture_data(void);
void pack_manufacture_data(void);
void unpack_manuf_receive_data(void);
void send_manufacture_req_packets(void);
#endif