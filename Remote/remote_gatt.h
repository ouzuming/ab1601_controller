/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_gatt.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_GATT_HH__
#define __REMOTE_GATT_HH__

extern uint8_t RC_hids_cp[1];
extern uint8_t RC_hids_report1[3];
extern uint8_t RC_hids_report2[20];
extern uint8_t RC_hids_report3[3];
extern uint8_t RC_hids_report4[1];

extern uint16_t report1_handle;
extern uint16_t report2_handle;
extern uint16_t report3_handle;
extern uint16_t report4_handle;

void remote_service_init(void);
void remote_send_hid_report(uint16_t attHandle);


#endif
