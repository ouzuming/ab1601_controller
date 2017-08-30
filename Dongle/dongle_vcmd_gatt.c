/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_gatt.c
DESCRIPTION
NOTES
********************************************************************************/
#include "dongle_vcmd_gatt.h"

uint8_t last_ocf;


/******************************************************************************/
/* Static
 */

char* error_ary[] =
{
    "ATT_NOERR",
    "ATT_ERR_INVALID_HANDLE",
    "ATT_ERR_READ_NOT_PERMITTED",
    "ATT_ERR_WRITE_NOT_PERMITTED",
    "ATT_ERR_INVALID_PDU",
    "ATT_ERR_INSUFFICIENT_AUTHEN",
    "ATT_ERR_UNSUPPORTED_REQ",
    "ATT_ERR_INVALID_OFFSET",
    "ATT_ERR_INSUFFICIENT_AUTHOR",
    "ATT_ERR_PREPARE_QUEUE_FULL",
    "ATT_ERR_ATTR_NOT_FOUND",
    "ATT_ERR_ATTR_NOT_LONG",
    "ATT_ERR_INSUFFICIENT_KEY_SIZE",
    "ATT_ERR_INVALID_VALUE_LENGTH",
    "ATT_ERR_UNLIKELY",
    "ATT_ERR_INSUFFICIENT_ENCRYPT",
    "ATT_ERR_UNSUPPORTED_GRP_TYPE",
    "ATT_ERR_INSUFFICIENT_RESOURCES",
};

static void DONGLE_UNEXPECTED_RESPONSE_evt_hdl(bt_evt_t *evt)
{
    printf("get unexpected resp from att slave\n");
    DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_ERROR_GENERAL);
}

static void DONGLE_GET_ERROR_RESPONSE_FROM_SERVER_evt_hdl(bt_evt_t *evt)
{
    printf("get error resp from att slave with reason: [%s]\n", error_ary[evt->evt.gatt_evt.gatt.err_response.err_code]);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, &evt->evt.gatt_evt.gatt.err_response.err_code, 1, VCMD_ERROR_GENERAL);
}

static void DONGLE_MTU_EXCHANGED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_mtu_exchange_t * p = &evt->evt.gatt_evt.gatt.mtu_exchanged;

    printf("mtu has been changed to %d.\n",p->new_mtu);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->new_mtu, 2, VCMD_SUCCESS);
}

static void DONGLE_PRIM_SERVICE_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_prim_service_discovered_t * p = &evt->evt.gatt_evt.gatt.prim_service_discovered;
    uint8_t i;

    printf("discovered %d services.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0;i<p->num;i++)
    {
        typedef struct
        {
            uint16_t start;
            uint16_t end;
            uint8_t  uuid_len;
            uint8_t  uuid[16];
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        memcpy(&evt.start, &p->service[i].handle_start, p->service[i].uuid_len+5);
        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, p->service[i].uuid_len+5, VCMD_SUCCESS);
    }
}

static void DONGLE_UUID_SERVICE_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_uuid_service_discovered_t * p = &evt->evt.gatt_evt.gatt.uuid_service_discovered;

    printf("Discovered %d service with given UUID.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0;i<p->num;i++)
    {
        typedef struct
        {
            uint16_t start;
            uint16_t end;
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        evt.start = p->service[i].handle_start;
        evt.end   = p->service[i].handle_end;

        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt,4, VCMD_SUCCESS);
    }
}

static void DONGLE_INCLUDED_SERVICE_FOUND_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_included_service_found_t * p = &evt->evt.gatt_evt.gatt.included_service_found;

    printf("Found %d included service.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0; i<p->num; i++)
    {
        typedef struct
        {
            uint16_t handle;
            uint16_t service_start;
            uint16_t service_end;
            uint8_t  service_uuid_len;
            uint8_t  service_uuid[16];
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        memcpy(&evt.handle, &p->include[i].handle, p->include[i].service_uuid_len+7);

        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, p->include[i].service_uuid_len+7, VCMD_SUCCESS);
    }
}

static void DONGLE_SERVICE_CHAR_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_service_char_discovered_t * p = &evt->evt.gatt_evt.gatt.service_char_discovered;

    printf("Discovered %d characteristics.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0; i<p->num; i++)
    {
        typedef struct
        {
            uint16_t declaration_handle;
            uint16_t value_handle;
            uint8_t  property;
            uint8_t  uuid_len;
            uint8_t  uuid[16];
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;


        memcpy(&evt.declaration_handle, &p->charact[i].declaration_handle, p->charact[i].uuid_len+6);

        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, p->charact[i].uuid_len+6, VCMD_SUCCESS);
    }
}

static void DONGLE_UUID_CHAR_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_uuid_char_discovered_t * p = &evt->evt.gatt_evt.gatt.uuid_char_discovered;

    printf("Discovered %d characteristics with given UUID.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0; i<p->num; i++)
    {
        typedef struct
        {
            uint16_t declaration_handle;
            uint16_t value_handle;
            uint8_t  property;
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        memcpy(&evt.declaration_handle, &p->charact[i].declaration_handle, 5);

        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, 5, VCMD_SUCCESS);
    }
}

