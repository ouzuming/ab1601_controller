/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_gatt.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __MOUSE_GATT_HH__
#define __MOUSE_GATT_HH__

#define REPORT_SIZE 	9 //unit: bytes, Total ( Report Count x Report Size ) / 8 
#define KEY_REPORT_SIZE	8

//Refer to  http://www.usb.org/developers/hidpage/Hut1_12v2.pdf
#define KEY_PAGE_UP         0x4B
#define KEY_PAGE_DOWN       0x4E
#define KEY_PAGE_DONE       0x00

extern uint8_t MS_hids_cp[1];
extern uint8_t MS_hids_report[REPORT_SIZE];
extern uint16_t report3_handle;

extern uint16_t report1_handle;
extern uint8_t MS_hids_report1[3];


#define MOUSE_REPORT_ID_3	        26
#define MOUSE_REPORT_ID_KEYBOARD    0x01

void mouse_service_init(void);
void mouse_send_hid_report(uint16_t attHandle);


#endif
