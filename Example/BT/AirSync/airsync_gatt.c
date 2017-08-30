/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_gatt.c
DESCRIPTION
NOTES
********************************************************************************/
#include "airsync_gatt.h"

//extern AIRSYNC_AUTH_RESP auth_resp_status;
extern AIRSYNC_AUTH_STATUS auth_status;
extern AIRSYNC_INIT_STATUS init_status;
extern MANUFACTURE_DATA send_manufacture_status;
extern uint8_t *auth_response_buf;
extern uint16_t auth_response_length;
extern uint8_t *init_response_buf;
extern uint16_t init_response_length;
extern uint8_t *manuf_response_buf;
extern uint16_t manuf_response_length;
bool indicate_enable_flag;

void _AirSync_write_data_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    static uint8_t seq = 0;
    static uint8_t buf_index = 0;
    static uint16_t data_length = 0;
    uint16_t i;
    
    if(type == CB_AFTER_WRITING)
    {
        for(i=0;i<BLE_att_get_attribute_length(handle);i++)
            AIRSYNC_PRINT("%02X",AirSync_Write_Data[i]);
        AIRSYNC_PRINT("\n");
    }
    if(auth_status==AUTH_RESP_GET_WRITE_PACKET)
    {
        if(seq == 0)    //first packet
        {
            buf_index = 0;
            data_length = 0;
            if(AirSync_Write_Data[4] != 0x4e || AirSync_Write_Data[5]!= 0x21)
            {
                return;
            }
            data_length = ((uint16_t)AirSync_Write_Data[2]*0x100 + AirSync_Write_Data[3]);
            auth_response_length = data_length -8;
            auth_response_buf = (uint8_t *)malloc(auth_response_length);
            memcpy(&auth_response_buf[buf_index], &AirSync_Write_Data[8], BLE_att_get_attribute_length(handle)-8);
            buf_index+=BLE_att_get_attribute_length(handle)-8;
            
        } else {
            memcpy(&auth_response_buf[buf_index], &AirSync_Write_Data[0], BLE_att_get_attribute_length(handle));
            buf_index+=BLE_att_get_attribute_length(handle);
        }
        seq++;
        data_length -=BLE_att_get_attribute_length(handle);
        if(data_length == 0)
        {
            seq = 0;
            buf_index = 0;
            auth_status = AUTH_RESP_DECRY;
        }
    }
    
    if(init_status == INIT_RESP_GET_WRITE_PACKET)
    {
        if(seq == 0)    //first packet
        {
            buf_index = 0;
            data_length = 0;
            if(AirSync_Write_Data[4] != 0x4e || AirSync_Write_Data[5]!= 0x23)
            {
                return;
            }
            data_length = ((uint16_t)AirSync_Write_Data[2]*0x100 + AirSync_Write_Data[3]);
            init_response_length = data_length -8;
            init_response_buf = (uint8_t *)malloc(init_response_length);
            memcpy(&init_response_buf[buf_index], &AirSync_Write_Data[8], BLE_att_get_attribute_length(handle)-8);
            buf_index+=BLE_att_get_attribute_length(handle)-8;
            
        } else {
            memcpy(&init_response_buf[buf_index], &AirSync_Write_Data[0], BLE_att_get_attribute_length(handle));
            buf_index+=BLE_att_get_attribute_length(handle);
        }
        seq++;
        data_length -=BLE_att_get_attribute_length(handle);
        if(data_length == 0)
        {
            seq = 0;
            buf_index = 0;
            init_status = INIT_RESP_DECRY;
        }
    }
    if(send_manufacture_status == RECEIVE_MANUFACTURE_DATA)
    {
        if(seq == 0)    //first packet
        {
            buf_index = 0;
            data_length = 0;
            if(AirSync_Write_Data[4] != 0x4e || AirSync_Write_Data[5]!= 0x22)
            {
                return;
            }
            data_length = ((uint16_t)AirSync_Write_Data[2]*0x100 + AirSync_Write_Data[3]);
            manuf_response_length = data_length -8;
            manuf_response_buf = (uint8_t *)malloc(manuf_response_length);
            memcpy(&manuf_response_buf[buf_index], &AirSync_Write_Data[8], BLE_att_get_attribute_length(handle)-8);
            buf_index+=BLE_att_get_attribute_length(handle)-8;
            
        } else {
            memcpy(&manuf_response_buf[buf_index], &AirSync_Write_Data[0], BLE_att_get_attribute_length(handle));
            buf_index+=BLE_att_get_attribute_length(handle);
        }
        seq++;
        data_length -=BLE_att_get_attribute_length(handle);
        if(data_length == 0)
        {
            seq = 0;
            buf_index = 0;
            send_manufacture_status = UNPACK_MANUFACTURE_DATA;
        }

    }
}

void _AirSync_cccd_cb(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if(type == CB_AFTER_WRITING)
    {
        //AIRSYNC_PRINT("CCCD : %02x %02x\n",AirSync_CCCD_Data[0],AirSync_CCCD_Data[1]);
        if(AirSync_CCCD_Data[0] == 0x02)
        {
            indicate_enable_flag = true;
        }
    }
}

void _airsync_trspx_init(void)
{
    trspx_init_para trspx_para =
    {
        .indication_data = AirSync_Indicate_Data,
        .write_data = AirSync_Write_Data,
        .read_data = AirSync_Read_Data,
        .trspx_write_CB = _AirSync_write_data_cb,
        .trspx_cccd = AirSync_CCCD_Data,
        .trspx_cccd_CB = _AirSync_cccd_cb,
    };

    trspx_service_init(&trspx_para);
}

void airsync_service_init(void)
{
    _airsync_trspx_init();
}
