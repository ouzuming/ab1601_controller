/**
  ******************************************************************************
  * @file	 KeyBoard.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   Remote keyboard, keyScan configuration and process
  ******************************************************************************
  Tips��
	���ļ�ΪkeyBoard��ʵ�֣�����keyCode��KeyScan�жϴ�������Keyboard_KeyScanIntHandler�л�ȡ��������key_BufCtrl�У�keyCodeͳһ
	��Keyboard_Polling���������ǽ�keyCode��Ϊkeyboard page��consumer page���Զ���keyCode,���Ƿֱ���CODE_KB��CODE_CS��CODE_CT
	������ͬ��ǰ׺������CODE_KB��keyCode������HOGP_SendKeyboard��report��CODE_CS��keyCode������HOGP_SendConsumerKey��report��
	��CODE_CT�����������ع��ܵĴ��������ǻ��ṩ�����ϼ������������Զ�ʱ���ص�����ʽ��Keyboard_ComboKeyProcess�����ش�����
  */
/* Includes ------------------------------------------------------------------*/
#include "Drv_keyScan.h"
#include "Drv_Gpio.h"
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
// Key buffer control
typedef struct
{
	uint16_t buf[16];
	uint8_t  wPtr 	: 4;
	uint8_t  rPtr	: 4;
} key_BufCtrl_t;

// Keyboard status typedef
typedef enum
{
	KEY_Null,
	KEY_AllReleased,
	KEY_Single,
	KEY_Combo2,
	KEY_Combo3,		// No used now
} key_Status_t;

/* Private define ------------------------------------------------------------*/
// KeyCode define: Keyboard page, get more details in Hut1_12v2.pdf
#define CODE_KB_Number1 		0x001E
#define CODE_KB_Number2			0x001F
#define CODE_KB_Number3			0x0020
#define CODE_KB_Number4			0x0021
#define CODE_KB_Number5			0x0022
#define CODE_KB_Number6			0x0023
#define CODE_KB_Number7			0x0024
#define CODE_KB_Number8			0x0025
#define CODE_KB_Number9			0x0026
#define CODE_KB_Number0			0x0027

#define CODE_KB_Escape			0x0029
#define CODE_KB_Backspace		0x002A
#define CODE_KB_Home			0x004A
#define CODE_KB_Power			0x0066

#define CODE_KB_F1Blue			0x003A
#define CODE_KB_F2Red			0x003B
#define CODE_KB_F3Green			0x003C
#define CODE_KB_F4Yellow		0x003D
#define CODE_KB_F5				0x003E

#define CODE_KB_Right			0x004F
#define CODE_KB_Left			0x0050
#define CODE_KB_Down			0x0051
#define CODE_KB_Up				0x0052
#define CODE_KB_Enter			0x0058

// keyCode define: Consumer page
#define CODE_CS_Power			0x0030
#define CODE_CS_Menu			0x0040
#define CODE_CS_MenuPick		0x0041
#define CODE_CS_MenuUp			0x0042
#define CODE_CS_MenuDown		0x0043
#define CODE_CS_MenuLeft		0x0044
#define CODE_CS_MenuRight		0x0045

#define CODE_CS_Pause			0x00B2
#define CODE_CS_FastForward		0x00B3
#define CODE_CS_Rewind			0x00B4
#define CODE_CS_Stop			0x00B7
#define CODE_CS_PlayPause		0x00CD
#define CODE_CS_Mute			0x00E2
#define CODE_CS_VolumeInc		0x00E9
#define CODE_CS_VolumeDec		0x00EA

#define CODE_CS_AChome			0x0223
#define CODE_CS_ACback			0x0224

// keyCode define: Customer special define
#define CODE_CT_Release			0x0000
#define CODE_CT_Mouse			0xAAAA
#define CODE_CT_Voice			0xBBBB
#define CODE_CT_IR				0xCCCC
#define CODE_CT_NoUsed			0xFFFF

