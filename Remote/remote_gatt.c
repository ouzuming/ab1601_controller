/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_gatt.c
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
#include "remote.h"

uint8_t RC_hids_cp[1];
uint8_t RC_hids_report1[3];
uint8_t RC_hids_report2[20];
uint8_t RC_hids_report3[3];
uint8_t RC_hids_report4[1];
uint8_t RC_adpcm_codecsel;

uint16_t report1_handle;
uint16_t report2_handle;
uint16_t report3_handle;
uint16_t report4_handle;

#if defined(DEMO_HOST_HP7)
static uint8_t deviceName[30] = "BLE RMC";
#else
static uint8_t deviceName[30] = "Airoha Remote";
#endif // DEMO_HOST_HP7

uint8_t recon_addr[6];

uint8_t RC_hids_map[130] =
{
    0x05, 0x0c,        /* USAGE_PAGE (Consumer Devices) */
    0x09, 0x01,        /* USAGE (Consumer Control) */
    0xa1, 0x01,        /* COLLECTION (Application) */
    0x85, 0x01,        /*  REPORT_ID (1) */
    0x19, 0x00,        /*  USAGE_MINIMUM (0) */
    0x2A, 0x9c, 0x02,  /*  USAGE_MAXIMUM (29c) */
    0x15, 0x00,        /*  LOGICAL_MINIMUM (0) */
    0x26, 0x9c, 0x02,  /*  LOGICAL_MAXIMUM (29c) */
    0x95, 0x01,        /*  REPORT_COUNT (1) */
    0x75, 0x10,        /*  REPORT_SIZE (16) */
    0x81, 0x00,        /*  INPUT (Data,Ary,Abs) */
/*  numeric key pad */
    0x09, 0x02,        /* USAGE (Numeric Key Pad) */
    0xA1, 0x02,        /* COLLECTION (Logical)    */
    0x05, 0x09,        /* USAGE_PAGE (Button) */

    0x19, 0x01,        /*  USAGE Minimum */
    0x29, 0x0A,        /*  USAGE Maximum */
    0x15, 0x01,        /*  Logical Minimum */
    0x25, 0x0A,        /*  Logical Maximum */
    0x95, 0x01,        /*   REPORT_COUNT (1) */
    0x75, 0x08,        /*   REPORT_SIZE ( 8) */
    0x81, 0x40,        /*   INPUT (Data,Ary,Abs,null state) */
    0xC0,              /* END_COLLECTION (Logical) */
/*  numeric key pad */
    0xC0,              /* END_COLLECTION (Application) */

    0x05, 0x01,        /* USAGE_PAGE (Generic Desktop)*/
    0x09, 0x02,        /* USAGE (Mouse)*/
    0xA1, 0x01,        /* Collection (Application)*/
    0x09, 0x01,        /*  Usage Pointer */
    0xA1, 0x00,        /*  Collection (Physical)*/
    0x85, 0x03,        /*  REPORT_ID (3) */
    0x05, 0x01,        /*  USAGE_PAGE (Generic Desktop)*/
    0x09, 0x30,        /*  Usage(X)      */
    0x09, 0x31,        /*  Usage(Y)      */
    0x15, 0x80,        /*  Logical Minimum(-128)*/
    0x25, 0x7F,        /*  Logical Maximum( 127)*/
    0x75, 0x08,        /*  REPORT_SIZE  (8) */
    0x95, 0x02,        /*  REPORT_COUNT (2) */
    0x81, 0x06,        /*  INPUT (Data,Value,Relative,Bit Field) */

    0x05, 0x09,        /* USAGE_PAGE (Button) */
    0x19, 0x01,        /*  USAGE Minimum */
    0x29, 0x05,        /*  USAGE Maximum */
    0x15, 0x00,        /*  Logical Minimum */
    0x25, 0x01,        /*  Logical Maximum */
    0x95, 0x05,        /*  Report Count */
    0x75, 0x01,        /*  Report Size  */
    0x81, 0x02,        /*  Input Data*/
    /*  Padding bits  */
    0x95, 0x01,        /*  Report Count*/
    0x75, 0x03,        /*  Report Size */
    0x81, 0x03,        /*  Input Constant*/

    0xC0,              /* END_COLLECTION (Physical)    */
    0xC0,              /* END_COLLECTION (Application) */

    0x06, 0x01, 0xFF,  // Usage Page (Vendor Defined 0xFF01)
    0x09, 0x02,        // Usage (tmp usage)
    0xA1, 0x02,        //   Collection (Logical)
    0x85, 0x02,        //   Report ID (2)
    0x09, 0x14,        //   Usage (tmp usage)
    0x75, 0x08,        //   Report Size (8)
    0x95, 0x14,        //   Report Count (20)
    0x15, 0x80,        //   Logical Minimum (128)
    0x25, 0x7F,        //   Logical Maximum (127)
    0x81, 0x22,        //   Input (Data,Var,Abs,No Wrap,Linear,No Preferred State,No Null Position)

    0x85, 0x04,        //   Report ID (4)
    0x09, 0x04,        //   Usage (tmp usage)
    0x75, 0x08,        //   Report Size (8)
    0x95, 0x01,        //   Report Count (1)
    0x91, 0x02,        //   Output

    0xC0,              // End Collection
};

