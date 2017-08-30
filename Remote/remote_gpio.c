/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_gpio.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "remote.h"
#include "Remote_gpio.h"
#include "remote_typedef.h"

#define AB1520S_WAKE_GPIO_TIME       1500
#define DEFERRED_MS                  100
#define AB1520S_KEEP_WAKE_TIME       10000

static uint32_t ab1520s_wakelocked;
bool IsWakeGpioProcess;

static void TimerCallbackFunc(uint32_t tid)
{
    if (tid == TIMER_ID_WAKE_GPIO_HIGH) {

        printf("TIMER_ID_WAKE_GPIO_HIGH\n");
        DRV_Gpio_ValSet(REMOTE_GPIO_WAKE_AB1520S_MASK, true);
    } else if (tid == TIMER_ID_WAKE_GPIO_LOW) {

        printf("TIMER_ID_WAKE_GPIO_LOW\n");
        DRV_Gpio_ValSet(REMOTE_GPIO_WAKE_AB1520S_MASK, false);

        #if defined(RC_IRTX) || defined(RC_IRRX)
        AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_HIGH, false, AB1520S_WAKE_GPIO_TIME * 8, TimerCallbackFunc);
        #else
        AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_HIGH, false, AB1520S_WAKE_GPIO_TIME, TimerCallbackFunc);
        #endif

    } else if (tid == TIMER_ID_WAKE_UNLOCKED) {

        printf("TIMER_ID_WAKE_UNLOCKED\n");
        IsWakeGpioProcess = false;
        DRV_Gpio_ValSet(REMOTE_GPIO_BOOST_3_3_V_MASK, false);
    } else if (tid == TIMER_ID_AB1520S_KEEP_WAKE) {

        uint8_t val;

        val = DRV_Gpio_PinValGet(REMOTE_GPIO_JACK_DETECT);
        if (val) {

            AB_Timer_AlertUnset(TIMER_ID_WAKE_UNLOCKED);

            #if defined(RC_IRTX) || defined(RC_IRRX)
            AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS * 8, TimerCallbackFunc);
            AB_Timer_AlertSet(TIMER_ID_WAKE_UNLOCKED, false, 2*AB1520S_WAKE_GPIO_TIME * 8, TimerCallbackFunc);
            #else
            AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS, TimerCallbackFunc);
            AB_Timer_AlertSet(TIMER_ID_WAKE_UNLOCKED, false, 2*AB1520S_WAKE_GPIO_TIME, TimerCallbackFunc);
            #endif
        }
    }
}

static void gpio_detect_intr (uint8_t io_num)
{
    uint8_t val;

    printf("gpio_detect_intr: %d\n", io_num);
    if (io_num == REMOTE_GPIO_JACK_DETECT) {

        val = DRV_Gpio_PinValGet(io_num);
        
        if (!val) {

            if (!IsWakeGpioProcess) {

               IsWakeGpioProcess = true;
               DRV_Gpio_ValSet(REMOTE_GPIO_BOOST_3_3_V_MASK, true);

               #if defined(RC_IRTX) || defined(RC_IRRX)
               AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS * 8, TimerCallbackFunc);
               #else
               AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS, TimerCallbackFunc);
               #endif
            }
            
            AB_Timer_AlertUnset(TIMER_ID_AB1520S_KEEP_WAKE);
        } else {

            AB_Timer_AlertUnset(TIMER_ID_AB1520S_KEEP_WAKE);

            #if defined(RC_IRTX) || defined(RC_IRRX)
            AB_Timer_AlertSet(TIMER_ID_AB1520S_KEEP_WAKE, false, AB1520S_KEEP_WAKE_TIME * 8, TimerCallbackFunc);
            #else
            AB_Timer_AlertSet(TIMER_ID_AB1520S_KEEP_WAKE, false, AB1520S_KEEP_WAKE_TIME, TimerCallbackFunc);
            #endif
        }
    }
}

void remote_gpio_init (void)
{
    uint8_t val;
    
    DRV_Gpio_ValSet(REMOTE_GPIO_BOOST_3_3_V_MASK, false);
    DRV_Gpio_DirSet(REMOTE_GPIO_BOOST_3_3_V_MASK, true);
    
    DRV_Gpio_ValSet(REMOTE_GPIO_WAKE_AB1520S_MASK, true);
    DRV_Gpio_DirSet(REMOTE_GPIO_WAKE_AB1520S_MASK, true);

    DRV_Gpio_DirSet(REMOTE_GPIO_JACK_DETECT_MASK, false);
    DRV_Gpio_PullSet(REMOTE_GPIO_JACK_DETECT_MASK, PULL_UP);

    DRV_Gpio_DirSet(REMOTE_GPIO_AB1520S_ALIVE_MASK, false);
    DRV_Gpio_PullSet(REMOTE_GPIO_AB1520S_ALIVE_MASK, PULL_UP);

    DRV_Gpio_IntReg(REMOTE_GPIO_JACK_DETECT, EDGE_BOTH, gpio_detect_intr);
    DRV_Gpio_IntEn(REMOTE_GPIO_JACK_DETECT);

    IsWakeGpioProcess = false;

    // If already plug-in the Jack when system boot-up
    val = DRV_Gpio_PinValGet(REMOTE_GPIO_JACK_DETECT);
    if (!val) {

        IsWakeGpioProcess = true;
        val = DRV_Gpio_PinValGet(REMOTE_GPIO_AB1520S_ALIVE);
        // If AB1520S not running ...
        if (val) {
            
            DRV_Gpio_ValSet(REMOTE_GPIO_BOOST_3_3_V_MASK, true);

            #if defined(RC_IRTX) || defined(RC_IRRX)
            AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS * 8, TimerCallbackFunc);
            #else
            AB_Timer_AlertSet(TIMER_ID_WAKE_GPIO_LOW, false, DEFERRED_MS, TimerCallbackFunc);
            #endif
        }
    }
}
