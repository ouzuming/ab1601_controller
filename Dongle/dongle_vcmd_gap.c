/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_gap.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab_airoha_vcmd.h"
#include "dongle_vcmd_gap.h"
#include "bt.h"
/******************************************************************************/
/* Static                                                                     */
/******************************************************************************/
static void cfm_ble_adv_data_set(bool isuccess, uint8_t err_code)
{
    if(isuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_BT_ADV_DATA_SET, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_BT_ADV_DATA_SET, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_scan_data_set(bool isuccess, uint8_t err_code)
{
    if(isuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_BT_SCAN_DATA_SET, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_BT_SCAN_DATA_SET, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_adv_data_start(bool isuccess, uint8_t err_code)
{
    if(isuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADV_START, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADV_START, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_adv_data_stop(bool isuccess, uint8_t err_code)
{
    if(isuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADV_STOP, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADV_STOP, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_adv_addr_set(bool isuccess, uint8_t err_code)
{
    if(isuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADDR_SET, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADDR_SET, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_disconnect(bool issuccess, uint8_t err_or_reason, uint16_t handle)
{
    uint8_t parm[3];

    parm[0] = err_or_reason;
    parm[1] = handle & 0xff;
    parm[2] = handle >> 8;
    
    if(issuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_DISCONNECT, parm, 3, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_DISCONNECT, parm, 3, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_start_encrypt(uint8_t err_code, uint16_t handle)
{
    uint8_t parm[3];


    parm[0] = err_code;
    parm[1] = handle & 0xff;
    parm[2] = handle >> 8;
    
    if(!err_code)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_START_ENCRYPT, parm, 3, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_START_ENCRYPT, parm, 3, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_conn_update(uint8_t err, uint16_t handle, uint16_t interval, uint16_t latency, uint16_t sup_tout)
{
    uint8_t  parm[9];

    parm[0] = err;
    parm[1] = handle & 0xff;
    parm[2] = handle >> 8;
    parm[3] = interval & 0xff;
    parm[4] = interval >> 8;
    parm[5] = latency & 0xff;
    parm[6] = latency >> 8;
    parm[7] = sup_tout & 0xff;
    parm[8] = sup_tout >> 8;
    
    if(!err)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONN_PARM_UPDATE, parm, 9, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONN_PARM_UPDATE, parm, 9, VCMD_ERROR_REF_HCI_CODE);

}


static void cfm_ble_connect(ble_gap_evt_connected_t *evt)
{

    uint8_t  parm[17];

    parm[0] = evt->status;
    parm[1] = evt->conn_handle & 0xff;
    parm[2] = evt->conn_handle >> 8;
    parm[3] = evt->role;
    parm[4] = evt->peer_addr.addr_type;
    memcpy(&parm[5], evt->peer_addr.addr, 6);
    parm[11] = evt->connInterval & 0xff;
    parm[12] = evt->connInterval >> 8;
    parm[13] = evt->connLatency & 0xff;
    parm[14] = evt->connLatency >> 8;
    parm[15] = evt->supervisionTimeout & 0xff;
    parm[16] = evt->supervisionTimeout >> 8;
    
    if(!evt->status)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONNECT, parm, 17, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONNECT, parm, 17, VCMD_ERROR_REF_HCI_CODE);
}


static void cfm_ble_adv_report(ble_gap_evt_adv_report_t *evt)
{
    uint8_t parm[50];
    parm[0] = evt->peer_addr.addr_type;
    memcpy(parm+1, evt->peer_addr.addr, 6);
    parm[7] = evt->rssi;
    parm[8] = evt->type;
    parm[9] = evt->dlen;
    memcpy(parm+10, evt->data, evt->dlen);

    DONGLE_vcmd_response(OGF_GAP, OCF_GAP_ADV_REPORT, parm, 10 + evt->dlen, VCMD_SUCCESS);
}

static void cfm_ble_remote_version(ble_gap_evt_remote_version_t* evt)
{
    uint8_t parm[8];

    parm[0] = evt->err_code;
    parm[1] = evt->handle & 0xff;
    parm[2] = evt->handle >> 8;
    parm[3] = evt->version;
    parm[4] = evt->manu & 0xff;
    parm[5] = evt->manu >> 8;
    parm[6] = evt->sub & 0xff;
    parm[7] = evt->sub >> 8;

    if(!evt->err_code)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_READ_REMOTE_VERSION, parm, 8, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_READ_REMOTE_VERSION, parm, 8, VCMD_ERROR_REF_HCI_CODE);

    
}


static void cfm_ble_tx_pwr_set(bool issuccess, uint8_t err_code)
{
    if(issuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_TX_PWR_SET, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_TX_PWR_SET, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_scan_start(bool issuccess, uint8_t err_code)
{
    if(issuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_SCAN_START, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_SCAN_START, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}


static void cfm_ble_scan_stop(bool issuccess, uint8_t err_code)
{
    if(issuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_SCAN_STOP, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_SCAN_STOP, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
}

static void cfm_ble_connect_cancel(bool issuccess, uint8_t err_code)
{
    if(issuccess)
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONNECT_CANCEL, NULL, 0, VCMD_SUCCESS);
    else
        DONGLE_vcmd_response(OGF_GAP, OCF_GAP_CONNECT_CANCEL, &err_code, 1, VCMD_ERROR_REF_HCI_CODE);
        
}

/******************************************************************************/
/* Public                                                                     */
/******************************************************************************/
VCMD_ERROR_CODE dongle_vcmd_BtLogEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen)
{    
    BT_Log_Enable(pkt->buf[0]);
    return VCMD_SUCCESS;
}


VCMD_ERROR_CODE dongle_vcmd_GapSetAdvData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen)
{
    ble_gap_adv_data_set(&pkt->buf[1], pkt->buf[0], cfm_ble_adv_data_set);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapSetScanData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    ble_gap_scan_data_set(&pkt->buf[1], pkt->buf[0], cfm_ble_scan_data_set);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapAdvStart(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    ble_gap_adv_params parm;

    if(pkt->buflen != 0xF)
        return VCMD_ERROR_WRONG_PARAM_LENGTH;

    parm.ad_type = pkt->buf[0];
    parm.peer_addr = (ble_addr_t*)&pkt->buf[1];
    parm.self_addr_type = pkt->buf[8];
    parm.filter = pkt->buf[9];
    parm.min_interval = pkt->buf[10] + (pkt->buf[11] << 8);
    parm.max_interval = pkt->buf[12] + (pkt->buf[13] << 8);
    parm.channel_mask = pkt->buf[14];  

    ble_gap_adv_start(&parm, cfm_ble_adv_data_start);
    return VCMD_EXECUTING;

}

VCMD_ERROR_CODE dongle_vcmd_GapAdvStop(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
   ble_gap_adv_stop(cfm_ble_adv_data_stop);
   return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapAddrSet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    BT_STATUS status;
    status = ble_gap_address_set((ble_addr_t*)&pkt->buf[0], cfm_ble_adv_addr_set);
    
    if(status) return status;
    
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapPubAddrGet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    ble_addr_t addr;
    ble_gap_pub_address_get(&addr);

    memcpy(rsp, addr.addr, BLE_ADDR_LEN);
    *len = BLE_ADDR_LEN;

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_GapRandAddrGet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    ble_addr_t addr;
    BT_STATUS status;
    status = ble_gap_random_address_get(&addr);

    if(status) return status;
    
    memcpy(rsp, addr.addr, BLE_ADDR_LEN);
    *len = BLE_ADDR_LEN;

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_GapDisconnect(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint16_t handle;
    uint8_t status;

    handle = pkt->buf[0] + (pkt->buf[1] << 8);
    status = pkt->buf[2];

    ble_gap_disconnect(handle, status);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapTxPowrSet(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    ble_gap_tx_power_set((int8_t)pkt->buf[0], cfm_ble_tx_pwr_set);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapScanStart(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    ble_gap_scan_params_t parm;

    parm.type = pkt->buf[0];
    parm.interval = pkt->buf[1] + (pkt->buf[2] << 8);         
    parm.window = pkt->buf[3] + (pkt->buf[4] << 8);       
    parm.owner = pkt->buf[5];
    parm.policy = pkt->buf[6];
    parm.p_whitelist = NULL;
    parm.filter_duplicated = pkt->buf[7];
    
    ble_gap_scan_start(&parm , cfm_ble_scan_start);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapScanStop(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    ble_gap_scan_stop(cfm_ble_scan_stop);
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapStartEncrypt(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{   
    uint16_t handle;
    ble_gap_master_id_t  master_id;

    handle = pkt->buf[0] + (pkt->buf[1] << 8);
    
    memcpy(master_id.rand, &pkt->buf[2], BLE_GAP_SEC_RAND_LEN);
    master_id.ediv = pkt->buf[2+BLE_GAP_SEC_RAND_LEN] + (pkt->buf[3+BLE_GAP_SEC_RAND_LEN] << 8); 
    memcpy(master_id.ltk, &pkt->buf[4+BLE_GAP_SEC_RAND_LEN], BLE_GAP_SEC_KEY_LEN); 

    ble_gap_start_encrypt(handle, &master_id);

   return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapConnectionParamUpdate(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{

    BT_STATUS status;
    uint16_t handle;
    ble_gap_conn_params_t conn_params;

    handle = pkt->buf[0] + (pkt->buf[1] << 8);
    conn_params.min_conn_interval = pkt->buf[2] + (pkt->buf[3] << 8);  
    conn_params.max_conn_interval = pkt->buf[4] + (pkt->buf[5] << 8);  
    conn_params.slave_latency = pkt->buf[6] + (pkt->buf[7] << 8);      
    conn_params.conn_sup_timeout = pkt->buf[8] + (pkt->buf[9] << 8);   
    conn_params.ce_min = pkt->buf[10] + (pkt->buf[11] << 8);             
    conn_params.ce_max = pkt->buf[12] + (pkt->buf[13] << 8);             

    status = ble_gap_conn_param_update(handle, &conn_params);

    if(status) return status;

    return VCMD_EXECUTING;
}


VCMD_ERROR_CODE dongle_vcmd_GapConnect(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    BT_STATUS status;
    ble_gap_create_conn_params_t conn_params;

    conn_params.scan_intvl = pkt->buf[0] + (pkt->buf[1] << 8);       
    conn_params.scan_window = pkt->buf[2] + (pkt->buf[3] << 8); ;      
    conn_params.policy = pkt->buf[4];
    conn_params.peer.addr_type = pkt->buf[5];             
    memcpy(conn_params.peer.addr, &pkt->buf[6], 6);
    conn_params.owner = pkt->buf[12];            
    conn_params.min_conn_interval = pkt->buf[13] + (pkt->buf[14] << 8);
    conn_params.max_conn_interval = pkt->buf[15] + (pkt->buf[16] << 8);
    conn_params.slave_latency = pkt->buf[17] + (pkt->buf[18] << 8);    
    conn_params.conn_sup_timeout = pkt->buf[19] + (pkt->buf[20] << 8); 
    conn_params.ce_min = pkt->buf[21] + (pkt->buf[22] << 8);           
    conn_params.ce_max= pkt->buf[23] + (pkt->buf[24] << 8);           

    status = ble_gap_connect(&conn_params);

    if(status) return status;
    return VCMD_EXECUTING;
}

VCMD_ERROR_CODE dongle_vcmd_GapReadRemoteVersion(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint16_t handle;

    handle = pkt->buf[0] + (pkt->buf[1] << 8);
    ble_gap_remote_version(handle);
    return VCMD_EXECUTING;
}


VCMD_ERROR_CODE dongle_vcmd_GapConnectCancel(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)    
{
    ble_gap_connect_cancel(cfm_ble_connect_cancel);
    return VCMD_EXECUTING;
}

void DONGLE_vcmd_gap_init(void)
{
    DONGLE_bt_reg_connected(cfm_ble_connect);
    DONGLE_bt_reg_disconnected(cfm_ble_disconnect);
    DONGLE_bt_reg_encryption_change(cfm_ble_start_encrypt);
    DONGLE_bt_reg_conn_updated(cfm_ble_conn_update);
    DONGLE_bt_reg_adv_reported(cfm_ble_adv_report);
    DONGLE_bt_reg_remote_version(cfm_ble_remote_version);

}



