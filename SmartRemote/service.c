/**
  ******************************************************************************
  * @file    service.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   include some standard services and customer services initialization
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ble_gatt_server.h"
#include "service_generic_access.h"
#include "service_generic_attribute.h"
#include "service_battery.h"
#include "service_device_information.h"
#include "service_human_interface_device.h"
#include "service_device_firmware_update_OTA.h"
#include "board.h"

/* Private typedef -----------------------------------------------------------*/
#define GAS_Appearance				(0x0180)		// Default: Generic Remote Control
#define GAS_DeviceName_MaxLen		30
// Caution: demo APP will select different CODEC according the DeviceName
#if ADPCM_SEL_IMA
	#define GAS_DeviceName_CurrLen		17
#else
	#define GAS_DeviceName_CurrLen		13
#endif

#define HIDInfo_bcdHID				0x0111
#define HIDInfo_bCountryCode		0x00
#define HIDInfo_Flags				0x03			// RemoteWake, NormallyConnectable

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void GATT_GenericAccessInit(void);
static void GATT_GenericAttributeInit(void);
static void GATT_BatteryInit(void);
static void GATT_DeviceInformationInit(void);
static void GATT_HOGPInit(void);
static void GATT_VoiceServiceInit(void);
static void GATT_OTAServiceInit(void);

static void Gas_DeviceName_Written_CB(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle);
static void OTA_Status_CB(OTA_STATUS_ENUM status);
static void Voice_CodecSel_CB(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle);

/* Private variables ---------------------------------------------------------*/

// GAS DeviceName
static uint8_t gas_DeviceName[GAS_DeviceName_MaxLen] = "Airoha Remote IMA";

// hid report map
static uint8_t hids_ReportMap[] =
{
	0x05, 0x0c,        	/* USAGE_PAGE (Consumer Devices) */
	0x09, 0x01,        	/* USAGE (Consumer Control) */
	0xa1, 0x01,        	/* COLLECTION (Application) */
	0x85, 0x01,        		/*  REPORT_ID (1) */
	0x19, 0x00,        		/*  USAGE_MINIMUM (0) */
	0x2A, 0x9c, 0x02,  		/*  USAGE_MAXIMUM (29c) */
	0x15, 0x00,        		/*  LOGICAL_MINIMUM (0) */
	0x26, 0x9c, 0x02,  		/*  LOGICAL_MAXIMUM (29c) */
	0x95, 0x01,        		/*  REPORT_COUNT (1) */
	0x75, 0x10,        		/*  REPORT_SIZE (16) */
	0x81, 0x00,        		/*  INPUT (Data,Ary,Abs) */
	0xC0,              /* END_COLLECTION (Application) */

	// Vendor Report for Microphone, DEMO remote never use this report!!!
    0x06, 0x01, 0xFF,  // Usage Page (Vendor Defined 0xFF01)
    0x09, 0x02,        // Usage (tmp usage)
    0xA1, 0x02,        //   Collection (Logical)
    0x85, 0x02,        //   Report ID (2)
    0x09, 0x14,        //   Usage (tmp usage)
    0x75, 0x08,        //   Report Size (8)
    0x95, 0x14,        //   Report Count (20)
    0x15, 0x80,        //   Logical Minimum (128)
    0x25, 0x7F,        //   Logical Maximum (127)
    0x81, 0x22,        //   Input (Data,Var,Abs,No Wrap,Linear,No Preferred State,No Null Position)
    0x85, 0x04,        //   Report ID (4)
    0x09, 0x04,        //   Usage (tmp usage)
    0x75, 0x08,        //   Report Size (8)
    0x95, 0x01,        //   Report Count (1)
    0x91, 0x02,        //   Output
    0xC0,              // End Collection

    // Simple keyboard
    0x05, 0x01,     /* Usage Page(Generic Desktop Controls) */
    0x09, 0x06,     /* Usage(Keyboard) */
    0xA1, 0x01,     /* Collection(Application) */
    0x85, 0x03,			/* Report ID (0x3) */
    0x05, 0x07,         /* Usage Page(Keyboard/Keypad) */
    0x19, 0xE0,         /* Usage Minimum(0xE0) */
    0x29, 0xE7,         /* Usage Maximum(0xE7) */
    0x15, 0x00,         /* Logical Minimum(0x0) */
    0x25, 0x01,         /* Logical Maximum(0x1) */
    0x75, 0x01,         /* Report Size(0x1) */
    0x95, 0x08,         /* Report Count(0x8) */
    0x81, 0x02,         /* Input (Data) => Modifier byte */
    0x95, 0x02,         /* Report Count(0x2) */
    0x75, 0x08,         /* Report Size(0x8) */
    0x15, 0x00,         /* Logical Minimum(0x0) */
    0x25, 0x65,         /* Logical Maximum(0x65) */
    0x05, 0x07,         /* Usage Page(Keyboard/Keypad) */
    0x19, 0x00,         /* Usage Minimum(0x0) */
    0x29, 0x65,         /* Usage Maximum(0x65) */
    0x81, 0x00,         /* Input (Data) */
    0xC0,           /* End Collection */

    // AirMouse
    0x05, 0x01,        /* USAGE_PAGE (Generic Desktop)*/
    0x09, 0x02,        /* USAGE (Mouse)*/
    0xA1, 0x01,        /* Collection (Application)*/
    0x09, 0x01,        /*  Usage Pointer */
    0xA1, 0x00,        /*  Collection (Physical)*/
    0x85, 0x05,        /*  REPORT_ID (5) */
    0x05, 0x01,        /*  USAGE_PAGE (Generic Desktop)*/
    0x09, 0x30,        /*  Usage(X)      */
    0x09, 0x31,        /*  Usage(Y)      */
    0x15, 0x80,        /*  Logical Minimum(-128)*/
    0x25, 0x7F,        /*  Logical Maximum( 127)*/
    0x75, 0x08,        /*  REPORT_SIZE  (8) */
    0x95, 0x02,        /*  REPORT_COUNT (2) */
    0x81, 0x06,        /*  INPUT (Data,Value,Relative,Bit Field) */

    0x05, 0x09,        /* USAGE_PAGE (Button) */
    0x19, 0x01,        /*  USAGE Minimum */
    0x29, 0x05,        /*  USAGE Maximum */
    0x15, 0x00,        /*  Logical Minimum */
    0x25, 0x01,        /*  Logical Maximum */
    0x95, 0x05,        /*  Report Count (5) */
    0x75, 0x01,        /*  Report Size  (1) */
    0x81, 0x02,        /*  Input Data*/
    /*  Padding bits  */
    0x95, 0x01,        /*  Report Count (1) */
    0x75, 0x03,        /*  Report Size  (3) */
    0x81, 0x03,        /*  Input Constant*/
    0xC0,              /* END_COLLECTION (Physical) */
    0xC0,              /* END_COLLECTION (Application) */
};

