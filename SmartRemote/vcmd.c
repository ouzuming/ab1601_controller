/**
  ******************************************************************************
  * @file	 vcmd.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   Airoah HCI Vendor command process
  ******************************************************************************
  Tips:
	 ��ģ����Ҫ���ڴ���MP�����е�HCI Vendor Command��ʵ��ֻ�ᴦ��OGFΪ0x80��OCFΪ0x01��VCMD�����ڶ����ᴫ��������У׼��MP���̵�����У׼�����ڴ�ģ���д�������
	����У׼�������鿴airMouse.c��
  */

/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_uart.h"
#include "vcmd.h"

/* Private typedef -----------------------------------------------------------*/
typedef struct
{
    uint8_t ocf;
    RC_VCMD_ERROR_CODE (*handler) (vcmd_packet* pkt, uint8_t rsp[], uint8_t *rsplen);
} VCMD_ENTRY;

typedef struct
{
    uint8_t ogf;
    uint8_t size;
    VCMD_ENTRY *handlers;
} VCMD_ENTRIES;

/* Private define ------------------------------------------------------------*/
#define OGF_RC					0x80
#define OCF_RC_AirMouse_Cali	0x01

/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static RC_VCMD_ERROR_CODE VCMD_MouseCalibrate_ISR(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len);
static void VCMD_Response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, RC_VCMD_ERROR_CODE status);

/* Private variables ---------------------------------------------------------*/

// mouse start calibrating flag
volatile bool vcmd_MouseCalibrating = false;

// OCF handler list
const VCMD_ENTRY vcmd_RC_HandlerList[] =
{
    { OCF_RC_AirMouse_Cali, VCMD_MouseCalibrate_ISR },
};

// OGF handler list
const VCMD_ENTRIES vcmd_HandlerList[] =
{
    { OGF_RC, sizeof(vcmd_RC_HandlerList)/sizeof(VCMD_ENTRY), (VCMD_ENTRY *)&vcmd_RC_HandlerList[0] },
};

/* Public functions ----------------------------------------------------------*/

/**
  * @brief  VCMD handler, only capture the Mouse calibration VCMD
  * @param  None
  * @retval None
  */
void VCMD_Handler(vcmd_packet *pkt)
{
    uint8_t i, j;

    for (i = 0; i < sizeof(vcmd_HandlerList)/sizeof(VCMD_ENTRIES); i++)
    {
        VCMD_ENTRIES *vhandlers;
        vhandlers = (VCMD_ENTRIES *)&vcmd_HandlerList[i];
        if (vhandlers->ogf == pkt->vogf)
        {
            for (j = 0; j < vhandlers->size; j++)
            {
                if (vhandlers->handlers[j].ocf == pkt->vocf)
                {
                    uint8_t rsp[255];
                    uint8_t rsplen;
                    RC_VCMD_ERROR_CODE status;

                    rsplen = 0;
                    status = vhandlers->handlers[j].handler(pkt, rsp, &rsplen);

                    if (status != RC_VCMD_EXECUTING)
                    {
                    	VCMD_Response(pkt->vogf, pkt->vocf, rsp, rsplen, status);
                    }
                    return;
                }
            }
        }
    }

	VCMD_Response(pkt->vogf, pkt->vocf, NULL, 0, RC_VCMD_ERROR_COMMAND_NOT_SUPPORT);
}

/**
  * @brief  VCMD calibration Loop, start motion calibrate if OCF_RC_AirMouse_Cali captured
  * @param  None
  * @retval None
  */
void VCMD_MouseCalibrateInLoop(void)
{
	if (vcmd_MouseCalibrating)
	{
		uint16_t data[8];		// temp the motion offset data
		bool result;

		vcmd_MouseCalibrating = false;

		VCMD_Response(OGF_RC, OCF_RC_AirMouse_Cali, NULL, 0, RC_VCMD_ERROR_GENERAL);
	}
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief  Mouse VCMD ISR
  * @param  None
  * @retval None
  */
static RC_VCMD_ERROR_CODE VCMD_MouseCalibrate_ISR(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
	vcmd_MouseCalibrating = true;

    return RC_VCMD_EXECUTING;
}

/**
  * @brief  VCMD response
  * @param  None
  * @retval None
  */
static void VCMD_Response(uint8_t ogf, uint8_t ocf, uint8_t* parm, uint8_t plen, RC_VCMD_ERROR_CODE status)
{
    uint8_t *obuf;

    obuf = malloc(plen + 6);

    obuf[0] = 4;
    obuf[1] = HCI_EVT_AIROHA_VENDOR;
    obuf[2] = plen + 3;
    obuf[3] = ocf;
    obuf[4] = ogf;
    obuf[5] = status;
    memcpy(obuf + 6, parm, plen);

    AB_UART_Write(uart1_ins, obuf, (uint16_t)plen+6);

    free(obuf);
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
