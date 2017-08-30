/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_typedef.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __AIRSYNC_TYPEDEF_HH_
#define __AIRSYNC_TYPEDEF_HH_

typedef enum
{
    BLE_IDLE,
    BLE_ADVERTISING,
    BLE_CONNECTED_WITHOUT_AUTH,
    BLE_CONNECTED_WITH_AUTH_WITHOUT_INIT,
    BLE_CONNECTED_COMPLETE,
} AIRSYNC_BLE_STATUS;

typedef struct
{
    unsigned char bMagicNumber;
    unsigned char bVer;
    unsigned short nLength;
    unsigned short nCmdId;
    unsigned short nSeq;
} BpFixHead;

typedef enum
{
    AUTH_IDLE,
    AUTH_REQ_PACK,
    AUTH_SEND_PACKET,
    AUTH_RESP_GET_WRITE_PACKET,
    AUTH_RESP_DECRY,
    AUTH_END,
} AIRSYNC_AUTH_STATUS;

typedef enum
{
    INIT_IDLE,
    INIT_REQ_PACK,
    INIT_SEND_PACKET,
    INIT_RESP_GET_WRITE_PACKET,
    INIT_RESP_DECRY,
    INIT_END,
} AIRSYNC_INIT_STATUS;

typedef enum
{
    MANUFACTURE_IDLE,
    PACK_MANUFACTURE_DATA,
    SEND_MANUFACTURE_DATA,
    RECEIVE_MANUFACTURE_DATA,
    UNPACK_MANUFACTURE_DATA,
    MANUFACTURE_END,
}MANUFACTURE_DATA;

#endif

