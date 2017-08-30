/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_vcmd_sip.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab_airoha_vcmd.h"
#include "ab_pwr.h"
#include "ab_uart.h"
#include "ble_gap.h"
#include "ble_gap_sm.h"

#include "dongle_vcmd_sip.h"

/******************************************************************************
 * Macro
 ******************************************************************************/
#define VCMD_SIP_DEBUG 0

// ble state
#define     BT_STATE_UNINIT 0
#define     BT_STATE_IDLE 1
#define     BT_STATE_ADV 2
#define     BT_STATE_CONNECTED 3

// length definition
#define     ADV_DATA_LEN 31
#define     DEVICE_NAME_LEN 15

#define     INVALID_CONN_HANDLE 0xFFFF // Range: 0x0000-0x0EFF (0x0F00 - 0x0FFF Reserved for future use)

// default value definition
#define     FLASH_INIT_FLAG         0xAA
#define     DEFAULT_BAUD    3000000L
#define     DEFAULT_ADV_INTERVAL    0x0020
#define     DEFAULT_CONN_INTERVAL 0x0020
#define     DEFAULT_SLAVE_LATENCY 10
#define     DEFAULT_DEVICE_NAME "aIRObLUE!"
#define     DEFAULT_ADDR_TYPE   ble_addr_type_random_static
#define     DEFAULT_PUBLIC_ADDR "\x21\x22\x23\x24\x25\x26"
#define     DEFAULT_PRIVATE_ADDR    "\x11\x12\x13\x14\x15\x16"

// flash record related
#define     RECORD_NUMBER_MAX 75  // must < 4096/sizeof(UARTCMD_RECORD_TYPE)
#define     FLASH_EMPTY_DATA       0xFF
#define     FLASH_DISCARD_DATA         0xCF
#define     FLASH_VALID_DATA         0x0F
#define     FLASH_INVALID_DATA       0x00

/******************************************************************************
 * Typedef
 ******************************************************************************/
typedef struct
{
    uint8_t isValid;    // 1
    uint8_t advData[ADV_DATA_LEN];  // 31
    uint32_t baudrate;  // 4
    uint16_t advInterval;   // 2
    uint8_t deviceName[DEVICE_NAME_LEN+1]; // 16, end with '\0', so need to add 1
} dongle_SIP_RECORD_DATA; // total size: 54

typedef struct
{
    uint8_t initFlag;
    dongle_SIP_RECORD_DATA record[RECORD_NUMBER_MAX];
} dongle_SIP_RECORD;

typedef struct
{
    uint8_t length;
    uint8_t type;
    uint8_t *data;
} dongle_SIP_adv_data_item;

typedef struct
{
    uint8_t ogf;
    uint8_t ocf;
    uint8_t processing; // 1: processing, 0: done
} dongle_SIP_cmd_status;

const volatile dongle_SIP_RECORD __attribute__ ((section (".ap_sector"), aligned(4096))) dongle_SIP_data;

/******************************************************************************
 * Variables
 ******************************************************************************/
static const uint8_t DEFAULT_ADV_DATA[ADV_DATA_LEN] = 
    {
        0x05, BLE_GAP_AD_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE, 0x10, 0x00, 0x50, 0x00, // 20ms, 100ms
        0x02, BLE_GAP_AD_TYPE_FLAGS, BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE,
        0x03, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_COMPLETE, 0x12, 0x18,
        0x03, BLE_GAP_AD_TYPE_APPEARANCE, 0xC1, 0x03, // keyboard
        0x0A, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, 'a' , 'I' , 'R' , 'O', 'b', 'L', 'U', 'E', '!' //aIRObLUE!
    }; // ref: assigned number - generic access profile (GAP AD DATA TYPE in ble_gap.h)
static ble_gap_adv_params adv_parms;
static ble_gap_conn_params_t conn_parms;
static ble_addr_t bdaddr;

static UART_SELECT uart_idx = uart_inss;
static uint16_t conn_interval = DEFAULT_CONN_INTERVAL;
static uint16_t conn_slave_latency = DEFAULT_SLAVE_LATENCY;
static uint16_t conn_handle = INVALID_CONN_HANDLE;
static uint8_t conn_linkidx;
static uint8_t bt_state = BT_STATE_IDLE;
static dongle_SIP_cmd_status cmd_status;

