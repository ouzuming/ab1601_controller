/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_vcmd.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef MOUSE_VCMD_HH
#define MOUSE_VCMD_HH
#include "ab_airoha_vcmd.h"

/******************************************************************************/
/* typedef                                                                    */
/******************************************************************************/
typedef enum
{
    MS_VCMD_SUCCESS = 0,
    MS_VCMD_ERROR_GENERAL = 1,
    MS_VCMD_ERROR_COMMAND_NOT_SUPPORT = 2,
    MS_VCMD_EXECUTING = 0xFF,
 /* Speicial case, use for control non-blocking handler*/
}MS_VCMD_ERROR_CODE;


void mouse_mouse_vcmd_calibrate_in_loop(void);

#endif
