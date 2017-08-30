/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __MOUSE__HH_
#define __MOUSE__HH_

#include "bt.h"
#include "ble_gap_sm.h"
#include "Drv_timer32b0.h"
#include "Drv_Gpio.h"
#include "Drv_pwr.h"
#include "Drv_wdt.h"
#include "Drv_adc.h"
#include "Drv_mouse.h"
#include "ab_pwr.h"
#include "ab_uart.h"
#include "ab_timer.h"
#include "ab_mp_sector.h"
#include "mouse_typedef.h"
#include "mouse_led.h"
#include "mouse_adv.h"
#include "mouse_gatt.h"
#include "mouse_button.h"
#include "mouse_init.h"
#include "Paw3205db_spi.h"
#include "mouse_vcmd.h"

#define  MOUSE_VERSION		 "0.30"
#define  MOUSE_PROJECT_NAME	 "Airoha Mouse"
#define  MOUSE_MODIFIED_DATE "2017.01.26"
#define  MOUSE_ENABLE

#define  MOUSE_DEBUG     1

#define	 EVK_SIMULATE	 0
#define  TIMING_MEASURE  0

#define  MOUSE_NAME 		'A' , 'i' , 'r' , 'o', 'h', 'a', ' ', 'M', 'o', 'u', 's', 'e' //12

//unit : 500 usec
#define MS_DEEP_SLEEP_BEFORE_WAKEBLE        (60*2000)
#define MS_DEEP_SLEEP_TO_WOBLE_ADV          (5*2000)

#define MS_DEEP_SLEEP_TO_POWER_ON           (60*2000)
#define MS_DEEP_SLEEP_TO_MOUSE_ON           (600*2000)
#define MS_DEEP_SLEEP_TO_KEY_PRESS          (600*2000)
#define MS_DEEP_SLEEP_TO_GENERAL            (60*2000)
#define MS_DEEP_SLEEP_BT_DISCONN            (30*2000)
#define MOUSE_SLEEP_TO_MOTION	            (2*2000 )

#define MS_DEEP_SLEEP_TO_UNDIR_ADV          (5*2000)
#define MS_DEEP_SLEEP_TO_BONDED_UNDIR_ADV   (2*1000)
#define MOUSE_POLLING_TIME					(15)  //7.5

#define BUTTON_PRESSED		0
#define BUTTON_RELEASE		1

#define MOUSE_LEFT_CLICK	0x01
#define MOUSE_RIGHT_CLICK	0x02
#define MOUSE_MIDDLE_CLICK	0x04


#define GPIO_OUTPUT		1
#define GPIO_INPUT		0


// This feature only available when MS_DEBUG -> 0
// MT8852 - Press MS_BYPASS_IO then power-on
#define MS_BYPASS_IO    3
#define GPIO_NUM_10		10  
#define GPIO_NUM_11		11
#define GPIO_NUM_12		12  //Simulate Right click
#define GPIO_NUM_13		13
#define GPIO_NUM_14		14
#define GPIO_NUM_18		18
#define GPIO_NUM_19		19

#define GPIO_CLICK_L	13
#define GPIO_CLICK_R	12
#define GPIO_CLICK_M	11
#define GPIO_CLICK_L_MASK  ( 1<<GPIO_CLICK_L )
#define GPIO_CLICK_R_MASK  ( 1<<GPIO_CLICK_R )
#define GPIO_CLICK_M_MASK  ( 1<<GPIO_CLICK_M )

#define GPIO_WHEEL_ZA	18
#define GPIO_WHEEL_ZB	19

#define GPIO_PAGE_UP    27
#define GPIO_PAGE_DN    28
#define GPIO_PAGE_UP_MASK    ( 1<<GPIO_PAGE_UP )
#define GPIO_PAGE_DN_MASK    ( 1<<GPIO_PAGE_DN )

