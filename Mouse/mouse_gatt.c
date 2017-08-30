/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_gatt.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ble_gatt_server.h"
#include "service_device_information.h"
#include "service_battery.h"
#include "service_human_interface_device.h"
#include "service_generic_access.h"
#include "service_generic_attribute.h"
#include "service_device_firmware_update_OTA.h"
#include "mouse.h"
#include "mouse_button.h"


//#define REPORT_SIZE 	9 //unit: bytes, Total ( Report Count x Report Size ) / 8 
uint8_t MS_hids_cp[1];
uint8_t MS_hids_report[REPORT_SIZE];
uint8_t MS_key_report[KEY_REPORT_SIZE];

uint8_t MS_hids_report1[3];

uint16_t report3_handle;
uint16_t report1_handle;

uint8_t deviceName[30] = "Airoha Mouse";
uint8_t recon_addr[6];

//Refer to USB_hid1_11.pdf
//Attribute Data, HID Descriptor
//http://coopermaa2nd.blogspot.tw/2011/09/hid-report-descriptor-3.html
uint8_t MS_hids_map[173] =
{
    0x05, 0x01,        // Usage Page (Generic Desktop Ctrls)
    0x09, 0x02,        // Usage (Mouse)
    0xA1, 0x01,        // Collection (Application #### A)
    0x05, 0x01,        //   Usage Page (Generic Desktop Ctrls)
    0x09, 0x02,        //   Usage (Mouse)
    0xA1, 0x02,        //   Collection (Logical #### 0)
    0x85, 0x1A,        //     Report ID (26), MOUSE_REPORT_ID_3
    0x09, 0x01,        //     Usage (Pointer)
    0xA1, 0x00,        //     Collection (Physical ####S 0.1 )
    0x05, 0x09,        //       Usage Page (Button)
    0x19, 0x01,        //       Usage Minimum (0x01)
    0x29, 0x05,        //       Usage Maximum (0x05)
    0x95, 0x05,        //       Report Count (5)
    0x75, 0x01,        //       Report Size (1)
    0x15, 0x00,        //       Logical Minimum (0)
    0x25, 0x01,        //       Logical Maximum (1)
    0x81, 0x02,        //       Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
    0x75, 0x03,        //       Report Size (3)
    0x95, 0x01,        //       Report Count (1)
    0x81, 0x01,        //       Input (Const,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)
    0x05, 0x01,        //       Usage Page (Generic Desktop Ctrls)
    0x09, 0x30,        //       Usage (X)
    0x09, 0x31,        //       Usage (Y)
    0x95, 0x02,        //       Report Count (2)
    0x75, 0x10,        //       Report Size (16)
    0x16, 0x01, 0x80,  //       Logical Minimum (32769)
    0x26, 0xFF, 0x7F,  //       Logical Maximum (32767)
    0x81, 0x06,        //       Input (Data,Var,Rel,No Wrap,Linear,Preferred State,No Null Position)
    0xA1, 0x02,        //       Collection (Logical ####S 1 )
    0x85, 0x1A,        //         Report ID (26), MOUSE_REPORT_ID_3
    0x09, 0x38,        //         Usage (Wheel)
    0x35, 0x00,        //         Physical Minimum (0)
    0x45, 0x00,        //         Physical Maximum (0)
    0x95, 0x01,        //         Report Count (1)
    0x75, 0x10,        //         Report Size (16)
    0x16, 0x01, 0x80,  //         Logical Minimum (32769)
    0x26, 0xFF, 0x7F,  //         Logical Maximum (32767)
    0x81, 0x06,        //         Input (Data,Var,Rel,No Wrap,Linear,Preferred State,No Null Position)
    0xC0,              //       End Collection (Logical ####E 1 )
    0xA1, 0x02,        //       Collection (Logical ####S 2 )
    0x85, 0x1A,        //         Report ID (26),MOUSE_REPORT_ID_3
    0x05, 0x0C,        //         Usage Page (Consumer)
    0x95, 0x01,        //         Report Count (1), 
    0x75, 0x10,        //         Report Size (16)
    0x16, 0x01, 0x80,  //         Logical Minimum (32769)
    0x26, 0xFF, 0x7F,  //         Logical Maximum (32767)
    0x0A, 0x38, 0x02,  //         Usage (AC Pan)
    0x81, 0x06,        //         Input (Data,Var,Rel,No Wrap,Linear,Preferred State,No Null Position)
    0xC0,              //       End Collection (Logical ####E 2)
    0xC0,              //     End Collection ( ####E 0.1 )
    0xC0,              //   End Collection (#### E 0)
	0xC0,			   //	End Collection (#### End A)

    0x05, 0x01,        // Usage Page (Consumer Devices)
    0x09, 0x06, 	   // Usage (Keyboard)
    0xA1, 0x01, 	   // Collection (Application)
    0x85, 0x01, 	   //	Report ID (1), MOUSE_REPORT_ID_KEYBOARD
    //*******	 Keyboard  , Modifiers ********/
    0x05, 0x07, 	   //	Usage Page (Kbrd/Keypad), conbo key ,modifiers
    0x19, 0xE0, 	   //	Usage Minimum (0xE0, Left Control) 
    0x29, 0xE7, 	   //	Usage Maximum (0xE7, Right GUI)
    0x15, 0x00, 	   //	Logical Minimum (0)
    0x25, 0x01, 	   //	Logical Maximum (1)
    0x75, 0x01, 	   //	Report Size (1)
    0x95, 0x08, 	   //	Report Count (8)
    0x81, 0x02, 	   //	Input (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position)
    //OEM 1 byte
    0x95, 0x01, 	   //	Report Count (1)
    0x75, 0x08, 	   //	Report Size (8)
    0x81, 0x01, 	   //	Input (Const,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)
    //LED 3 bits
    0x95, 0x03, 	   //	Report Count (3)
    0x75, 0x01, 	   //	Report Size (1)
    0x05, 0x08, 	   //	Usage Page (LEDs)
    0x19, 0x01, 	   //	Usage Minimum (Num Lock)
    0x29, 0x03, 	   //	Usage Maximum (Scroll Lock)
    0x91, 0x02, 	   //	Output (Data,Var,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
    //LED padding bits
    0x95, 0x05, 	   //	Report Count (5)
    0x75, 0x01, 	   //	Report Size (1)
    0x91, 0x01, 	   //	Output (Const,Array,Abs,No Wrap,Linear,Preferred State,No Null Position,Non-volatile)
    // keycocdes , 6 keys can be pressed at the same time for standard keyboard
    0x95, 0x06, 	   //	Report Count (6)
    0x75, 0x08, 	   //	Report Size (8)
    0x15, 0x00, 	   //	Logical Minimum (0)
    0x26, 0xFF, 0x00,  //	Logical Maximum (255)
    0x05, 0x07, 	   //	Usage Page (Kbrd/Keypad)
    0x19, 0x00, 	   //	Usage Minimum (0x00)
    0x2A, 0xFF, 0x00,  //	Usage Maximum (0xFF)
    0x81, 0x00, 	   //	Input (Data,Array,Abs,No Wrap,Linear,Preferred State,No Null Position)
    0xC0,			   // End Collection    
};


