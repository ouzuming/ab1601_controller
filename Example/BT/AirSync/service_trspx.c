/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    service_trspx.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ble_gatt_server.h"
#include "service_trspx.h"

void trspx_service_init(trspx_init_para * para)
{
    gatt_add_service_para servicepara =
    {
        .type = primary_service,
        .size = UUID_16bit,
        .UUID = {0xE7,0xFE},
    };
    gatt_add_charact_para charactpara1 =
    {
        .size = UUID_16bit,
        .UUID = {0xC8,0xFE},
        .property = (C_INDICATE),
        .permission = A_RB_WB,
        .data_initial_length = 20,
        .data_maximum_length = 20,
        .char_data = para->indication_data,
    };
    gatt_add_charact_para charactpara2 =
    {
        .size = UUID_16bit,
        .UUID = {0xC7,0xFE},
        .property = (C_WRITE),
        .permission = A_RB_WP,
        .data_initial_length = 0,
        .data_maximum_length = 110,
        .char_data = para->write_data,
        .cb = para->trspx_write_CB,
    };
    gatt_add_charact_para charactpara3 =
    {
        .size = UUID_16bit,
        .UUID = {0xC9,0xFE},
        .property = (C_READ),
        .permission = A_RN_WN,
        .data_initial_length = 9,
        .data_maximum_length = 0,
        .char_data = para->read_data,
        .cb = NULL,
    };
    gatt_add_descrip_para descrippara =
    {
        .size = UUID_16bit,
        .UUID = {0x02,0x29},
        .permission = A_RP_WP,
        .data_initial_length = 2,
        .data_maximum_length = 0,
        .desc_data = para->trspx_cccd,
        .cb = para->trspx_cccd_CB,
    };
    trspx_service_handle = BLE_gatt_add_service(&servicepara);
    trspx_indicate_handle = BLE_gatt_add_charact(&charactpara1);
    trspx_cccd_handle = BLE_gatt_add_descrip(&descrippara);
    trspx_write_handle = BLE_gatt_add_charact(&charactpara2);
    trspx_read_handle = BLE_gatt_add_charact(&charactpara3);
}