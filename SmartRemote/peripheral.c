/**
  ******************************************************************************
  * @file    peripheral.c
  * @author  JackChen
  * @version V1.0
  * @date    2017_02_10
  * @brief   standard peripheral application
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "ab1600.h"
#include "ab_uart.h"
#include "ab_assert.h"
#include "ab_clk.h"
#include "stdarg.h"
#include <sys/param.h>
#include "service_device_firmware_update_OTA.h"
#include "drv_timer32b0.h"

#include "peripheral.h"
#include "smartRemote.h"

/* Private typedef -----------------------------------------------------------*/
typedef struct
{
	uint8_t reAdvIfDisConn		: 1;
	uint8_t reAdvIfAdvStop		: 1;
	uint8_t slaveSecurtyReq		: 1;
	uint8_t reserved			: 5;
} gapFeatureCtrl_t;

/* Private define ------------------------------------------------------------*/
#define GapTime_AdvDuration_Bonded		(1280 * ClockRatio)
#define GapTime_AdvDuration_NoBonded	(20000 * ClockRatio)
#define GapTime_ConnParaUpdate			(1500 * ClockRatio)
#define GapTime_ConnParaUpdateRetry		(5000 * ClockRatio)		// 30000 is preferable

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
// BD Address from MPdata
void *mpData_BDAddress = NULL;

// Default BDAddress
static ble_addr_t gap_BdAddress = {
	ble_addr_type_public,
	{ 0x66, 0x55, 0x44, 0x33, 0x22, 0x11 },
};

static ble_addr_t gap_ConnPeerAddr;
static ble_addr_t gap_BondedPeerAddr;

// default Advertising Data
static uint8_t gap_AdvData[] = {
	0x02, BLE_GAP_AD_TYPE_FLAGS, 0x05,
	0x03, BLE_GAP_AD_TYPE_APPEARANCE, 0x80, 0x01,
	0x03, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_MORE_AVAILABLE, 0x12, 0x18,
};

// default ScanResponse Data, Caution!!! the demo APP will auto connect to GATT Service if it get this local name
static uint8_t gap_ScanResData[] = {
	0x02, BLE_GAP_AD_TYPE_TX_POWER_LEVEL, 0x00,
	0x0B, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, 'S', 'D', 'K', '-', 'R', 'e', 'm', 'o', 't', 'e'
};

// default Advertising Parameter
static ble_gap_adv_params gap_AdvParam = {
	.ad_type 			= ble_ad_type_ind,
	.peer_addr 			= NULL,
	.self_addr_type 	= ble_addr_type_public,
	.filter				= ble_filter_any,
	.min_interval 		= 0x0040,		// 40ms
	.max_interval 		= 0x0050,		// 50ms
	.channel_mask 		= 0x07,
};

// bonded Advertising Parameter, WHY cann't use type ble_ad_type_direct_ind???
static ble_gap_adv_params gap_AdvParamBonded = {
	.ad_type 			= ble_ad_type_ind,
	.peer_addr 			= NULL,
	.self_addr_type 	= ble_addr_type_public,				// ble_addr_type_random_static
	.filter				= ble_filter_filter_scan,			// Caution: Filter policy used!!!
	.min_interval 		= 0x0020,		// 20ms
	.max_interval 		= 0x0020,		// 30ms
	.channel_mask 		= 0x07,
};

// default Connection parameter
static const ble_gap_conn_params_t gap_ConnParam = {
	.min_conn_interval 	= 0x0008, 		// 10.00ms
	.max_conn_interval 	= 0x0009, 		// 11.25ms
	.slave_latency		= 29, 			// 29
	.conn_sup_timeout 	= 0x012C, 		// 3000ms
	.ce_min 			= 0x0000,
	.ce_max 			= 0x0000,
};

// Connection parameter used for OTA
static const ble_gap_conn_params_t gap_ConnParamOTA = {
	.min_conn_interval 	= 0x0006, 		// 7.5ms
	.max_conn_interval 	= 0x0009, 		// 11.25ms
	.slave_latency		= 0, 			// 0
	.conn_sup_timeout 	= 0x012C, 		// 3000ms
	.ce_min 			= 0x0000,
	.ce_max 			= 0x0000,
};

static gapStatus_t gap_Status = GAP_ERROR;

static uint16_t gap_ConnHandle = 0xFFFF;
static uint16_t gap_ConnInterval;
static uint16_t gap_SlaveLatency;
static uint16_t gap_SupervisonTimeout;