#define NUM_OF_ALL_ADV_DATA (sizeof(gAdvDataAry) / sizeof(gAdvDataAry[0]))
static dongle_SIP_adv_data_item gAdvDataAry[] =
    {
        {0, BLE_GAP_AD_TYPE_FLAGS, NULL},
        {0, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_MORE_AVAILABLE, NULL},
        {0, BLE_GAP_AD_TYPE_16BIT_SERVICE_UUID_COMPLETE, NULL},
        {0, BLE_GAP_AD_TYPE_32BIT_SERVICE_UUID_MORE_AVAILABLE, NULL},
        {0, BLE_GAP_AD_TYPE_32BIT_SERVICE_UUID_COMPLETE, NULL},
        {0, BLE_GAP_AD_TYPE_128BIT_SERVICE_UUID_MORE_AVAILABLE, NULL},
        {0, BLE_GAP_AD_TYPE_128BIT_SERVICE_UUID_COMPLETE, NULL},
        {0, BLE_GAP_AD_TYPE_SHORT_LOCAL_NAME, NULL},
        {0, BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME, NULL},
        {0, BLE_GAP_AD_TYPE_TX_POWER_LEVEL, NULL},
        {0, BLE_GAP_AD_TYPE_CLASS_OF_DEVICE, NULL},
        {0, BLE_GAP_AD_TYPE_SIMPLE_PAIRING_HASH_C, NULL},
        {0, BLE_GAP_AD_TYPE_SIMPLE_PAIRING_RANDOMIZER_R, NULL},
        {0, BLE_GAP_AD_TYPE_SECURITY_MANAGER_TK_VALUE, NULL},
        {0, BLE_GAP_AD_TYPE_SECURITY_MANAGER_OOB_FLAGS, NULL},
        {0, BLE_GAP_AD_TYPE_SLAVE_CONNECTION_INTERVAL_RANGE, NULL},
        {0, BLE_GAP_AD_TYPE_SOLICITED_SERVICE_UUIDS_16BIT, NULL},
        {0, BLE_GAP_AD_TYPE_SOLICITED_SERVICE_UUIDS_128BIT, NULL},
        {0, BLE_GAP_AD_TYPE_SERVICE_DATA, NULL},
        {0, BLE_GAP_AD_TYPE_PUBLIC_TARGET_ADDRESS, NULL},
        {0, BLE_GAP_AD_TYPE_RANDOM_TARGET_ADDRESS, NULL},
        {0, BLE_GAP_AD_TYPE_APPEARANCE, NULL},
        {0, BLE_GAP_AD_TYPE_ADVERTISING_INTERVAL, NULL},
        {0, BLE_GAP_AD_TYPE_LE_BLUETOOTH_DEVICE_ADDRESS, NULL},
        {0, BLE_GAP_AD_TYPE_LE_ROLE, NULL},
        {0, BLE_GAP_AD_TYPE_SIMPLE_PAIRING_HASH_C256, NULL},
        {0, BLE_GAP_AD_TYPE_SIMPLE_PAIRING_RANDOMIZER_R256, NULL},
        {0, BLE_GAP_AD_TYPE_SERVICE_DATA_32BIT_UUID, NULL},
        {0, BLE_GAP_AD_TYPE_SERVICE_DATA_128BIT_UUID, NULL},
        {0, BLE_GAP_AD_TYPE_3D_INFORMATION_DATA, NULL},
        {0, BLE_GAP_AD_TYPE_MANUFACTURER_SPECIFIC_DATA, NULL}, 
    };
dongle_SIP_RECORD_DATA gRecordData;

/******************************************************************************
 * Private functions
 ******************************************************************************/
static void _dump_adv_data()
{
    printf("\n**************DumpAdvData**************\n");

    uint8_t i, j;

    for(i = 0; i< NUM_OF_ALL_ADV_DATA; i++)
    {
        if (gAdvDataAry[i].length > 0) {
            printf("%02X %02X data:[", gAdvDataAry[i].length, 
                gAdvDataAry[i].type);

            if (gAdvDataAry[i].data != NULL) {
                uint8_t datalen  = gAdvDataAry[i].length-1;
                for (j = 0; j < datalen; j++) {
                    printf("%02X", gAdvDataAry[i].data[j]);
                }
            } else {
                printf("NULL");
            }
            printf("]\n");
        }
    }
    printf("\n**************DumpAdvData**************\n");
}

