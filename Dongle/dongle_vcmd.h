/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef DONGLE_VCMD_HH
#define DONGLE_VCMD_HH
#include "ab_airoha_vcmd.h"

/******************************************************************************/
/* typedef                                                                    */
/******************************************************************************/
typedef enum
{
    VCMD_SUCCESS = 0,
    VCMD_ERROR_GENERAL = 1,
    VCMD_ERROR_INVALID_PARAM = 2,
    VCMD_ERROR_COMMAND_NOT_SUPPORT = 3,
    VCMD_ERROR_WRONG_PARAM_LENGTH = 4,
    VCMD_ERROR_REF_HCI_CODE = 0xFE,
    VCMD_EXECUTING = 0xFF,
 /* Speicial case, use for control non-blocking handler*/
}VCMD_ERROR_CODE;


/******************************************************************************/
/* Public                                                                     */
/******************************************************************************/
void DONGLE_vcmd_Init();
void DONGLE_vcmd_handle(vcmd_packet *pkt);
void DONGLE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, VCMD_ERROR_CODE status);

#endif
