/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    cmd_bt_set.c
DESCRIPTION
NOTES
********************************************************************************/
#include "bt.h"
#include "console.h"
#include "ab_util.h"
#include "bt_commander.h"

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
static int cmd_set_adv_data(void *no, int argc, char** argv)
{
    uint32_t adlen = 0x1C;
    uint8_t ad[31] = {
        0x05, 0x12, 0x10, 0x00, 0x50, 0x00,
        0x02, 0x01, 0x05,
        0x03, 0x03, 0x12, 0x18,
        0x03, 0x19, 0xC1, 0x03,
        0x0A, 0x09, 'A' , 'i' , 'r' , 'o', 'B', 'l', 'u', 'e', '.'};
    
    if(argc == 1)
    {             
        ble_gap_adv_data_set(ad, (uint8_t)adlen, cfm_ble_gap_general);
        return RET_SUCCESS;
    }
    
    if(!AB_UTIL_Str2Num(argv[1], &adlen))
        return RET_INVALID_PARAM;

    if(argc != (int)(adlen+2))
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u8NumArray(adlen, &argv[2], ad))
        return RET_INVALID_PARAM;
    
    ble_gap_adv_data_set(ad, (uint8_t)adlen, cfm_ble_gap_general);

    return RET_SUCCESS;
}

static int cmd_set_adv_parm(void *no, int argc, char** argv)
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
        
        ble_gap_adv_set_parameter(&parm, cfm_ble_gap_general);
        return RET_SUCCESS;
    }
    else if(!strcmp(argv[1], "dir"))
    {
        ble_addr_t addr;
        uint32_t u32;

        if(argc != 9 && argc != 11)
            return RET_WRONG_PRARM_NUMBER;
        
        parm.ad_type = (ble_addr_type)ble_ad_type_direct_ind;

        if(!AB_UTIL_Str2u8Num(argv[2], &addr.addr_type))
            return RET_INVALID_PARAM;
        
        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[3], addr.addr))
        {
            return RET_INVALID_PARAM;
        }

        if(argc == 11)
        {
            if(!AB_UTIL_Str2u16Num(argv[9], &parm.min_interval))
                return RET_INVALID_PARAM;
        }
        else
            parm.min_interval = 0x0020;

        if(argc == 11)
        {
            if(!AB_UTIL_Str2u16Num(argv[10], &parm.max_interval))
                return RET_INVALID_PARAM;
        }
        else
            parm.max_interval = 0x0040;
            
        parm.peer_addr = &addr;
        
        parm.self_addr_type = ble_addr_type_public;
        parm.filter = ble_filter_any;
        parm.channel_mask = 0x1;
        
        ble_gap_adv_set_parameter(&parm, cfm_ble_gap_general);
        return RET_SUCCESS;
    }
}

static int cmd_set_pub_address(void *no, int argc, char** argv)
{
    ble_addr_t addr;

    addr.addr_type = ble_addr_type_public;

    if(argc == 1)
    {             
        memcpy(addr.addr, "\x08\x01\x12\x23\x04\x05", 6);        
        ble_gap_address_set(&addr, cfm_ble_gap_general);
        return RET_SUCCESS;
    }

    if(argc == 7)
    {

        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[1], addr.addr))
            return RET_INVALID_PARAM;
        
        ble_gap_address_set(&addr, cfm_ble_gap_general);        
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
    

}

static int cmd_set_rnd_address(void *no, int argc, char** argv)
{
    ble_addr_t addr;

    addr.addr_type = ble_addr_type_random_static;

    if(argc == 1)
    {             
        memcpy(addr.addr, "\x08\x01\x12\x23\x04\x05", 6);        
        ble_gap_address_set(&addr, cfm_ble_gap_general);
        return RET_SUCCESS;
    }

    if(argc == 7)
    {

        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[1], addr.addr))
            return RET_INVALID_PARAM;
        
        ble_gap_address_set(&addr, cfm_ble_gap_general);        
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
    

}

static int cmd_set_tx_power(void *no, int argc, char ** argv)
{
    if(argc == 2)
    {
        uint32_t tmp;
        int8_t power;
        
        AB_UTIL_Str2Num(argv[1], &tmp);
        power = (int8_t)tmp;

        ble_gap_tx_power_set(power, cfm_ble_gap_general);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

static int cmd_set_link_parm(void *no, int argc, char **argv)
{
   uint16_t handle;
   ble_gap_conn_params_t conn = {0x20, 0x20, 10, 100, 0, 0};

   if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u8NumArray(2, &argv[1], (uint8_t*)&handle))
        return RET_INVALID_PARAM;

   ble_gap_conn_param_update(handle, &conn);
   return RET_SUCCESS;
}

static int cmd_set_dis(void *no, int argc, char **argv)
{    
    uint16_t handle;
    uint8_t reason;

    if(!AB_UTIL_Str2u16Num(argv[1], &handle))
        return RET_INVALID_PARAM;
    
    if(!AB_UTIL_Str2u8Num(argv[2], &reason))
        return RET_INVALID_PARAM;
    
    ble_gap_disconnect(handle, reason);

    return RET_SUCCESS;
}

static int cmd_conn(void *no, int argc, char** argv)
{
    if(argc == 8)
    {
        ble_gap_create_conn_params_t connParams;
        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[2], connParams.peer.addr))
            return RET_INVALID_PARAM;

        connParams.peer.addr_type = atoi(argv[1]);
        connParams.scan_intvl = 0x0A;
        connParams.scan_window = 0x0A;
        connParams.policy = 0;        
        connParams.owner = ble_addr_type_public;
        connParams.min_conn_interval = 0x06;
        connParams.max_conn_interval = 0x08;
        connParams.slave_latency = 0;
        connParams.conn_sup_timeout = 0x0c80;
        //connParams.conn_sup_timeout = 0x0a;
        connParams.ce_max = 0;
        connParams.ce_min = 0;

        ble_gap_connect(&connParams);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

static int cmd_cconn(void *no, int argc, char** argv)
{
    ble_gap_connect_cancel(NULL);
    return RET_SUCCESS;
}




static int cmd_set_scan_data(void *no, int argc, char** argv)
{
    uint32_t adlen;
    uint8_t ad[31];
    
    if(argc == 1)
        return RET_WRONG_PRARM_NUMBER;
    
    if(!AB_UTIL_Str2Num(argv[1], &adlen))
        return RET_INVALID_PARAM;

    if(argc != (int)(adlen+2))
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u8NumArray(adlen, &argv[2], ad))
        return RET_INVALID_PARAM;
    
    ble_gap_scan_data_set(ad, (uint8_t)adlen, cfm_ble_gap_general);

    return RET_SUCCESS;
}

