/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_init.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __AIRSYNC_INIT_HH__
#define __AIRSYNC_INIT_HH__

#include <time.h>
#include "crc32.h"
#include "aes_crypt.h"
#include "airsync_gatt.h"
#include "ble_gatt_server.h"
#include "airsync_typedef.h"

void airsync_init(void);
void pack_init_request(void);
void send_init_req_packets(void);
void unpack_init_response(void);
#endif