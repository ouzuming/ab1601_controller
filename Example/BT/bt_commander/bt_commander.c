/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    bt_commander.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "bt.h"
#include "console.h"
#include "ab_util.h"
#include <stdio.h>
#include "ble_gatt_client.h"
#include "bt_commander.h"


/******************************************************************************/
/* prototype                                                                  */
/******************************************************************************/
static void cfm_pts_set_ad_data(bool isuccess, uint8_t err_code);
static void cfm_pts_adv_stop(bool issuccess, uint8_t err_code);

/******************************************************************************/
/* define                                                                     */
/******************************************************************************/
#define BT_CONN_TIMER 0x0108
#define BT_ADV_TIMER 0x1223

/******************************************************************************/
/* variables                                                                  */
/******************************************************************************/
static bool is_adving = false;
static uint8_t io_capability = SM_IO_NO_INPUT_NO_OUTPUT;
static uint8_t oob_flag = SM_OOB_DATA_NOT_PRESENT;
static uint8_t bonding_flag = SM_NO_BONDING;
static uint8_t mitm_flag = SM_NO_MITM_PROTECTION;
static uint8_t sc_flag = SM_SC_DISABLE;
static uint8_t key_Press = SM_KEY_PRESS_NOTI_DISABLE;
static uint8_t key_size = 16;
static uint8_t initKeyDis = 0x00;
static uint8_t respKeyDis = 0x00;
static uint8_t bt_ad[31];
static uint8_t bt_ad_len;
static uint8_t bt_ad_type = ble_ad_type_ind;
static uint8_t bt_ad_own_addr_type = ble_addr_type_public;
static uint32_t adv_timeout = 3000;
static ble_addr_t *bt_dad_peer = NULL;
static void(*auth_status_cb)(ble_sm_evt_auth_status_t sts) = NULL;
static void (*connected_cb)(uint16_t handle, uint8_t status) = NULL;
static void (*disconnected_cb)(uint16_t handle, uint8_t status) = NULL;
static bool (*adv_report_cb)(ble_gap_evt_adv_report_t *report) = NULL;
static void (*connect_update_cb)(ble_gap_evt_conn_param_update_t *update) = NULL;
static void (*gatt_evt_cb)(uint16_t evt, ble_gatt_evt_t *gatt_evt) = NULL;
static void (*sec_cb)(ble_sm_evt_conn_sec_update_t*) = NULL;
static void (*sec_key_cb)(uint16_t handle, uint8_t keyType) = NULL;

/******************************************************************************/
/* static function                                                            */
/******************************************************************************/
/*static*/ void bt_commander_adv_start_internal(uint8_t* p_data, uint8_t dlen, uint8_t ad_type, uint8_t addr_type, ble_addr_t *addr)
{
    uint8_t ad[] = {
        0x05, 0x12, 0x10, 0x00, 0x50, 0x00,
        0x02, 0x01, 0x05,
        0x03, 0x03, 0x12, 0x18,
        0x03, 0x19, 0xC1, 0x03,
        0x0A, 0x09, 'A' , 'i' , 'r' , 'o', 'B', 'l', 'u', 'e', '.'};

    bt_ad_type = ad_type;
    bt_ad_own_addr_type = addr_type;
    bt_dad_peer = addr;

    if(p_data)
    {
        memcpy(bt_ad, p_data, dlen);
        bt_ad_len = dlen;
    }
    else
    {
        memcpy(bt_ad, ad, sizeof(ad));
        bt_ad_len = sizeof(ad);
    }

    if(is_adving)
    {
        ble_gap_adv_stop(cfm_pts_adv_stop);
    }
    else
    {
        ble_gap_adv_data_set(bt_ad, bt_ad_len, cfm_pts_set_ad_data);
    }
}

