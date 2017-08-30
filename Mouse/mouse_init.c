/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_init.c
DESCRIPTION
NOTES
********************************************************************************/
#include "mouse.h"
#include "ab_log.h"


static void _mouse_init(void);
static void _mouse_standby(void);
bool mouse_10ms_time_out;

MS_LOOP_FUNC fMouse_loop = _mouse_init;

//#define MOUSE_AUTO_RUN

#ifdef  MOUSE_AUTO_RUN
static uint16_t uiDeltaX = 2;
static uint16_t uiDeltaY = 0;
static uint16_t uiCount = 0;
#endif
uint16_t uiPendingCount = 0;
static uint16_t uiWheel = 0;
static uint8_t byButton = 0;
static uint8_t byStoreButton = 0;

static void _mouse_init(void)
{
   uint8_t sensitivity;

    fMouse_loop = _mouse_standby;
}

void _mouse_standby(void)
{
    if(mouse_10ms_time_out)
    {
        ndis_enter_critical();
        mouse_10ms_time_out = false;
        ndis_exit_critical();

        if(ble_conn_interval <= 50)
        {
            _mouse_process_motion();
        }
        else
        {
            static uint8_t count = 0;

            if(++count%128 == 0)
                MS_PRINT("connection interval not ideal(%3d ms), suspend mouse function.\n", ble_conn_interval);
        }
    }
}

void _mouse_process_motion(void)
{
#ifndef MOUSE_AUTO_RUN
    uint16_t uiDeltaX = 0;
    uint16_t uiDeltaY = 0;

    byButton = _mouse_button_check();
    uiWheel = (char)DRV_MouseZ_GetCnt();
    DRV_MouseZ_ClearLatch();

    if ( byButton != 0 )
    {
        mouse_reset_sleep_timer(MOUSE_SLEEP_TO_MOTION);
        mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_MOUSE_ON);
    }
    
    if ( ( uiWheel != 0 ) || ( byButton != byStoreButton ) )
    {
        //printf( "0x%4X, 0x%2X\n", uiWheel , byButton);
        
        if ( DRV_Gpio_PinValGet( PIN_MOTSWK_PAW3205DB ) == PIN_MOTSWK_ACTIVE )
        {
            if( ( SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_MOTION_STATUS ) & PAW_SPI_MOUSE_MOVE ) == PAW_SPI_MOUSE_MOVE )
            {
                uiDeltaX = (char)SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_DELTA_X );
                uiDeltaY = (char)SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_DELTA_Y );
                uiDeltaX = 0x10000 - uiDeltaX;
            }
        }

        MS_hids_report[0] = byButton;
        MS_hids_report[1] = LO_BYTE(uiDeltaX);
        MS_hids_report[2] = HI_BYTE(uiDeltaX);
        MS_hids_report[3] = LO_BYTE(uiDeltaY);
        MS_hids_report[4] = HI_BYTE(uiDeltaY);
        MS_hids_report[5] = LO_BYTE(uiWheel);
        MS_hids_report[6] = HI_BYTE(uiWheel);
        byStoreButton = byButton;
        
        if ( BT_Pending_TxCnt() == 0 )
        {
            #if TIMING_MEASURE
            DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 1 );
            OS_delay_us(1);
            DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 0 );
            #endif
            mouse_send_hid_report(report3_handle);
        }
        else
        {
            //MS_PRINT("unsend = %d\n",BT_Pending_TxCnt());
            
            uiPendingCount++;
        }

        mouse_reset_sleep_timer( MOUSE_SLEEP_TO_MOTION );
        mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_MOUSE_ON);

        return;
    }


    if ( DRV_Gpio_PinValGet( PIN_MOTSWK_PAW3205DB ) == PIN_MOTSWK_ACTIVE )
    {
        if( ( SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_MOTION_STATUS ) & PAW_SPI_MOUSE_MOVE ) == PAW_SPI_MOUSE_MOVE )
        {
        
            uiDeltaX = (char)SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_DELTA_X );
            uiDeltaY = (char)SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_DELTA_Y );
            uiDeltaX = 0x10000 - uiDeltaX;

            MS_hids_report[0] = byButton;
            MS_hids_report[1] = LO_BYTE(uiDeltaX);
            MS_hids_report[2] = HI_BYTE(uiDeltaX);
            
            MS_hids_report[3] = LO_BYTE(uiDeltaY);
            MS_hids_report[4] = HI_BYTE(uiDeltaY);

            MS_hids_report[5] = LO_BYTE(uiWheel);
            MS_hids_report[6] = HI_BYTE(uiWheel);
            byStoreButton = byButton;
            
            if ( BT_Pending_TxCnt() == 0 )
            {
                //MS_PRINT("T%d\n",DRV_TMR32B0_TickGet());
                #if TIMING_MEASURE
                DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 1 );
                OS_delay_us(1);
                DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 0 );
                #endif
                mouse_send_hid_report(report3_handle);
            }else
            {
                uiPendingCount++;
                //MS_PRINT("unsend = %d\n",BT_Pending_TxCnt());
            }

            mouse_reset_sleep_timer(MOUSE_SLEEP_TO_MOTION);
            mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_MOUSE_ON);
            return;
        }
    }

#endif	