static void _reset_adv_data()
{
    uint8_t i;
    for(i=0; i<NUM_OF_ALL_ADV_DATA; i++) {
        gAdvDataAry[i].length = 0;
        if (gAdvDataAry[i].data != NULL) {
            free(gAdvDataAry[i].data);
            gAdvDataAry[i].data = NULL;
        }
    }
}

static uint8_t _parse_adv_data()
{
    uint8_t i, j;
    uint8_t len = 0, type, *data;

    for(i = 0; i< ADV_DATA_LEN; i++) {
        len = gRecordData.advData[i];
        if (len <= 0) {
            break;
        } else {
            type = gRecordData.advData[i+1];
            data = &gRecordData.advData[i+2];

            for (j = 0; j< NUM_OF_ALL_ADV_DATA; j++) {
                if (gAdvDataAry[j].type == type) {
                    gAdvDataAry[j].length = len;
                    if (gAdvDataAry[j].data != NULL) {
                        free(gAdvDataAry[j].data);
                    }
                    gAdvDataAry[j].data = malloc(len-1);
                    memcpy(gAdvDataAry[j].data, data, len-1);
                }
            }
            i += len;
        }
    }
}

static uint8_t _compose_adv_data()
{
    uint8_t i, totalLen = 0;
    uint8_t tempAdvData[ADV_DATA_LEN];

    memset(tempAdvData, 0, ADV_DATA_LEN);

#if VCMD_SIP_DEBUG
    _dump_adv_data();
#endif

    for(i = 0; i < NUM_OF_ALL_ADV_DATA; i++) {
        if(gAdvDataAry[i].length > 0) {
            if (totalLen + gAdvDataAry[i].length +1 <= ADV_DATA_LEN) {
                // compose into gRecordData.advData
                tempAdvData[totalLen] = gAdvDataAry[i].length;
                tempAdvData[totalLen+1] = gAdvDataAry[i].type;
                memcpy(&tempAdvData[totalLen+2], gAdvDataAry[i].data, gAdvDataAry[i].length -1);
            }
            totalLen += gAdvDataAry[i].length+1;
        }
    }

    if ( totalLen > 0 && totalLen <= ADV_DATA_LEN) {
        memcpy(gRecordData.advData, tempAdvData, ADV_DATA_LEN);
    }
    return totalLen;
}


static uint8_t _find_idx_adv_data(uint8_t type)
{
    uint8_t i;
    for(i = 0; i< NUM_OF_ALL_ADV_DATA; i++)
    {
        if (gAdvDataAry[i].type == type) {
            return i;
        }
    }
    return ADV_DATA_LEN;
}

static void _InitParameter()
{
    //set bd address
    bdaddr.addr_type = DEFAULT_ADDR_TYPE;
    if(bdaddr.addr_type == ble_addr_type_public) {
        memcpy(bdaddr.addr, DEFAULT_PUBLIC_ADDR, BLE_ADDR_LEN);
    } else {
        memcpy(bdaddr.addr, DEFAULT_PRIVATE_ADDR, BLE_ADDR_LEN);
    }

    //init adv parameters
    adv_parms.ad_type = ble_ad_type_ind;
    adv_parms.peer_addr = NULL;
    adv_parms.self_addr_type = bdaddr.addr_type;
    adv_parms.filter = ble_filter_any;
    adv_parms.min_interval = 0x0020; //unit: 0.625ms
    adv_parms.max_interval = 0x0040; //unit: 0.625ms
    adv_parms.channel_mask = 0x7;

    // init connection parameters
    conn_parms.min_conn_interval = conn_interval; //unit: 1.25ms, range: 0x0006 to 0x0C80
    conn_parms.max_conn_interval = conn_interval; // unit: 1.25ms, range: 0x0006 to 0x0C80
    conn_parms.slave_latency = conn_slave_latency;
    conn_parms.conn_sup_timeout = conn_interval * 10; // unit: 10ms
    conn_parms.ce_min = 0;
    conn_parms.ce_max = 0;

    // gRecordData default value
    gRecordData.isValid = 1;
    memcpy(gRecordData.advData, DEFAULT_ADV_DATA, ADV_DATA_LEN);
    gRecordData.baudrate = DEFAULT_BAUD;
    gRecordData.advInterval = DEFAULT_ADV_INTERVAL;
    memcpy(gRecordData.deviceName, DEFAULT_DEVICE_NAME, strlen(DEFAULT_DEVICE_NAME)+1);
}

