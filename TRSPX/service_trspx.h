/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    service_trspx.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef _TRSPX_SERVICE_H_
#define _TRSPX_SERVICE_H_

#include "ble_gatt_server.h"

uint16_t trspx_service_handle;
uint16_t trspx_indicate_handle;
uint16_t trspx_notify_handle;
uint16_t trspx_cccd_handle;
uint16_t trspx_write_handle;
uint16_t trspx_read_handle;


/*!
    @brief trspx service initialization Parameters
*/
typedef struct
{
    //uint16_t* service_uuid;      /**< Must be a Null-terminated string and length<512*/
    //uint8_t* indication_data;
    uint8_t* write_data;
    uint8_t* read_data;
    uint8_t* trspx_cccd;
    ATTCB trspx_write_CB;
    ATTCB trspx_cccd_CB;
}trspx_init_para;

/*!
    @brief Initialization function of trspx service.
    @param para @ref trspx_init_para.
    @return None.
*/

void TRSPX_service_init_para(trspx_init_para * para);

#endif
