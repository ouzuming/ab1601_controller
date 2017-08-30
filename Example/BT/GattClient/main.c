/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_BT_GattClient "Example/BT/GattClient"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_uart.h"
#include "ab_assert.h"
#include "ab_mp_sector.h"
#include "ab_clk.h"
#include "ab_log.h"
#include "bt.h"
#include "ble_gap_sm.h"
#include "stdarg.h"
#include "bsp_generic.h"
#include "service_battery.h"
#include "service_mesh.h"
#include "ble_att.h"

uint16_t conn_handle=0;

volatile uint8_t is_parsing = false;
volatile uint8_t server_cached = false;
volatile bool show_server = false;

typedef struct
{
    uint8_t s;
    uint8_t c;
}PARSE_STATE;

typedef struct
{
    uint16_t handle;
    uint8_t uuid_len;
    uint8_t uuid[16];
}desprip_t;

typedef struct
{
    uint16_t handle;
    uint8_t uuid_len;
    uint8_t uuid[16];
}include_t;

typedef struct
{
    uint16_t dhandle;
    uint16_t vhandle;
    uint8_t property;
    uint8_t uuid_len;
    uint8_t uuid[16];

    uint8_t nod;
    desprip_t * d;
}charact_t;

typedef struct
{
    uint16_t start;
    uint16_t end;
    uint8_t uuid_len;
    uint8_t uuid[16];

    uint8_t noi;
    include_t * i;

    uint8_t noc;
    charact_t * c;
}service_t;

typedef struct
{
    uint8_t nos;
    service_t * s;
}server_t;

PARSE_STATE ps;
server_t server;

void strrev(uint16_t num, uint8_t * str)
{
    uint16_t i;
    uint8_t buf;

    if(num == 1)
        return;

    for(i=0;i<num/2;i++)
    {
        buf = str[i];
        str[i] = str[num-i-1];
        str[num-i-1] = buf;
    }
}

static void ble_adv_enable_cb(bool isuccess, uint8_t err_code)
{
    printf("advertising enabled\n");
}

#define __MACRO_CHECK_CONNECTION_STATE(); if(conn_handle == 0){\
    printf("*****   BLE Not connected yet!   ***** \n\n"); \
    return RET_SUCCESS;}


void cfm_ble_gap_general(bool isuccess, uint8_t err_code)
{
    printf("%s\n", isuccess ? "ok" : "fail");
}

int cmd_log(void *no, int argc, char** argv)
{
    uint32_t level;
    AB_UTIL_Str2Num(argv[1], &level);

    BT_Log_Enable(level);
    return RET_SUCCESS;
}

int cmd_adv_enable(void *no, int argc, char** argv)
{
    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7,
    };

    //start adv
    ble_gap_adv_start(&parm, cfm_ble_gap_general);
}

int cmd_adv_disable(void *no, int argc, char** argv)
{
    ble_gap_adv_stop(cfm_ble_gap_general);
}

int cmd_scan_enable(void *no, int argc, char ** argv)
{
    ble_gap_scan_params_t parm = {0x00, 0x0010, 0x0010, 0x00, 0x00, NULL, true};


    ble_gap_scan_start(&parm, cfm_ble_gap_general);

    return RET_SUCCESS;
}

int cmd_scan_disable(void *no, int argc, char** argv)
{
    ble_gap_scan_stop(cfm_ble_gap_general);

    return RET_SUCCESS;
}

int cmd_cancel(void *no, int argc, char** argv)
{
    ble_gap_connect_cancel(cfm_ble_gap_general);
    return RET_SUCCESS;
}

int cmd_connect(void *no, int argc, char** argv)
{
    if(argc == 8)
    {
        ble_gap_create_conn_params_t connParams;
        if(!AB_UTIL_StrArray2u8HexNumArray(6, &argv[2], connParams.peer.addr))
            return RET_INVALID_PARAM;

        connParams.peer.addr_type = atoi(argv[1]);
        connParams.scan_intvl = 0x0A;
        connParams.scan_window = 0x0A;
        connParams.policy = 0;
        connParams.owner = ble_addr_type_public;
        connParams.min_conn_interval = 0x20;
        connParams.max_conn_interval = 0x30;
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

char* GATT_ERR_STATUS[]=
{
    "GATT_SUCCESS",
    "GATT_FAILURE_INVALID_CONNECTION_HANDLE",
    "GATT_FAILURE_INVALID_PARAMETER",
    "GATT_FAILURE_PREVIOUS_PROCEDURE_NOT_ENDED",
    "GATT_FAILURE_TRANSACTION_TIMEOUT",
};

int cmd_mtu(void *no, int argc, char** argv)
{
    GATT_4_3_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: mtu \"23~200\" \n");
        printf("Syntax Example: mtu 30\n");
        return RET_SUCCESS;
    }

    para.conn_handle = conn_handle;
    para.mtu = (uint16_t)atoi(argv[1]);

    if(para.mtu < 23 || para.mtu > 200)
        return RET_INVALID_PARAM;

    status = ble_gatt_4_3_1_exchange_mtu( &para);

    if(status)
        printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
    else
        printf("\n==== Start GATT procedure: exchange_mtu ====\n");

    return RET_SUCCESS;
}

int cmd_disc_alls(void *no, int argc, char** argv)
{
    GATT_4_4_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    para.conn_handle = conn_handle;

    ble_gatt_4_4_1_disc_all_primary_services(&para);

    return RET_SUCCESS;
}

int cmd_disc_suuid(void *no, int argc, char** argv)
{
    GATT_4_4_2_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: disc_suuid \"16 or 128 bit UUID\" \n");
        printf("Syntax Example: disc_suuid 1800 \n");
        printf("Syntax Example: disc_suuid 00112233445566778899AABBCCDDEEFF\n");
        return RET_SUCCESS;
    }
    if(argc == 2)
    {
        para.conn_handle = conn_handle;
        para.uuid_size = strlen(argv[1])/2;

        if(para.uuid_size!= 2 && para.uuid_size != 16)
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],para.uuid), para.uuid);

        status = ble_gatt_4_4_2_disc_primary_service_by_UUID(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: disc_primary_service_by_UUID ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_find_inc(void *no, int argc, char** argv)
{
    GATT_4_5_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: find_inc \"start handle\" \"end handle\"\n");
        printf("Syntax Example: find_inc 0001 FFFF\n");
        return RET_SUCCESS;
    }

    if(argc == 3)
    {
        para.conn_handle = conn_handle;

        if(strlen(argv[1])!= 4 || strlen(argv[2])!= 4)
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.start), (uint8_t *)&para.start);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.end), (uint8_t *)&para.end);

        if(para.start > para.end)
            return RET_INVALID_PARAM;

        status = ble_gatt_4_5_1_find_included_services(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: find_included_services ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;

}

