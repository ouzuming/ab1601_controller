/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    mouse_button.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __MOUSE_BUTTON_HH__
#define __MOUSE_BUTTON_HH__


#define MS_PWRKEY_IO     1
#define MS_POWER_BUTTON  2


void mouse_button_init(void);

void mouse_InitialCheckPowerKey(void);

void mouse_powerkey_pressed(uint8_t id);
void mouse_powerbutton_pressed(uint8_t id);

void _mouse_SendKey(uint16_t keyCode);

typedef struct {
    uint8_t modifier;
    uint8_t reserved;
    uint8_t keycode[6];
} keyboard_report_t;


#endif
