/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_button.c
DESCRIPTION
NOTES
********************************************************************************/
#include "mouse.h"
#include "Drv_Gpio.h"

extern bool mouse_motion_wakeup;
extern uint8_t MS_hids_report[REPORT_SIZE];
extern uint8_t MS_key_report[KEY_REPORT_SIZE];

void mouse_button_init(void)
{

    DRV_Gpio_IntReg(MS_PWRKEY_IO, EDGE_NEG, mouse_powerkey_pressed);
    DRV_Gpio_IntEn(MS_PWRKEY_IO);

    DRV_Gpio_IntReg( MS_POWER_BUTTON, EDGE_NEG, mouse_powerbutton_pressed );
    DRV_Gpio_IntEn( MS_POWER_BUTTON );

    mouse_InitialCheckPowerKey();

}

void _mouse_SendKey(uint16_t keyCode)
{
	MS_key_report[0] = 0;
	MS_key_report[1] = 0;// reserved
	MS_key_report[2] = keyCode;
	MS_key_report[3] = 0;
	MS_key_report[4] = 0;
	MS_key_report[5] = 0;
	MS_key_report[6] = 0;
	MS_key_report[7] = 0;
	MS_key_report[8] = 0;

    mouse_send_hid_report(report1_handle);
}

void _mouse_SendPos( uint16_t uiX, uint16_t uiY )
{

	uint16_t uiWheel, uiDeltaX, uiDeltaY;


	uiDeltaX = uiX;
	uiDeltaY = uiY;

	MS_hids_report[0] = 0x00;

	MS_hids_report[1] = LO_BYTE(uiDeltaX);
	MS_hids_report[2] = HI_BYTE(uiDeltaX);
	MS_hids_report[3] = LO_BYTE(uiDeltaY);
	MS_hids_report[4] = HI_BYTE(uiDeltaY);


	
	MS_hids_report[5] = 0;//LO_BYTE(uiWheel);
	MS_hids_report[6] = 0;//HI_BYTE(uiWheel);
	MS_hids_report[7] = 0x00;
	MS_hids_report[8] = 0x00;

    mouse_send_hid_report(report3_handle);

}

static uint8_t byPointer = 0;

void mouse_powerbutton_pressed(uint8_t id)
{
	mouse_deepsleep_ledoff = true;
	mouse_reset_deep_sleep_timer( 1000 );
}

void mouse_powerkey_pressed(uint8_t id)
{

	mouse_motion_wakeup = true;

    switch(mouse_ble_status)
    {
        case BLE_IDLE:
			printf("BLE_WAKEOVERBLE============\n");
            mouse_ble_status = BLE_WOBLE;
            break;
        case BLE_CONNECTED:
			printf("BLE_CONNECTED============\n");
			mouse_reset_sleep_timer(MOUSE_SLEEP_TO_MOTION);
            mouse_reset_deep_sleep_timer(5*2000);

			if ( byPointer == 1 )
			{
				_mouse_SendKey( KEY_PAGE_UP );
				_mouse_SendKey( KEY_PAGE_DONE );
	            _mouse_SendPos(10, 10);

			}else
			{
                _mouse_SendKey( KEY_PAGE_DOWN );
                _mouse_SendKey( KEY_PAGE_DONE );
	            _mouse_SendPos( 0xFFF4, 0xFFF4 );
			}
	
			byPointer = 1 - byPointer;

            break;
    }
}


void mouse_InitialCheckPowerKey(void)
{
    if( !DRV_Gpio_PinValGet(MS_PWRKEY_IO))
    {
        MS_PRINT("POWER key pressed during system initial\n");
        mouse_powerkey_pressed(MS_PWRKEY_IO);
    }
}