int cmd_disc_allc(void *no, int argc, char** argv)
{
    GATT_4_6_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: disc_allc \"start handle\" \"end handle\"\n");
        printf("Syntax Example: disc_allc 0001 FFFF\n");
        return RET_SUCCESS;
    }

    if(argc == 3)
    {
        para.conn_handle = conn_handle;

        if(strlen(argv[1])!= 4 || strlen(argv[2])!= 4)
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.start),(uint8_t *)&para.start);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.end),(uint8_t *)&para.end);

        if(para.start > para.end)
            return RET_INVALID_PARAM;

        status = ble_gatt_4_6_1_disc_all_chars(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: disc_all_chars ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_disc_cuuid(void *no, int argc, char** argv)
{
    GATT_4_6_2_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: disc_cuuid \"start handle\" \"end handle\" \"UUID of characteristic\" \n");
        printf("Syntax Example: disc_cuuid 0001 FFFF 2A19\n");
        printf("Syntax Example: disc_cuuid 0001 FFFF 00112233445566778899AABBCCDDEEFF\n");

        return RET_SUCCESS;
    }

    if(argc == 4)
    {
        para.conn_handle = conn_handle;
        para.uuid_size = strlen(argv[3])/2;

        if( strlen(argv[1])!= 4 || strlen(argv[2])!= 4 || (para.uuid_size!= 2 && para.uuid_size!= 16) )
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.start),(uint8_t *)&para.start);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.end),(uint8_t *)&para.end);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[3],(uint8_t *)&para.uuid),(uint8_t *)&para.uuid);

        if(para.start > para.end)
            return RET_INVALID_PARAM;

        status = ble_gatt_4_6_2_disc_chars_by_UUID(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: disc_chars_by_UUID ====\n");


        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_disc_desc(void *no, int argc, char** argv)
{
    GATT_4_7_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: disc_desc \"start handle\" \"end handle\" \"maximum number of handle-UUID pairs\" \n");
        printf("Syntax Example: disc_desc 0001 FFFF 5\n");

        return RET_SUCCESS;
    }

    if(argc == 4)
    {
        uint32_t tmp;

        para.conn_handle = conn_handle;

        if(strlen(argv[1])!= 4 || strlen(argv[2])!= 4 || strlen(argv[3])> 10 )
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.start),(uint8_t *)&para.start);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.end),(uint8_t *)&para.end);

        if(para.start > para.end || !AB_UTIL_Str2HexNum(argv[3],&tmp))
            return RET_INVALID_PARAM;

        para.max_pair = tmp;

        status = ble_gatt_4_7_1_disc_all_char_descs(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: disc_all_char_descs ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_cvalue(void *no, int argc, char** argv)
{
    GATT_4_8_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_cvalue \"attribute handle of characteristic value \"\n");
        printf("Syntax Example: read_cvalue 0003 \n");

        return RET_SUCCESS;
    }

    if(argc == 2)
    {
        para.conn_handle = conn_handle;

        if(strlen(argv[1])!= 4)
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.att_handle),(uint8_t *)&para.att_handle);

        status = ble_gatt_4_8_1_read_char_value(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_char_value ====\n");

        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_cuuid(void *no, int argc, char** argv)
{
    GATT_4_8_2_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_cuuid \"start handle\" \"end handle\" \"UUID of characteristic\" \n");
        printf("Syntax Example: read_cuuid 0001 FFFF 2A90\n");
        printf("Syntax Example: read_cuuid 0001 FFFF 00112233445566778899AABBCCDDEEFF\n");

        return RET_SUCCESS;
    }

    if(argc == 4)
    {
        para.conn_handle = conn_handle;
        para.uuid_size = strlen(argv[3])/2;

        if( strlen(argv[1])!= 4 || strlen(argv[2])!= 4 || (para.uuid_size!= 2 && para.uuid_size!= 16) )
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.start),(uint8_t *)&para.start);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.end),(uint8_t *)&para.end);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[3],(uint8_t *)&para.uuid),(uint8_t *)&para.uuid);

        if(para.start > para.end)
            return RET_INVALID_PARAM;

        status = ble_gatt_4_8_2_read_using_char_UUID(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_using_char_UUID ====\n");

        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_longc(void *no, int argc, char** argv)
{
    GATT_4_8_3_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_longc \"attribute  handle of characteristic value\" \"read offset\"\n");
        printf("Syntax Example: read_longc 0003 0000\n");

        return RET_SUCCESS;
    }
    if(argc == 3)
    {
        para.conn_handle = conn_handle;

        if( strlen(argv[1])!= 4 || strlen(argv[2])!= 4 )
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.att_handle),(uint8_t *)&para.att_handle);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.offset),(uint8_t *)&para.offset);

        status = ble_gatt_4_8_3_read_long_char_value(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_long_char_value ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_multi(void *no, int argc, char** argv)
{
    GATT_4_8_4_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_multi \"set of characteristic handles (2~5)\"\n");
        printf("Syntax Example: read_multi 0001 0002\n");
        printf("Syntax Example: read_multi 0001 0002 0003\n");
        printf("Syntax Example: read_multi 0001 0002 0003 0004\n");
        printf("Syntax Example: read_multi 0001 0002 0003 0004 0005\n");

        return RET_SUCCESS;
    }

    if(argc>2 && argc<7)
    {
        uint8_t i;
        para.conn_handle = conn_handle;
        para.numofhandles = argc-1;

        for(i=0;i<para.numofhandles;i++)
        {
            if( strlen(argv[i+1])!= 4)
                return RET_INVALID_PARAM;

            strrev(AB_UTIL_Str2u8HexNumArray(argv[i+1],(uint8_t *)&para.att_handle[i]),(uint8_t *)&para.att_handle[i]);
        }

        status = ble_gatt_4_8_4_read_multi_char_values(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_multi_char_values ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_wwr(void *no, int argc, char** argv)
{
    GATT_4_9_1_PARA  *para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: wwr \"char handle\"  \"value array\"\n");
        printf("Syntax Example: wwr 003E 11223344\n");
        printf("------> write 4 bytes[11 22 33 44] to characteristic in 003E (server would not response this command.)\n\n");

        return RET_SUCCESS;
    }

    if(argc == 3)
    {
        uint16_t len;

        len = strlen(argv[2])/2;

        if(strlen(argv[1])>4  || len>512 )
            return RET_INVALID_PARAM;

        para = malloc(len+6);

        para->conn_handle = conn_handle;
        para->len = len;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1], (uint8_t *)&para->att_handle), (uint8_t *)&para->att_handle);
        AB_UTIL_Str2u8HexNumArray(argv[2], (uint8_t *)&para->data);

        status = ble_gatt_4_9_1_write_no_rsp(para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: write_no_rsp ====\n");

        free(para);

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_w_cv(void *no, int argc, char** argv)
{
    GATT_4_9_3_PARA  *para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: wcv \"char handle\"  \"value array\"\n");
        printf("Syntax Example: wcv 003E 48454C4C4F\n");
        printf("------> write 5 bytes[48 45 4C 4C 4F] to characteristic in 003E(server would response this request.)\n");
        printf("data would be truncated if PDU is longer then MTU size. \n\n");

        return RET_SUCCESS;
    }

    if(argc == 3)
    {
        uint16_t len;

        len = strlen(argv[2])/2;

        if(strlen(argv[1])>4 || len>512)
           return RET_INVALID_PARAM;

        para = malloc(len+6);

        para->conn_handle = conn_handle;
        para->len = len;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1], (uint8_t *)&para->att_handle), (uint8_t *)&para->att_handle);
        AB_UTIL_Str2u8HexNumArray(argv[2], (uint8_t *)&para->data);

        status = ble_gatt_4_9_3_write_char_value(para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: write_char_value ====\n");

        free(para);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

int cmd_w_lcv(void *no, int argc, char** argv)
{
    GATT_4_9_4_PARA  *para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: wlcv \"char handle\" \"value offset\" \"value array\"\n");
        printf("Syntax Example: wlcv 003E 3 48454C4C4F48454C4C4F48454C4C4F48454C4C4F48454C4C4F48454C4C4F\n");
        printf("------> write 30 bytes to characteristic in 003E from offset 3\n");

        return RET_SUCCESS;
    }

    if(argc == 4)
    {
        uint16_t len;
        uint32_t tmp;

        len = strlen(argv[3])/2;

        if(strlen(argv[1])>4 || len>512 || !AB_UTIL_Str2HexNum(argv[2],&tmp))
           return RET_INVALID_PARAM;

        para = malloc(len+8);

        para->conn_handle = conn_handle;
        para->len = len;
        para->offset = tmp;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1], (uint8_t *)&para->att_handle), (uint8_t *)&para->att_handle);
        AB_UTIL_Str2u8HexNumArray(argv[3], (uint8_t *)&para->data);

        status = ble_gatt_4_9_4_write_long_char_value(para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: write_long_char_value ====\n");

        free(para);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

int cmd_reli_w(void *no, int argc, char** argv)
{
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: rw \"NUM\" [\"char handle\" \"value offset\" \"value array\"]x NUM\n");
        printf("------> maximum NUM is 6. max length of each value array is 10. \n ");
        printf("Syntax Example: rw 3 003E 0 414243 003E 3 444546 003E 6 474849  \n");
        printf("------> write 3 times to 003E with offset 0,3,6 individually\n\n");

        return RET_SUCCESS;
    }

    if(argc <= 20)
    {
        GATT_4_9_5_PARA  para;
        uint32_t tmp;
        uint8_t i;

        if(!AB_UTIL_Str2HexNum(argv[1],&tmp) || tmp>6 || tmp==0)
            return RET_INVALID_PARAM;

        para.numofwrite = tmp;
        para.conn_handle = conn_handle;

        for(i=0;i<para.numofwrite;i++)
        {
            int len;

            len = strlen(argv[2+3*i+2])/2;

            if(strlen(argv[2+3*i])>4 || len>10 )
                   return RET_INVALID_PARAM;

            strrev(AB_UTIL_Str2u8HexNumArray(argv[2+3*i], (uint8_t *)&para.write[i].att_handle), (uint8_t *)&para.write[i].att_handle);
            AB_UTIL_Str2HexNum(argv[2+3*i+1],&tmp);
            para.write[i].offset = tmp;
            para.write[i].len = len;

            AB_UTIL_Str2u8HexNumArray(argv[2+3*i+2], (uint8_t *)&para.write[i].value);
        }

        status = ble_gatt_4_9_5_reliable_writes(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: reliable_writes ====\n");

        return RET_SUCCESS;
    }
   return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_desc(void *no, int argc, char** argv)
{
    GATT_4_12_1_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_desc \"attribute handle of descriptor value \"\n");
        printf("Syntax Example: read_desc 0005 \n");

        return RET_SUCCESS;
    }

    if(argc == 2)
    {
        para.conn_handle = conn_handle;

        if(strlen(argv[1])!= 4)
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.att_handle),(uint8_t *)&para.att_handle);

        status = ble_gatt_4_12_1_read_char_desc(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_char_desc ====\n");

        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

int cmd_read_longd(void *no, int argc, char** argv)
{
    GATT_4_12_2_PARA para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: read_longd \"attribute  handle of descriptor\" \"read offset\"\n");
        printf("Syntax Example: read_longd 003E 0000\n");

        return RET_SUCCESS;
    }
    if(argc == 3)
    {
        para.conn_handle = conn_handle;

        if( strlen(argv[1])!= 4 || strlen(argv[2])!= 4 )
            return RET_INVALID_PARAM;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1],(uint8_t *)&para.att_handle),(uint8_t *)&para.att_handle);
        strrev(AB_UTIL_Str2u8HexNumArray(argv[2],(uint8_t *)&para.offset),(uint8_t *)&para.offset);

        status = ble_gatt_4_12_2_read_long_char_desc(&para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: read_long_char_desc ====\n");

        return RET_SUCCESS;
    }
    return RET_WRONG_PRARM_NUMBER;
}

