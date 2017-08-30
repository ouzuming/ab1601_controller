/**
  ******************************************************************************
  * @file    microphone.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "service.h"
#include "drv_mic.h"
#include "drv_adc.h"
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
// Microphone state define
typedef enum
{
	MIC_STANDBY = 0,
	MIC_ENABLE,
	MIC_DISABLE,
	MIC_WORKING,
} mic_State_t;

// Microphone handle function typedef
typedef void (*pMicFn)(void);

/* Private define ------------------------------------------------------------*/
#define MIC_BufferSize				1280		// default buffer size of PCM data
#define MIC_STARTUP_IGNORE_NUM		3			// default bypass 3 samples

/* Private macro -------------------------------------------------------------*/
/* External function prototypes ----------------------------------------------*/
extern void ima_adpcm_encode_init(void);
extern int  ima_adpcm_encode_proc(short *signal, unsigned char *serial, int len);
extern int  ima_adpcm_encode_proc_halfrate(short *signal, unsigned char *serial, int len);

extern void adpcm_encode_init(void);
extern int  adpcm_encode_proc(short *signal, unsigned char *serial, int len);
extern int  adpcm_encode_proc_halfrate(short *signal, unsigned char *serial, int len);

/* Private function prototypes -----------------------------------------------*/
static void MIC_StandbyProcess(void);
static void MIC_EnableProcess(void);
static void MIC_DisableProcess(void);
static void MIC_WorkingProcess(void);
static void MIC_InterruptHandle(uint8_t *buf);
static void MIC_WorkOvertimeCB(uint32_t id);

/* Private variables ---------------------------------------------------------*/
static uint8_t *mic_RecordPtr = NULL;
static uint8_t *mic_RecordBuf = NULL;
static uint8_t *mic_EncodeBuf = NULL;
static uint16_t mic_EncodeSize = 0;

// ignore sample count at startup
volatile uint8_t mic_IgnoreCount;

// Buffer overflow flag
static bool mic_BufOverflow = false;

// function pointer of ADPCM initialization and encoder
void (*_adpcm_init)(void) = NULL;
int  (*_adpcm_encoder)(short *signal, unsigned char *serial, int len) = NULL;

// Microphone state variable
static mic_State_t micState = MIC_STANDBY;

// Microphone state function table
static const pMicFn MicStateFn[] = {
	MIC_StandbyProcess,
	MIC_EnableProcess,
	MIC_DisableProcess,
	MIC_WorkingProcess
};

/* Public functions ----------------------------------------------------------*/
/**
  * @brief	Select IMA CODEC
  * @param  None
  * @retval None
  */
void MIC_CodecSel_IMA(void)
{
    _adpcm_init = ima_adpcm_encode_init;
    _adpcm_encoder = (ADPCM_HALFRATE) ? ima_adpcm_encode_proc_halfrate : ima_adpcm_encode_proc;
}

/**
  * @brief	Select G726 CODEC
  * @param  None
  * @retval None
  */
void MIC_CodecSel_G726(void)
{
	_adpcm_init = adpcm_encode_init;
	_adpcm_encoder = (ADPCM_HALFRATE) ? adpcm_encode_proc_halfrate : adpcm_encode_proc;
}

/**
  * @brief	Microphone initialization
  * @param  None
  * @retval None
  */
void MIC_Init(void)
{
	MIC_INIT_PARA micPara = {
		.gain 		= mic_gain_27dB,
		.intsel 	= mic_int_half_full,
		.cb			= MIC_InterruptHandle,
		.rx_bufLenInByte = MIC_BufferSize,
		.rx_buf		= mic_RecordBuf,
	};

	// only INIT once at startup
	if (mic_EncodeSize == 0)
	{
		mic_EncodeSize = (ADPCM_HALFRATE) ? (MIC_BufferSize/16) : (MIC_BufferSize/8);

		#if (ADPCM_SEL_IMA)
		MIC_CodecSel_IMA();
		#else
		MIC_CodecSel_G726();
		#endif

		mic_RecordBuf = malloc(MIC_BufferSize);
		mic_EncodeBuf = malloc(mic_EncodeSize);
	}

	DRV_Mic_Init(&micPara);
	_adpcm_init();

	// debug is disabled
}

/**
  * @brief  Microphone polling function
  * @param  None
  * @retval None
  */