static bool gap_Bonded = false;
static bool	gap_LinkEncrypted = false;

static uint32_t gap_AdvOvertime = GapTime_AdvDuration_NoBonded;

static gapFeatureCtrl_t gap_FeatrueCtrl = {
	.reAdvIfDisConn		= 0,
	.reAdvIfAdvStop		= 0,
	.slaveSecurtyReq	= 0,
	.reserved			= 0
};

/* Private function prototypes -----------------------------------------------*/
/** BT Event handler function **/
static void GAP_MiscInited_Handler(bt_evt_t *evt);
static void GAP_Connected_Handler(bt_evt_t *evt);
static void GAP_Disconnected_Handler(bt_evt_t *evt);
static void GAP_ConnParaUpdated_Handler(bt_evt_t *evt);
static void SM_SecurityParamRequset_Handler(bt_evt_t *evt);
static void SM_SecurityUpdated_Handler(bt_evt_t *evt);

/** Some CB function of GAP **/
static void GAP_BDAddressSet_CB(bool isuccess, uint8_t err_code);
static void GAP_AdvDataSet_CB(bool isuccess, uint8_t err_code);
static void GAP_ScanResDataSet_CB(bool isuccess, uint8_t err_code);
static void GAP_StartAdvertising_CB(bool isuccess, uint8_t err_code);

static void GAP_AdvOvertime_TimerHandler(void *para);
static void GAP_ConnParaUpdate_TimerHandler(void *para);

/** Other function **/
static bool GAP_CheckBondingState(void);
static void GAP_CheckConnParam(void);

/* Public functions ----------------------------------------------------------*/
/**
  * @brief  Get current gap status
  * @param  None
  * @retval gap status
  */
gapStatus_t GAP_GetGapStatus(void)
{
	return gap_Status;
}

/**
  * @brief  Get link encryption status
  * @param  None
  * @retval encryption status
  */
bool GAP_IsLinkEncrypted(void)
{
	return gap_LinkEncrypted;
}

/**
  * @brief  Get bonding status
  * @param  None
  * @retval bonding status
  */
bool GAP_IsBonded(void)
{
	return gap_Bonded;
}

/**
  * @brief  Check if connection interval is ideal
  * @param  None
  * @retval None
  */
bool GAP_IsConnIntervalIdeal(void)
{
	if (gap_ConnInterval < gap_ConnParam.max_conn_interval + 4)
	{
		return true;
	}
	else
	{
		return false;
	}
}

/**
  * @brief  MpData INIT, Just get the MP BDAddress here
  * @param  None
  * @retval None
  */
void MP_DataInit(void)
{
    MP_PARAMETER_STRU* param;

    param = AB_SECTOR_GetMpParameter(false);

    if (param)
    {
    	mpData_BDAddress = &param->BDaddr;
    }
}

/**
  * @brief  BT GAP massage handle function.
  * @param  None
  * @retval None
  */
void gapRole_GapEventHandle(bt_evt_t *evt)
{
	switch (evt->evt_id)
	{
	// MISC event below
	case BT_MISC_EVENT_INITED:
		GAP_MiscInited_Handler(evt);
		break;

	// GAP event below
	case BLE_GAP_EVT_CONNECTED:
		GAP_Connected_Handler(evt);
		break;
	case BLE_GAP_EVT_DISCONNECTED:
		GAP_Disconnected_Handler(evt);
		break;
	case BLE_GAP_EVT_CONNECT_PARM_UPDATE:
		GAP_ConnParaUpdated_Handler(evt);
		break;

	// SM event below
	case BLE_SM_EVT_SET_SEC_PARAM_REQUEST:
		SM_SecurityParamRequset_Handler(evt);
		break;
	case BLE_SM_EVT_CONN_SEC_UPDATE:
		SM_SecurityUpdated_Handler(evt);
		break;

	// Default: print
	default:
		printf("BT event: %d\r\n", evt->evt_id);
		break;
	}
}

/**
  * @brief  Update connection parameter for OTA
  * @param  None
  * @retval None
  */
void GAP_UpdateConnParam4OTA(void)
{
	// Release gap timer for ConnectionParameter check
	GapTimer_Release();

	if ( ble_gap_conn_param_update(gap_ConnHandle, &gap_ConnParamOTA) )
	{
		printf("BT fail to connParamUpdate4OTA\r\n");
		// TODO: do something if fail
	}
	else
	{
		printf("BT negotiating connParam4OTA\r\n");
	}
}