int cmd_w_cd(void *no, int argc, char** argv)
{
    GATT_4_12_3_PARA  *para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: wcd \"descriptor handle\"  \"value array\"\n");
        printf("Syntax Example: wcd 003E 48454C4C4F\n");
        printf("------> write 5 bytes[48 45 4C 4C 4F] to descriptor in 003E\n");
        printf("data would be truncated if PDU is longer then MTU size. \n\n ");

        return RET_SUCCESS;
    }

    if(argc == 3)
    {
        uint16_t len;

        len = strlen(argv[2])/2;

        if(strlen(argv[1])>4 || len>512)
           return RET_INVALID_PARAM;

        para = malloc(len+6);

        para->conn_handle = conn_handle;
        para->len = len;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1], (uint8_t *)&para->att_handle), (uint8_t *)&para->att_handle);
        AB_UTIL_Str2u8HexNumArray(argv[2], (uint8_t *)&para->data);

        status = ble_gatt_4_12_3_write_char_desc(para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: write_char_desc ====\n");

        free(para);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}


int cmd_w_lcd(void *no, int argc, char** argv)
{
    GATT_4_12_4_PARA  *para;
    GATT_STATUS status;

    __MACRO_CHECK_CONNECTION_STATE();

    if(argc == 1)
    {
        printf("Command Syntax: wlcd \"descriptor handle\" \"value offset\" \"value array\"\n");
        printf("Syntax Example: wlcd 003E 3 48454C4C4F48454C4C4F48454C4C4F48454C4C4F48454C4C4F48454C4C4F\n");
        printf("------> write 30 bytes to descriptor in 003E from offset 3\n");

        return RET_SUCCESS;
    }

    if(argc == 4)
    {
        uint16_t len;
        uint32_t tmp;

        len = strlen(argv[3])/2;

        if(strlen(argv[1])>4 || len>512 || !AB_UTIL_Str2HexNum(argv[2],&tmp))
           return RET_INVALID_PARAM;

        para = malloc(len+8);

        para->conn_handle = conn_handle;
        para->len = len;
        para->offset = tmp;

        strrev(AB_UTIL_Str2u8HexNumArray(argv[1], (uint8_t *)&para->att_handle), (uint8_t *)&para->att_handle);
        AB_UTIL_Str2u8HexNumArray(argv[3], (uint8_t *)&para->data);

        status = ble_gatt_4_12_4_write_long_char_desc(para);

        if(status)
            printf("\n==== Start GATT procedure failed, Reason: %s.\n", GATT_ERR_STATUS[status]);
        else
            printf("\n==== Start GATT procedure: write_long_char_desc ====\n");

        free(para);
        return RET_SUCCESS;
    }

    return RET_WRONG_PRARM_NUMBER;
}

