/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    airsync_auth.c
DESCRIPTION
NOTES
********************************************************************************/
#include "airsync_auth.h"
#include "airsync.h"
#ifdef Protocol_Buffer_Test
#include "epb_MmBp.h"
#else
#warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
#endif

typedef struct 
{
    uint32_t random;
    uint32_t seq;
    uint32_t crc;
} auth_buf_t;

bool airsync_auth_complete_flag = false;
bool processing_auth_flag = false;

AIRSYNC_AUTH_STATUS auth_status = AUTH_IDLE;

uint8_t md5_type_id[16] = {0x5b, 0x25, 0xe2, 0xb0, 0xf3, 0xa5, 0x7a, 0xa1, 0x21, 0xc2, 0x26, 0x4e, 0x50, 0x52, 0x0c, 0xc9};
uint8_t device_key[16] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};
uint8_t BD_address[6] = {0x00, 0x03, 0x33, 0x22, 0x33, 0x27};
uint8_t Auth_Req_Data[150];
uint8_t Auth_Req_Data_Length;
uint8_t *auth_response_buf;
uint16_t auth_response_length;

uint8_t encrypt_buf[128];
int encrypt_len = 0;
uint8_t decrypt_buf[128];
int decrypt_len = 0;
extern uint8_t sessionkey[16];

char *device_name = "WeChat_Device";
char *device_id = "Dev_001";
char *timezone = "UTC+8";
char *language = "zh-CN";

int auth_seq = 0;

#define BigLittleSwap16(A)  ((((uint16_t)(A) & 0xff00) >> 8) | \
                            (((uint16_t)(A) & 0x00ff) << 8))
                            
#define BigLittleSwap32(A)  ((((uint32_t)(A) & 0xff000000) >> 24) | \
                            (((uint32_t)(A) & 0x00ff0000) >> 8) | \
                            (((uint32_t)(A) & 0x0000ff00) << 8) | \
                            (((uint32_t)(A) & 0x000000ff) << 24))

int checkCPUendian()
{
    union{
        unsigned long i;
        uint8_t s[4];
    }c;
 
    c.i = 0x12345678;
    return (0x12 == c.s[0]);
}

unsigned long htonl(unsigned long h)
{
    return checkCPUendian() ? h : BigLittleSwap32(h);
}

unsigned short htons(unsigned short h)
{
    return checkCPUendian() ? h : BigLittleSwap16(h);
}

void airsync_auth(void)
{
    switch(auth_status)
    {
        case AUTH_IDLE:
            if(!processing_auth_flag)
            {
                processing_auth_flag = true;
                auth_status = AUTH_REQ_PACK;
            }
            break;
        case AUTH_REQ_PACK:
            pack_auth_request();
            break;
        case AUTH_SEND_PACKET:
            send_auth_req_packets();
        case AUTH_RESP_GET_WRITE_PACKET:
            break;
        case AUTH_RESP_DECRY:
            unpack_auth_response();
            break;
        case AUTH_END:
            airsync_auth_complete_flag = true;
            airsync_ble_status = BLE_CONNECTED_WITH_AUTH_WITHOUT_INIT;
            break;
    }
}

void pack_auth_request()
{
    int i;
    uint8_t error;
    #ifdef Protocol_Buffer_Test
    BpFixHead fix_head = {0xFE, 1, 0, htons(ECI_req_auth), 0};
    AuthRequest *request = (AuthRequest *)malloc(sizeof(AuthRequest));
    #ifdef Md5AndAesEncrypt
    request->has_md5_device_type_and_device_id = true;
    request->md5_device_type_and_device_id.data = md5_type_id;
    request->md5_device_type_and_device_id.len = sizeof(md5_type_id);
    request->proto_version = 0x010000;
    request->auth_proto = 1;
    request->auth_method = EAM_md5;
    request->has_mac_address = false;
    request->mac_address.data = NULL;
    request->mac_address.len = 0;

    auth_buf_t auth_buf;
    //srand((unsigned)time(0));
    //int auth_rand = rand();
    //auth_buf.random = htonl(auth_rand);
    auth_buf.random = 0x11223344;
    
    auth_buf.seq = htonl(auth_seq);
    uint32_t crc = 0;
    crc = crc32(crc, (uint8_t *)device_id, strlen(device_id));
    crc = crc32(crc, (uint8_t *)&auth_buf.random, 4);
    crc = crc32(crc, (uint8_t *)&auth_buf.seq, 4);
    auth_buf.crc = htonl(crc);
    
    AES_CTX c;
    int out_len = 0;
    uint8_t temp_buf[32];
    
    error = aes_cbc_encrypt_pkcs7(&c, device_key, (uint8_t *)&auth_buf, sizeof(auth_buf), temp_buf,&out_len);
    if(error != 0)
        AIRSYNC_PRINT("AES Encrypt Fail, Error number :%d\n", error);
    
    request->aes_sign.data = temp_buf;
    request->aes_sign.len = out_len;

    request->has_time_zone = true;
    request->time_zone.str = timezone;
    request->time_zone.len = strlen(timezone);

    request->has_language = true;
    request->language.str = language;
    request->language.len = strlen(language);

    request->has_device_name = true;
    request->device_name.str = device_name;
    request->device_name.len = strlen(device_name);
    #endif
    #ifdef MacNoEncrypt
    request->has_md5_device_type_and_device_id = false;
    request->md5_device_type_and_device_id.data = NULL;
    request->md5_device_type_and_device_id.len = 0;
    request->proto_version = 0x010000;
    request->auth_proto = 1;
    request->auth_method = EAM_macNoEncrypt;
    request->has_aes_sign = false;
    request->aes_sign.data = NULL;
    request->aes_sign.len = 0;
    request->has_mac_address = true;
    request->mac_address.data = BD_address;
    request->mac_address.len = 6;
    request->has_time_zone = false;
    request->time_zone.str = NULL;
    request->time_zone.len = 0;
    request->has_language = false;
    request->language.str = NULL;
    request->language.len = 0;
    request->has_device_name = true;
    request->device_name.str = device_name;
    request->device_name.len = strlen(device_name);
    #endif
    #ifdef Md5AndNoEncypt
    request->has_md5_device_type_and_device_id = true;
    request->md5_device_type_and_device_id.data = md5_type_id;
    request->md5_device_type_and_device_id.len = sizeof(md5_type_id);
    request->proto_version = 0x010000;
    request->auth_proto = 1;
    request->auth_method = EAM_md5;
    request->has_aes_sign = false;
    request->aes_sign.data = NULL;
    request->aes_sign.len = 0;
    request->has_mac_address = false;
    request->mac_address.data = NULL;
    request->mac_address.len = 0;
    request->has_time_zone = false;
    request->time_zone.str = NULL;
    request->time_zone.len = 0;
    request->has_language = false;
    request->language.str = NULL;
    request->language.len = 0;
    request->has_device_name = true;
    request->device_name.str = device_name;
    request->device_name.len = strlen(device_name);
    #endif
    int len = epb_auth_request_pack_size(request);
    uint8_t *buf = (uint8_t *)malloc(len);
    epb_pack_auth_request(request, buf, len);
    
    for(i=0; i<len; i++)
    {
        AIRSYNC_PRINT("%02x", buf[i]);
    } 
    AIRSYNC_PRINT("\n");
    Auth_Req_Data_Length = sizeof(BpFixHead) + len;
    fix_head.nCmdId = htons(ECI_req_auth);
    fix_head.nLength = htons(Auth_Req_Data_Length);
    fix_head.nSeq = htons(1);
    memcpy(&Auth_Req_Data[0],&fix_head,sizeof(BpFixHead) );
    memcpy(&Auth_Req_Data[sizeof(BpFixHead)],&buf[0],len);

    free(request);
    free(buf);
    auth_status = AUTH_SEND_PACKET;
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}

