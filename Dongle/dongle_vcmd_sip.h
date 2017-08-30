/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_sip.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef DONGLE_VCMD_1600M_HH_
#define DONGLE_VCMD_1600M_HH_
#include "ab_airoha_vcmd.h"
#include "ab_uart.h"
#include "bt.h"

#include "dongle_vcmd.h"
/******************************************************************************/
/* Defines                                                                    */
/******************************************************************************/
#define OGF_SIP 0x36

#define OCF_SIP_SET_SOFT_RESET    0x01
#define OCF_SIP_SET_UART_BAUDRATE    0x02
#define OCF_SIP_SET_CONNECTION_INTERVAL    0x03
#define OCF_SIP_RENAME_MODULE    0x04
#define OCF_SIP_GET_MAC_ADDRESS    0x05
#define OCF_SIP_SET_ADV_INTERVAL    0x06
#define OCF_SIP_SET_ADV_DATA    0x07
#define OCF_SIP_SET_TX_POWER    0x08
#define OCF_SIP_SET_ADV_ENABLE 0x09
#define OCF_SIP_SET_CONNECT_ENABLE 0x0a


/******************************************************************************/
/* API                                                                        */
/******************************************************************************/
VCMD_ERROR_CODE dongle_vcmd_SipSoftReset(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetUartBaudrate(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetConnectionInterval(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipRenameModule(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipGetMacAddress(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetAdvInterval(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetAdvData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetTxPower(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetAdvEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
VCMD_ERROR_CODE dongle_vcmd_SipSetConnectionEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
void DONGLE_vcmd_sip_init(UART_SELECT uartidx);
void DONGLE_vcmd_sip_bt_inited(void);
/*
void DONGLE_vcmd_sip_bt_connected(bt_evt_t *evt);
void DONGLE_vcmd_sip_bt_disconnected(bt_evt_t *evt);
*/
#endif