static int cmd_set_scan_parm(void *no, int argc, char **argv)
{
    
    ble_gap_scan_params_t parm = {0x00, 0x0010, 0x0010, 0x01, 0x00, NULL, true};

    if(!strcmp(argv[1], "yes"))
    {
        ble_gap_scan_set_parameter(&parm, cfm_ble_gap_general);
    }
    else if(!strcmp(argv[1], "no"))        
    {
        parm.filter_duplicated = false;
        ble_gap_scan_set_parameter(&parm, cfm_ble_gap_general);
    }
 
    return RET_SUCCESS;
}



static int cmd_set_white_list(void *no, int argc, char ** argv)
{
    ble_gap_whitelist_t p_wlst;
    ble_addr_t addrs[20];
    uint8_t i;
    
    p_wlst.addr_count = 2;
    p_wlst.p_addrs = addrs;
    
    for(i = 0; i < 2; i++)
    {
        addrs[i].addr_type = i % 4;
        memset(addrs[i].addr, i, 6);
    }
    
     ble_gap_add_whitelist(&p_wlst, cfm_ble_gap_general);
        
    return RET_SUCCESS;
}

static int cmd_bond_flag(void *no, int argc, char ** argv)
{
    if(argc == 4)
    {
        uint8_t flag;
        uint8_t initkey;
        uint8_t respkey;
        
        AB_UTIL_Str2u8Num(argv[1], &flag);
        AB_UTIL_Str2u8Num(argv[2], &initkey);
        AB_UTIL_Str2u8Num(argv[3], &respkey);
        bt_commander_set_bond_flag(flag, initkey, respkey);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

static int cmd_rmdb(void *no, int argc, char** argv)
{
    if(argc == 8)
    {
        ble_addr_t peer;
        if(!AB_UTIL_StrArray2u8NumArray(6, &argv[2], peer.addr))
            return RET_INVALID_PARAM;

        peer.addr_type = atoi(argv[1]);
        
        BLE_gap_sm_delete_paired_record(&peer);
        return RET_SUCCESS;
    }    
    else if(argc == 1)
    {
        printf("Bonding all deleted\n");
        BLE_gap_sm_delete_paired_record(NULL);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}


static int cmd_auth(void *no, int argc, char** argv)
{
    uint16_t handle;
    uint8_t bonding_flag;
    
    ble_sm_security_param_t gSM_param =
    {
        SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
        SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
        SM_NO_MITM_PROTECTION,//uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
        16,                             //uint8_t encKeySize;
        0x03,                           //uint8_t keyDistr;
        0x07,                           //uint8_t respKeyDistr;
    };     

    if(argc != 3)
    {
        return RET_WRONG_PRARM_NUMBER;
    }

    AB_UTIL_Str2u16Num(argv[1], &handle);

    AB_UTIL_Str2u8Num(argv[2], &bonding_flag);

    gSM_param.authReq |= bonding_flag;
    
    BLE_gap_sm_authenticate(handle, &gSM_param);        

    return RET_SUCCESS;

}





/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
const console_cmds_t cmd_set_adv_tbl[] =
{
    {"data", cmd_set_adv_data, NULL},
    {"parm", cmd_set_adv_parm, NULL},
    {NULL, NULL, NULL}
};

const console_cmds_t cmd_set_data_tbl[] =
{
    {"data", cmd_set_scan_data, NULL},
    {"parm", cmd_set_scan_parm, NULL},
    {NULL, NULL, NULL}
};

const console_cmds_t cmd_set_tbl[] =
{
    {"adv", NULL, cmd_set_adv_tbl},
    {"scan", NULL, cmd_set_data_tbl},
    {"wlst", cmd_set_white_list, NULL},
    {"pub", cmd_set_pub_address, NULL},
    {"rnd", cmd_set_rnd_address, NULL},
    {"txp", cmd_set_tx_power, NULL},
    {"connparm", cmd_set_link_parm, NULL},
    {"dis", cmd_set_dis, NULL},
    {"conn", cmd_conn, NULL},
    {"conn_cel", cmd_cconn, NULL},
    {"bond_flag", cmd_bond_flag, NULL},    
    {"auth", cmd_auth, NULL},
    {"rmdb", cmd_rmdb, NULL},
    {NULL, NULL, NULL}
};