static void _DumpFlashData(void)
{
    uint8_t i, j;

    DRV_MCU_ClearCache();

    printf("\n**************DumpFlashData**************\n");

    printf("(0x%04X) initFlag: 0x%X\n", &dongle_SIP_data.initFlag, dongle_SIP_data.initFlag);
    for(j = 0; j< RECORD_NUMBER_MAX; j++)
    {
        printf("[%d] isValid 0x%02x\n", j, dongle_SIP_data.record[j].isValid);
        if(dongle_SIP_data.record[j].isValid == FLASH_VALID_DATA) 
        {
            printf("(0x%04X) advData: ", &dongle_SIP_data.record[j].advData);
            for(i = 0; i< ADV_DATA_LEN; i++)
            {
                printf("%02X", dongle_SIP_data.record[j].advData[i]);
            }
            printf("\n");
            printf("(0x%04X) baudrate: 0x%08x\n", &dongle_SIP_data.record[j].baudrate, dongle_SIP_data.record[j].baudrate);
            printf("(0x%04X) adv interval: 0x%04x\n", &dongle_SIP_data.record[j].advInterval, dongle_SIP_data.record[j].advInterval);
            printf("(0x%04X) deviceName: %s\n", &dongle_SIP_data.record[j].deviceName, dongle_SIP_data.record[j].deviceName);
        }
    }
    printf("\n**************DumpFlashData**************\n\n");
}

static void _ResetFlashData()
{
    uint8_t ret;
    
    ret = AB_Flash_SectorErase(&dongle_SIP_data);

    if(ret)
    {
        uint8_t init = FLASH_INIT_FLAG;
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.initFlag, &init, 1);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);

    if(ret)
    {
        uint8_t valid = FLASH_VALID_DATA;
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[0].isValid, &valid, 1);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);

    if(ret)
    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[0].advData, DEFAULT_ADV_DATA, ADV_DATA_LEN);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);


    if(ret)
    {
        uint32_t baud = DEFAULT_BAUD;
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[0].baudrate, &baud, sizeof(uint32_t));
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);

    if(ret)
    {
        uint16_t interval = DEFAULT_ADV_INTERVAL;
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[0].advInterval, &interval, sizeof(uint16_t));
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);

    if(ret)
    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[0].deviceName, DEFAULT_DEVICE_NAME, strlen(DEFAULT_DEVICE_NAME)+1);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n", ret);

}

static bool _LoadFlashData()
{
    uint8_t i;
    // find out the valid data, and mark it "invalid"
    for(i = 0; i< RECORD_NUMBER_MAX; i++) {
        if(dongle_SIP_data.record[i].isValid == FLASH_VALID_DATA) {
            gRecordData.isValid = dongle_SIP_data.record[i].isValid;
            memcpy(gRecordData.advData, (const void*)dongle_SIP_data.record[i].advData, ADV_DATA_LEN);
            gRecordData.baudrate= dongle_SIP_data.record[i].baudrate;
            gRecordData.advInterval= dongle_SIP_data.record[i].advInterval;
            memcpy(gRecordData.deviceName, (const void*)dongle_SIP_data.record[i].deviceName, DEVICE_NAME_LEN+1);            

            break;
        }
    }

#if VCMD_SIP_DEBUG
    printf("\n**************gRecordData**************\n");

    printf("isValid 0x%02x\n", gRecordData.isValid);
    printf("advData: ");
    for(i = 0; i< ADV_DATA_LEN; i++)
    {
        printf("%02X", gRecordData.advData[i]);
    }
    printf("\n");
    printf("baudrate: 0x%08x\n", gRecordData.baudrate);
    printf("adv interval: 0x%04x\n", gRecordData.advInterval);
    printf("deviceName: %s\n", gRecordData.deviceName);

    printf("\n**************gRecordData**************\n\n");
#endif

    if (i == RECORD_NUMBER_MAX) {
        printf("no valid record found, used default value.");
        return false;
    }

    _parse_adv_data();

#if VCMD_SIP_DEBUG
    _dump_adv_data();
#endif

    return true;
}