// hid control point
uint8_t hids_ControlPoint[1];

// hid report data
uint8_t hids_Report1[2];
uint8_t hids_Report2[20];
uint8_t hids_Report3[3];
uint8_t hids_Report4[1];
uint8_t hids_Report5[3];

// handles of hid report
uint16_t hids_HandleReport1;
uint16_t hids_HandleReport2;
uint16_t hids_HandleReport3;
uint16_t hids_HandleReport4;
uint16_t hids_HandleReport5;

// Audio CODEC select
uint8_t voice_AdpcmCodecSel;

/* Public functions ----------------------------------------------------------*/

/**
  * @brief  GATT Service initialization
  * @param  None
  * @retval None
  */
void GATT_ServiceInit(void)
{
	GATT_GenericAccessInit();
	GATT_GenericAttributeInit();
	GATT_BatteryInit();
	GATT_HOGPInit();
	GATT_VoiceServiceInit();
	GATT_OTAServiceInit();
	GATT_DeviceInformationInit();
}

/**
  * @brief  Call notify function to send hid report, ONLY send report when link encrypted
  * @param  attHandle - handle of report characteristic
  * @retval None
  */
void HOGP_SendReport(uint16_t attHandle)
{
	// TODO: if bonded, link encrypted
	if ( GAP_IsLinkEncrypted() && GAP_IsBonded() )
	{
		BLE_gatt_charact_notify(attHandle, FORCE_LINK0);
	}
	else
	{
		BLE_gatt_charact_notify(attHandle, ALL_CCCD_ENABLED_LINK);
	}
}

/**
  * @brief  Send consumer report
  * @param  keyCode - keyCode of consumer key
  * @retval None
  */
void HOGP_SendConsumerKey(uint16_t keyCode)
{
	hids_Report1[0] = (uint8_t)keyCode;
	hids_Report1[1] = (uint8_t)(keyCode >> 8);

    #warning "Test"
    BLE_gatt_charact_notify(hids_HandleReport1, FORCE_LINK0);
	//HOGP_SendReport(hids_HandleReport1);
}

/**
  * @brief  Send Keyboard report
  * @param  keyCode - keyCode of keyboard
  * @retval None
  */
void HOGP_SendKeyboard(uint16_t keyCode)
{
	hids_Report3[0] = 0;
	hids_Report3[1] = (uint8_t)keyCode;
	hids_Report3[2] = 0;

    #warning "Test"
    BLE_gatt_charact_notify(hids_HandleReport3, FORCE_LINK0);
	//HOGP_SendReport(hids_HandleReport3);
}

/**
  * @brief  Send Keyboard report
  * @param  x - mouse X
  * @param  y - mouse Y
  * @retval None
  */