void MIC_Polling(void)
{
	if (MicStateFn[micState] == NULL)
		return;

	MicStateFn[micState]();
}

/**
  * @brief  Enable microphone
  * @param  None
  * @retval None
  */
void MIC_Enable(void)
{
	if (MIC_STANDBY == micState)
	{
		micState = MIC_ENABLE;
	}
}

/**
  * @brief  Disable microphone
  * @param  None
  * @retval None
  */
void MIC_Disable(void)
{
	if (MIC_WORKING == micState)
	{
		micState = MIC_DISABLE;
	}
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief	Microphone standby state handle, do nothing now
  * @param  None
  * @retval None
  */
static void MIC_StandbyProcess(void)
{

}

/**
  * @brief	Microphone enable state handle
  * @param  None
  * @retval None
  */
static void MIC_EnableProcess(void)
{
	// reInit the MIC...
	MIC_Init();
	mic_IgnoreCount = MIC_STARTUP_IGNORE_NUM;

	// process in critical
	ndis_enter_critical();

	// Set MIC work timeout
	AB_Timer_AlertSet(TimerID_MicTimeout, false, TimeQ_MicOvertime, MIC_WorkOvertimeCB);

	// Set MIC module working state
	micState = MIC_WORKING;
	Board_SetModuleWorkState(true, MODULE_MIC);

	ndis_exit_critical();

	// Set led
	LED_SetEvent(LED_Microphone);
	DRV_Mic_Enable();

	printf("MIC Enable\r\n");
}

/**
  * @brief  Microphone disable state handle
  * @param  None
  * @retval None
  */
static void MIC_DisableProcess(void)
{
	DRV_Mic_Disable();
	// Led disable
	LED_SetEvent(LED_Disable);

	// process in critical
    ndis_enter_critical();

    // Release MIC timeout timer
    AB_Timer_AlertUnset(TimerID_MicTimeout);

    mic_BufOverflow = false;
    mic_RecordPtr = NULL;

    // Reset MIC module working state
    micState = MIC_STANDBY;
    Board_SetModuleWorkState(false, MODULE_MIC);

    ndis_exit_critical();

	printf("MIC Disable\r\n");
}

/**
  * @brief  Microphone working state handle
  * @param  None
  * @retval None
  */
static void MIC_WorkingProcess(void)
{
	// buffer overflow
	if (mic_BufOverflow)
	{
		printf("MIC BufOverFlow\r\n");
		micState = MIC_DISABLE;
	}

	if (mic_RecordPtr)
	{
        uint32_t tick;
        uint32_t tick2;
        static uint8_t count = 0;
		uint16_t encodeOffset = 0;

		ndis_enter_critical();
		tick = DRV_TMR32B0_TickGet();

		// ADPCM encode in critical
		_adpcm_encoder((short*)mic_RecordPtr, mic_EncodeBuf, MIC_BufferSize/4);
		mic_RecordPtr = NULL;

		tick2 = DRV_TMR32B0_TickGet();
		ndis_exit_critical();

		// time calculate
        if (count++ == 50)
        {
            count = 0;
            printf("MIC encode takes %dms\n", tick2- tick);
        }

		while (encodeOffset != mic_EncodeSize)
		{
			memcpy(hids_Report2, mic_EncodeBuf+encodeOffset, 20);
			HOGP_SendReport(hids_HandleReport2);
			encodeOffset += 20;
		}

		if (BT_Pending_TxCnt() > 8000)
		{
			printf("BT Block, stop sample\r\n");
			micState = MIC_DISABLE;
		}
	}

	AB_PWR_Stanby();
}

/**
  * @brief	Interrupt when sample data overflow
  * @param  point to sample data(linear PCM?)
  * @retval None
  */
static void MIC_InterruptHandle(uint8_t *buf)
{
	// ignore some startup samples
	if (mic_IgnoreCount)
	{
		mic_IgnoreCount--;
		return;
	}

	if (mic_RecordPtr)
	{
		mic_BufOverflow = true;
	}
	else
	{
		mic_RecordPtr = buf;
	}
}

/**
  * @brief	MIC work overtime
  * @param  None
  * @retval None
  */
static void MIC_WorkOvertimeCB(uint32_t id)
{
	printf("MIC work overtime\r\n");
	micState = MIC_DISABLE;
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