static bool _SaveFlashData()
{
    uint8_t i, ret = true;
    uint8_t emptyidx = RECORD_NUMBER_MAX;
    uint8_t valididx = RECORD_NUMBER_MAX;

    // find out the valid data, and mark it "invalid"
    for(i = 0; i < RECORD_NUMBER_MAX; i++) {
        if(dongle_SIP_data.record[i].isValid == FLASH_VALID_DATA) {
            valididx = i;
            emptyidx = i+1;

            // mark this record "invalid"
            if(ret) {
                uint8_t isvalid = FLASH_INVALID_DATA;
                ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[i].isValid, &isvalid, 1);
                DRV_MCU_ClearCache();
            }     

            if(!ret)
                printf("Flash error\n");
            break;
        }
    }

    if (emptyidx == RECORD_NUMBER_MAX) {
        // no available entry, erase all
        ret = AB_Flash_SectorErase(&dongle_SIP_data);
        emptyidx = 0;
    } else if(dongle_SIP_data.record[emptyidx].isValid != FLASH_EMPTY_DATA) {
        // impossible to happen, just erase it all
        printf("emptyidx entry %d should be EMPTY but it's not, so erase the sector\n", emptyidx);
        ret = AB_Flash_SectorErase(&dongle_SIP_data);
        emptyidx = 0;
    } 

    // start to write new record    
    {
        uint8_t valid = FLASH_VALID_DATA;
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[emptyidx].isValid, &valid, 1);
        DRV_MCU_ClearCache();
    }

    if(!ret)
        printf("Flash error\n");

    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[emptyidx].advData, &gRecordData.advData, ADV_DATA_LEN);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n");

    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[emptyidx].baudrate, &gRecordData.baudrate, sizeof(uint32_t));
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n");

    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[emptyidx].advInterval, &gRecordData.advInterval, sizeof(uint16_t));
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n");

    {
        ret = AB_Flash_ByteProgram(&dongle_SIP_data.record[emptyidx].deviceName, &gRecordData.deviceName, DEVICE_NAME_LEN+1);
        DRV_MCU_ClearCache();
    }     

    if(!ret)
        printf("Flash error\n"); 

#if VCMD_SIP_DEBUG
    _DumpFlashData();
#endif

    return ret;
}

static void _InitFlashData()
{
    if(dongle_SIP_data.initFlag != FLASH_INIT_FLAG)
    {
        _ResetFlashData();
        DRV_MCU_ClearCache();
    }
}

static bool _update_name_into_adv_data()
{
    // hardcode assign 8 for idx for performance
    // uint8_t idx = _find_idx_adv_data(BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME);
    uint8_t idx = 8, newAdvLen = 0;

    // replace existed name
    gAdvDataAry[idx].length = strlen(gRecordData.deviceName)+1; // add length of "type"
    if (gAdvDataAry[idx].data != NULL) {
        free(gAdvDataAry[idx].data);
    }
    gAdvDataAry[idx].data = malloc(strlen(gRecordData.deviceName));
    memcpy(gAdvDataAry[idx].data, gRecordData.deviceName, strlen(gRecordData.deviceName));

    newAdvLen = _compose_adv_data();
    if (newAdvLen > ADV_DATA_LEN) {
        printf("NEW ADV DATA LEN (%d) is too large\n", newAdvLen);
        return false;
    }
    return true;
}   

