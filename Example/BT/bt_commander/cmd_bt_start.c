/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    cmd_bt_start.c
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
static int cmd_start_scan(void *no, int argc, char ** argv)
{
    ble_gap_scan_params_t parm = {0x00, 0x0010, 0x0010, 0x01, 0x00, NULL, true};

    if(!strcmp(argv[1], "yes"))
    {
        ble_gap_scan_start(&parm, cfm_ble_gap_general);
    }
    else if(!strcmp(argv[1], "no"))        
    {
        parm.filter_duplicated = false;
        ble_gap_scan_start(&parm, cfm_ble_gap_general);
    }
    else if(!strcmp(argv[1], "last"))        
        ble_gap_scan_start(NULL, cfm_ble_gap_general);
    return RET_SUCCESS;
}

static int cmd_start_adv(void *no, int argc, char** argv)
{

    ble_gap_adv_params parm;

    if(argc < 2)
        return RET_WRONG_PRARM_NUMBER;
    
    if(!strcmp(argv[1] , "ind"))
    {
        parm.ad_type = ble_ad_type_ind;
        parm.peer_addr = NULL;
        
        parm.self_addr_type = ble_addr_type_public;
        parm.filter = ble_filter_any;
        parm.min_interval = 0x0020;
        parm.max_interval = 0x0040;
        parm.channel_mask = 0x7;
        
        ble_gap_adv_start(&parm, cfm_ble_gap_general);
        return RET_SUCCESS;
    }
    else if(!strcmp(argv[1], "last"))
    {
        ble_gap_adv_start(NULL, cfm_ble_gap_general);
        return RET_SUCCESS;
    }
    else if(!strcmp(argv[1], "dir"))
    {
        ble_addr_t addr;
        uint32_t u32;

        if(argc != 9 && argc != 11)
            return RET_WRONG_PRARM_NUMBER;
        
        parm.ad_type = (ble_addr_type)ble_ad_type_direct_ind;

        if(!AB_UTIL_Str2Num(argv[2], &u32))
            return RET_INVALID_PARAM;
        
        addr.addr_type = (uint8_t)u32; //0: public, 1:random static

        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[3], addr.addr))
        {
            return RET_INVALID_PARAM;
        }


        u32 = 0x0020;
        if(argc == 11)
        {
            if(!AB_UTIL_Str2Num(argv[9], &u32))
                return RET_INVALID_PARAM;
        }
        parm.min_interval = u32;


        u32 = 0x0040;
        if(argc == 11)
        {
            if(!AB_UTIL_Str2Num(argv[10], &u32))
                return RET_INVALID_PARAM;
        }
        parm.max_interval = u32;
            
        parm.peer_addr = &addr;
        
        parm.self_addr_type = ble_addr_type_public;
        parm.filter = ble_filter_any;
        parm.channel_mask = 0x1;
        
        ble_gap_adv_start(&parm, cfm_ble_gap_general);
        return RET_SUCCESS;
    }

    return RET_INVALID_PARAM;
}

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
const console_cmds_t cmd_start_tbl[] =
{
    {"adv", cmd_start_adv, NULL},
    {"scan", cmd_start_scan, NULL},
    {NULL, NULL, NULL}
};


