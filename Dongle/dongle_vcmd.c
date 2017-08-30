/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab_log.h"
#include "ab_airoha_vcmd.h"
#include "dongle_vcmd_gap.h"
#include "dongle_vcmd_sip.h"
#include "dongle_vcmd_gatt.h"
#include "dongle_vcmd_sm.h"
#include "ab_uart.h"

/******************************************************************************/
/* typedef                                                                    */
/******************************************************************************/
#define PACKET_TYPE_EVT 0x4

typedef struct
{
    uint8_t ocf;
    VCMD_ERROR_CODE (*handler) (vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen);
}VCMD_ENTRY;

typedef struct
{
    uint8_t ogf;
    uint8_t size;
    VCMD_ENTRY *handlers;
}VCMD_ENTRIES;

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/

const VCMD_ENTRY vcmd_gap_handlers[] =
{
    {OCF_GAP_BT_LOG_ENABLE,     dongle_vcmd_BtLogEnable},
    {OCF_GAP_BT_ADV_DATA_SET,   dongle_vcmd_GapSetAdvData},
    {OCF_GAP_BT_SCAN_DATA_SET,  dongle_vcmd_GapSetScanData},
    {OCF_GAP_ADV_START,         dongle_vcmd_GapAdvStart},
    {OCF_GAP_ADV_STOP,          dongle_vcmd_GapAdvStop},
    {OCF_GAP_ADDR_SET,          dongle_vcmd_GapAddrSet},
    {OCF_GAP_PUB_ADDR_GET,      dongle_vcmd_GapPubAddrGet},    
    {OCF_GAP_RAND_ADDR_GET,     dongle_vcmd_GapRandAddrGet},  
    {OCF_GAP_DISCONNECT,        dongle_vcmd_GapDisconnect},     
    {OCF_GAP_TX_PWR_SET,        dongle_vcmd_GapTxPowrSet},     
    {OCF_GAP_SCAN_START,        dongle_vcmd_GapScanStart},     
    {OCF_GAP_SCAN_STOP,         dongle_vcmd_GapScanStop},      
    {OCF_GAP_START_ENCRYPT,     dongle_vcmd_GapStartEncrypt},   
    {OCF_GAP_CONN_PARM_UPDATE,  dongle_vcmd_GapConnectionParamUpdate},
    {OCF_GAP_CONNECT,           dongle_vcmd_GapConnect},        
    {OCF_GAP_CONNECT_CANCEL,    dongle_vcmd_GapConnectCancel},
    {OCF_GAP_READ_REMOTE_VERSION, dongle_vcmd_GapReadRemoteVersion}
};

const VCMD_ENTRY vcmd_sip_handlers[] =
{
    {OCF_SIP_SET_SOFT_RESET, dongle_vcmd_SipSoftReset},
    {OCF_SIP_SET_UART_BAUDRATE, dongle_vcmd_SipSetUartBaudrate},
    {OCF_SIP_SET_CONNECTION_INTERVAL, dongle_vcmd_SipSetConnectionInterval},
    {OCF_SIP_RENAME_MODULE, dongle_vcmd_SipRenameModule},
    {OCF_SIP_GET_MAC_ADDRESS, dongle_vcmd_SipGetMacAddress},
    {OCF_SIP_SET_ADV_INTERVAL, dongle_vcmd_SipSetAdvInterval},
    {OCF_SIP_SET_ADV_DATA, dongle_vcmd_SipSetAdvData},
    {OCF_SIP_SET_TX_POWER, dongle_vcmd_SipSetTxPower},
    {OCF_SIP_SET_ADV_ENABLE, dongle_vcmd_SipSetAdvEnable},
    {OCF_SIP_SET_CONNECT_ENABLE, dongle_vcmd_SipSetConnectionEnable},
};