static void _update_adv_data_into_name()
{
    // hardcode assign 8 for idx for performance
    // uint8_t idx = _find_idx_adv_data(BLE_GAP_AD_TYPE_COMPLETE_LOCAL_NAME);
    uint8_t idx = 8;
    uint8_t len = 0;

    _reset_adv_data();
    _parse_adv_data();

    len = gAdvDataAry[idx].length-1 < DEVICE_NAME_LEN+1 ? gAdvDataAry[idx].length-1 : DEVICE_NAME_LEN+1;
    memset(gRecordData.deviceName, 0, DEVICE_NAME_LEN+1);
    memcpy(gRecordData.deviceName, gAdvDataAry[idx].data, len);
}

// bt related callback
static void cfm_ble_gap_general(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_SUCCESS);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
    }
    cmd_status.processing = 0;
}

static void cfm_ble_gap_restart_and_set_adv3(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        DONGLE_vcmd_response (cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_SUCCESS);
    } else {
        DONGLE_vcmd_response (cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
    }
    cmd_status.processing = 0;
}

static void cfm_ble_gap_restart_and_set_adv2(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        ble_gap_adv_start(&adv_parms, cfm_ble_gap_restart_and_set_adv3);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
        cmd_status.processing = 0;
    }
}

static void cfm_ble_gap_restart_and_set_adv1(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        ble_gap_adv_data_set(gRecordData.advData, ADV_DATA_LEN, cfm_ble_gap_restart_and_set_adv2);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
        cmd_status.processing = 0;
    }
}

static void cfm_ble_gap_restart_adv2(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_SUCCESS);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
    }
    cmd_status.processing = 0;
}

static void cfm_ble_gap_restart_adv1(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        ble_gap_adv_start(&adv_parms, cfm_ble_gap_restart_adv2);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
        cmd_status.processing = 0;
    }
}

static void cfm_ble_gap_set_tx_power(bool isuccess, uint8_t err_code)
{
    if (isuccess) {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_SUCCESS);
    } else {
        DONGLE_vcmd_response(cmd_status.ogf, cmd_status.ocf, NULL, 0, VCMD_ERROR_REF_HCI_CODE);
    }
    cmd_status.processing = 0;
}

/******************************************************************************
 * Public functions
 ******************************************************************************/