void GAP_GetRandomAddress(ble_addr_t *addr)
{
	addr->addr_type = ble_addr_type_random_static;

	if ( BLE_gap_sm_get_last_paired_device(&gap_BondedPeerAddr) )
	{
		// Get Address from address

	}
	else
	{
		DRV_TRND_Get(addr->addr, 6);
		addr->addr[5] |= 0xC0;
	}
}

/* Private functions ---------------------------------------------------------*/
/**
  * @brief	Misc inited event, Set AdvPara&Data here.
  * @param  None
  * @retval None
  */
static void GAP_MiscInited_Handler(bt_evt_t *evt)
{
	if (evt->evt.misc_evt.param.inited.is_success)
	{
		ble_addr_t addr;

		// Use public address from MP data if it exists
		if (mpData_BDAddress)
		{
			addr.addr_type = ble_addr_type_public;
			memcpy(addr.addr, mpData_BDAddress, 6);
		}
		else
		{
			addr.addr_type = gap_BdAddress.addr_type;
			memcpy(addr.addr, gap_BdAddress.addr, 6);
		}

		//GAP_GetRandomAddress(&addr);

		ble_gap_address_set(&addr, GAP_BDAddressSet_CB);

		gap_Status = GAP_INIT;

		printf("BT inited: tick = %d\r\n", DRV_TMR32B0_TickGet());
	}
	else
	{
		printf("BT init fail\r\n");
		while (1);
	}
}

/**
  * @brief  GAP connected event handle
  * @param  event structure data
  * @retval None
  */
static void GAP_Connected_Handler(bt_evt_t *evt)
{
	if (evt->evt.gap_evt.params.connected.status)
	{
		printf("BT Connect Fail\r\n");

		// TODO: Connect fail process, Goto DeepSleep as fail connecting
		Board_DeepSleepEnable(0);
		return;
	}

	gap_Status = GAP_CONNECTED;

	gap_ConnPeerAddr = evt->evt.gap_evt.params.connected.peer_addr;
	gap_ConnHandle = evt->evt.gap_evt.params.connected.conn_handle;
	gap_ConnInterval = evt->evt.gap_evt.params.connected.connInterval;
	gap_SlaveLatency = evt->evt.gap_evt.params.connected.connLatency;
	gap_SupervisonTimeout = evt->evt.gap_evt.params.connected.supervisionTimeout;

	printf("BT Connected -> ");
	printf("%02x:%02x:%02x:%02x:%02x:%02x\r\n", gap_ConnPeerAddr.addr[0], gap_ConnPeerAddr.addr[1], gap_ConnPeerAddr.addr[2],
			gap_ConnPeerAddr.addr[3], gap_ConnPeerAddr.addr[4], gap_ConnPeerAddr.addr[5]);
	printf("ConnInterval = %d\r\n", gap_ConnInterval);
	printf("SlaveLatency = %d\r\n", gap_SlaveLatency);
	printf("SpvionTimeout = %d\r\n", gap_SupervisonTimeout);

	// Release Advertising overtime timer
	GapTimer_Release();

	// Update Connection parameter
	GapTimer_Set(GapTime_ConnParaUpdate, GAP_ConnParaUpdate_TimerHandler);

	// Slave Security request if connect to iOS device
	if (gap_FeatrueCtrl.slaveSecurtyReq)
	{
		ble_sm_security_param_t sm_param =
		{
			SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
			SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
			SM_BONDING,                     //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
			16,                             //uint8_t encKeySize;
			0x03,                           //uint8_t keyDistr;
			0x07,                           //uint8_t respKeyDistr;
		};

		BLE_gap_sm_authenticate(gap_ConnHandle, &sm_param);
	}
}

/**
  * @brief  GAP disconnection event handle
  * @param  event structure data
  * @retval None
  */
static void GAP_Disconnected_Handler(bt_evt_t *evt)
{
	printf("BT disconnected: 0x%02x\r\n", evt->evt.gap_evt.params.disconnected.reason);
	gap_Status = GAP_DISCONNECTED;
	gap_LinkEncrypted = false;

	// TODO: release some timers
	GapTimer_Release();

	switch (evt->evt.gap_evt.params.disconnected.reason)
	{
		// Terminated by local host, errorCode = 0x16, just go to deepSleep
		case hci_error_conn_term_local_host:
		{
			Board_DeepSleepEnable(0);
		} break;

		default:
		{
			if ( GAP_CheckBondingState() )
			{
				// reStart advertising if bonded
				ble_gap_adv_start(&gap_AdvParam, GAP_StartAdvertising_CB);
			}
			else
			{
				Board_DeepSleepEnable(0);
			}
		}
	}
}