void Sent_Auth_Req_cb(uint8_t link_index)
{
    AIRSYNC_PRINT("indicate link_index %d, result success\n",link_index);
}

void send_auth_req_packets()
{
    static uint8_t Send_Auth_Req_Data_Buf_Index = 0;
    
    if((Auth_Req_Data_Length - Send_Auth_Req_Data_Buf_Index)>20)
    {
        OS_delay_ms(150);
        memcpy(&AirSync_Indicate_Data[0],&Auth_Req_Data[Send_Auth_Req_Data_Buf_Index],20);
        Send_Auth_Req_Data_Buf_Index+=20;
    }else{
        OS_delay_ms(150);
        memcpy(&AirSync_Indicate_Data[0],&Auth_Req_Data[Send_Auth_Req_Data_Buf_Index],20);
        Send_Auth_Req_Data_Buf_Index = 0;
        auth_status = AUTH_RESP_GET_WRITE_PACKET;
    }
    BLE_gatt_charact_indicate(trspx_indicate_handle, FORCE_LINK0,Sent_Auth_Req_cb); 
}

void unpack_auth_response()
{
    int i;
    #ifdef Protocol_Buffer_Test
    AuthResponse *response = epb_unpack_auth_response(auth_response_buf, auth_response_length);
    
    if(response != NULL) {
        AIRSYNC_PRINT("error code: %d\n", response->base_response->err_code); 
        if (response->base_response->has_err_msg) {
            for(i=0; i<response->base_response->err_msg.len; i++) {
                AIRSYNC_PRINT("%c", response->base_response->err_msg.str[i]);
            }
            AIRSYNC_PRINT("\n");
        }
        #ifdef Md5AndAesEncrypt
        if (response->aes_session_key.len > 0) { //response->aes_session_key.len = 0
            for(i=0; i<response->aes_session_key.len; i++) {
                AIRSYNC_PRINT("%02x", response->aes_session_key.data[i]);
            }
            AIRSYNC_PRINT("\n");
        }
        
        //Get Session Key Data, We must do AES Decrypt
        int len = response->aes_session_key.len;
        int offset = 0;
        int out_len = 0;
        uint8_t error;
        AES_CTX c;
        
        memcpy(encrypt_buf, &response->aes_session_key.data[0], response->aes_session_key.len);
        error = aes_cbc_decrypt_pkcs7(&c, device_key, encrypt_buf, (uint8_t)response->aes_session_key.len, decrypt_buf, &out_len);
        if(error != 0)
            AIRSYNC_PRINT("AES Decrypt Fail, Error number :%d\n", error);
        decrypt_len = out_len;
        
        AIRSYNC_PRINT("decrypt len: %d\n", decrypt_len);
        for(i=0; i<decrypt_len; i++) {
            AIRSYNC_PRINT("%02x", decrypt_buf[i]);
        }
        AIRSYNC_PRINT("\n");
        memcpy(&sessionkey[0], &decrypt_buf[0], decrypt_len);
        #endif
        
        epb_unpack_auth_response_free(response);
        auth_status = AUTH_END;
    }
    #else
    #warning "There is lack Protocol Buffer related code!!! Please reference Note.txt steps to add."
    #endif
}
