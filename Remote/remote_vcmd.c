/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_vcmd.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "ab_uart.h"
#include "remote.h"
#include "remote_vcmd.h"


#define OGF_RC                              0x80
#define OCF_RC_MOUSE_CALI                   0x01

typedef struct
{
    uint8_t ocf;
    RC_VCMD_ERROR_CODE (*handler) (vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen);
}VCMD_ENTRY;

typedef struct
{
    uint8_t ogf;
    uint8_t size;
    VCMD_ENTRY *handlers;
}VCMD_ENTRIES;

bool _remote_mouse_vcmd_calibration(uint16_t * mouse_data);
void REMOTE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, RC_VCMD_ERROR_CODE status);

void remote_mouse_vcmd_calibrate_in_loop(void)
{
    if(remote_vcmd_mouse_calibrating)
    {
        uint16_t data[8];
        bool success;

        remote_vcmd_mouse_calibrating = false;

        success = _remote_mouse_vcmd_calibration(data);

        if(success)
            REMOTE_vcmd_response(OGF_RC, OCF_RC_MOUSE_CALI, (uint8_t *)data,16,RC_VCMD_SUCCESS);
        else
            REMOTE_vcmd_response(OGF_RC, OCF_RC_MOUSE_CALI, NULL, 0, RC_VCMD_ERROR_GENERAL);
    }
}

RC_VCMD_ERROR_CODE remote_mouse_vcmd_calibrate_isr(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    remote_vcmd_mouse_calibrating = true;

    return RC_VCMD_EXECUTING;
}


const VCMD_ENTRY vcmd_rc_handlers[] =
{
    {OCF_RC_MOUSE_CALI               ,remote_mouse_vcmd_calibrate_isr},
};

const VCMD_ENTRIES vcmd_handlers[] =
{
    {OGF_RC, sizeof(vcmd_rc_handlers)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_rc_handlers[0]},
};

/******************************************************************************/
/* Static                                                                     */
/******************************************************************************/
void REMOTE_vcmd_response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, RC_VCMD_ERROR_CODE status)
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


void REMOTE_vcmd_handle(vcmd_packet *pkt)
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
                    RC_VCMD_ERROR_CODE status;

                    rsplen = 0;
                    status = vhandlers->handlers[j].handler(pkt, rsp, &rsplen);

                    if(status != RC_VCMD_EXECUTING)
                    {
                        REMOTE_vcmd_response(pkt->vogf, pkt->vocf, rsp, rsplen, status);
                    }
                    return;
                }
            }
        }
    }

    REMOTE_vcmd_response(pkt->vogf, pkt->vocf, NULL, 0, RC_VCMD_ERROR_COMMAND_NOT_SUPPORT);

}