void HOGP_SendMouse(uint8_t x, uint8_t y)
{
	hids_Report5[0] = x;
	hids_Report5[1] = y;

	HOGP_SendReport(hids_HandleReport5);
}

/**
  * @brief  Set mouse report button
  * @param  button
  * @retval None
  */
void HOGP_SetMouseButton(uint8_t button)
{
	hids_Report5[2] = button;
}

/**
  * @brief  return mouse report button value
  * @param  button
  * @retval None
  */
uint8_t HOGP_GetMouseButton(void)
{
	return hids_Report5[2];
}


/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Generic Access Service initialization
  * @param  None
  * @retval None
  */
static void GATT_GenericAccessInit(void)
{
	// peripheral preferred connection parameter
    PPCP_t ppcp =
    {
    	.min_interval 	= 0x0008,
    	.max_interval	= 0x0008,
    	.slave_latency	= 29,
    	.supervision_TO	= 0x012C,
    };

    gas_init_para gas_i_para =
    {
        .appearance 			= GAS_Appearance,
        .device_name_buf 		= gas_DeviceName,
        .device_name_ini_length = GAS_DeviceName_CurrLen,
        .device_name_max_length = GAS_DeviceName_MaxLen,
        .device_name_write_CB 	= Gas_DeviceName_Written_CB,
        .parameter 				= &ppcp,
    };

    GAS_init(&gas_i_para);
}

/**
  * @brief  Generic Attribute Service initialization
  * @param  None
  * @retval None
  */
static void GATT_GenericAttributeInit(void)
{
	// GATT Service is optional
	GATT_init(false);
}

/**
  * @brief  Battery Service initialization, support notification!!!
  * @param  None
  * @retval None
  */
static void GATT_BatteryInit(void)
{
	BAS_init(true);
}

/**
  * @brief  Device Information Service initialization
  * @param  None
  * @retval None
  */
static void GATT_DeviceInformationInit(void)
{
    dis_init_para disPara =
    {
        .manufacturer_name_string = "Compx Technology",
        .hardware_revision_string = "1.0.0",
        .firmware_revision_string = "1.0.0",
        .model_number_string = "Remote_Voice",
        .pnp_id = "\x01\x94\x00\x01\x00\x02\x00",
    };

    DIS_init(&disPara);
}

/**
  * @brief  Human interface device Service initialization
  * @param  None
  * @retval None
  */
static void GATT_HOGPInit(void)
{
	/* Protocol Mode is optional */

	/* report map, hid information, control point INIT */
	hids_init_para init_param =
	{
		.rmap =
		{
			.data = hids_ReportMap,
			.data_len = sizeof(hids_ReportMap),
			.ext_rep_ref_uuid_num = 0,		// No external report reference
			.included_service_num = 0,
		},
		.hid_info =
		{
			.bcdHID = HIDInfo_bcdHID,
			.bCountryCode = HIDInfo_bCountryCode,
			.flags= HIDInfo_Flags,
		},
		.hid_cp =
		{
			.data = hids_ControlPoint,
			.cb = NULL,						// Control point write CB is NULL
		},
	};

	hids_report_para report_param1 =
	{
		.report_type =  HID_REPORT_INPUT,
		.report_ID = 1,
		.data = hids_Report1,
		.data_len = sizeof(hids_Report1),
		.cb = NULL,
	};
	hids_report_para report_param2 =
	{
		.report_type =  HID_REPORT_INPUT,
		.report_ID = 2,
		.data = hids_Report2,
		.data_len = sizeof(hids_Report2),
		.cb = NULL,
	};
	hids_report_para report_param3 =
	{
		.report_type =  HID_REPORT_INPUT,
		.report_ID = 3,
		.data = hids_Report3,
		.data_len = sizeof(hids_Report3),
		.cb = NULL,
	};
	hids_report_para report_param4 =
	{
		.report_type =  HID_REPORT_OUTPUT,
		.report_ID = 4,
		.data = hids_Report4,
		.data_len = sizeof(hids_Report4),
		.cb = NULL,
	};
	hids_report_para report_param5 =
	{
		.report_type =  HID_REPORT_INPUT,
		.report_ID = 5,
		.data = hids_Report5,
		.data_len = sizeof(hids_Report5),
		.cb = NULL,
	};

	HIDS_init(&init_param);

	hids_HandleReport1 = HIDS_add_report(&report_param1);
	hids_HandleReport2 = HIDS_add_report(&report_param2);
	hids_HandleReport3 = HIDS_add_report(&report_param3);
	hids_HandleReport4 = HIDS_add_report(&report_param4);
	hids_HandleReport5 = HIDS_add_report(&report_param5);
}

/**
  * @brief  Voice transport Service, must INIT after HIDS if Android demo APP compatible!!!
  * @param  None
  * @retval None
  */