/**
  * @brief  GAP connection parameter updated event handle
  * @param  event structure data
  * @retval None
  */
static void GAP_ConnParaUpdated_Handler(bt_evt_t *evt)
{
	if (evt->evt.gap_evt.params.conn_param_update.status)
	{
		printf("BT ConnParamUpdate Rejected\r\n");
	}
	else
	{
		// Store the parameter
		gap_ConnInterval = evt->evt.gap_evt.params.conn_param_update.conn_interval;
		gap_SlaveLatency = evt->evt.gap_evt.params.conn_param_update.slave_latency;
		gap_SupervisonTimeout = evt->evt.gap_evt.params.conn_param_update.conn_sup_timeout;

		printf("BT ConnParamUpdate Accepted\r\n");
		printf("Interval = %d\r\n", gap_ConnInterval);
		printf("Latency = %d\r\n", gap_SlaveLatency);
		printf("Timeout = %d\r\n", gap_SupervisonTimeout);
	}

	// Check if the ConnParam is ideal
	GAP_CheckConnParam();
}

/**
  * @brief  SM security parameter request handle
  * @param  event structure data
  * @retval None
  */
static void SM_SecurityParamRequset_Handler(bt_evt_t *evt)
{
	printf("SM Security Feature Request\r\n");

    ble_sm_security_param_t sm_param =
    {
    	SM_IO_NO_INPUT_NO_OUTPUT,       //uint8_t ioCapability;
        SM_OOB_DATA_NOT_PRESENT,        //uint8_t oobDataFlag;  //need to check SM_OOB_SUPPORTED
        SM_BONDING,                     //uint8_t authReqFlag; Bonding_Flag:2, MITM:1, SC:1, Keypress:1, Reserved:3
        16,                             //uint8_t encKeySize;
        0x03,                           //uint8_t keyDistr;
        0x07,                           //uint8_t respKeyDistr;
    };

    BLE_gap_sm_set_security_param(gap_ConnHandle, BLE_SM_STATUS_SUCCESS, &sm_param);
}

/**
  * @brief  SM security updated handle
  * @param  event structure data
  * @retval None
  */
static void SM_SecurityUpdated_Handler(bt_evt_t *evt)
{
	ble_sm_conn_sec_t *connSec;

	connSec = &evt->evt.sm_evt.params.conn_sec_update.conn_sec;
	printf("Security Mode: %d\r\n", connSec->sm);
	printf("Security Level: %d\r\n", connSec->lv);
	printf("EncrKeySize: %d\r\n", connSec->encr_key_size);

	// Link encrypted here
	gap_LinkEncrypted = true;
}


/************************************************************************
 * Other functions below
 */
/**
  * @brief  Check the bonding state
  * @param  None
  * @retval None
  */
static bool GAP_CheckBondingState(void)
{
	gap_Bonded = BLE_gap_sm_get_last_paired_device(&gap_BondedPeerAddr);
	printf("BT Check bonding: %s\r\n", (gap_Bonded)? "Bonded" : "No Bonded");
	return gap_Bonded;
}

/**
  * @brief  Check the bonding state
  * @param  None
  * @retval None
  */
static void GAP_CheckConnParam(void)
{
	if (gap_ConnInterval > (gap_ConnParam.max_conn_interval+5) ||
		gap_SlaveLatency > (gap_ConnParam.slave_latency+3) )
	{
		printf("BT connParam is bad, Retry\r\n");

		GapTimer_Set(GapTime_ConnParaUpdateRetry, GAP_ConnParaUpdate_TimerHandler);
	}
	else
	{
		printf("BT connParam is ideal\r\n");
	}
}

/************************************************************************
 * Some CB function below
 */
/**
  * @brief  CB function of BD Address setting, Set AdvData here
  * @param  None
  * @retval None
  */
static void GAP_BDAddressSet_CB(bool isuccess, uint8_t err_code)
{
	printf("BT set BDAddress %s\r\n", isuccess ? "success" : "fail");

	ble_gap_adv_data_set(gap_AdvData, sizeof(gap_AdvData), GAP_AdvDataSet_CB);
}

/**
  * @brief  CB function of AdvData setting, Set ScanResData here
  * @param  None
  * @retval None
  */
static void GAP_AdvDataSet_CB(bool isuccess, uint8_t err_code)
{
	printf("BT set AdvData %s\r\n", isuccess ? "success" : "fail");

	ble_gap_scan_data_set(gap_ScanResData, sizeof(gap_ScanResData), GAP_ScanResDataSet_CB);
}

