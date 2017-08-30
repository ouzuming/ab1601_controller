/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_gap.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef DONGLE_VCMD_HH_
#define DONGLE_VCMD_HH_
#include "ab_airoha_vcmd.h"
#include "dongle_vcmd.h"
/******************************************************************************/
/* Defines                                                                    */
/******************************************************************************/
#define OGF_GAP                     0x40
#define OCF_GAP_BT_LOG_ENABLE       0x01
#define OCF_GAP_BT_ADV_DATA_SET     0x02
#define OCF_GAP_BT_SCAN_DATA_SET    0x03
#define OCF_GAP_ADV_START           0x04
#define OCF_GAP_ADV_STOP            0x05
#define OCF_GAP_ADDR_SET            0x06
#define OCF_GAP_PUB_ADDR_GET        0x07
#define OCF_GAP_RAND_ADDR_GET       0x08
#define OCF_GAP_DISCONNECT          0x09
#define OCF_GAP_TX_PWR_SET          0x0a
#define OCF_GAP_SCAN_START          0x0b
#define OCF_GAP_SCAN_STOP           0x0c
#define OCF_GAP_START_ENCRYPT       0x0d
#define OCF_GAP_CONN_PARM_UPDATE    0x0e
#define OCF_GAP_CONNECT             0x0f
#define OCF_GAP_CONNECT_CANCEL      0x10
#define OCF_GAP_READ_REMOTE_VERSION 0x11
#define OCF_GAP_ADV_REPORT          0xFF //event only

/******************************************************************************/
/* API                                                                        */
/******************************************************************************/
void DONGLE_vcmd_gap_init(void);
VCMD_ERROR_CODE dongle_vcmd_BtLogEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapSetAdvData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapSetScanData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapAdvStart(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapAdvStop(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapAddrSet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapPubAddrGet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapRandAddrGet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapDisconnect(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapTxPowrSet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapScanStart(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapScanStop(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapStartEncrypt(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapConnectionParamUpdate(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapConnect(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapConnectCancel(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_GapReadRemoteVersion(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
#endif
