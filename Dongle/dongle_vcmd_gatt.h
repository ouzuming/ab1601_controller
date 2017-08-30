/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_gatt.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef DONGLE_VCMD_GATT_HH_
#define DONGLE_VCMD_GATT_HH_
#include "ab_airoha_vcmd.h"
#include "dongle_vcmd.h"
#include "bt.h"

/******************************************************************************/
/* Defines                                                                    */
/******************************************************************************/
#define OGF_GATT                                0x42

#define OCF_GATT_EXCHANGE_MTU                   0x01
#define OCF_GATT_DISC_ALL_PRIM_SERVICES         0x02
#define OCF_GATT_DISC_PRIM_SERVICES_BY_UUID     0x03
#define OCF_GATT_FIND_INCLUDED_SERVICES         0x04
#define OCF_GATT_DISC_ALL_CHARS                 0x05
#define OCF_GATT_DISC_CHARS_BY_UUID             0x06
#define OCF_GATT_DISC_ALL_CHAR_DESCS            0x07
#define OCF_GATT_READ_CHAR_VALUE                0x08
#define OCF_GATT_READ_USING_CHAR_UUID           0x09
#define OCF_GATT_READ_LONG_CHAR_VALUE           0x0A
#define OCF_GATT_READ_MULTI_CHAR_VALUES         0x0B
#define OCF_GATT_WRITE_NO_RSP                   0x0C
#define OCF_GATT_WRITE_CHAR_VALUE               0x0D
#define OCF_GATT_WRITE_LONG_CHAR_VALUE          0x0E
#define OCF_GATT_RELIABLE_WRITES                0x0F
#define OCF_GATT_READ_CHAR_DESC                 0x10
#define OCF_GATT_READ_LONG_CHAR_DESC            0x11
#define OCF_GATT_WRITE_CHAR_DESC                0x12
#define OCF_GATT_WRITE_LONG_CHAR_DESC           0x13

#define OCF_GATT_MORE_EVT_FOLLOWING             0x80//event only
#define OCF_GATT_HANDLE_VALUE_REPORT            0xFF//event only

/******************************************************************************/
/* API                                                                        */
/******************************************************************************/
void DONGLE_vcmd_gatt_init(void);
void DONGLE_gatt_evt_handler(bt_evt_t *evt);
VCMD_ERROR_CODE dongle_vcmd_exchange_mtu(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_disc_all_primary_services(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_disc_primary_service_by_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_find_included_services(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_disc_all_chars(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_disc_chars_by_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_disc_all_char_descs(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_using_char_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_long_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_multi_char_values(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_write_no_rsp(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_write_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_write_long_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_reliable_writes(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_read_long_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_write_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_write_long_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);





#endif