#if 0
0x05, 0x0C, 	   //	  Usage Page (Consumer)
0x0A, 0x38, 0x02,  //	  Usage (AC Pan)
0x75, 0x08, 	   //	  Report Size (8)
0x95, 0x01, 	   //	  Report Count (1)
0x15, 0x81, 	   //	  Logical Minimum (129)
0x25, 0x7F, 	   //	  Logical Maximum (127)
0x81, 0x06, 	   //	  Input (Data,Var,Rel,No Wrap,Linear,Preferred State,No Null Position)

#endif

void _MS_device_name_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        MS_PRINT("device name changed by master, may save to flash.\n");
    }
}

void _MS_recon_addr_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        MS_PRINT("reconnect address written by master.\n");
    }
}

void _mouse_gap_init(void)
{
    PPCP_t ppcp = {0x0008,0x0008, 29, 0x012C};

    gas_init_para gas_i_para =
    {
        .appearance = APPEARANCE_DEVICE,
        .device_name_buf = deviceName,
        .device_name_ini_length = 13,
        .device_name_max_length = 30,
        .device_name_write_CB = _MS_device_name_cb,
        .parameter = &ppcp,
    };

    gas_privacy_init_para gas_pi_para =
    {
        .reconnection_addr = recon_addr,
        .reconnection_addr_CB = _MS_recon_addr_cb,
    };

    GAS_init(&gas_i_para);
    GAS_support_privacy_feature(&gas_pi_para);
}

void _mouse_gatt_init(void)
{
    GATT_init(true);
}

void _mouse_hid_init(void)
{
    hids_init_para init_para =
    {
        .rmap =
        {
            .data = MS_hids_map,
            .data_len = sizeof(MS_hids_map),
            .ext_rep_ref_uuid_num = 0,
            .included_service_num = 0,
        },
        .hid_info =
        {
            .bcdHID = 0x0111,
            .bCountryCode = 0x00,
            .flags= 0x3,
        },
        .hid_cp =
        {
            .data = MS_hids_cp,
            .cb = NULL,
        },
    };

    hids_report_para report_para3 =
    {
        .report_type =  HID_REPORT_INPUT,
        .report_ID = MOUSE_REPORT_ID_3,
        .data = MS_hids_report,
        .data_len = sizeof(MS_hids_report),
        .cb = NULL,
    };

    hids_report_para report_para1 =
    {
        .report_type =  HID_REPORT_INPUT,
        .report_ID = MOUSE_REPORT_ID_KEYBOARD,
        .data = (uint8_t *)(MS_key_report),
        .data_len = sizeof(MS_key_report),
        .cb = NULL,
    };

    HIDS_init(&init_para);

	report1_handle = HIDS_add_report(&report_para1);
    report3_handle = HIDS_add_report(&report_para3);
}


void mouse_service_init(void)
{
    _mouse_gatt_init();
    _mouse_gap_init();
    _mouse_hid_init();
}

void mouse_send_hid_report(uint16_t attHandle)
{
    BLE_gatt_charact_notify(attHandle, FORCE_LINK0);
}
