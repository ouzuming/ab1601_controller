/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_I2C_MFiCP "Example/I2C/MFiCP"
      \code {.c}
*/

#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bsp_generic.h"
#include "Drv_odpinmux.h"
#include "drv_i2c.h"
#include "ab_i2c.h"

//
// Apple Authentication Coprocessor 2.0C R18
// Section 3.4 Coprocessor 2.0C Address Selection
// Section 3.7.3 I2C Communications Process
//
#define MFI_CP_RST_LO_ADDR			0x10
#define MFI_CP_RST_HI_ADDR			0x11

//
// Apple Authentication Coprocessor 2.0C R18
// Section 3.8.1 Register Addresses
//
#define MFI_CP_VERSION_DEVICE		0x00
#define MFI_CP_VERSION_FIRMWARE		0x01
#define MFI_CP_VERSION_AUTHP_MAJOR	0x02
#define MFI_CP_VERSION_AUTHP_MINOR	0x03
#define MFI_CP_VERSION_DEVICE_ID	0x04
#define MFI_CP_ERROR_CODE			0x05
#define MFI_CP_AUTH_CTRL_STATUS		0x10
#define MFI_CP_CHALL_RSP_DATA_LEN	0x11
#define MFI_CP_CHALL_RSP_DATA		0x12
#define MFI_CP_CHALL_DATA_LEN		0x20
#define MFI_CP_CHALL_DATA			0x21
#define MFI_CP_ACC_CERT_DATA_LEN	0x30
#define	MFI_CP_ACC_CERT_DATA_START  0x31
#define	MFI_CP_ACC_CERT_DATA_END    0x3A

//
// Apple Authentication Coprocessor 2.0C R18
// Section 3.8.2.6 Authentication Control and Status
//
#define MFI_PROC_CTRL_MASK			0x07
#define MFI_PROC_CTRL_NEW_CHALL_RG	0x01

#define MFI_PROC_RLT_MASK			0x70
#define MFI_PROC_RLT_CHALL_RSP		0x10
#define MFI_PROC_GET_RLT_COUNT      0x0A

#define MFI_CP_NO_ERROR				0x00
#define MFI_BLOCK_SIZE				128


uint8_t UT_BUF[128];

void hex_output(uint8_t *p, int len)
{
    int i, j, c;

    if (!(len%4)) {
        for (i=0, j=1; i<len; i+=4, j++) {
            printf("%02X%02X%02X%02X", p[i], p[i+1], p[i+2], p[i+3]);
            if (j<8) {
                printf(" ");
            } else {
                printf("\n");
                j=0;
            }
        }
    } else {
        for (i=0, j=0, c=0; i<len; i++) {
            printf("%02X", p[i]);
            j++;

            if (j>3) {
                if (c<7) {
                    printf(" ");
                    c++;
                } else {
                    printf("\n");
                    c = 0;
                }

                j = 0;
           }
        }
    }
    printf("\n");
}

void MFiRead(uint16_t RegAddr, uint8_t *buf, uint16_t size)
{
    I2C_BUS_CTRL_T I2cCtrl;

    I2cCtrl.FreqSel       = I2C_CLK_FREQ_400K;
    I2cCtrl.DeviceAddr    = MFI_CP_RST_HI_ADDR;
    I2cCtrl.RegAddr		  = RegAddr;
    I2cCtrl.NumOfReg      = size;
    I2cCtrl.ValueAddr.Dst = buf;
    I2cCtrl.repeat        = 0x01;

    AB_I2C_BlockingRead(&I2cCtrl);
}

void MFiWrite(uint16_t RegAddr, uint8_t *buf, uint16_t size)
{
    I2C_BUS_CTRL_T I2cCtrl;

    I2cCtrl.FreqSel       = I2C_CLK_FREQ_400K;
    I2cCtrl.DeviceAddr    = MFI_CP_RST_HI_ADDR;
    I2cCtrl.RegAddr		  = RegAddr;
    I2cCtrl.NumOfReg      = size;
    I2cCtrl.ValueAddr.Src = buf;
    I2cCtrl.repeat        = 0x01;

    AB_I2C_BlockingWrite(&I2cCtrl);
}