void _parse_complete(void)
{
    printf("parse complete!!!\n");
    is_parsing = false;
    server_cached = true;
}

void _free_server_cache(void)
{
    uint8_t i,j;

    for(i=0;i<server.nos;i++)
    {
        for(j=0;j<server.s[i].noc;j++)
        {
            if(server.s[i].c[j].nod)
            {
                free(server.s[i].c[j].d);
                server.s[i].c[j].d = NULL;
                server.s[i].c[j].nod = 0;
            }
        }
        if(server.s[i].noc)
        {
            free(server.s[i].c);
            server.s[i].c = NULL;
            server.s[i].noc = 0;
        }
    }

    if(server.nos)
    {
        free(server.s);
        server.s = NULL;
        server.nos = 0;
    }
}

int cmd_free(void *no, int argc, char** argv)
{

    if(server_cached)
    {
        _free_server_cache();
        server_cached = false;
        printf("server cache cleared!! \n");
    }

    return RET_SUCCESS;
}

int cmd_parse(void *no, int argc, char** argv)
{
    if(is_parsing)
    {
        printf("Already parsing!! \n");
        return RET_SUCCESS;
    }
    else
    {
        GATT_4_4_1_PARA para;

        __MACRO_CHECK_CONNECTION_STATE();

        if(server_cached)
        {
            _free_server_cache();
            server_cached = false;
        }


        para.conn_handle = conn_handle;

        is_parsing = true;
        memset(&ps,0, sizeof(ps));

        ble_gatt_4_4_1_disc_all_primary_services(&para);

        return RET_SUCCESS;

    }
}

int cmd_show(void *no, int argc, char** argv)
{
    if(is_parsing)
    {
        printf("\n\nCan not show attribute database right now since parser is still busy!\n\n");
        return RET_SUCCESS;
    }


    show_server = true;

    return RET_SUCCESS;
}

console_cmds_t cmds[] =
{
    {"log"              , cmd_log,              NULL},
    {"adve"             , cmd_adv_enable,       NULL},
    {"advd"             , cmd_adv_disable,      NULL},
    {"scane"            , cmd_scan_enable,      NULL},
    {"scand"            , cmd_scan_disable,     NULL},
    {"connect"          , cmd_connect,          NULL},
    {"cancel"           , cmd_cancel,           NULL},
    {"mtu"              , cmd_mtu,              NULL},
    {"disc_alls"        , cmd_disc_alls,        NULL},
    {"disc_suuid"       , cmd_disc_suuid,       NULL},
    {"find_inc"         , cmd_find_inc,         NULL},
    {"disc_allc"        , cmd_disc_allc,        NULL},
    {"disc_cuuid"       , cmd_disc_cuuid,       NULL},
    {"disc_desc"        , cmd_disc_desc,        NULL},
    {"read_cvalue"      , cmd_read_cvalue,      NULL},
    {"read_cuuid"       , cmd_read_cuuid,       NULL},
    {"read_longc"       , cmd_read_longc,       NULL},
    {"read_multi"       , cmd_read_multi,       NULL},
    {"wwr"              , cmd_wwr,              NULL},
    {"wcv"              , cmd_w_cv,             NULL},
    {"wlcv"             , cmd_w_lcv,            NULL},
    {"rw"               , cmd_reli_w,           NULL},
    {"read_desc"        , cmd_read_desc,        NULL},
    {"read_longd"       , cmd_read_longd,       NULL},
    {"wcd"              , cmd_w_cd,             NULL},
    {"wlcd"             , cmd_w_lcd,            NULL},
    {"parse"            , cmd_parse,            NULL},
    {"show"             , cmd_show,             NULL},
    {"free"             , cmd_free,             NULL},

    {NULL, NULL, NULL}
};

const bsp_generic_ex_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, 3000000L, (console_cmds_t*)cmds, "Gatt Client> "};


static void ble_set_adv_data_cb(bool isuccess, uint8_t err_code)
{

    ble_gap_adv_params parm =
    {
        .ad_type = ble_ad_type_ind,
        .peer_addr = NULL,
        .self_addr_type = ble_addr_type_public,
        .filter = ble_filter_any,
        .min_interval = 0x0020,
        .max_interval = 0x0040,
        .channel_mask = 0x7,
    };

    //start adv
    ble_gap_adv_start(&parm, ble_adv_enable_cb);

}

static void ble_set_adv_data(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] =
    {
        0x02, 0x01, 0x05,
        0x03, 0x02, 0x0F, 0x18,
    };

    ble_gap_adv_data_set(ad, sizeof(ad), ble_set_adv_data_cb);

}


