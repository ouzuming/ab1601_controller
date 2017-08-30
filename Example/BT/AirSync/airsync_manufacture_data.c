/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_manufacture_data.c
DESCRIPTION
NOTES
********************************************************************************/
#include "airsync_init.h"
#include "airsync_manufacture_data.h"
#ifdef Protocol_Buffer_Test
#include "epb_MmBp.h"
#else
#warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
#endif

extern bool Send_Manufacture_Data_Flag;
extern uint8_t sessionkey[16];
MANUFACTURE_DATA send_manufacture_status = MANUFACTURE_IDLE;
uint8_t send_manufacture_data_buf[] = {0x11, 0x22, 0x33, 0x44};
uint8_t send_data_req[150];
uint8_t send_req_total_length;
uint8_t *manuf_response_buf;
uint16_t manuf_response_length;
void airsync_manufacture_data(void)
{
    switch(send_manufacture_status)
    {
        case MANUFACTURE_IDLE:
            if(Send_Manufacture_Data_Flag)
                send_manufacture_status = PACK_MANUFACTURE_DATA;
            break;
        case PACK_MANUFACTURE_DATA:
            pack_manufacture_data();
            send_manufacture_status = SEND_MANUFACTURE_DATA;
            break;
        case SEND_MANUFACTURE_DATA:
            send_manufacture_req_packets();
            break;
        case RECEIVE_MANUFACTURE_DATA:
            break;
        case UNPACK_MANUFACTURE_DATA:
            unpack_manuf_receive_data();
            send_manufacture_status = MANUFACTURE_END;
            break;
        case MANUFACTURE_END:
            Send_Manufacture_Data_Flag = false;
            break;
    }
}

void pack_manufacture_data(void)
{
    #ifdef Protocol_Buffer_Test
    BpFixHead fix_head = {0xFE, 1, 0, htons(ECI_req_sendData), 0};
    SendDataRequest *request = (SendDataRequest *)malloc(sizeof(SendDataRequest));
    
    //Body Data
    request->data.data= send_manufacture_data_buf;
    request->data.len = sizeof(send_manufacture_data_buf);
    request->has_type = true;
    request->type = EDDT_manufatureSvr;
    //Compress Data(Protocol Buffer)
    int len = epb_send_data_request_pack_size(request);
    uint8_t *buf = (uint8_t *)malloc(len);
    epb_pack_send_data_request(request, buf, len);
    #ifdef Md5AndAesEncrypt
    //Do AES
    AES_CTX c;
    int out_len = 0;
    uint8_t temp_buf[50];
    uint8_t data[len];
    uint8_t error;
    memcpy(&data[0], buf, len);
    error = aes_cbc_encrypt_pkcs7(&c, sessionkey, (uint8_t *)&data, len, temp_buf,&out_len);
    if(error != 0)
        AIRSYNC_PRINT("AES Encrypt Fail, Error number :%d\n", error);
    len = out_len;
    #endif
    //send_req_total_length = sizeof(BpFixHead) + out_len;
    send_req_total_length = sizeof(BpFixHead) + len;
    fix_head.nCmdId = htons(ECI_req_sendData);
    fix_head.nLength = htons(send_req_total_length);
    fix_head.nSeq = htons(3);
    
    //send_data_req = (uint8_t *)malloc(send_req_total_length);
    memcpy(&send_data_req[0],&fix_head,sizeof(BpFixHead) );
    #ifdef Md5AndAesEncrypt
    memcpy(&send_data_req[sizeof(BpFixHead)],&temp_buf[0],out_len);
    #else
    memcpy(&send_data_req[sizeof(BpFixHead)],&buf[0],len);
    #endif
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}

void Sent_Manufacture_Req_cb(uint8_t link_index)
{
    AIRSYNC_PRINT("indicate link_index %d, result success\n",link_index);
}
void send_manufacture_req_packets(void)
{
    static uint8_t Send_manufacture_Req_Data_Buf_Index = 0;
    
    if((send_req_total_length - Send_manufacture_Req_Data_Buf_Index)>20)
    {
        OS_delay_ms(100);
        memcpy(&AirSync_Indicate_Data[0],&send_data_req[Send_manufacture_Req_Data_Buf_Index],20);
        Send_manufacture_Req_Data_Buf_Index+=20;
    }else{
        OS_delay_ms(100);
        memcpy(&AirSync_Indicate_Data[0],&send_data_req[Send_manufacture_Req_Data_Buf_Index],20);
        Send_manufacture_Req_Data_Buf_Index = 0;
        send_manufacture_status = RECEIVE_MANUFACTURE_DATA;
    }
    BLE_gatt_charact_indicate(trspx_indicate_handle, FORCE_LINK0,Sent_Manufacture_Req_cb);
}

void unpack_manuf_receive_data(void)
{
    #ifdef Protocol_Buffer_Test
    uint8_t i;
    #ifdef Md5AndAesEncrypt
    uint8_t encrypt_buf[128];
    uint8_t decrypt_buf[128];
    uint8_t decrypt_len = 0;
    uint8_t error;
    int out_len = 0;
    AES_CTX c;
    
    //Decrypt AES
    memcpy(encrypt_buf, manuf_response_buf, manuf_response_length);
    error = aes_cbc_decrypt_pkcs7(&c, sessionkey, encrypt_buf, manuf_response_length, decrypt_buf, &out_len);
    if(error != 0)
        AIRSYNC_PRINT("AES Decrypt Fail, Error number :%d\n", error);
    decrypt_len = out_len;
    
    AIRSYNC_PRINT("decrypt len: %d\n", decrypt_len);
    for(i=0; i<decrypt_len; i++) 
    {
        AIRSYNC_PRINT("%02x", decrypt_buf[i]);
    }
    AIRSYNC_PRINT("\n");
    
    //unpack PB data
    SendDataResponse *SendDataResp = epb_unpack_send_data_response(decrypt_buf, decrypt_len);
    #else
    SendDataResponse *SendDataResp = epb_unpack_send_data_response(manuf_response_buf, manuf_response_length);
    #endif
    if(SendDataResp == NULL)
    {
        AIRSYNC_PRINT("epb_unpack_Send_Data_response fail\n");
        return;
    }
    if(SendDataResp->has_data)
    {
        AIRSYNC_PRINT("Response Data :");
        for(i=0 ; i< SendDataResp->data.len; i++)
            AIRSYNC_PRINT("%02x", SendDataResp->data.data[i]);
        AIRSYNC_PRINT("\n");
    }
    
    epb_unpack_send_data_response_free(SendDataResp);    
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}