#define GPIO_NUM_10_MASK  ( 1<<GPIO_NUM_10 )
#define GPIO_NUM_11_MASK  ( 1<<GPIO_NUM_11 )
#define GPIO_NUM_12_MASK  ( 1<<GPIO_NUM_12 )
#define GPIO_NUM_13_MASK  ( 1<<GPIO_NUM_13 )
#define GPIO_NUM_14_MASK  ( 1<<GPIO_NUM_14 )

#define WHEEL_PIN_MASK0 0x03000000 /*!pio 24~25*/
#define WHEEL_PIN_MASK1 0x000C0000 /*!pio 18~19*/
#define WHEEL_PIN_MASK2 0x00003000 /*!pio 12~13*/
#define WHEEL_PIN_MASK3 0x00000030 /*!pio 4~5*/


#define MOUSE_PIN_MASK	MOUSE_PIN_MASK3

#define LO_BYTE(w)          ((uint8_t)(w))
#define HI_BYTE(w)          ((uint8_t)(((uint16_t)(w) >> 8) & 0xFF))



//Appearance Category
// https://www.bluetooth.com/specifications/gatt/viewer?attributeXmlFile=org.bluetooth.characteristic.gap.appearance.xml&u=org.bluetooth.characteristic.gap.appearance.xml&_ga=1.152937595.336090673.1455507329
//
#define     APPEARANCE_DEVICE						BLE_APPEARANCE_HID_MOUSE

//Cimpany ID
//https://www.bluetooth.com/specifications/assigned-numbers/company-identifiers
#define 	COMPANY_ID_MICROSOFT  					0x0006
#define 	COMPANY_ID_APPLE	  					0x004C
#define 	COMPANY_ID_AIROHA						0x0094


//GATT Service 
#define   	SERVICE_HUMAN_INTERFACE_DEVICE			BLE_UUID_HUMAN_INTERFACE_DEVICE_SERVICE// 
#define     Alert_Notification_Service				0x1811






#if MOUSE_DEBUG
int MS_PRINT(const char *fmt, ...);
int MS_PRINT_RED(const char *fmt, ...);
int MS_PRINT_COLOR(uint8_t color, const char *fmt, ...);
#else
#define MS_PRINT(X,Y...) do{}while(0)
#define MS_PRINT_RED(X,Y...) do{}while(0)
#define MS_PRINT_COLOR(X,Y...) do{}while(0)
#endif

extern MS_BLE_STATUS mouse_ble_status;
extern bool mouse_bt_inited;
extern bool mouse_bt_bonded;
extern bool mouse_inteface_enabled;
extern bool mouse_deepsleep_enabled;
extern bool mouse_soft_reset_enabled;
extern volatile bool mouse_fw_updating;
extern volatile bool mouse_waiting_mp_procedure;
extern void *mouse_MP_bd_addr;
extern void *mouse_MP_bt_data;
extern void *mouse_CFG_bt_data;

extern ble_addr_t ble_bonded_peer;
extern uint16_t ble_conn_handle;
extern uint16_t ble_conn_interval;
extern uint16_t ble_slave_latency;

extern MS_SLEEP_CTRL mouse_sleep_disable;
extern BOOT_REASON boot;
extern bool mouse_deepsleep_ledoff;


void mouse_bt_evt_hdl(bt_evt_t *evt);
void mouse_init(void);
void mouse_mainloop(void);
void mouse_reset_deep_sleep_timer(uint32_t ms);
void mouse_reset_sleep_timer( uint32_t ms );

void mouse_check_power_flag(void);
void mouse_check_bt_bonding(void);
bool mouse_check_is_device_bonded(ble_addr_t *addr);

void mouse_wheel_init();
void mouse_wheel_wake();
void _mouse_enable(void);
void _mouse_wakeup();
uint8_t _mouse_button_check(void);
void _mouse_process_motion(void);
void mouse_gpio_init();
void mouse_gpio_pgup_init();
void IntGpioMouse(uint8_t num);
void IntGpioPage(uint8_t num);
void _mouse_enable_deep_sleep(uint32_t id);


#endif