static void set_pub_addr_cb(bool isuccess, uint8_t err_code)
{
    uint8_t ad[] = {
        0x0B, 0x09, 'G' , 'a' , 't' , 't', 'C', 'l', 'i', 'e', 'n', 't'
    };

    ble_gap_scan_data_set(ad, sizeof(ad), ble_set_adv_data);
}


static void bt_inited_handler(bt_evt_t *evt)
{
    if(evt->evt.misc_evt.param.inited.is_success)
    {
        ble_addr_t addr;

        addr.addr_type = ble_addr_type_public;

        memcpy(addr.addr, "\xCC\xCC\xCC\xCC\xFF\xFF", 6);

        ble_gap_address_set(&addr, set_pub_addr_cb);
        printf("BTinited\n");
    }
}

static void bt_connected_handler(bt_evt_t *evt)
{
    if(evt->evt.gap_evt.params.connected.status)
        return;

    conn_handle = evt->evt.gap_evt.params.connected.conn_handle;
    printf("connection handle: %04X connected.\n", conn_handle);
}

static void bt_disconnected_handler(bt_evt_t *evt)
{
    printf("connection handle: %04X disconnected.\n", conn_handle);
    conn_handle = 0;
}

static void bt_print_adv_report(bt_evt_t *evt)
{
    ble_gap_evt_adv_report_t *report;
    uint8_t i;
    uint16_t j;

    report = &evt->evt.gap_evt.params.adv_report;

    printf("\n============================================================================\n");
    switch(report->type)
    {
        case ble_report_type_ind:
            printf("conn undirect:");
            break;
        case ble_report_type_direct_ind:
            printf("direct:");
            break;
        case ble_report_type_scan_ind:
            printf("scan undirect:");
            break;
        case ble_report_type_nonconn_ind:
            printf("nonconn undirect:");
            break;
        case ble_report_type_scan_rsp:
            printf("scan resp:");
            break;
    }

    printf("(%d)\n", report->rssi);

    for(i = 0; i < 5; i++)
        printf("%02X:", report->peer_addr.addr[i]);
    printf("%02X", report->peer_addr.addr[5]);

    switch(report->peer_addr.addr_type)
    {
        case ble_addr_type_public:
            printf("(PDA)  |");
            break;
        case ble_addr_type_random_static:
            printf("(RDA)  |");
            break;
        case ble_addr_type_random_resolvable:
            printf("(PID)  |");
            break;
        case ble_addr_type_random_non_resolvable:
            printf("(RID)  |");
        break;
    }

    for(j=0;j<report->dlen;j+=report->data[j]+1)
    {
        if(report->data[j+1] == 0x09) //device name
        {
            printf("  (Device Name:");

            for(i = 0; i < report->data[j]-1; i++)
                printf("%c", report->data[i+j+2]);

            printf(")\n");

            break;
        }
    }

    /*
    for(i = 0; i < report->dlen; i++)
        printf("%02X", report->data[i]);

    printf("\n============================================================================\n");
    */
}

void UNEXPECTED_RESPONSE_evt_hdl(bt_evt_t *evt)
{
    ANSI_SGR(FOREGROUND+RED);
    printf("GATT procedure ended due to unexpected response by slave.\n");
    ANSI_SGR(NORMAL);
}

char* error_ary[] =
{
    "ATT_NOERR                     ",
    "ATT_ERR_INVALID_HANDLE        ",
    "ATT_ERR_READ_NOT_PERMITTED    ",
    "ATT_ERR_WRITE_NOT_PERMITTED   ",
    "ATT_ERR_INVALID_PDU           ",
    "ATT_ERR_INSUFFICIENT_AUTHEN   ",
    "ATT_ERR_UNSUPPORTED_REQ       ",
    "ATT_ERR_INVALID_OFFSET        ",
    "ATT_ERR_INSUFFICIENT_AUTHOR   ",
    "ATT_ERR_PREPARE_QUEUE_FULL    ",
    "ATT_ERR_ATTR_NOT_FOUND        ",
    "ATT_ERR_ATTR_NOT_LONG         ",
    "ATT_ERR_INSUFFICIENT_KEY_SIZE ",
    "ATT_ERR_INVALID_VALUE_LENGTH  ",
    "ATT_ERR_UNLIKELY              ",
    "ATT_ERR_INSUFFICIENT_ENCRYPT  ",
    "ATT_ERR_UNSUPPORTED_GRP_TYPE  ",
    "ATT_ERR_INSUFFICIENT_RESOURCES",
};

void GET_ERROR_RESPONSE_FROM_SERVER_evt_hdl(bt_evt_t *evt)
{
    ANSI_SGR(FOREGROUND+RED);
    printf("GATT procedure error. Reason: [%s] \n", error_ary[evt->evt.gatt_evt.gatt.err_response.err_code]);
    ANSI_SGR(NORMAL);
}

void MTU_EXCHANGED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_mtu_exchange_t * p = &evt->evt.gatt_evt.gatt.mtu_exchanged;

    printf("mtu has been changed to %d.\n",p->new_mtu);

}

void PRIM_SERVICE_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i, j;
    ble_gatt_evt_prim_service_discovered_t * p = &evt->evt.gatt_evt.gatt.prim_service_discovered;

    printf("%d services found!!\n",p->num);

    for(i=0;i<p->num;i++)
    {
        printf("\nService%2d: start= %04X, end= %04X, UUID = ",i+1 , p->service[i].handle_start, p->service[i].handle_end);

        for(j=p->service[i].uuid_len;j>0;j--)
        {
            printf("%02X",p->service[i].uuid[j-1]);
        }
    }
    printf("\n");


    if(is_parsing)
    {

        server.nos = p->num;
        server.s = malloc(sizeof(service_t)*p->num);

        for(i=0;i<p->num;i++)
        {
            server.s[i].start = p->service[i].handle_start;
            server.s[i].end = p->service[i].handle_end;

            server.s[i].uuid_len = p->service[i].uuid_len;
            memcpy(server.s[i].uuid, p->service[i].uuid, server.s[i].uuid_len);
        }


        if(1)
        {
            GATT_4_6_1_PARA para;

            para.conn_handle = conn_handle;
            para.start = server.s[0].start;
            para.end   = server.s[0].end;

            ble_gatt_4_6_1_disc_all_chars(&para);
        }

    }
}