const VCMD_ENTRY vcmd_gatt_handlers[] =
{
    {OCF_GATT_EXCHANGE_MTU               ,dongle_vcmd_exchange_mtu},
    {OCF_GATT_DISC_ALL_PRIM_SERVICES     ,dongle_vcmd_disc_all_primary_services},
    {OCF_GATT_DISC_PRIM_SERVICES_BY_UUID ,dongle_vcmd_disc_primary_service_by_UUID},
    {OCF_GATT_FIND_INCLUDED_SERVICES     ,dongle_vcmd_find_included_services},
    {OCF_GATT_DISC_ALL_CHARS             ,dongle_vcmd_disc_all_chars},
    {OCF_GATT_DISC_CHARS_BY_UUID         ,dongle_vcmd_disc_chars_by_UUID},
    {OCF_GATT_DISC_ALL_CHAR_DESCS        ,dongle_vcmd_disc_all_char_descs},
    {OCF_GATT_READ_CHAR_VALUE            ,dongle_vcmd_read_char_value},
    {OCF_GATT_READ_USING_CHAR_UUID       ,dongle_vcmd_read_using_char_UUID},
    {OCF_GATT_READ_LONG_CHAR_VALUE       ,dongle_vcmd_read_long_char_value},
    {OCF_GATT_READ_MULTI_CHAR_VALUES     ,dongle_vcmd_read_multi_char_values},
    {OCF_GATT_WRITE_NO_RSP               ,dongle_vcmd_write_no_rsp},
    {OCF_GATT_WRITE_CHAR_VALUE           ,dongle_vcmd_write_char_value},
    {OCF_GATT_WRITE_LONG_CHAR_VALUE      ,dongle_vcmd_write_long_char_value},
    {OCF_GATT_RELIABLE_WRITES            ,dongle_vcmd_reliable_writes},
    {OCF_GATT_READ_CHAR_DESC             ,dongle_vcmd_read_char_desc},
    {OCF_GATT_READ_LONG_CHAR_DESC        ,dongle_vcmd_read_long_char_desc},
    {OCF_GATT_WRITE_CHAR_DESC            ,dongle_vcmd_write_char_desc},
    {OCF_GATT_WRITE_LONG_CHAR_DESC       ,dongle_vcmd_write_long_char_desc},
};

const VCMD_ENTRY vcmd_sm_handlers[] =
{
    {OCF_SM_PAIRINGREQUEST            ,dongle_vcmd_SmAuthenticate},
    {OCF_SM_SECURITYREQUEST           ,dongle_vcmd_SmAuthenticate},
    {OCF_SM_SETSECURITYPARAM          ,dongle_vcmd_SmSetSecurityParam},    
    {OCF_SM_PASSKEYRESPONSE           ,dongle_vcmd_SmPasskeyResponse},
    {OCF_SM_OOBDATARESPONSE           ,dongle_vcmd_SmOobDataResponse},
    {OCF_SM_NUMERICCOMPARISONCONFIRM  ,dongle_vcmd_SmNumericComparisonConfirm},
    {OCF_SM_GETLTK                    ,dongle_vcmd_SmGetLTK},
    {OCF_SM_GETPEERLTK                ,dongle_vcmd_SmGetPeerLTK},
    {OCF_SM_CLEARBONDINGLIST          ,dongle_vcmd_SmClearBondingList},    
};

const VCMD_ENTRIES vcmd_handlers[] =
{
    {OGF_SIP, sizeof(vcmd_sip_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_sip_handlers[0]},
    {OGF_GAP, sizeof(vcmd_gap_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_gap_handlers[0]},
    {OGF_GATT, sizeof(vcmd_gatt_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_gatt_handlers[0]},
    {OGF_SM, sizeof(vcmd_sm_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_sm_handlers[0]},
};

/******************************************************************************/
/* Static                                                                     */
/******************************************************************************/
void DONGLE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, VCMD_ERROR_CODE status)
{
    uint8_t *obuf;

    obuf = malloc(plen + 6);
    
    obuf[0] = PACKET_TYPE_EVT;
    obuf[1] = HCI_EVT_AIROHA_VENDOR;
    obuf[2] = plen + 3;
    obuf[3] = ocf;
    obuf[4] = ogf;
    obuf[5] = status;
    memcpy (obuf + 6, parm, plen);

    AB_UART_Write(uart1_ins, obuf, (uint16_t)plen+6);
        
    free(obuf);
}

/******************************************************************************/
/* Public                                                                     */
/******************************************************************************/
void DONGLE_vcmd_Init()
{
    DONGLE_vcmd_gap_init();
    DONGLE_vcmd_sip_bt_inited();
}

void DONGLE_vcmd_handle(vcmd_packet *pkt)
{
    uint8_t i, j;

    for(i = 0; i < sizeof(vcmd_handlers)/sizeof(VCMD_ENTRIES); i++)
    {
        VCMD_ENTRIES *vhandlers;
        vhandlers = (VCMD_ENTRIES *)&vcmd_handlers[i];
        if(vhandlers->ogf == pkt->vogf)
        {
            for(j = 0; j < vhandlers->size; j++)
            {
                if(vhandlers->handlers[j].ocf == pkt->vocf)
                {
                    uint8_t rsp[255];
                    uint8_t rsplen;
                    VCMD_ERROR_CODE status;

                    rsplen = 0;
                    status = vhandlers->handlers[j].handler(pkt, rsp, &rsplen);

                    if(status != VCMD_EXECUTING)
                    {
                        DONGLE_vcmd_response(pkt->vogf, pkt->vocf, rsp, rsplen, status);
                    }
                    return;
                }
            }
        }
    }

    DONGLE_vcmd_response(pkt->vogf, pkt->vocf, NULL, 0, VCMD_ERROR_COMMAND_NOT_SUPPORT);    
   
}

