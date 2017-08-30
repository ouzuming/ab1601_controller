/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    cmd_bt_stop.c
DESCRIPTION
NOTES
********************************************************************************/
#include "bt.h"
#include "console.h"
#include "ab_util.h"

/******************************************************************************/
/* static functions(BT Callback)                                              */
/******************************************************************************/
static void cfm_ble_gap_general(bool isuccess, uint8_t err_code)
{
    printf("%s\n", isuccess ? "ok" : "fail");
}

/******************************************************************************/
/* static functions(command handler)                                          */
/******************************************************************************/
static int cmd_stop_scan(void *no, int argc, char** argv)
{
   
    ble_gap_scan_stop(cfm_ble_gap_general);
    return RET_SUCCESS;
}

static int cmd_stop_adv(void *no, int argc, char** argv)
{
   
    ble_gap_adv_stop(cfm_ble_gap_general);
    return RET_SUCCESS;
}

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
const console_cmds_t cmd_stop_tbl[] =
{
    {"adv", cmd_stop_adv, NULL},
    {"scan", cmd_stop_scan, NULL},
    {NULL, NULL, NULL}
};