void UUID_SERVICE_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_uuid_service_discovered_t * p = &evt->evt.gatt_evt.gatt.uuid_service_discovered;

    printf("Found %d service with UUID = ",p->num);

    for(i=p->uuid_len; i>0; i--)
        printf("%02X",p->uuid[i-1]);

    for(i=0;i<p->num;i++)
    {
        printf("\nService%2d: start= %04X, end= %04X",i+1 , p->service[i].handle_start, p->service[i].handle_end);
    }
    printf("\n");
}

void INCLUDED_SERVICE_FOUND_evt_hdl(bt_evt_t *evt)
{
    uint8_t i,j;
    ble_gatt_evt_included_service_found_t * p = &evt->evt.gatt_evt.gatt.included_service_found;

    printf("Found %d included service.\n",p->num);

    for(i=0; i<p->num; i++)
    {
        printf("\n\nInclude %2d handle= %04X service start= %04X, service end= %04X",i+1 , p->include[i].handle, p->include[i].service_start, p->include[i].service_end);
        printf("\n    Service UUID = ");

        for(j=p->include[i].service_uuid_len; j>0; j--)
            printf("%02X",p->include[i].service_uuid[j-1]);
    }
    printf("\n");

}

void _print_char_property(uint8_t property)
{
    printf("[ ");

    if(property & 0x01)
        printf("Broadcast|");
    if(property & 0x02)
        printf("Read|");
    if(property & 0x04)
        printf("WriteNoRsp|");
    if(property & 0x08)
        printf("Write|");
    if(property & 0x10)
        printf("Notify|");
    if(property & 0x20)
        printf("Indicate|");
    if(property & 0x40)
        printf("SignWrite|");
    if(property & 0x80)
        printf("ExProperty|");

    printf("\b ]");
}

void SERVICE_CHAR_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i,j;
    ble_gatt_evt_service_char_discovered_t * p = &evt->evt.gatt_evt.gatt.service_char_discovered;

    printf("Found %d characteristics.\n",p->num);

    for(i=0; i<p->num; i++)
    {
        printf("\n\n\%2d: Characteristic declaration handle= %04X, Characteristic value handle = %04X",i+1 , p->charact[i].declaration_handle, p->charact[i].value_handle);
        printf("\n    Characteristic UUID = ");

        for(j=p->charact[i].uuid_len; j>0; j--)
            printf("%02X",p->charact[i].uuid[j-1]);
        printf("\n    Characteristic Property = ");
        _print_char_property(p->charact[i].property);
    }
    printf("\n");

    if(is_parsing)
    {
        server.s[ps.s].noc = p->num;
        server.s[ps.s].c = malloc(sizeof(charact_t)*p->num);

        for(i=0; i<p->num; i++)
        {
            server.s[ps.s].c[i].nod     = 0;
            server.s[ps.s].c[i].dhandle = p->charact[i].declaration_handle;
            server.s[ps.s].c[i].vhandle = p->charact[i].value_handle;
            server.s[ps.s].c[i].property= p->charact[i].property;
            server.s[ps.s].c[i].uuid_len= p->charact[i].uuid_len;
            memcpy(server.s[ps.s].c[i].uuid,p->charact[i].uuid,p->charact[i].uuid_len);
        }

        ps.s++;

        if(ps.s < server.nos)
        {
            GATT_4_6_1_PARA para;

            para.conn_handle = conn_handle;
            para.start = server.s[ps.s].start;
            para.end   = server.s[ps.s].end;

            ble_gatt_4_6_1_disc_all_chars(&para);
        }
        else    // already parsed all characteristics, start parsing descriptors of each characteristic
        {
            uint8_t i,j;

            for(i=0; i<server.nos; i++)
            {
                for(j=0; j<server.s[i].noc; j++)
                {
                    uint16_t char_end;

                    if(j != server.s[i].noc -1)
                        char_end = server.s[i].c[j+1].dhandle -1;
                    else
                        char_end = (i != server.nos-1)? server.s[i+1].start-1 : 0xFFFF;

                    if(char_end != server.s[i].c[j].vhandle)
                    {
                        GATT_4_7_1_PARA para;

                        ps.s = i;
                        ps.c = j;

                        para.conn_handle = conn_handle;
                        para.start = server.s[i].c[j].vhandle+1;
                        para.end   = char_end;
                        para.max_pair = para.end - para.start+1;

                        ble_gatt_4_7_1_disc_all_char_descs(&para);
                        return;
                    }
                }
            }
            _parse_complete();
        }
    }
}
void UUID_CHAR_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i,j;
    ble_gatt_evt_uuid_char_discovered_t * p = &evt->evt.gatt_evt.gatt.uuid_char_discovered;

    printf("Found %d characteristics with UUID = ",p->num);

    for(j=p->uuid_len; j>0; j--)
        printf("%02X",p->uuid[j-1]);

    for(i=0; i<p->num; i++)
    {
        printf("\n\n\%2d: Characteristic declaration handle= %04X, Characteristic value handle = %04X",i+1 , p->charact[i].declaration_handle, p->charact[i].value_handle);
        printf("\n    Characteristic property = ");

        if(p->charact[i].property & 0x01)
            printf("Broadcast |");
        if(p->charact[i].property & 0x02)
            printf("    Read  |");
        if(p->charact[i].property & 0x04)
            printf("WriteNoRsp|");
        if(p->charact[i].property & 0x08)
            printf("   Write  |");
        if(p->charact[i].property & 0x10)
            printf("  Notify  |");
        if(p->charact[i].property & 0x20)
            printf(" Indicate |");
        if(p->charact[i].property & 0x40)
            printf(" SignWrite|");
        if(p->charact[i].property & 0x80)
            printf("ExProperty|");
    }
    printf("\n");
}

void CHAR_DESCRIP_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i,j;
    ble_gatt_evt_char_descrip_discovered_t * p = &evt->evt.gatt_evt.gatt.char_descrip_discovered;

    printf("Found %d Attributes:\n", p->num);

    for(i=0; i<p->num; i++)
    {
        printf("\n\%2d: Attribute handle= %04X, UUID= ",i+1, p->descrip[i].handle);

        for(j=p->descrip[i].uuid_len; j>0; j--)
            printf("%02X",p->descrip[i].uuid[j-1]);
    }
    printf("\n");

    if(is_parsing)
    {
        server.s[ps.s].c[ps.c].nod = p->num;
        server.s[ps.s].c[ps.c].d = malloc(sizeof(desprip_t)*p->num);

        for(i=0;i<p->num;i++)
        {
            server.s[ps.s].c[ps.c].d[i].handle   = p->descrip[i].handle;
            server.s[ps.s].c[ps.c].d[i].uuid_len = p->descrip[i].uuid_len;
            memcpy(server.s[ps.s].c[ps.c].d[i].uuid, p->descrip[i].uuid, p->descrip[i].uuid_len);
        }

        ps.c++;

        for(i=ps.s; i<server.nos; i++)
        {
            for(j=ps.c; j<server.s[i].noc; j++)
            {
                uint16_t char_end;

                if(j != server.s[i].noc -1)
                    char_end = server.s[i].c[j+1].dhandle -1;
                else
                    char_end = (i != server.nos-1)? server.s[i+1].start-1 : 0xFFFF;

                if(char_end != server.s[i].c[j].vhandle)
                {
                    GATT_4_7_1_PARA para;

                    ps.s = i;
                    ps.c = j;

                    para.conn_handle = conn_handle;
                    para.start = server.s[i].c[j].vhandle+1;
                    para.end   = char_end;
                    para.max_pair = para.end - para.start+1;

                    ble_gatt_4_7_1_disc_all_char_descs(&para);
                    return;
                }
            }

            ps.c = 0;
        }
        _parse_complete();

    }
}

