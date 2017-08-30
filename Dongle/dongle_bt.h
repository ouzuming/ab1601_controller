/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_bt.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __DONGLE_BT_HH
#define __DONGLE_BT_HH


void DONGLE_bt_reg_disconnected(void (*cb)(bool issuccess, uint8_t err_or_reason, uint16_t handle));
void DONGLE_bt_reg_encryption_change(void (*cb)(uint8_t err, uint16_t handle));
void DONGLE_bt_reg_conn_updated(void (*cb)(uint8_t err, uint16_t handle, uint16_t interval, uint16_t latency, uint16_t sup_tout));
void DONGLE_bt_reg_connected(void (*cb)(ble_gap_evt_connected_t *evt));
void DONGLE_bt_reg_remote_version(void (*cb)(ble_gap_evt_remote_version_t* evt));
void DONGLE_bt_reg_adv_reported(void (*cb)(ble_gap_evt_adv_report_t*evt));

void DONGLE_bt_event_handler(bt_evt_t *evt);

#endif
