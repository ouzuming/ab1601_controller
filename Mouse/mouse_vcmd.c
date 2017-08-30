/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_vcmd.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ab_uart.h"
#include "mouse.h"
#include "mouse_vcmd.h"


#define OGF_RC                              0x80
#define OCF_RC_MOUSE_CALI                   0x01

typedef struct
{
    uint8_t ocf;
    MS_VCMD_ERROR_CODE (*handler) (vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen);
}VCMD_ENTRY;

typedef struct
{
    uint8_t ogf;
    uint8_t size;
    VCMD_ENTRY *handlers;
}VCMD_ENTRIES;

void MOUSE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, MS_VCMD_ERROR_CODE status);


MS_VCMD_ERROR_CODE mouse_mouse_vcmd_calibrate_isr(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
//    mouse_vcmd_mouse_calibrating = true;

    return MS_VCMD_EXECUTING;
}


const VCMD_ENTRY vcmd_ms_handlers[] =
{
    {OCF_RC_MOUSE_CALI               ,mouse_mouse_vcmd_calibrate_isr},
};

const VCMD_ENTRIES vcmd_handlers[] =
{
    {OGF_RC, sizeof(vcmd_ms_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_ms_handlers[0]},
};

/******************************************************************************/
/* Static                                                                     */
/******************************************************************************/
void MOUSE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, MS_VCMD_ERROR_CODE status)
{
    uint8_t *obuf;

    obuf = malloc(plen + 6);

    obuf[0] = 4;
    obuf[1] = HCI_EVT_AIROHA_VENDOR;
    obuf[2] = plen + 3;
    obuf[3] = ocf;
    obuf[4] = ogf;
    obuf[5] = status;
    memcpy (obuf + 6, parm, plen);

    AB_UART_Write(uart1_ins, obuf, (uint16_t)plen+6);

    free(obuf);
}


void MOUSE_vcmd_handle(vcmd_packet *pkt)
{
    uint8_t i, j;

    for(i = 0; i < sizeof(vcmd_handlers)/sizeof(VCMD_ENTRIES); i++)
    {
        VCMD_ENTRIES *vhandlers;
        vhandlers = (VCMD_ENTRIES *)&vcmd_handlers[i];
        if(vhandlers->ogf == pkt->vogf)
        {
            for(j = 0; j < vhandlers->size; j++)
            {
                if(vhandlers->handlers[j].ocf == pkt->vocf)
                {
                    uint8_t rsp[255];
                    uint8_t rsplen;
                    MS_VCMD_ERROR_CODE status;

                    rsplen = 0;
                    status = vhandlers->handlers[j].handler(pkt, rsp, &rsplen);

                    if(status != MS_VCMD_EXECUTING)
                    {
                        MOUSE_vcmd_response(pkt->vogf, pkt->vocf, rsp, rsplen, status);
                    }
                    return;
                }
            }
        }
    }

    MOUSE_vcmd_response(pkt->vogf, pkt->vocf, NULL, 0, MS_VCMD_ERROR_COMMAND_NOT_SUPPORT);

}