/******************************************************************************/
/* BT event handler                                                           */
/******************************************************************************/
void bt_commander_event(bt_evt_t *evt)
{
    switch(evt->evt_id)
    {
        case BT_MISC_EVENT_INITED:
        {
            if(evt->evt.misc_evt.param.inited.is_success)
            {
                ble_addr_t addr;
                
                addr.addr_type = ble_addr_type_public;
                
                memcpy(addr.addr, "\x11\x18\x12\x23\x01\x08", 6);

                ble_gap_address_set(&addr, NULL);

                printf("bt init %s\n", evt->evt.misc_evt.param.inited.is_success ? "ok" : "fail");   
            }
            break;
        }
        case BLE_GAP_EVT_CONNECTED:
        {
            ble_gap_evt_connected_t *conned;
            uint8_t i;
            conned = &evt->evt.gap_evt.params.connected;

            AB_Timer_AlertUnset(BT_CONN_TIMER);
            AB_Timer_AlertUnset(BT_ADV_TIMER);
            is_adving = false;
            
            printf("============================================================================\n");
            printf("Connected %s\n", !conned->status ? "success" : "fail");
            
            if(conned->status)
            {
                printf("Info: handle=0x%04X role=%s, interval=0x%04X, latency=0x%04X, super=0x%04X \n Peer:",  conned->conn_handle, conned->role ? "slave" : "master", conned->connInterval, conned->connLatency, conned->supervisionTimeout);

                for(i = 0; i < 5; i++)
                    printf("%02X:", conned->peer_addr.addr[i]);
                printf("%02X", conned->peer_addr.addr[5]);
                switch(conned->peer_addr.addr_type)
                {
                    case ble_addr_type_public:
                        printf("(PDA)\n");
                        break;
                    case ble_addr_type_random_static:
                        printf("(RDA)\n");
                        break;
                    case ble_addr_type_random_resolvable:
                        printf("(PID)\n");
                        break;
                    case ble_addr_type_random_non_resolvable:
                        printf("(RID)\n");
                    break;
                }

            }
            printf("============================================================================\n");

            if(connected_cb)
                connected_cb(conned->conn_handle, conned->status);
            break;
        }
        case BLE_GAP_EVT_DISCONNECTED:
        {
            ble_gap_evt_disconnected_t *dis;
            uint8_t i;
            dis = &evt->evt.gap_evt.params.disconnected;

            AB_Timer_AlertUnset(BT_CONN_TIMER);
            
            printf("Disconnect, handle=0x%04X reason=0x%02X\n", dis->conn_handle, dis->reason);
            if(disconnected_cb)
                disconnected_cb(dis->conn_handle, dis->reason);
            break;
        }
        case BLE_GAP_EVT_CONNECT_PARM_UPDATE:
        {
            ble_gap_evt_conn_param_update_t *upd;
            upd = &evt->evt.gap_evt.params.conn_param_update;

            if(upd->status)
                printf("Received update request fail\n");
            else
                printf("Update, handle=0x%04X, interval=0x%04X latency=0x%04X super=0x%04X\n",upd->conn_handle, upd->conn_interval, upd->slave_latency, upd->conn_sup_timeout);

            if(connect_update_cb)
                connect_update_cb(upd);
            break;
        }
        case BLE_GAP_EVT_ADV_REPORT:
        {
            ble_gap_evt_adv_report_t *report;
            uint8_t i;
            bool is_show = true;

            report = &evt->evt.gap_evt.params.adv_report;

            if(adv_report_cb)
                is_show = adv_report_cb(report);
            
            if(is_show)
            {
                printf("============================================================================\n");
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
                        printf("(PDA)\n");
                        break;
                    case ble_addr_type_random_static:
                        printf("(RDA)\n");
                        break;
                    case ble_addr_type_random_resolvable:
                        printf("(PID)\n");
                        break;
                    case ble_addr_type_random_non_resolvable:
                        printf("(RID)\n");
                    break;
                }

                for(i = 0; i < report->dlen; i++)
                    printf("%02X", report->data[i]);
                printf("\n");
                printf("============================================================================\n");
            }

            break;
        }
        case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
        {

            ble_sm_security_param_t gSM_param =
            {
                io_capability,                                  //uint8_t ioCapability;
                oob_flag,                                       //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
                bonding_flag | mitm_flag | sc_flag | key_Press, //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
                key_size,                                       //uint8_t encKeySize;
                initKeyDis,                                     //uint8_t keyDistr;
                respKeyDis,                                     //uint8_t respKeyDistr;
            };     
            
            printf("BLE_SM_EVT_SET_SEC_PARAM_REQUEST handle[%x]\n", evt->evt.sm_evt.connHdl);
            BLE_gap_sm_set_security_param(evt->evt.sm_evt.connHdl, BLE_SM_STATUS_SUCCESS, &gSM_param);
            break;
        }                
        case BLE_SM_EVT_SEC_REQUEST:
        {            
            ble_sm_security_param_t gSM_param =
            {
                io_capability,                                  //uint8_t ioCapability;
                oob_flag,                                       //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
                bonding_flag | mitm_flag | sc_flag | key_Press, //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
                key_size,                                       //uint8_t encKeySize;
                initKeyDis,                                     //uint8_t keyDistr;
                respKeyDis,                                     //uint8_t respKeyDistr;
            };     
            
            BLE_gap_sm_authenticate(evt->evt.sm_evt.connHdl, &gSM_param);        
            break;
        }
        case BLE_SM_EVT_AUTH_STATUS:
        {
            if(auth_status_cb)
            {
                auth_status_cb(evt->evt.sm_evt.params.auth_status);
            }
            break;
        }
        case BLE_SM_EVT_CONN_SEC_UPDATE:
        {
            if(sec_cb)
            {
                sec_cb(&evt->evt.sm_evt.params.conn_sec_update);
            }
            break;
        }
        case BLE_GAP_EVT_CONN_PARAM_UPDATE_REQUEST:
        {
            ble_gap_evt_conn_param_update_request_t *req;
            ble_gap_conn_params_t conn_parm;
            uint8_t idx;

            
            req = &evt->evt.gap_evt.params.conn_param_update_request;
            idx = ble_gap_link_GetIdx_ByHandle(req->handle);
            
            if(req->min_conn_interval < 0x0006 || req->min_conn_interval > 0xC80 ||
               req->max_conn_interval < 0x0006 || req->max_conn_interval > 0xC80 ||
               req->slave_latency > 0x1F3 || 
               req->conn_sup_timeout < 0xA || req->conn_sup_timeout > 0xC80)
            {
                l2cap_lesig_conn_param_update_rsp(idx,req->identifier, false);
                OS_delay_ms(100);
                ble_gap_disconnect(req->handle, 0x13);
            }
            else                
            {
                l2cap_lesig_conn_param_update_rsp(ble_gap_link_GetIdx_ByHandle(req->handle),req->identifier, true);            
                memcpy(&conn_parm, &req->min_conn_interval, 8);
                ble_gap_conn_param_update(req->handle, &conn_parm);
            }
            break;
        }
        case BLE_SM_EVT_PASSKEY_DISPLAY:
        {
            uint32_t passkey;

            passkey = 0;
            ((uint8_t *)&passkey)[0] = evt->evt.sm_evt.params.passkey_display.passkey[2];
            ((uint8_t *)&passkey)[1] = evt->evt.sm_evt.params.passkey_display.passkey[1];
            ((uint8_t *)&passkey)[2] = evt->evt.sm_evt.params.passkey_display.passkey[0];
            printf("\n[App display] passkey = %ld\n\n", passkey);
            
            break;
        }
        case BLE_SM_EVT_AUTH_KEY_REQUEST:
        {
            if(sec_key_cb)
                sec_key_cb(evt->evt.sm_evt.connHdl, evt->evt.sm_evt.params.auth_key_request.keyType);
            break;
        } 
        
        case BLE_GATT_EVT_UNEXPECTED_RESPONSE_FROM_SERVER ... BLE_GATT_EVT_HANDLE_VALUE_REPORTED:
        {
            if(gatt_evt_cb)
                gatt_evt_cb(evt->evt_id, &evt->evt.gatt_evt);
            break;
        }
        case BLE_GAP_EVT_READ_REMOTE_VERSION:
        {
            ble_gap_evt_remote_version_t *ver;
            ver = &evt->evt.gap_evt.params.remote_version;

            printf("status = %x, handle = %x, version = %x manu = %x, subversion = %x\n", ver->err_code, ver->handle, ver->version, ver->manu, ver->sub);
            break;
        }        
        /*case BLE_GATT_EVT_MTU_EXCHANGED:
        {
            ble_gatt_evt_mtu_exchange_t * p = &evt->evt.gatt_evt.gatt.mtu_exchanged;
            
            printf("mtu has been changed to %d.\n",p->new_mtu);
            
            break;
        }*/
        default:
        {

            printf("============================================================================\n");
            printf("Unhandle event received = 0x%08x\n", evt->evt_id);
            printf("============================================================================\n");
            break;
        }
    }
}

