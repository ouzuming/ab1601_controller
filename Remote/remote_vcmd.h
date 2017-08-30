/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_vcmd.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef REMOTE_VCMD_HH
#define REMOTE_VCMD_HH
#include "ab_airoha_vcmd.h"

/******************************************************************************/
/* typedef                                                                    */
/******************************************************************************/
typedef enum
{
    RC_VCMD_SUCCESS = 0,
    RC_VCMD_ERROR_GENERAL = 1,
    RC_VCMD_ERROR_COMMAND_NOT_SUPPORT = 2,
    RC_VCMD_EXECUTING = 0xFF,
 /* Speicial case, use for control non-blocking handler*/
}RC_VCMD_ERROR_CODE;


void remote_mouse_vcmd_calibrate_in_loop(void);

#endif