void _RC_device_name_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        printf("device name changed by master, may save to flash.\n");
    }
}

void _RC_recon_addr_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        printf("reconnect address written by master.\n");
    }
}

void _remote_gap_init(void)
{
    PPCP_t ppcp = {0x0008,0x0008, 29, 0x012C};

    gas_init_para gas_i_para =
    {
        .appearance = 0x0180,
        .device_name_buf = deviceName,
        .device_name_ini_length = 13,
        .device_name_max_length = 30,
        .device_name_write_CB = _RC_device_name_cb,
        .parameter = &ppcp,
    };

    gas_privacy_init_para gas_pi_para =
    {
        .reconnection_addr = recon_addr,
        .reconnection_addr_CB = _RC_recon_addr_cb,
    };

    GAS_init(&gas_i_para);
    GAS_support_privacy_feature(&gas_pi_para);
}

void _remote_gatt_init(void)
{
    GATT_init(true);
}

void _remote_dis_init(void)
{
    dis_init_para dispara =
    {
        .manufacturer_name_string = "Airoha corp.",
        .hardware_revision_string = "A:D/B:F",
        .system_id = "SystemId",

        #if defined(DEMO_HOST_HP7)
        .pnp_id = "\x02\x54\x2b\x00\x16\x00\x00",
        #else
        .pnp_id = "\x01\x94\x00\x01\x00\x02\x00",
        #endif
    };

    DIS_init(&dispara);
}

void _remote_bas_init(void)
{
    BAS_init(true);
}

void _remote_hid_init(void)
{
    hids_init_para init_para =
    {
        .rmap =
        {
            .data = RC_hids_map,
            .data_len = sizeof(RC_hids_map),
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
            .data = RC_hids_cp,
            .cb = NULL,
        },
    };

    hids_report_para report_para1 =
    {
        .report_type =  HID_REPORT_INPUT,
        .report_ID = 1,
        .data = RC_hids_report1,
        .data_len = sizeof(RC_hids_report1),
        .cb = NULL,
    };
    hids_report_para report_para2 =
    {
        .report_type =  HID_REPORT_INPUT,
        .report_ID = 2,
        .data = RC_hids_report2,
        .data_len = sizeof(RC_hids_report2),
        .cb = NULL,
    };
    hids_report_para report_para3 =
    {
        .report_type =  HID_REPORT_INPUT,
        .report_ID = 3,
        .data = RC_hids_report3,
        .data_len = sizeof(RC_hids_report3),
        .cb = NULL,
    };
    hids_report_para report_para4 =
    {
        .report_type =  HID_REPORT_OUTPUT,
        .report_ID = 4,
        .data = RC_hids_report4,
        .data_len = sizeof(RC_hids_report4),
        .cb = NULL,
    };

    HIDS_init(&init_para);

    report1_handle = HIDS_add_report(&report_para1);
    report2_handle = HIDS_add_report(&report_para2);
    report3_handle = HIDS_add_report(&report_para3);
    report4_handle = HIDS_add_report(&report_para4);
}

void _remote_ota_cb(OTA_STATUS_ENUM status)
{

    remote_firmware_updating = false;	//thus OTA app may reset the timer in case the OTA time too long

    switch(status)
    {
        case OTA_STARTED:
            remote_led_rc_function_enable(F_LED_DFU_OTA);
            remote_reset_deep_sleep_timer(rc_deepsleep_timeout.DFU_OTA_STARTED);
            remote_firmware_updating = true;
            break;
        case OTA_FINISHED:
            remote_led_rc_function_disable(F_LED_DFU_OTA);
            remote_reset_deep_sleep_timer(rc_deepsleep_timeout.DFU_OTA_FINISHED);
            break;
    }
}

void _remote_ota_init(void)
{
    OTA_init(_remote_ota_cb);

    if(1)   // may detect ADC and decide whether OTA should be enabled
    {
        OTA_change_permission(OTA_ENABLED);
    }
}