/******************************************************************************/
/* static function(callback handler)                                          */
/******************************************************************************/
static void cfm_timer_auto_stop_adv(uint32_t id)
{
    printf("ADV auto stoped!\n");
    ble_gap_adv_stop(NULL);
    is_adving = false;        
}

static void cfm_timer_auto_cancel_connect(uint32_t id)
{
    printf("cancel connection!\n");
    ble_gap_connect_cancel(NULL);
}

static void cfm_pts_adv_start(bool isuccess, uint8_t err_code)
{
    if(isuccess)
    {
        is_adving = true;
        AB_Timer_AlertSet(BT_ADV_TIMER, false, adv_timeout, cfm_timer_auto_stop_adv); 
        adv_timeout = 3000;
    }
}



static void cfm_pts_adv_stop(bool issuccess, uint8_t err_code)
{
    if(issuccess)
    {
        is_adving = false;        
        ble_gap_adv_data_set(bt_ad, bt_ad_len, cfm_pts_set_ad_data);
    }
}

static void cfm_pts_set_ad_data(bool isuccess, uint8_t err_code)
{
    if(isuccess)
    {
        ble_gap_adv_params parm;
                
        parm.ad_type = bt_ad_type;
        parm.peer_addr = bt_dad_peer;
        
        parm.self_addr_type = bt_ad_own_addr_type;
        parm.filter = ble_filter_any;
        parm.min_interval = 0x0020;
        parm.max_interval = 0x0040;
        parm.channel_mask = 0x7;
        
        ble_gap_adv_start(&parm, cfm_pts_adv_start);
    }
}