/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void Keyboard_KeyScanIntHandler(uint8_t * idAry, uint8_t num, bool isGhost);
static void Keyboard_KeyCodeProcess(uint16_t keyCode);
static void KeyBoard_PowerKeyPressed(void);
static void Keyboard_VoiceKeyPressed(void);
static void Keyboard_MouseKeyProcess(void);
static void Keyboard_ComboKeyProcess(uint32_t id);
static void Keyboard_ColumnInterruptDisable(void);

/* Private variables ---------------------------------------------------------*/
// Current keyboard state
static key_Status_t key_CurrentState = KEY_Null;

static KS_INIT_STRUCTURE key_Config =
{
    .swt = KS_IO_SW_TIME_SEL_4T,
    .dly = KS_RATE_DLY_520T,
    .row_num = ROW_NUM,
    .col_num = COL_NUM,
    .row = { KS_R0, KS_R1, KS_R2 },
    .col = { KS_C0, KS_C1, KS_C2, KS_C3 },
};

// Bluetooth keyCode bufferCtrl
static key_BufCtrl_t key_BufCtrl =
{
	.buf = { 0 },
	.wPtr = 0,
	.rPtr = 0,
};

// IR keyCode bufferCtrl
static key_BufCtrl_t ir_BufCtrl =
{
	.buf = { 0 },
	.wPtr = 0,
	.rPtr = 0,
};

// Combo keyID define
static uint8_t key_2Combo[2] = { 0, 6 };		// MenuPick and AChome
static uint8_t key_3Combo[3] = { 0, 5, 6 };		// No used

// Bluetooth KeyCode Matrix 4*3
const uint16_t key_Matrix[ROW_NUM * COL_NUM] =
{
	CODE_CS_Power,				// PowerKey
	CODE_CS_AChome,         	// AC home
	CODE_CS_MenuLeft,         	// Menu Left
	CODE_CS_MenuUp,         	// Menu Up

	CODE_CS_MenuPick,         	// Menu Pick
	CODE_CS_MenuRight,         	// Menu Right
	CODE_CS_MenuDown,         	// Menu Down
	CODE_CS_VolumeDec,         	// Volume -

	CODE_CS_Mute,				// Mute
	CODE_CS_VolumeInc,         	// Volume +
	CODE_CS_ACback,         	// AC back
	CODE_CS_Menu,				// Menu
};

// IR KeyCode Matrix 4*3
const uint8_t ir_Matrix[ROW_NUM * COL_NUM] = 
{
	0x40,
	0x11,
	0x51,
	0x16,

	0x13,
	0x50,
	0x1A,
	0x10,

	0x41,
	0x18,
	0x19,
	0x4C
};

/* Public functions ----------------------------------------------------------*/
/**
  * @brief  Keyboard initialization
  * @param  None
  * @retval None
  */
void Keyboard_Init(void)
{
	// Configure keyScan
    DRV_KeyScan_Init(key_Config, Keyboard_KeyScanIntHandler);
    DRV_KeyScan_En();

    // disable column interrupt
    Keyboard_ColumnInterruptDisable();
}

/**
  * @brief  Keyboard polling process, some process is in interrupt function
  * @param  None
  * @retval None
  */
void Keyboard_Polling(void)
{
	// Process Bt keycode here
	if (key_BufCtrl.rPtr != key_BufCtrl.wPtr)
	{
		// process button depend on GAP state
		switch ( GAP_GetGapStatus() )
		{
			case GAP_STANDBY:
			{

			} break;
			case GAP_ADVERTISING:
			{
				//TODO: how to process the suspended key, drop it or temp it?
				//Keyboard_DropAllKeyCode();
			} break;
			case GAP_CONNECTED:
			{
				// TODO
				// if (!GAP_IsLinkEncrypted())
				// 	return;

				// keyCode report
				Keyboard_KeyCodeProcess(key_BufCtrl.buf[key_BufCtrl.rPtr++]);

				// Set the idleConnect overtime if OTA isn't working
				if ( !(Board_GetModuelWorkState() & MODULE_OTA) )
				{
					Timer_SetIdleConnTimeout();
				}
			} break;
			default: break;
		}
	}

	// Process IR keycode here
	if ( (ir_BufCtrl.rPtr != ir_BufCtrl.wPtr) && (GAP_ADVERTISING == GAP_GetGapStatus()) )
	{
		if (ir_BufCtrl.buf[ir_BufCtrl.rPtr])
		{
			IR_Send( (uint8_t)ir_BufCtrl.buf[ir_BufCtrl.rPtr++] );
		}
		else
		{
			ir_BufCtrl.rPtr++;
		}
	}
}