void UT_MFiCP()
{
    I2C_BUS_CTRL_T I2cCtrl;
    uint8_t MFiBuf[MFI_BLOCK_SIZE];
    uint16_t MFiLen;
    uint8_t err;
    uint8_t one;
    uint16_t Idx, eIdx, Len;
    uint8_t pre_cha[20] = {0x63, 0xBE, 0xC5, 0x48, 0xB8, 0x76, 0x02, 0x86, 0x01, 0xA6, 0x05, 0xBF, 0xEC, 0x9D, 0x1D, 0x4C, 0x86, 0xDC, 0x4F, 0x1A};

    printf("Read - Device Version\n");
    MFiRead(MFI_CP_VERSION_DEVICE, &one, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_VERSION_DEVICE FAIL\n");
        hex_output(MFiBuf, 1);
    }
    hex_output(&one, 1);

    printf("Read - Firmware Version\n");
    MFiRead(MFI_CP_VERSION_FIRMWARE, &one, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_VERSION_FIRMWARE FAIL\n");
        hex_output(MFiBuf, 1);
    }
    hex_output(&one, 1);

    printf("Read - Authentication Protocol Major Version\n");
    MFiRead(MFI_CP_VERSION_AUTHP_MAJOR, &one, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_VERSION_AUTHP_MAJOR FAIL\n");
        hex_output(MFiBuf, 1);
    }
    hex_output(&one, 1);

    printf("Read - Authentication Protocol Minor Version\n");
    MFiRead(MFI_CP_VERSION_AUTHP_MINOR, &one, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_VERSION_AUTHP_MINOR FAIL\n");
        hex_output(MFiBuf, 1);
    }
    hex_output(&one, 1);

    printf("Read - Device ID\n");
    MFiRead(MFI_CP_VERSION_DEVICE_ID, MFiBuf, 4);
    hex_output(MFiBuf, 4);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_VERSION_DEVICE_ID FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Write - Authentication Control and Status\n");
    MFiBuf[0] = 0x00;
    MFiWrite(MFI_CP_AUTH_CTRL_STATUS, MFiBuf, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiWrite MFI_CP_AUTH_CTRL_STATUS FAIL\n");
        hex_output(MFiBuf, 1);
    }

    Len = 20;
    printf("Write - Challenge Data Length\n");
    MFiBuf[0] = 0x00; MFiBuf[1] = Len;
    MFiWrite(MFI_CP_CHALL_DATA_LEN, MFiBuf, 2);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiWrite MFI_CP_CHALL_DATA_LEN FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Read - Challenge Data Length\n");
    MFiRead(MFI_CP_CHALL_DATA_LEN, MFiBuf, 2);
    hex_output(MFiBuf, 2);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_CHALL_DATA_LEN FAIL\n");
        hex_output(MFiBuf, 1);
    }

    memcpy(MFiBuf, pre_cha, Len);
    hex_output(MFiBuf, Len);

    printf("Write - Challenge Data\n");
    MFiWrite(MFI_CP_CHALL_DATA, MFiBuf, Len);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiWrite MFI_CP_CHALL_DATA FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Write - Authentication Control and Status\n");
    MFiBuf[0] = 0x01;
    MFiWrite(MFI_CP_AUTH_CTRL_STATUS, MFiBuf, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiWrite MFI_CP_AUTH_CTRL_STATUS FAIL\n");
        hex_output(MFiBuf, 1);
    }

    do {

        printf("Read - Authentication Control and Status\n");
        MFiRead(MFI_CP_AUTH_CTRL_STATUS, &one, 1);
        MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
        if (MFiBuf[0] != MFI_CP_NO_ERROR) {
            printf("MFiRead MFI_CP_AUTH_CTRL_STATUS FAIL\n");
            hex_output(MFiBuf, 1);
        }
        hex_output(&one, 1);
    } while (one!=0x10);

    printf("Read - Challenge Rsp Data Length\n");
    MFiRead(MFI_CP_CHALL_RSP_DATA_LEN, MFiBuf, 2);
    hex_output(MFiBuf, 2);
    MFiBuf[2] = MFiBuf[0]; MFiBuf[0] = MFiBuf[1]; MFiBuf[1] = MFiBuf[2];
    memcpy((uint8_t*)&MFiLen, MFiBuf, 2);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_CHALL_RSP_DATA_LEN FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Read - Challenge Rsp Data\n");
    MFiRead(MFI_CP_CHALL_RSP_DATA, MFiBuf, MFiLen);
    hex_output(MFiBuf, MFiLen);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_CHALL_RSP_DATA FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Write - Authentication Control and Status\n");
    MFiBuf[0] = 0x00;
    MFiWrite(MFI_CP_AUTH_CTRL_STATUS, MFiBuf, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiWrite MFI_CP_AUTH_CTRL_STATUS FAIL\n");
        hex_output(MFiBuf, 1);
    }

    printf("Read - Authentication Control and Status\n");
    MFiRead(MFI_CP_AUTH_CTRL_STATUS, &one, 1);
    MFiRead(MFI_CP_ERROR_CODE, MFiBuf, 1);
    if (MFiBuf[0] != MFI_CP_NO_ERROR) {
        printf("MFiRead MFI_CP_AUTH_CTRL_STATUS FAIL\n");
        hex_output(MFiBuf, 1);
    }
    hex_output(&one, 1);

}

const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};

void main()
{    
    AB_BSP_init(&bsp_init_parm);

    DRV_OdPinMux_GrpSet(I2C_PIN_MASK0, PIN_I2C);

    printf("Start MFiCP Testing ...\n\n");
    AB_I2C_Open();
    UT_MFiCP();
    AB_I2C_Close();
    printf("\nEnd ...\n");

    while (1);
}

/*!
      \endcode
*/