#ifdef MOUSE_AUTO_RUN
    if ( true )
    {

        if ( DRV_Gpio_PinValGet( GPIO_NUM_13 ) == BUTTON_PRESSED )//Be pressed
        {
            byButton |= MOUSE_LEFT_CLICK;
        }
        else
        {
            byButton &= ~MOUSE_LEFT_CLICK;
        }
        if ( DRV_Gpio_PinValGet( GPIO_NUM_12 ) == BUTTON_PRESSED )//Be pressed
        {
            byButton |= MOUSE_RIGHT_CLICK;
        }
        else
        {
            byButton &= ~MOUSE_RIGHT_CLICK;
        }

            
        if ( DRV_Gpio_PinValGet( GPIO_NUM_11 ) == BUTTON_PRESSED )
        {
            uiWheel = 1;
        }
        else
        {
            if ( DRV_Gpio_PinValGet( GPIO_NUM_10 ) == BUTTON_PRESSED )
            {
                uiWheel = -1;
            }
            else
            {
                uiWheel = 0;
            }
        }

        MS_hids_report[0] = byButton;
        MS_hids_report[1] = LO_BYTE(uiDeltaX);
        MS_hids_report[2] = HI_BYTE(uiDeltaX);
        
        MS_hids_report[3] = LO_BYTE(uiDeltaY);
        MS_hids_report[4] = HI_BYTE(uiDeltaY);
        
        MS_hids_report[5] = LO_BYTE(uiWheel);
        MS_hids_report[6] = HI_BYTE(uiWheel);
        MS_hids_report[7] = 0;
        MS_hids_report[8] = 0;

        
        if (( uiCount >= 0 ) && ( uiCount < 100 ))
        {
            uiDeltaX = 10;
            uiDeltaY = 0;
            mouse_led_enable(true);
        }

        if (( uiCount >= 100 ) && ( uiCount < 200 ))
        {
            uiDeltaX = 0;
            uiDeltaY = 6;
            mouse_led_enable(true);
        }
        if (( uiCount >= 200 ) && ( uiCount < 300 ))
        {
            uiDeltaX = -10;
            uiDeltaY = 0;
            mouse_led_enable(false);
        }

        if (( uiCount >= 300 ) && ( uiCount < 400 ))
        {
            uiDeltaX = 0;
            uiDeltaY = -6;
            mouse_led_enable(false);
        }

        //printf("%d %d %d\n",uiCount, uiDeltaX, uiDeltaY);
        #if 0
        if (  uiCount >= 400 && uiCount < 600 )
        {
            //Do nothing ~~~
            
        }else
        #endif
        
        {

            #if TIMING_MEASURE
            DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 1 );
            OS_delay_us(1);
            DRV_Gpio_ValSet( GPIO_NUM_11_MASK, 0 );
            #endif
            
            if ( BT_Pending_TxCnt() == 0 )
            {
                mouse_send_hid_report(report3_handle);
            }else
            {
                uiPendingCount++;
            }

        }
        
        mouse_reset_deep_sleep_timer(MS_DEEP_SLEEP_TO_MOUSE_ON);

        uiCount++;

        if ( uiCount == 400 )
        {
            MS_PRINT(" Pending %d\n",uiPendingCount );
            uiCount = 0;
        }

    }
    
#endif	

}


uint8_t toggle = 1;
void mouse_report_interrupt(void* ptr)
{
    mouse_10ms_time_out = true;
    #if TIMING_MEASURE
    DRV_Gpio_ValSet( GPIO_NUM_11_MASK, toggle );
    toggle = 1 - toggle;
    #endif
}

void _mouse_enable(void)
{
    if ( mouse_inteface_enabled )
    {
        MS_PRINT_COLOR( 6, "_mouse_enable TRUE\n");
        mouse_gpio_init();
        mouse_sleep_disable.field.mouse_on = true;
        DRV_TMR32B0_NotifyEnable( MOUSE_TIMER, MOUSE_POLLING_TIME, false, NULL, mouse_report_interrupt );
        mouse_led_rc_function_enable( F_LED_MOUSE_BT_CONN );
        mouse_reset_sleep_timer(MOUSE_SLEEP_TO_MOTION);
    }
    else
    {
        MS_PRINT_COLOR( 6, "_mouse_enable FALSE\n");
        mouse_sleep_disable.field.mouse_on = false;
        //Once disconnct to BT, enter deep sleep
        mouse_reset_deep_sleep_timer( MS_DEEP_SLEEP_BT_DISCONN );
        DRV_TMR32B0_NotifyDisable( MOUSE_TIMER );
        mouse_led_rc_function_enable( F_LED_MOUSE_BT_DIS );
    }
}

void _mouse_wakeup()
{
	DRV_Gpio_IntDis( PIN_MOTSWK_PAW3205DB );
	mouse_inteface_enabled = true;
	_mouse_enable();
	mouse_wheel_wake();
}

void _mouse_delete_paired_record(void)
{

    MS_PRINT_COLOR( 6, "_mouse_delete_paired_record ! \n");
    BLE_gap_sm_delete_paired_record(NULL);
    mouse_soft_reset_enabled = true;
}

uint8_t _mouse_button_check(void)
{
    uint8_t bButton = 0;
    
    if ( DRV_Gpio_PinValGet( GPIO_CLICK_L ) == BUTTON_PRESSED )
        bButton |= MOUSE_LEFT_CLICK;
    else
        bButton &= ~MOUSE_LEFT_CLICK;
    
    if ( DRV_Gpio_PinValGet( GPIO_CLICK_R ) == BUTTON_PRESSED )
        bButton |= MOUSE_RIGHT_CLICK;
    else
        bButton &= ~MOUSE_RIGHT_CLICK;

    if ( DRV_Gpio_PinValGet( GPIO_CLICK_M ) == BUTTON_PRESSED )
        bButton |= MOUSE_MIDDLE_CLICK;
    else
        bButton &= ~MOUSE_MIDDLE_CLICK;

    return bButton;
}

