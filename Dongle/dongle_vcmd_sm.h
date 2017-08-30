/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_sm.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef DONGLE_VCMD_SM_HH_
#define DONGLE_VCMD_SM_HH_
#include "ab_airoha_vcmd.h"
#include "dongle_vcmd.h"
#include "bt.h"

/******************************************************************************/
/* Defines                                                                    */
/******************************************************************************/
#define OGF_SM                                0x41

#define OCF_SM_PAIRINGREQUEST                   0x01
#define OCF_SM_SECURITYREQUEST                  0x02
#define OCF_SM_SETSECURITYPARAM                 0x03
#define OCF_SM_PASSKEYRESPONSE                  0x04
#define OCF_SM_OOBDATARESPONSE                  0x05
#define OCF_SM_NUMERICCOMPARISONCONFIRM         0x06
#define OCF_SM_GETLTK                           0x07
#define OCF_SM_GETPEERLTK                       0x08
#define OCF_SM_CLEARBONDINGLIST                 0x09

/******************************************************************************/
/* API                                                                        */
/******************************************************************************/
VCMD_ERROR_CODE dongle_vcmd_SmAuthenticate(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmSetSecurityParam(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmPasskeyResponse(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmOobDataResponse(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmNumericComparisonConfirm(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmGetLTK(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmGetPeerLTK(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SmClearBondingList(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);

#endif