static void GATT_VoiceServiceInit(void)
{
    if (1)
    {
        gatt_add_service_para servicepara =
        {
            .type = primary_service,
            .size = UUID_128bit,
            .UUID = {'e', 'c', 'i', 'v', 'r', 'e', 'S', 'C', 'I', 'M', 'a', 'h', 'o', 'r', 'i', 'A'},
        };

        BLE_gatt_add_service(&servicepara);
    }

    if (1)
    {
        gatt_add_charact_para charactpara_adpcmdata =
        {
            .size = UUID_128bit,
            .UUID = {'a', 't', 'a', 'D', '_', 'M', 'C', 'P', 'D', 'A', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_NOTIFY,
            .permission = A_RB_WB,
            .data_initial_length = 20,
            .data_maximum_length = 20,
            .char_data = hids_Report2,
            .cb = NULL,
        };

        // this characteristic handle will cover the hid report2
        hids_HandleReport2 = BLE_gatt_add_charact(&charactpara_adpcmdata);
    }

    if (1)
    {
        static uint8_t adpcm_cccd[2];

        gatt_add_descrip_para descrippara =
        {
            .size = UUID_16bit,
            .UUID = {0x02,0x29},
            .permission = A_RP_WP,
            .data_initial_length = 2,
            .data_maximum_length = 0,
            .desc_data = adpcm_cccd,
            .cb = NULL,
        };

        BLE_gatt_add_descrip(&descrippara);
    }

    // Used to select CODEC
    if(1)
    {
        gatt_add_charact_para charactpara_codec_sel =
        {
            .size = UUID_128bit,
            .UUID = {'c', 'e', 'd', 'o', 'C', 'M', 'C', 'P', 'D', 'A', 'a', 'h', 'o', 'r', 'i', 'A'},
            .property = C_READ|C_WRITE,
            .permission = A_RP_WP,
            .data_initial_length = 1,
            .data_maximum_length = 1,
            .char_data = &voice_AdpcmCodecSel,
            .cb = Voice_CodecSel_CB,
        };

        BLE_gatt_add_charact(&charactpara_codec_sel);
    }
}

/**
  * @brief  ARIOHA OTA Service initialization
  * @param  None
  * @retval None
  */
static void GATT_OTAServiceInit(void)
{
    OTA_init(OTA_Status_CB);

    if (1)   // TODO: may detect ADC and decide whether OTA should be enabled
    {
        OTA_change_permission(OTA_ENABLED);
    }
}

/************************************************************************
 * GATT characteristic Write/Read CB function below
 */

/**
  * @brief  DeviceName characteristic written CB
  * @param  None
  * @retval None
  */
static void Gas_DeviceName_Written_CB(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
	if (type == CB_AFTER_WRITING)
	{
		// TODO: Store the DeviceName
	}
}

/**
  * @brief  CB function of OTA status change, 2 status
  * @param  OTA_STARTED or OTA_FINISHED
  * @retval None
  */
static void OTA_Status_CB(OTA_STATUS_ENUM status)
{
	Board_SetModuleWorkState(false, MODULE_OTA);		//thus OTA app may reset the timer in case the OTA time too long

    switch (status)
    {
        case OTA_STARTED:
        {
        	// Set OTA working flag�� TODO: forbid some modules
        	Board_SetModuleWorkState(true, MODULE_OTA);

        	// Release idleConn timeout
        	Timer_ReleaseIdleConnTimeout();

        	// Set OTA timeout timer, goto deepSleep if OTA timeout
        	AB_Timer_AlertSet(TimerID_OtaTimeout, false, TimeQ_OtaTimeout, Board_DeepSleepEnable);

            // Update ConnParamter for OTA
            GAP_UpdateConnParam4OTA();

        	LED_SetEvent(LED_Ota);
        } break;
        case OTA_FINISHED:
        {
        	// Set OTA idle flag
        	Board_SetModuleWorkState(false, MODULE_OTA);

        	// Reset device after 2s
        	AB_Timer_AlertSet(TimerID_Common, false, 2000, Board_SoftResetEnable);

        	LED_SetEvent(LED_AlwaysOn);

        } break;
    }
}

/**
  * @brief  CB function of OTA status change, TODO: No used???
  * @param  None
  * @retval None
  */
static void Voice_CodecSel_CB(ATT_CB_TYPE type, uint8_t linkindex, uint16_t handle)
{
    if (type == CB_AFTER_WRITING)
    {
        AB_UART_Flush(uart1_ins);
        AB_CLK_Switch(AB_CLK_48M, true);

        if (voice_AdpcmCodecSel == 0x77)
        {
        	MIC_CodecSel_G726();
            printf("CODEC: g726\r\n");
        }
        else
        {
        	MIC_CodecSel_IMA();
            printf("CODEC: ima\r\n");
        }
    }
}



/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
