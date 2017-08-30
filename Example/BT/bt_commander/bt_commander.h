/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    bt_commander.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef BT_COMMANDER_HH
#define BT_COMMANDER_HH


/******************************************************************************/
/* extern variables                                                           */
/******************************************************************************/
extern const console_cmds_t cmd_set_tbl[];
extern const console_cmds_t cmd_get_tbl[];
extern const console_cmds_t cmd_start_tbl[];
extern const console_cmds_t cmd_stop_tbl[];


/******************************************************************************/
/* extern functions                                                           */
/******************************************************************************/
extern void bt_commander_event(bt_evt_t *evt);


/******************************************************************************/
/* public functions                                                           */
/******************************************************************************/
void bt_commander_set_bond_flag(uint8_t flag, uint8_t initKey, uint8_t respKey);
void bt_commander_set_io_cap(uint8_t io_cap);
void bt_commander_set_oob_flag(uint8_t oob);
void bt_commander_set_auth_flag(uint8_t mitm, uint8_t useSC, uint8_t keyPress);
void bt_commander_set_key_size(uint8_t keySize);
void bt_commander_authenticate(uint16_t conn_handle);
void bt_commander_set_cb(void(*auth_cb)(ble_sm_evt_auth_status_t),  void (*con_cb)(uint16_t , uint8_t), void (*dis_cb)(uint16_t, uint8_t), bool (*adv_cb)(ble_gap_evt_adv_report_t *report));
void bt_commander_set_adv_tout(uint32_t tout);
void bt_commander_set_connect_update_cb(void(*cb)(ble_gap_evt_conn_param_update_t*));
void bt_commander_connect(ble_addr_t peer_addr);
void bt_commander_adv_start(uint8_t* p_data, uint8_t dlen, uint8_t ad_type, uint8_t addr_type);
void bt_commander_adv_start_direct(uint8_t own_addr_type, ble_addr_t *peer_addr);
void bt_commander_adv_stop();
void bt_commander_set_gatt_cb(void (*cb)(uint16_t evt, ble_gatt_evt_t *gatt_evt));
void bt_commander_set_sec_cb(void (*cb)(ble_sm_evt_conn_sec_update_t*));

#endif