/**
  * @brief  Enable keyboard column interrupt, used for device WakeUp
  * @param  None
  * @retval None
  */
void Keyboard_ColumnInterruptEnable(void)
{
    uint8_t i;

    for (i = 0; i < COL_NUM; i++)
    {
        DRV_Gpio_IntReg(key_Config.col[i], EDGE_NEG, NULL);
        DRV_Gpio_IntEn(key_Config.col[i]);
    }
}

/**
  * @brief  Drop all keyCode in keyScan buffer, No used now
  * @param  None
  * @retval None
  */
void Keyboard_DropAllKeyCode(void)
{
	key_BufCtrl.rPtr = key_BufCtrl.wPtr;
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief  keyScan interrupt handler
  * @param  None
  * @retval None
  */
static void Keyboard_KeyScanIntHandler(uint8_t * idAry, uint8_t num, bool isGhost)
{
	// print key ID first
	if (isGhost)
		printf("*[");
	else
		printf("[");
	uint8_t i = 0;
	for (; i<num; i++)
		printf(" %d", idAry[i]);
	printf(" ]\r\n");

	// ghost, just drop
	if (isGhost)
	{
		return;
	}

	// Release ComboKey long pressed timer first
	AB_Timer_AlertUnset(TimerID_KeyLongPressed);

	// normal key press process
	switch (num)
	{
		case 0:
		{
			key_CurrentState = KEY_AllReleased;
			key_BufCtrl.buf[key_BufCtrl.wPtr++] = 0x0000;

			// Release IR depress here
			IR_KeyReleased();
		} break;
		case 1:
		{
			key_CurrentState = KEY_Single;
			key_BufCtrl.buf[key_BufCtrl.wPtr++] = key_Matrix[idAry[0]];

			// only capture IR keycode when disconnection
			if ( GAP_CONNECTED != GAP_GetGapStatus() )
			{
				ir_BufCtrl.buf[ir_BufCtrl.wPtr++] = ir_Matrix[idAry[0]];
			}
		} break;
		case 2:
		{
			if ( (idAry[0] == key_2Combo[0]) && (idAry[1] == key_2Combo[1]) )
			{
				key_CurrentState = KEY_Combo2;

				// Set ComboKey long pressed timer
				AB_Timer_AlertSet(TimerID_KeyLongPressed, false, TimeQ_KeyLongPress, Keyboard_ComboKeyProcess);
			}
		} break;
		case 3:
		{
			if (idAry[0] == key_3Combo[0] && idAry[1] == key_3Combo[1] && idAry[2] == key_3Combo[2])
			{
				key_CurrentState = KEY_Combo3;
			}
		} break;
		default: break; 	// process 3 button combo at most
	}
}

/**
  * @brief  Send the proper KeyCode report, and do something
  * @param  None
  * @retval None
  */
static void Keyboard_KeyCodeProcess(uint16_t keyCode)
{
    printf("Report KeyCode: 0x%04x\r\n", keyCode);
    static lastKeyCode = 0;

    if (keyCode != 0x0000 && keyCode != 0x00CD)
    {
    	LED_SetEvent(LED_Keyboard);
    }

	switch (keyCode)
	{
		// Keyboard button process
		case CODE_KB_Number1:
		case CODE_KB_Number2:
		case CODE_KB_Number3:
		case CODE_KB_Number4:
		case CODE_KB_Number5:
		case CODE_KB_Number6:
		case CODE_KB_Number7:
		case CODE_KB_Number8:
		case CODE_KB_Number9:
		case CODE_KB_Number0:
		case CODE_KB_Backspace:
			HOGP_SendKeyboard(keyCode);
			break;

		// Power Button process
		case 0x0030:
		{
			KeyBoard_PowerKeyPressed();
		} break;

		// Voice Button process
		case CODE_CT_Voice:
		{
			Keyboard_VoiceKeyPressed();
		} break;

		// airMouse Button process
		case CODE_CT_Mouse:
		{
			#if (!WAKEUP_BY_MOTION)
			Keyboard_MouseKeyProcess();
			#endif
		} break;

		// MenuPick Button process, set mouse button if airMouse working
		case CODE_CS_MenuPick:
		{
			if (Board_GetModuelWorkState() & MODULE_MOUSE)
				HOGP_SetMouseButton(0x01);
			else
				HOGP_SendConsumerKey(keyCode);
		} break;

		// TODO: gesture recognition button, No used

		// Button release process: Send keyboard/consumer report, Disable MIC, Set mouse button
		case 0x0000:
		{
			if (CODE_CT_Voice == lastKeyCode)
			{
				// Voice button released, Disable MIC
				MIC_Disable();
			}
			if (CODE_CT_Mouse == lastKeyCode)
			{
				// airMouse button released, do nothing
			}
			else if (lastKeyCode >= CODE_KB_Number1 && lastKeyCode <= CODE_KB_Backspace)
			{
				// it's a Keyboard report, TODO: check keyCode range if other keyboard button used!!!
				HOGP_SendKeyboard(keyCode);
			}
			else
			{
				// it's a consumer report
				HOGP_SendConsumerKey(keyCode);
			}

			// Set mouse button to 0x00
			HOGP_SetMouseButton(0x00);
		} break;

		default:
		{
			// ConsumerKey Send
			HOGP_SendConsumerKey(keyCode);
		} break;
	}

	lastKeyCode = keyCode;
}

/**
  * @brief  PowerKey process
  * @param  None
  * @retval None
  */
static void KeyBoard_PowerKeyPressed(void)
{
	printf("PowerKey pressed\r\n");

	HOGP_SendConsumerKey(CODE_CS_Power);
	LED_SetEvent(LED_PowerKey);

	AB_Timer_AlertSet(TimerID_LinkTerminateControl, false, TimeQ_DisconnecAfterPowerKey, GAP_TerminateConnection);
}

/**
  * @brief  Voice key process
  * @param  None
  * @retval None
  */
static void Keyboard_VoiceKeyPressed(void)
{
	// TODO: Send special report to notify TV/STB???
	HOGP_SendConsumerKey(0xBBBC);

	// Enable microphone sample
	MIC_Enable();

	printf("VoiceKey pressed\r\n");
}

/**
  * @brief  Mouse key process, just switch airMouse
  * @param  None
  * @retval None
  */
static void Keyboard_MouseKeyProcess(void)
{
	// just return if MIC is working
	if ( Board_GetModuelWorkState() & MODULE_MIC )
		return;

	// Switch mouse state
	if ( Board_GetModuelWorkState() & MODULE_MOUSE )
	{
		Mouse_Disable();
	}
	else
	{
		Mouse_Enable();
	}

	printf("MouseKey pressed\r\n");
}

/**
  * @brief  ComboKey process, call as Timer CB
  * @param  None
  * @retval None
  */
static void Keyboard_ComboKeyProcess(uint32_t id)
{
	printf("ComboKey long pressed\r\n");
	BLE_gap_sm_delete_paired_record(NULL);

	Board_SoftResetEnable(0);
}

/**
  * @brief  Disable keyboard column interrupt when keyScan inited
  * @param  None
  * @retval None
  */
static void Keyboard_ColumnInterruptDisable(void)
{
    uint8_t i;

    for (i = 0; i < COL_NUM; i++)
    {
        DRV_Gpio_IntDis(key_Config.col[i]);
    }
}



/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