/**
  * @brief  CB function of ScanResData setting, Set Advertising Parameter AND start advertising here
  * @param  None
  * @retval None
  */
static void GAP_ScanResDataSet_CB(bool isuccess, uint8_t err_code)
{
	printf("BT set ScanResData %s\r\n", isuccess ? "success" : "fail");

	// Check bonding state
	if (GAP_CheckBondingState())
	{
		// Bonded, used filter advertising
		ble_gap_adv_start(&gap_AdvParamBonded, GAP_StartAdvertising_CB);
		gap_AdvOvertime = GapTime_AdvDuration_Bonded;
		gap_FeatrueCtrl.reAdvIfAdvStop = 1;
	}
	else
	{
		// No bonded, Normal advertising
		ble_gap_adv_start(&gap_AdvParam, GAP_StartAdvertising_CB);
		gap_AdvOvertime = GapTime_AdvDuration_NoBonded;
		gap_FeatrueCtrl.reAdvIfAdvStop = 0;
	}
}

/**
  * @brief  CB function of Advertising Enabled, BT init completely here
  * @param  None
  * @retval None
  */
static void GAP_StartAdvertising_CB(bool isuccess, uint8_t err_code)
{
	printf("BT start Adv %s\r\n", isuccess ? "success" : "fail");

	if (isuccess)
	{
		gap_Status = GAP_ADVERTISING;

		GapTimer_Release();
		// Set Advertising Overtime
		GapTimer_Set(gap_AdvOvertime, GAP_AdvOvertime_TimerHandler);
	}
}

/**
  * @brief  CB function of Advertising Disabled
  * @param  None
  * @retval None
  */
static void GAP_StopAdvertising_CB(bool isuccess, uint8_t err_code)
{
	printf("BT stop Adv %s\r\n", isuccess ? "success" : "fail");

	if (isuccess)
	{
		gap_Status = GAP_STANDBY;
	}

	if (gap_FeatrueCtrl.reAdvIfAdvStop)
	{
		// reStart advertising with default parameter if flag set
		ble_gap_adv_start(&gap_AdvParam, GAP_StartAdvertising_CB);
		gap_AdvOvertime = GapTime_AdvDuration_NoBonded;
		gap_FeatrueCtrl.reAdvIfAdvStop = 0;
		printf("BT reAdv\r\n");
	}
	else
	{
		Board_DeepSleepEnable(0);
	}
}

/************************************************************************
 * About Timer CB
 */
/**
  * @brief  Advertising overtime process, just stop advertising than go to deepSleep
  * @param  None
  * @retval None
  */
static void GAP_AdvOvertime_TimerHandler(void *para)
{
	printf("BT Adv Overtime\r\n");

	if (gap_Status == GAP_ADVERTISING)
	{
		ble_gap_adv_stop(GAP_StopAdvertising_CB);
	}
}

/**
  * @brief  Connection parameter update timer event handle
  * @param  None
  * @retval None
  */
static void GAP_ConnParaUpdate_TimerHandler(void *para)
{
	if ( ble_gap_conn_param_update(gap_ConnHandle, &gap_ConnParam) )
	{
		printf("BT fail to connParamUpdate\r\n");
		// TODO: do something if fail
	}
	else
	{
		printf("BT negotiating connParam\r\n");
	}
}

/**
 * @brief  GAP terminate the connection, timer CB function
 * @param  None
 * @retval None
 */
void GAP_TerminateConnection(uint32_t timerID)
{
	if (GAP_GetGapStatus() != GAP_CONNECTED)
	{
		// GAP state error
		Board_DeepSleepEnable(0);

		return;
	}

	ble_gap_disconnect(gap_ConnHandle, hci_error_conn_term_local_host);
	printf("BT terminate, because of powerKey or idleConn\r\n");
}

/**
 * @brief  Set timer used in GAP
 * @param  None
 * @retval None
 */
void GapTimer_Set(uint32_t ms, void (*cb)(void *param))
{
	DRV_TMR32B0_NotifyEnable(TIMER_GAP_CTRL, ms, true, NULL, cb);
}

/**
 * @brief  Release timer used in GAP
 * @param  None
 * @retval None
 */
void GapTimer_Release(void)
{
	DRV_TMR32B0_NotifyDisable(TIMER_GAP_CTRL);
}


/************************ (C) COPYRIGHT Compx Technology *****END OF FILE****/