/******************************************************/
//table 
/******************************************************/
const console_cmds_t bt_cmd_tbl[] =
{
    {"set", NULL, cmd_set_tbl},
    {"get", NULL, cmd_get_tbl},
    {"start", NULL, cmd_start_tbl},
    {"stop", NULL, cmd_stop_tbl},
    {NULL, NULL, NULL}
};


/******************************************************************************/
/* public function                                                            */
/******************************************************************************/
void bt_commander_connect(ble_addr_t peer_addr)
{

    ble_gap_create_conn_params_t connParams;

    AB_Timer_AlertSet(BT_CONN_TIMER, false, 10000, cfm_timer_auto_cancel_connect); 

    memcpy(&connParams.peer.addr, &peer_addr.addr, 6);
    connParams.peer.addr_type = peer_addr.addr_type;
    connParams.scan_intvl = 0x0A;
    connParams.scan_window = 0x0A;
    connParams.policy = 0;        
    connParams.owner = ble_addr_type_public;
    connParams.min_conn_interval = 0x06;
    connParams.max_conn_interval = 0x08;
    connParams.slave_latency = 0;
    connParams.conn_sup_timeout = 0x0c80;
    connParams.ce_max = 0;
    connParams.ce_min = 0;    
    ble_gap_connect(&connParams);
    printf("Connecting PTS...\n");
}


void bt_commander_adv_start_direct(uint8_t own_addr_type, ble_addr_t *peer_addr)
{
    printf("Start ADV ...\n");
    bt_commander_adv_start_internal(NULL, 0, ble_ad_type_direct_ind, own_addr_type, peer_addr);
}

void bt_commander_adv_start(uint8_t* p_data, uint8_t dlen, uint8_t ad_type, uint8_t addr_type)
{
    printf("Start ADV ...\n");
    bt_commander_adv_start_internal(p_data, dlen, ad_type, addr_type, NULL);
}


void bt_commander_adv_stop()
{
    if(is_adving)
    {
        ble_gap_adv_stop(NULL);
        is_adving = false;
    }
    
}

void bt_commander_set_bond_flag(uint8_t flag, uint8_t initKey, uint8_t respKey)
{
    bonding_flag = flag;
    initKeyDis = initKey;
    respKeyDis = respKey;    
}

void bt_commander_set_io_cap(uint8_t io_cap)
{
    io_capability = io_cap;
}

void bt_commander_set_oob_flag(uint8_t oob)
{
    oob_flag = oob;
}

void bt_commander_set_auth_flag(uint8_t mitm, uint8_t useSC, uint8_t keyPress)
{
    mitm_flag = mitm;
    sc_flag = useSC;
    key_Press = keyPress;
}

void bt_commander_set_key_size(uint8_t keySize)
{
    key_size = keySize;
}

void bt_commander_authenticate(uint16_t conn_handle)
{
    ble_sm_security_param_t gSM_param =
    {
        io_capability,                                  //uint8_t ioCapability;
        oob_flag,                                       //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
        bonding_flag | mitm_flag | sc_flag | key_Press, //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
        key_size,                                       //uint8_t encKeySize;
        initKeyDis,                                     //uint8_t keyDistr;
        respKeyDis,                                     //uint8_t respKeyDistr;
    };     
    
    BLE_gap_sm_authenticate(conn_handle, &gSM_param);        

}

void bt_commander_set_cb(void(*auth_cb)(ble_sm_evt_auth_status_t),  void (*con_cb)(uint16_t , uint8_t), void (*dis_cb)(uint16_t, uint8_t), bool (*adv_cb)(ble_gap_evt_adv_report_t *report))
{
    auth_status_cb = auth_cb;
    connected_cb = con_cb;
    disconnected_cb = dis_cb;
    adv_report_cb = adv_cb;
}

void bt_commander_set_adv_tout(uint32_t tout)
{
    adv_timeout = tout;

}

void bt_commander_set_connect_update_cb(void(*cb)(ble_gap_evt_conn_param_update_t*))
{
   connect_update_cb = cb;
}

void bt_commander_set_gatt_cb(void (*cb)(uint16_t evt, ble_gatt_evt_t *gatt_evt))
{
    gatt_evt_cb = cb;
}

void bt_commander_set_sec_cb(void (*cb)(ble_sm_evt_conn_sec_update_t*))
{
    sec_cb = cb;
}

void bt_commander_set_sec_key_cb(void (*cb)(uint16_t, uint8_t))
{
    sec_key_cb = cb;
}