void CHAR_VALUE_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_value_read_t * p = &evt->evt.gatt_evt.gatt.char_value_read;
    printf("Characteristic Value of Handle %04X has been read: \n\n Value =  Hex                           ASCII printable characters\n\n", p->handle);

    AB_Log_HexDisplay(10,p->value,p->len,NULL);

    printf("\n\n");
}

void UUID_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    uint8_t i,j;
    ble_gatt_evt_uuid_char_read_t * p = &evt->evt.gatt_evt.gatt.uuid_char_read;

    printf("%d characteristics with UUID = ",p->num);

    for(j=p->uuid_len; j>0; j--)
        printf("%02X",p->uuid[j-1]);

    printf(" has been read.\n");

    for(i=0; i<p->num; i++)
    {
        printf("-----\n%2d.\nHandle = %04X \n Value =  Hex                           ASCII printable characters\n",i+1, p->charact[i].handle);

        AB_Log_HexDisplay(10,p->charact[i].value,p->charact[i].len,NULL);
    }
    printf("\n");
}

void LONG_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_char_read_t * p = &evt->evt.gatt_evt.gatt.long_char_read;

    printf("long characteristic with attribute handle = %04X has been read\n",p->handle);

    printf("-----\n Value =  Hex                           ASCII printable characters\n");

    AB_Log_HexDisplay(10,p->value, p->len, NULL);

    printf("-----\n");

}
void MULTI_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_multi_char_read_t * p = &evt->evt.gatt_evt.gatt.multi_char_read;

    printf("Multiple characteristics with attribute handle ");

    for(i=0;i< p->num; i++)
        printf("[%04X] ",p->handle[i]);

    printf(" has been read.\n");

    printf("-----\n Packed Value:\n Hex                           ASCII printable characters\n");

    AB_Log_HexDisplay(1,p->value, p->len, NULL);

    printf("-----\n");
}

//void WWR_FINISHED_evt_hdl(bt_evt_t *evt){}
void CHAR_VALUE_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_value_written_t * p = &evt->evt.gatt_evt.gatt.char_value_written;

    printf("Characteristic value with attribute handle %04X has been written successfully. \n------\n",p->handle);
}


void LONG_CHAR_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_char_written_t * p = &evt->evt.gatt_evt.gatt.long_char_written;

    printf("%d bytes has been written to characteristic in handle[%04X] successfully. \n------\n",p->len,p->handle);
}

void RELIABLE_WRITE_FINISHED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_reliable_write_finished_t * p = &evt->evt.gatt_evt.gatt.reliable_write_finished;

    if(p->is_cancelled)
    {
        printf("Reliable write failed during write number %d .\n------\n",p->num+1);
    }
    else
    {
        printf("All %d reliable write executed successfully.\n------\n",p->num);
    }
}

void CHAR_DESCRIP_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_descrip_read_t * p = &evt->evt.gatt_evt.gatt.char_descrip_read;
    printf("Descriptor Value of Handle %04X has been read: \n\n Value =  Hex                           ASCII printable characters\n\n", p->handle);

    AB_Log_HexDisplay(10,p->value,p->len,NULL);

    printf("\n\n");
}

void LONG_DESCRIP_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_descrip_read_t * p = &evt->evt.gatt_evt.gatt.long_descrip_read;

    printf("long descriptor with attribute handle = %04X has been read\n",p->handle);

    printf("-----\n Value =  Hex                           ASCII printable characters\n");

    AB_Log_HexDisplay(10,p->value, p->len, NULL);

    printf("-----\n");
}

void CHAR_DESCRIP_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_descrip_written_t * p = &evt->evt.gatt_evt.gatt.char_descrip_written;

    printf("Descriptor value with attribute handle %04X has been written successfully. \n------\n",p->handle);
}

void LONG_DESCRIP_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_descrip_written_t * p = &evt->evt.gatt_evt.gatt.long_descrip_written;

    printf("%d bytes has been written to descriptor in handle[%04X] successfully. \n------\n",p->len,p->handle);
}

void HANDLE_VALUE_REPORTED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_handle_value_reported_t *p = &evt->evt.gatt_evt.gatt.handle_value_reported;

    printf("get value report from connection handle: %04X / attribute handle: %04X \n", p->conn_handle, p->handle);

    printf("-----\n Value =  Hex                           ASCII printable characters\n");

    AB_Log_HexDisplay(10,p->value, p->len, NULL);

    printf("-----\n");
}

static void sm_set_security_param(void)
{
    ble_sm_security_param_t sm_param =
    {
        SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
        SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
        SM_NO_BONDING,//SM_BONDING,                     //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
        16,                             //uint8_t encKeySize;
        0,//0x03,                           //uint8_t keyDistr;
        0,//0x07,                           //uint8_t respKeyDistr;
    };

    BLE_gap_sm_set_security_param(conn_handle, BLE_SM_STATUS_SUCCESS, &sm_param);
}