VCMD_ERROR_CODE dongle_vcmd_SipSoftReset(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{    
    AB_PWR_Rst();
    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetUartBaudrate(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{    
    if (pkt->buflen == 4) 
    {
        UART_SELECT idx = uart1_ins;
        uint32_t baud = DEFAULT_BAUD;

        memcpy(&baud, &pkt->buf[0], sizeof(uint32_t));

        printf("set uart %d baudrate to %ld\n", uart_idx, baud);
        #if 1
        if (baud > 0) {
            gRecordData.baudrate = baud;
            _SaveFlashData();
            AB_UART_SetBaud(uart_idx, baud);
            return VCMD_SUCCESS;
        }
        #else
        return VCMD_SUCCESS;
        #endif
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetConnectionInterval(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{

    if (pkt->buflen == 2) // 1 x uint16_t
    {
        memcpy(&conn_interval, &pkt->buf[0], sizeof(uint16_t));

        conn_parms.min_conn_interval = conn_interval;
        conn_parms.max_conn_interval = conn_interval;

        if (bt_state == BT_STATE_CONNECTED)
        {
            if (conn_handle != INVALID_CONN_HANDLE) 
            {
                ble_gap_conn_param_update(conn_handle, &conn_parms);
            }
        }
        return VCMD_SUCCESS;
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipRenameModule(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint8_t ret;
    uint8_t oldname[DEVICE_NAME_LEN+1];

    if (pkt->buflen <= DEVICE_NAME_LEN)
    {
        memset(oldname, 0, DEVICE_NAME_LEN+1);
        memcpy(oldname, pkt->buf, pkt->buflen);

        memset(gRecordData.deviceName, 0, DEVICE_NAME_LEN+1);
        memcpy(gRecordData.deviceName, pkt->buf, pkt->buflen);
        if (_update_name_into_adv_data()) {
            _SaveFlashData();

            if (bt_state == BT_STATE_ADV) {
                cmd_status.ogf = pkt->vogf;
                cmd_status.ocf = pkt->vocf;
                cmd_status.processing = 1;
                ble_gap_adv_stop(cfm_ble_gap_restart_and_set_adv1);
                return VCMD_EXECUTING;
            } else {
                return VCMD_SUCCESS;
            }
        } else {
            // update name failed
            memcpy(gRecordData.deviceName, oldname, DEVICE_NAME_LEN+1);
            return VCMD_ERROR_GENERAL;
        }
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipGetMacAddress(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    uint8_t i;

#if VCMD_SIP_DEBUG    
    for(i = 0; i < BLE_ADDR_LEN; i++) {
        printf("%02X", bdaddr.addr[i]);
    }
    printf("\n");
#endif
    
    *len = BLE_ADDR_LEN;
    memcpy(rsp, bdaddr.addr, BLE_ADDR_LEN);

    return VCMD_SUCCESS;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetAdvInterval(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
#if VCMD_SIP_DEBUG
    printf("Set advertising interval, len:%d, bt_state[%d]\n", pkt->buflen, bt_state);
#endif

    if (pkt->buflen == 2) // 1 x uint16_t
    {
        uint8_t ret;
        memcpy(&gRecordData.advInterval, &pkt->buf[0], sizeof(uint16_t));

#if VCMD_SIP_DEBUG
        printf("set advertising interval to: %d\n", gRecordData.advInterval);
#endif

        adv_parms.min_interval = gRecordData.advInterval;
        adv_parms.max_interval = gRecordData.advInterval;

        _SaveFlashData();

        if (bt_state == BT_STATE_ADV) {
            cmd_status.ogf = pkt->vogf;
            cmd_status.ocf = pkt->vocf;
            cmd_status.processing = 1;
            ble_gap_adv_stop(cfm_ble_gap_restart_adv1);
            return VCMD_EXECUTING;
        } else {
            return VCMD_SUCCESS;
        }
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetAdvData(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
#if 0
    uint32_t adlen = 0x1C;
    uint8_t ad[31] = {0x0};
    uint8_t ad[31] = {
        0x05, 0x12, 0x10, 0x00, 0x50, 0x00,
        0x02, 0x01, 0x05,
        0x03, 0x03, 0x12, 0x18,
        0x03, 0x19, 0xC1, 0x03,
        0x0A, 0x09, 'A' , 'i' , 'r' , 'o', 'B', 'l', 'u', 'e', '.'};
#endif

#if VCMD_SIP_DEBUG
    printf("Set advertising data, bt_state[%d]\n", bt_state);
    uint8_t i = 0;
    for(i = 0; i < pkt->buflen; i++) {
        printf("%02X", pkt->buf[i]);
    }
    printf("\n");

#endif

    if (pkt->buflen <= ADV_DATA_LEN)
    {
        uint8_t ret;
        memset(gRecordData.advData, 0, ADV_DATA_LEN);
        memcpy(gRecordData.advData, pkt->buf, pkt->buflen);

        _update_adv_data_into_name();
        _SaveFlashData();

        if (bt_state == BT_STATE_ADV) {
            cmd_status.ogf = pkt->vogf;
            cmd_status.ocf = pkt->vocf;
            cmd_status.processing = 1;
            ble_gap_adv_stop(cfm_ble_gap_restart_and_set_adv1);
            return VCMD_EXECUTING;
        } else {
            return VCMD_SUCCESS;
        }
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetTxPower(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
    int8_t power = 0;
#if VCMD_SIP_DEBUG
    printf("Set tx power, bt_state[%d]\n", bt_state);
#endif

    if (pkt->buflen == 1) 
    {
        power = (int8_t) pkt->buf[0];

        cmd_status.ogf = pkt->vogf;
        cmd_status.ocf = pkt->vocf;
        cmd_status.processing = 1;
        ble_gap_tx_power_set(power, cfm_ble_gap_set_tx_power);
        return VCMD_EXECUTING;
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetAdvEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
#if VCMD_SIP_DEBUG
    printf("Set adv enable, bt_state[%d]\n", bt_state);
#endif

    if (pkt->buflen ==1 )
    {
        if (pkt->buf[0])
        {
            ble_addr_t addr;

            if (bt_state = BT_STATE_IDLE) {
                cmd_status.ogf = pkt->vogf;
                cmd_status.ocf = pkt->vocf;
                cmd_status.processing = 1;
                ble_gap_adv_data_set(gRecordData.advData, ADV_DATA_LEN, cfm_ble_gap_restart_adv1);
                bt_state = BT_STATE_ADV;
                return VCMD_EXECUTING;
            } else {
                return VCMD_SUCCESS;
            }
#if 0
            if(BLE_gap_sm_is_device_bonded(NULL, NULL))
                printf("Bonded device in flash:\n");
            else
                printf("No bonded device in flash\n");    

            if(BLE_gap_sm_get_last_paired_device(&addr))
                printf("addr_type[%d] addr[0x%X 0x%X 0x%X 0x%X 0x%X 0x%X]\n", addr.addr_type, addr.addr[0], addr.addr[1], addr.addr[2], addr.addr[3], addr.addr[4], addr.addr[5]);
            else
                printf("No last paired device\n");

            if(BLE_gap_sm_is_device_bonded(&addr, NULL))
                printf("Device is bonded\n");
            else
                printf("Device not bonded\n");
#endif
        }
        else
        {
            cmd_status.ogf = pkt->vogf;
            cmd_status.ocf = pkt->vocf;
            cmd_status.processing = 1;

            ble_gap_adv_stop(cfm_ble_gap_general);
            bt_state = BT_STATE_IDLE;
            return VCMD_EXECUTING;
        }
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

VCMD_ERROR_CODE dongle_vcmd_SipSetConnectionEnable(vcmd_packet* pkt, uint8_t rsp[], uint8_t *len)
{
#if VCMD_SIP_DEBUG
    printf("Set connection enable, bt_state[%d]\n", bt_state);
#endif

    // TODO: add peer address
    if (pkt->buflen == 8)
    {
        if (pkt->buf[0])
        {
            ble_gap_create_conn_params_t parms;

            parms.min_conn_interval = conn_parms.min_conn_interval;
            parms.max_conn_interval = conn_parms.max_conn_interval;
            parms.slave_latency = conn_parms.slave_latency;
            parms.conn_sup_timeout = conn_parms.conn_sup_timeout;
            parms.ce_min = conn_parms.ce_min;
            parms.ce_max = conn_parms.ce_max;

            if (pkt->buf[1] > ble_addr_type_random_non_resolvable) {
                return VCMD_ERROR_INVALID_PARAM;
            } else {
                parms.peer.addr_type = pkt->buf[1];
            }
            memcpy(parms.peer.addr, &pkt->buf[2], BLE_ADDR_LEN);

            ble_gap_connect(&parms);
            bt_state = BT_STATE_CONNECTED;
            return VCMD_EXECUTING;
        }
        else
        {
             if (conn_handle != INVALID_CONN_HANDLE) 
            {
                ble_gap_disconnect(conn_handle, 0);
                bt_state = BT_STATE_IDLE;
                return VCMD_EXECUTING;
            }            
        }
    }

    return VCMD_ERROR_WRONG_PARAM_LENGTH;
}

void DONGLE_vcmd_sip_init(UART_SELECT uartidx)
{
    bool ret = false;
    uart_idx = uartidx;

    /*bt init*/

    _InitParameter();
    _InitFlashData();
#if VCMD_SIP_DEBUG
    _DumpFlashData();
#endif

    ret = _LoadFlashData();
    if (!ret) {
        printf("load configuration data failed.\n");
    }
    // apply new baudrate
    AB_UART_SetBaud(uart_idx, gRecordData.baudrate);
}

void DONGLE_vcmd_sip_bt_inited(void)
{

    bt_state = BT_STATE_IDLE;
    ble_gap_address_set(&bdaddr, cfm_ble_gap_general);
}

/*
void DONGLE_vcmd_sip_bt_connected(bt_evt_t *evt)
{
    bt_state = BT_STATE_CONNECTED;
    conn_handle = evt->evt.gap_evt.params.connected.conn_handle;
    conn_slave_latency = evt->evt.gap_evt.params.connected.connLatency;
    conn_interval = evt->evt.gap_evt.params.connected.connInterval;
}

void DONGLE_vcmd_sip_bt_disconnected(bt_evt_t *evt)
{
    bt_state = BT_STATE_IDLE;
}
*/
