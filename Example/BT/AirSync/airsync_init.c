/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_init.c
DESCRIPTION
NOTES
********************************************************************************/
#include "airsync_init.h"
#include "airsync.h"
#ifdef Protocol_Buffer_Test
#include "epb_MmBp.h"
#else
#warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
#endif

AIRSYNC_INIT_STATUS init_status = INIT_IDLE;
bool airsync_init_complete_flag;
bool processing_init_flag = false;
uint8_t Init_Req_Data[150];
uint8_t Init_Req_Data_Length;
uint8_t Init_resp_field_filter[1] = {0xFF};
uint8_t Init_Req_Challenge_Number[4] = {0x11, 0x22, 0x33, 0x44};
extern uint8_t sessionkey[16];
uint8_t *init_response_buf;
uint16_t init_response_length;

void airsync_init(void)
{
    switch(init_status)
    {
        case INIT_IDLE:
            if(!processing_init_flag)
            {
                processing_init_flag = true;
                init_status = INIT_REQ_PACK;
            }
            break;
        case INIT_REQ_PACK:
            pack_init_request();
            break;
        case INIT_SEND_PACKET:
            send_init_req_packets();
        case INIT_RESP_GET_WRITE_PACKET:
            break;
        case INIT_RESP_DECRY:
            unpack_init_response();
            break;
        case INIT_END:
            airsync_init_complete_flag = true;
            airsync_ble_status = BLE_CONNECTED_COMPLETE;
            break;
    }
}

void pack_init_request(void)
{
    #ifdef Protocol_Buffer_Test
    BpFixHead fix_head = {0xFE, 1, 0, htons(ECI_req_init), 0};
    InitRequest *request = (InitRequest *)malloc(sizeof(InitRequest));
    //Body Data
    request->has_resp_field_filter = true;
    request->resp_field_filter.data = Init_resp_field_filter;
    request->resp_field_filter.len = sizeof(Init_resp_field_filter);
    request->has_challenge = true;
    request->challenge.data= Init_Req_Challenge_Number;
    request->challenge.len = sizeof(Init_Req_Challenge_Number);

    //Compress Data(Protocol Buffer)
    int len = epb_init_request_pack_size(request);
    uint8_t *buf = (uint8_t *)malloc(len);
    epb_pack_init_request(request, buf, len);
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
    //Init_Req_Data_Length = sizeof(BpFixHead) + out_len;
    Init_Req_Data_Length = sizeof(BpFixHead) + len;
    fix_head.nCmdId = htons(ECI_req_init);
    fix_head.nLength = htons(Init_Req_Data_Length);
    fix_head.nSeq = htons(2);
    memcpy(&Init_Req_Data[0],&fix_head,sizeof(BpFixHead) );
    #ifdef Md5AndAesEncrypt
    memcpy(&Init_Req_Data[sizeof(BpFixHead)],&temp_buf[0],out_len);
    #else
    memcpy(&Init_Req_Data[sizeof(BpFixHead)],&buf[0],len);
    #endif
    free(request);
    free(buf);
    init_status = INIT_SEND_PACKET;
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}

void Sent_Init_Req_cb(uint8_t link_index)
{
    AIRSYNC_PRINT("indicate link_index %d, result success\n",link_index);
}

void send_init_req_packets(void)
{
    static uint8_t Send_Init_Req_Data_Buf_Index = 0;
    
    if((Init_Req_Data_Length - Send_Init_Req_Data_Buf_Index)>20)
    {
        OS_delay_ms(100);
        memcpy(&AirSync_Indicate_Data[0],&Init_Req_Data[Send_Init_Req_Data_Buf_Index],20);
        Send_Init_Req_Data_Buf_Index+=20;
    }else{
        OS_delay_ms(100);
        memcpy(&AirSync_Indicate_Data[0],&Init_Req_Data[Send_Init_Req_Data_Buf_Index],20);
        Send_Init_Req_Data_Buf_Index = 0;
        init_status = INIT_RESP_GET_WRITE_PACKET;
    }
    BLE_gatt_charact_indicate(trspx_indicate_handle, FORCE_LINK0,Sent_Init_Req_cb);
}

void unpack_init_response(void)
{
    #ifdef Protocol_Buffer_Test
    #ifdef Md5AndAesEncrypt
    uint8_t encrypt_buf[128];
    uint8_t decrypt_buf[128];
    uint8_t i, decrypt_len = 0;
    uint8_t error;
    int out_len = 0;
    AES_CTX c;
    
    //Decrypt AES
    memcpy(encrypt_buf, init_response_buf, init_response_length);
    error = aes_cbc_decrypt_pkcs7(&c, sessionkey, encrypt_buf, init_response_length, decrypt_buf, &out_len);
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
    InitResponse *initResp = epb_unpack_init_response(decrypt_buf, decrypt_len);
    #else
    //unpack PB data
    InitResponse *initResp = epb_unpack_init_response(init_response_buf, init_response_length);
    #endif
    
    if(initResp == NULL)
    {
        AIRSYNC_PRINT("epb_unpack_init_response fail\n");
        return;
    }
    
    AIRSYNC_PRINT("User ID: %08d",initResp->user_id_high);
    AIRSYNC_PRINT("%08d\n",initResp->user_id_low);
    if(initResp->has_challeange_answer)
        AIRSYNC_PRINT("challeange_answer: %08X\n",initResp->challeange_answer);
    if(initResp->has_init_scence)
        AIRSYNC_PRINT("init_scence : %02d\n",initResp->init_scence);
    if(initResp->has_auto_sync_max_duration_second)
        AIRSYNC_PRINT("auto_sync_max_duration_second : %08d\n",initResp->auto_sync_max_duration_second);
    if(initResp->has_user_nick_name)
        AIRSYNC_PRINT("user_nick_name : %s\n",initResp->user_nick_name);
    if(initResp->has_platform_type)
        AIRSYNC_PRINT("platform_type : %02d\n",initResp->platform_type);
    if(initResp->has_model)
        AIRSYNC_PRINT("model : %s\n",initResp->model);
    if(initResp->has_os)
        AIRSYNC_PRINT("os : %s\n",initResp->os);
    if(initResp->has_time)
        AIRSYNC_PRINT("time : %08d\n",initResp->time);
    if(initResp->has_time_zone)
        AIRSYNC_PRINT("time_zone : %08d\n",initResp->time_zone);
    if(initResp->has_time_string)
        AIRSYNC_PRINT("time_string : %s\n",initResp->time_string);
    
    epb_unpack_init_response_free(initResp);
    init_status = INIT_END;
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}