void bt_evt_hdl(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
            bt_inited_handler(evt);
            break;
        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
            sm_set_security_param();
            break;
        case BLE_GAP_EVT_CONNECTED:
            bt_connected_handler(evt);
            break;
        case BLE_GAP_EVT_DISCONNECTED:
            bt_disconnected_handler(evt);
            break;
        case BLE_GAP_EVT_ADV_REPORT:
            bt_print_adv_report(evt);
            break;
        case BLE_GATT_EVT_UNEXPECTED_RESPONSE_FROM_SERVER:
            UNEXPECTED_RESPONSE_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_GET_ERROR_RESPONSE_FROM_SERVER:
            GET_ERROR_RESPONSE_FROM_SERVER_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_MTU_EXCHANGED:
            MTU_EXCHANGED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_PRIM_SERVICE_DISCOVERED:
            PRIM_SERVICE_DISCOVERED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_UUID_SERVICE_DISCOVERED:
            UUID_SERVICE_DISCOVERED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_INCLUDED_SERVICE_FOUND:
            INCLUDED_SERVICE_FOUND_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_SERVICE_CHAR_DISCOVERED:
            SERVICE_CHAR_DISCOVERED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_UUID_CHAR_DISCOVERED:
            UUID_CHAR_DISCOVERED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_CHAR_DESCRIP_DISCOVERED:
            CHAR_DESCRIP_DISCOVERED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_CHAR_VALUE_READ:
            CHAR_VALUE_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_UUID_CHAR_READ:
            UUID_CHAR_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_LONG_CHAR_READ:
            LONG_CHAR_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_MULTI_CHAR_READ:
            MULTI_CHAR_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_CHAR_VALUE_WRITTEN:
            CHAR_VALUE_WRITTEN_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_LONG_CHAR_WRITTEN:
            LONG_CHAR_WRITTEN_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_RELIABLE_WRITE_FINISHED:
            RELIABLE_WRITE_FINISHED_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_CHAR_DESCRIP_READ:
            CHAR_DESCRIP_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_LONG_DESCRIP_READ:
            LONG_DESCRIP_READ_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_CHAR_DESCRIP_WRITTEN:
            CHAR_DESCRIP_WRITTEN_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_LONG_DESCRIP_WRITTEN:
            LONG_DESCRIP_WRITTEN_evt_hdl(evt);
            break;
        case BLE_GATT_EVT_HANDLE_VALUE_REPORTED:
            HANDLE_VALUE_REPORTED_evt_hdl(evt);
            break;
    }
}

void print_server(void)
{

    uint8_t i,j,k,u;

    printf("\n*******************  Target attribute database  **********************\n");
    printf("\n Attribute  Type     | Handle | UUID    | Information\n");

    for(i=0;i<server.nos;i++)
    {
        ANSI_SGR(FOREGROUND+MAGENTA);

        printf("\n Service             | %04X   | 2800    ",server.s[i].start);

        ANSI_SGR(FOREGROUND+RED);
        printf("[ Service UUID: ");
        for(u=server.s[i].uuid_len;u>0;u--)
            printf("%02X",server.s[i].uuid[u-1]);
        printf(" ]");

        ANSI_SGR(NORMAL);

        for(j=0;j<server.s[i].noc;j++)
        {
            ANSI_SGR(FOREGROUND+CYAN);
            printf("\n    Characteristic D | %04X   | 2803    ",server.s[i].c[j].dhandle);

            ANSI_SGR(FOREGROUND+BLUE);
            _print_char_property(server.s[i].c[j].property);
            ANSI_SGR(FOREGROUND+BROWN);

            printf("\n    Characteristic V | %04X   | ",server.s[i].c[j].vhandle);

            for(u=server.s[i].c[j].uuid_len;u>0;u--)
                printf("%02X",server.s[i].c[j].uuid[u-1]);
            for(k=0;k<server.s[i].c[j].nod;k++)
            {
                ANSI_SGR(FOREGROUND+GREEN);
                printf("\n        Descriptor   | %04X   | ",server.s[i].c[j].d[k].handle);


                for(u=server.s[i].c[j].d[k].uuid_len;u>0;u--)
                    printf("%02X",server.s[i].c[j].d[k].uuid[u-1]);

            }
        }

        ANSI_SGR(NORMAL);

    }

    printf("\n*******************  Target attribute database  **********************\n");

    show_server = false;
}

static uint8_t data_in1[66];
static uint8_t data_in2[66];

void cb1(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    uint16_t len,i;
    len = BLE_att_get_attribute_length(handle);

    printf("\nprovision data call back.\n");
    for(i=0;i<len;i++)
    {
        printf("%X ",data_in1[i]);
    }
    printf("\nprovision data in has been written %d byte(s)\n.",len);

}

void cb2(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    uint16_t len,i;
    len = BLE_att_get_attribute_length(handle);

    printf("\nproxy data call back.\n");
    for(i=0;i<len;i++)
    {
        printf("%X ",data_in2[i]);
    }
    printf("\nproxy data in has been written %d byte(s)\n.",len);
}

/*clock*/
bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M,
    .isrc = true
};

/*printf*/
bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins,
};

/*console*/
bsp_console_parm consol_parm =
{
    .uart_port = uart1_ins,
    .tbl = cmds,
    .prompt = "Gatt Client> ",
};
/*bt*/
bsp_bt_parm bt_parm =
{
   .event_handler = bt_evt_hdl,
   .log_level =  BT_LOG_HCI_CMD | BT_LOG_HCI_EVT,
   .is_uart_hci_mode = false
};

/*uart*/
bsp_uart_parm uart_parm =
{
    .uart1_baud = 3000000L,
};


bsp_generic_ex2_parm bsp_parm=
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,
    .printf_parm    = (bsp_printf_parm*)&printf_parm,
    .console_parm   = (bsp_console_parm*)&consol_parm,
    .bt_parm        = (bsp_bt_parm*)    &bt_parm,
    .uart_parm      = (bsp_uart_parm*)  &uart_parm,
};


void main()
{
/*
    MP_PARAMETER_STRU *mp_data;
    CFG_PARAMETER_STRU *cfg_data;
    void *bt_data[2];

    mp_data = AB_SECTOR_GetMpParameter(true);
    cfg_data = AB_SECTOR_GetCfgParameter();
    
    bt_data[0] =  mp_data ? &mp_data->ADie : NULL;//mp data
    bt_data[1] =  cfg_data ? &cfg_data->ADie : NULL;//init data
*/
    //AB_BSP_init_with_console(&bsp_init_parm);

    AB_BSP_initEx(&bsp_parm);

    BAS_init(1);

    if(1)
    {

        mesh_init_para para1 = {data_in1,cb1};
        mesh_init_para para2 = {data_in2,cb2};

        MESH_provision_service_init(&para1);
        MESH_proxy_service_init(&para2);
    }

    printf("\n==============Gatt Client tester================\n");
    
    //BT_InitEx2(bt_evt_hdl, bt_data, 2, BT_LOG_HCI_CMD /*| BT_LOG_HCI_EVT|BT_LOG_HCI_TXDAT*/);



    while(1)
    {
        if(show_server)
            print_server();
    }
}

/*!
      \endcode
*/