extern void remote_codecsel_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle);

void _remote_airoha_init(void)
{
    if(1)
    {
        gatt_add_service_para servicepara =
        {
            .type = primary_service,
            .size = UUID_128bit,
            .UUID = {'e', 'c', 'i', 'v', 'r', 'e', 'S', 'C', 'I', 'M', 'a', 'h', 'o', 'r', 'i', 'A'},
        };

        BLE_gatt_add_service(&servicepara);
    }

    if(!rc_cfg.AUDIO_HID)
    {
        gatt_add_charact_para charactpara_adpcmdata =
        {
            .size = UUID_128bit,
            .UUID = {'a', 't', 'a', 'D', '_', 'M', 'C', 'P', 'D', 'A', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_NOTIFY,
            .permission = A_RB_WB,
            .data_initial_length = 20,
            .data_maximum_length = 20,
            .char_data = RC_hids_report2,
            .cb = NULL,
        };

        report2_handle = BLE_gatt_add_charact(&charactpara_adpcmdata);

        if(1)
        {
            static uint8_t adpcm_cccd[2];

            gatt_add_descrip_para descrippara =
            {
                .size = UUID_16bit,
                .UUID = {0x02,0x29},
                .permission = A_RP_WP,
                .data_initial_length = 2,
                .data_maximum_length = 0,
                .desc_data = adpcm_cccd,
                .cb = NULL,
            };

            BLE_gatt_add_descrip(&descrippara);
        }
    }

    if(!rc_cfg.KEY_HID)
    {
        gatt_add_charact_para charactpara_keydata =
        {
            .size = UUID_128bit,
            .UUID = {'a', 't', 'a', 'D', '_', 'D', 'I', 'y', 'e', 'K', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_NOTIFY,
            .permission = A_RB_WB,
            .data_initial_length = 3,
            .data_maximum_length = 3,
            .char_data = RC_hids_report1,
            .cb = NULL,
        };

        report1_handle = BLE_gatt_add_charact(&charactpara_keydata);

        if(1)
        {
            static uint8_t key_cccd[2];

            gatt_add_descrip_para descrippara =
            {
                .size = UUID_16bit,
                .UUID = {0x02,0x29},
                .permission = A_RP_WP,
                .data_initial_length = 2,
                .data_maximum_length = 0,
                .desc_data = key_cccd,
                .cb = NULL,
            };

            BLE_gatt_add_descrip(&descrippara);
        }
    }

    if(!rc_cfg.MOUSE_HID)
    {
        gatt_add_charact_para charactpara_mousedata =
        {
            .size = UUID_128bit,
            .UUID = {'a', 't', 'a', 'D', '_', 'e', 's', 'u', 'o', 'M', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_NOTIFY,
            .permission = A_RB_WB,
            .data_initial_length = 3,
            .data_maximum_length = 3,
            .char_data = RC_hids_report3,
            .cb = NULL,
        };

        report3_handle = BLE_gatt_add_charact(&charactpara_mousedata);

        if(1)
        {
            static uint8_t mouse_cccd[2];

            gatt_add_descrip_para descrippara =
            {
                .size = UUID_16bit,
                .UUID = {0x02,0x29},
                .permission = A_RP_WP,
                .data_initial_length = 2,
                .data_maximum_length = 0,
                .desc_data = mouse_cccd,
                .cb = NULL,
            };

            BLE_gatt_add_descrip(&descrippara);
        }
    }

    if(1)
    {
        gatt_add_charact_para charactpara_codec_sel =
        {
            .size = UUID_128bit,
            .UUID = {'c', 'e', 'd', 'o', 'C', 'M', 'C', 'P', 'D', 'A', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_READ|C_WRITE,
            .permission = A_RP_WP,
            .data_initial_length = 1,
            .data_maximum_length = 1,
            .char_data = &RC_adpcm_codecsel,
            .cb = remote_codecsel_cb,

        };

        BLE_gatt_add_charact(&charactpara_codec_sel);
    }
}

void remote_service_init(void)
{
    _remote_gatt_init();
    _remote_gap_init();
    _remote_dis_init();
    _remote_bas_init();
    _remote_hid_init();
    _remote_ota_init();
    _remote_airoha_init();
}

void remote_send_hid_report(uint16_t attHandle)
{
    if(remote_ble_status != BLE_CONNECTED)
        return;

    if((remote_bt_bonded && remote_link_encrypted) || remote_special_mode_enabled)
        BLE_gatt_charact_notify(attHandle, FORCE_LINK0);
    else
        BLE_gatt_charact_notify(attHandle, ALL_CCCD_ENABLED_LINK);
}