static void DONGLE_CHAR_DESCRIP_DISCOVERED_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_char_descrip_discovered_t * p = &evt->evt.gatt_evt.gatt.char_descrip_discovered;

    printf("Found %d Attributes:\n", p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0; i<p->num; i++)
    {
        typedef struct
        {
            uint16_t handle;
            uint8_t  uuid_len;
            uint8_t  uuid[16];
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        memcpy(&evt.handle, &p->descrip[i].handle, p->descrip[i].uuid_len+3);
        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, p->descrip[i].uuid_len+3, VCMD_SUCCESS);
    }
}

static void DONGLE_CHAR_VALUE_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_value_read_t * p = &evt->evt.gatt_evt.gatt.char_value_read;

    printf("Characteristic Value of Handle %04X has been read.\n", p->handle);

    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->handle, p->len+4, VCMD_SUCCESS);
}

static void DONGLE_UUID_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    uint8_t i;
    ble_gatt_evt_uuid_char_read_t * p = &evt->evt.gatt_evt.gatt.uuid_char_read;

    printf("%d characteristics with given UUID has been read.\n",p->num);

    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_MORE_EVT_FOLLOWING, (uint8_t *)&p->num, 1, VCMD_SUCCESS);

    for(i=0; i<p->num; i++)
    {
        typedef struct
        {
            uint16_t handle;
            uint8_t  len;
            uint8_t  value[19];
        } __attribute__((packed))THIS_EVT;

        THIS_EVT evt;

        memcpy(&evt.handle, &p->charact[i].handle, p->charact[i].len+3);
        DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&evt, p->charact[i].len+3, VCMD_SUCCESS);
    }
}

static void DONGLE_LONG_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_char_read_t * p = &evt->evt.gatt_evt.gatt.long_char_read;

    printf("Long characteristic with attribute handle = %04X has been read\n",p->handle);

    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->handle, p->len+4, VCMD_SUCCESS);
}

static void DONGLE_MULTI_CHAR_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_multi_char_read_t * p = &evt->evt.gatt_evt.gatt.multi_char_read;

    printf("Multiple characteristics has been read.\n");

    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->len, p->len+2, VCMD_SUCCESS);
}

static void DONGLE_CHAR_VALUE_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    printf("Characteristics has been written successfully.\n");

    DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_SUCCESS);
}

static void DONGLE_LONG_CHAR_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    printf("Long characteristics has been written successfully.\n");

    DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_SUCCESS);
}
static void DONGLE_RELIABLE_WRITE_FINISHED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_reliable_write_finished_t * p = &evt->evt.gatt_evt.gatt.reliable_write_finished;
    uint8_t num = p->num+1;

    if(p->is_cancelled)
    {
        printf("Reliable write failed during write number %d.\n",num);
        DONGLE_vcmd_response(OGF_GATT, last_ocf, &num, 1, VCMD_ERROR_GENERAL);
    }
    else
    {
        printf("All %d reliable write executed successfully.\n",p->num);
        DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_SUCCESS);
    }
}

static void DONGLE_CHAR_DESCRIP_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_descrip_read_t * p = &evt->evt.gatt_evt.gatt.char_descrip_read;

    printf("Descriptor Value of Handle %04X has been read.\n", p->handle);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->handle, p->len+4, VCMD_SUCCESS);
}

static void DONGLE_LONG_DESCRIP_READ_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_descrip_read_t * p = &evt->evt.gatt_evt.gatt.long_descrip_read;

    printf("Long descriptor Value of Handle %04X has been read.\n", p->handle);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, (uint8_t *)&p->handle, p->len+4, VCMD_SUCCESS);
}
static void DONGLE_CHAR_DESCRIP_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_char_descrip_written_t * p = &evt->evt.gatt_evt.gatt.char_descrip_written;

    printf("Descriptor value with attribute handle %04X has been written successfully.\n",p->handle);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_SUCCESS);
}
static void DONGLE_LONG_DESCRIP_WRITTEN_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_long_descrip_written_t * p = &evt->evt.gatt_evt.gatt.long_descrip_written;

    printf("Long descriptor value with attribute handle %04X has been written successfully.\n",p->handle);
    DONGLE_vcmd_response(OGF_GATT, last_ocf, NULL, 0, VCMD_SUCCESS);
}

static void DONGLE_HANDLE_VALUE_REPORTED_evt_hdl(bt_evt_t *evt)
{
    ble_gatt_evt_handle_value_reported_t *p = &evt->evt.gatt_evt.gatt.handle_value_reported;

    //printf("Get attribute value report of handle: 0x%4X.\n", p->handle);
    DONGLE_vcmd_response(OGF_GATT, OCF_GATT_HANDLE_VALUE_REPORT, (uint8_t *)&p->conn_handle, p->len+6, VCMD_SUCCESS);
}

typedef void (* _gatt_evt_handler)(bt_evt_t *evt);

