/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_mouse.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_MOUSE_HH__
#define __REMOTE_MOUSE_HH__

// use GPIO 25 as g-sensor interrupt
#define REMOTE_GPIO_GSENSOR_INT              25
#define REMOTE_GPIO_GSENSOR_INT_MASK        (0x1U << REMOTE_GPIO_GSENSOR_INT)


#define ACCEL_X_SIGN  ( 1)
#define ACCEL_Y_SIGN  ( 1)
#define ACCEL_Z_SIGN  (-1)
#define GYRO_X_SIGN   (-1)
#define GYRO_Y_SIGN   (-1)
#define GYRO_Z_SIGN   ( 1)

extern RC_LOOP_FUNC fRemote_mouse_loop;


void remote_mouse_request_to_enable(void);
void remote_mouse_request_to_disable(void);
void remote_mouse_sensor_enable(void);
void remote_mouse_sensor_disable(void);
void remote_mouse_key_pressed(void);
void remote_mouse_calibration_key_pressed(void);
void remote_gesture_key_pressed(void);
void remote_switch_mouse_sensitivity(void);
#endif
