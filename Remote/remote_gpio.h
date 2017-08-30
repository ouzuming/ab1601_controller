/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_gpio.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __REMOTE_GPIO_H__
#define __REMOTE_GPIO_H__

// GPIO 0
#define REMOTE_GPIO_WAKE_AB1520S       0x00
#define REMOTE_GPIO_WAKE_AB1520S_MASK  0x00000001

// GPIO 12
#define REMOTE_GPIO_BOOST_3_3_V        0x0C
#define REMOTE_GPIO_BOOST_3_3_V_MASK   0x00001000

// GPIO 13
#define REMOTE_GPIO_JACK_DETECT        0x0D
#define REMOTE_GPIO_JACK_DETECT_MASK   0x00002000

// GPIO 23
#define REMOTE_GPIO_AB1520S_ALIVE      0x17
#define REMOTE_GPIO_AB1520S_ALIVE_MASK 0x00800000

void remote_gpio_init (void);

#endif //__REMOTE_GPIO_H__

