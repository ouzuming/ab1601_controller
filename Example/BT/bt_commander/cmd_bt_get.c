/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    cmd_bt_get.c
DESCRIPTION
NOTES
********************************************************************************/
#include "bt.h"
#include "console.h"
#include "ab_util.h"


/******************************************************************************/
/* static functions                                                           */
/******************************************************************************/

static int cmd_get_pub_address(void *no, int argc, char **argv)
{
    uint8_t i;
    ble_addr_t ble_addr;

    ble_gap_pub_address_get(&ble_addr);

    for(i = 0; i < 6; i++)
        printf("%02X", ble_addr.addr[i]);
    printf("\n");

    return RET_SUCCESS;
}

static int cmd_get_remote_version(void *no, int argc, char **argv)
{
    uint16_t handle;
    if(!AB_UTIL_Str2u16Num(argv[1], &handle))
        return RET_INVALID_PARAM;

    ble_gap_remote_version(handle);

    return RET_SUCCESS;
}


/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
const console_cmds_t cmd_get_tbl[] =
{
    {"pub", cmd_get_pub_address, NULL},
    {"rver", cmd_get_remote_version, NULL},
    {NULL, NULL, NULL}
};