_gatt_evt_handler GATT_Handler[]=
{
    DONGLE_UNEXPECTED_RESPONSE_evt_hdl,
    DONGLE_GET_ERROR_RESPONSE_FROM_SERVER_evt_hdl,
    DONGLE_MTU_EXCHANGED_evt_hdl,
    DONGLE_PRIM_SERVICE_DISCOVERED_evt_hdl,
    DONGLE_UUID_SERVICE_DISCOVERED_evt_hdl,
    DONGLE_INCLUDED_SERVICE_FOUND_evt_hdl,
    DONGLE_SERVICE_CHAR_DISCOVERED_evt_hdl,
    DONGLE_UUID_CHAR_DISCOVERED_evt_hdl,
    DONGLE_CHAR_DESCRIP_DISCOVERED_evt_hdl,
    DONGLE_CHAR_VALUE_READ_evt_hdl,
    DONGLE_UUID_CHAR_READ_evt_hdl,
    DONGLE_LONG_CHAR_READ_evt_hdl,
    DONGLE_MULTI_CHAR_READ_evt_hdl,
    DONGLE_CHAR_VALUE_WRITTEN_evt_hdl,
    DONGLE_LONG_CHAR_WRITTEN_evt_hdl,
    DONGLE_RELIABLE_WRITE_FINISHED_evt_hdl,
    DONGLE_CHAR_DESCRIP_READ_evt_hdl,
    DONGLE_LONG_DESCRIP_READ_evt_hdl,
    DONGLE_CHAR_DESCRIP_WRITTEN_evt_hdl,
    DONGLE_LONG_DESCRIP_WRITTEN_evt_hdl,
    DONGLE_HANDLE_VALUE_REPORTED_evt_hdl,
};

void DONGLE_gatt_evt_handler(bt_evt_t *evt)
{
    GATT_Handler[evt->evt_id - BT_EVENT_GATT](evt);
}

/******************************************************************************/
/* API
 */
typedef GATT_STATUS (* GATT_API)(void *para);

GATT_API gatt_api_table[] =
{
    (GATT_API)ble_gatt_4_3_1_exchange_mtu,
    (GATT_API)ble_gatt_4_4_1_disc_all_primary_services,
    (GATT_API)ble_gatt_4_4_2_disc_primary_service_by_UUID,
    (GATT_API)ble_gatt_4_5_1_find_included_services,
    (GATT_API)ble_gatt_4_6_1_disc_all_chars,
    (GATT_API)ble_gatt_4_6_2_disc_chars_by_UUID,
    (GATT_API)ble_gatt_4_7_1_disc_all_char_descs,
    (GATT_API)ble_gatt_4_8_1_read_char_value,
    (GATT_API)ble_gatt_4_8_2_read_using_char_UUID,
    (GATT_API)ble_gatt_4_8_3_read_long_char_value,
    (GATT_API)ble_gatt_4_8_4_read_multi_char_values,
    (GATT_API)ble_gatt_4_9_1_write_no_rsp,
    (GATT_API)ble_gatt_4_9_3_write_char_value,
    (GATT_API)ble_gatt_4_9_4_write_long_char_value,
    (GATT_API)ble_gatt_4_9_5_reliable_writes,
    (GATT_API)ble_gatt_4_12_1_read_char_desc,
    (GATT_API)ble_gatt_4_12_2_read_long_char_desc,
    (GATT_API)ble_gatt_4_12_3_write_char_desc,
    (GATT_API)ble_gatt_4_12_4_write_long_char_desc,
};

VCMD_ERROR_CODE DONGLE_transfer_to_GATT_API(uint8_t index, vcmd_packet* para)
{
    GATT_STATUS status;

    status = gatt_api_table[index](para->buf);

    switch(status)
    {
        case GATT_SUCCESS:
            last_ocf = index+1;
            return VCMD_EXECUTING;
        case GATT_FAILURE_INVALID_CONNECTION_HANDLE:
        case GATT_FAILURE_INVALID_PARAMETER:
            return VCMD_ERROR_INVALID_PARAM;
        case GATT_FAILURE_PREVIOUS_PROCEDURE_NOT_ENDED:
        case GATT_FAILURE_TRANSACTION_TIMEOUT:
        default:
            return VCMD_ERROR_GENERAL;
    }

}

VCMD_ERROR_CODE dongle_vcmd_exchange_mtu(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(0, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_disc_all_primary_services(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(1, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_disc_primary_service_by_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(2, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_find_included_services(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(3, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_disc_all_chars(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(4, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_disc_chars_by_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(5, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_disc_all_char_descs(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(6, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(7, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_using_char_UUID(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(8, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_long_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(9, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_multi_char_values(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(10,pkt);
}

VCMD_ERROR_CODE dongle_vcmd_write_no_rsp(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(11, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_write_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(12, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_write_long_char_value(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(13, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_reliable_writes(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(14, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(15, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_read_long_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(16, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_write_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(17, pkt);
}

VCMD_ERROR_CODE dongle_vcmd_write_long_char_desc(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    return DONGLE_transfer_to_GATT_API(18, pkt);
}

