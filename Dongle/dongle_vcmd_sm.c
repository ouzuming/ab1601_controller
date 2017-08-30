/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_sm.c
DESCRIPTION
NOTES
********************************************************************************/
#include "dongle_vcmd_sm.h"
#include "ble_gap_sm.h"

ble_sm_security_param_t gVCMD_SM_param =
{
    SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
    SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
    SM_BONDING,//uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
    16,                             //uint8_t encKeySize;
    0x03,                           //uint8_t keyDistr;
    0x07,                           //uint8_t respKeyDistr;
};

void DONGLE_sm_evt_sec_request_handler(bt_evt_t *evt)
{
    BLE_gap_sm_authenticate(evt->evt.sm_evt.connHdl, &gVCMD_SM_param);
}

VCMD_ERROR_CODE dongle_vcmd_SmSetSecParam(uint16_t handle)
{
    bool status;

    status = BLE_gap_sm_set_security_param(handle, BLE_SM_STATUS_SUCCESS, &gVCMD_SM_param);

    if(status) 
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

VCMD_ERROR_CODE dongle_vcmd_SmAuthenticate(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len)
{
    uint16_t conn_handle;
    bool status;

    if(pkt->buflen != 8)
        return VCMD_ERROR_WRONG_PARAM_LENGTH;

    conn_handle = pkt->buf[0] + (pkt->buf[1] << 8);
    memcpy(&gVCMD_SM_param, &pkt->buf[2], 6);

    status = BLE_gap_sm_authenticate(conn_handle, &gVCMD_SM_param);

    if(status) 
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

VCMD_ERROR_CODE dongle_vcmd_SmSetSecurityParam(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len)
{
    memcpy(&gVCMD_SM_param, pkt->buf, 6);

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_SmPasskeyResponse(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint16_t conn_handle;
    uint32_t passkey;
    bool status;

    conn_handle = pkt->buf[0] + (pkt->buf[1] << 8);
    passkey = 0;
    passkey = pkt->buf[2] + (pkt->buf[3] << 8) + (pkt->buf[4] << 16);

    status = BLE_gap_sm_passkey_response(conn_handle, passkey);

    if(status)
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

VCMD_ERROR_CODE dongle_vcmd_SmOobDataResponse(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint16_t conn_handle;
    uint8_t oobData[BLE_GAP_SEC_KEY_LEN];
    bool status;

    conn_handle = pkt->buf[0] + (pkt->buf[1] << 8);
    memcpy(oobData, &pkt->buf[2], BLE_GAP_SEC_KEY_LEN);
    
    status = BLE_gap_sm_OOB_response(conn_handle, oobData);
    
    if(status) 
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

VCMD_ERROR_CODE dongle_vcmd_SmNumericComparisonConfirm(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len)
{
    uint16_t conn_handle;
    bool status;

    conn_handle = pkt->buf[0] + (pkt->buf[1] << 8);

    if(pkt->buf[2] == 1)
        status = BLE_gap_sm_passkey_response(conn_handle, 0);
    else
        status = BLE_gap_sm_passkey_response(conn_handle, 0xFFFFFFFF);

    if(status) 
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

VCMD_ERROR_CODE dongle_vcmd_SmGetLTK(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len)
{
    uint8_t addr[6];
    bool status;

    memcpy(addr, pkt->buf, 6);

    status = BLE_gap_sm_get_ltk(addr, &rsp[1]);
    *len = BLE_GAP_SEC_KEY_LEN+1;

    if(status)
        rsp[0] = BLE_GAP_SEC_KEY_LEN;
    else
        memset(rsp, 0, BLE_GAP_SEC_KEY_LEN+1);

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_SmGetPeerLTK(vcmd_packet* pkt, uint8_t rsp[ ], uint8_t *len)
{
    uint8_t addr[6];
    bool status;

    memcpy(addr, pkt->buf, 6);

    status = BLE_gap_sm_get_peer_ltk(addr, &rsp[1]);
    *len = BLE_GAP_SEC_KEY_LEN+1;
    
    if(status)
        rsp[0] = BLE_GAP_SEC_KEY_LEN;
    else
        memset(rsp, 0, BLE_GAP_SEC_KEY_LEN);

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_SmClearBondingList(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    bool status;

    status = BLE_gap_sm_delete_paired_record(NULL);

    if(status) 
        return VCMD_SUCCESS;
    else
        return VCMD_ERROR_GENERAL;
}

