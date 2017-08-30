/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_bt.c
DESCRIPTION
NOTES
********************************************************************************/
#include "bt.h"
#include "dongle_vcmd.h"
#include "dongle_vcmd_sip.h"
#include "dongle_vcmd_gatt.h"
#include "dongle_vcmd_sm.h"
#include "ble_gap_sm.h"

/******************************************************************************/
/* Variables                                                                  */
/******************************************************************************/
uint16_t gVcmdConnHdl;

static void (*disconnec_cb)(bool issuccess, uint8_t err_or_reason, uint16_t handle) = NULL;
static void (*start_enctypt_cb)(uint8_t err, uint16_t handle) = NULL;
static void (*conn_updating_cb)(uint8_t err, uint16_t handle, uint16_t interval, uint16_t latency, uint16_t sup_tout) = NULL; 
static void (*connecting_cb)(ble_gap_evt_connected_t *evt) = NULL;
static void (*adv_report_cb)(ble_gap_evt_adv_report_t*) = NULL;
static void (*remote_version_cb)(ble_gap_evt_remote_version_t* evt) = NULL;
    
/******************************************************************************/
/* Public                                                                     */
/******************************************************************************/
void DONGLE_bt_reg_disconnected(void (*cb)(bool issuccess, uint8_t err_or_reason, uint16_t handle))
{
    disconnec_cb = cb;
}

void DONGLE_bt_reg_encryption_change(void (*cb)(uint8_t err, uint16_t handle))
{
    start_enctypt_cb = cb;
}


void DONGLE_bt_reg_conn_updated(void (*cb)(uint8_t err, uint16_t handle, uint16_t interval, uint16_t latency, uint16_t sup_tout))
{
    conn_updating_cb = cb;
}

void DONGLE_bt_reg_connected(void (*cb)(ble_gap_evt_connected_t *evt))
{
    connecting_cb = cb;
}

void DONGLE_bt_reg_adv_reported(void (*cb)(ble_gap_evt_adv_report_t*evt))
{
    adv_report_cb = cb;
}


void DONGLE_bt_reg_remote_version(void (*cb)(ble_gap_evt_remote_version_t* evt))
{
    remote_version_cb = cb;
}

void DONGLE_bt_event_handler(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
        {
            DONGLE_vcmd_Init();
            break;
        }
        case BLE_GAP_EVT_DISCONNECTED:
        {
            uint8_t i;
            ble_gap_evt_disconnected_t *dis;
            dis = &evt->evt.gap_evt.params.disconnected;
            
            //printf("Disconnect, handle=0x%04X reason=0x%02X\n", dis->conn_handle, dis->reason);
            if(disconnec_cb)
                disconnec_cb(true, dis->reason, dis->conn_handle);
            break;
        }
        case BLE_GAP_EVT_DISCONNECT_FAIL:
        {
            ble_gap_evt_operation_fail_t *dis;
            dis = &evt->evt.gap_evt.params.operation_fail;
            if(disconnec_cb)
                disconnec_cb(false, dis->err_code, 0);
            break;
        }
        case BLE_GAP_EVT_START_ENCRYPT_FAIL:
        {
            ble_gap_evt_operation_fail_t *senc;
            senc = &evt->evt.gap_evt.params.operation_fail;
            if(start_enctypt_cb)
                start_enctypt_cb(senc->err_code, 0);
            break;
        }
        case BLE_SM_EVT_CONN_SEC_UPDATE:
        {
            ble_sm_evt_conn_sec_update_t *senc;

            senc = &evt->evt.sm_evt.params.conn_sec_update;

            if(senc->conn_sec.sm <= 1 && senc->conn_sec.lv <= 1)
            {
                if(start_enctypt_cb)
                    start_enctypt_cb(BT_ERROR_GENERIC, 0);
            }
            else
            {
                if(start_enctypt_cb)
                    start_enctypt_cb(BT_SUCCESS, 0);
            }
            #warning "The handle of encryption change needed!!!"
            
            break;
        }

        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
        {
            dongle_vcmd_SmSetSecParam(gVcmdConnHdl);

            break;
        }
        case BLE_SM_EVT_SEC_REQUEST:
        {
            // start authentication 
            DONGLE_sm_evt_sec_request_handler(evt);

            break;
        }         
        case BLE_GAP_EVT_CONNECT_PARM_UPDATE:
        {
            ble_gap_evt_conn_param_update_t *upd;

            upd = &evt->evt.gap_evt.params.conn_param_update;

            if(conn_updating_cb)
            {
                conn_updating_cb( upd->status, upd->conn_handle, upd->conn_interval, upd->slave_latency, upd->conn_sup_timeout);
            }
            break;
        }
        case BLE_GAP_EVT_CONNECT_FAIL:
        {
            ble_gap_evt_operation_fail_t *conn;
            conn = &evt->evt.gap_evt.params.operation_fail;
            ble_gap_evt_connected_t conn_evt;

            memset(&conn_evt, 0, sizeof(ble_gap_evt_connected_t));
            conn_evt.status = conn->err_code;
                        
            if(connecting_cb)
                connecting_cb(&conn_evt);
            break;
        }
        case BLE_GAP_EVT_CONNECTED:
        {
            ble_gap_evt_connected_t *conn;

            conn = &evt->evt.gap_evt.params.connected;

            gVcmdConnHdl = conn->conn_handle;

            if(connecting_cb)
                connecting_cb(conn);
            break;
        }
        case BLE_GAP_EVT_ADV_REPORT:
        {
            ble_gap_evt_adv_report_t *report;
            
            report = &evt->evt.gap_evt.params.adv_report;

            if(adv_report_cb)
                adv_report_cb(report);
            break;
        }
        case BLE_GAP_EVT_READ_REMOTE_VERSION:
        {
            if(remote_version_cb)
                remote_version_cb(&evt->evt.gap_evt.params.remote_version);
            break;
        }
        case BT_EVENT_GATT ... (BT_EVENT_GATT+0x0FFF):
        {
            DONGLE_gatt_evt_handler(evt);
            break;
        }

    }
}

