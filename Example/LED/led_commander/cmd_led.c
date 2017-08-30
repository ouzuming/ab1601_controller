/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    cmd_led.c
DESCRIPTION
NOTES
********************************************************************************/
#include "ab1600.h"
#include "console.h"
#include "Ab_led.h"



int cmd_led_blink_tbl(void *no, int argc, char**argv);
int cmd_led_breath_tbl(void *no, int argc, char**argv);
int cmd_led_on_tbl(void *no, int argc, char**argv);
int cmd_led_start_tbl(void *no, int argc, char**argv);
int cmd_led_fstart_tbl(void *no, int argc, char**argv);
int cmd_led_stop_tbl(void *no, int argc, char**argv);


const console_cmds_t cmd_led_tbl[] =
{
    {"blink", cmd_led_blink_tbl, NULL,},
    {"breath", cmd_led_breath_tbl, NULL,},
    {"on", cmd_led_on_tbl, NULL,},
    {"start", cmd_led_start_tbl, NULL,},
    {"stop", cmd_led_stop_tbl, NULL,},
    {"fstart", cmd_led_fstart_tbl, NULL,},
    {NULL, NULL, NULL}
};

int cmd_led_blink_tbl(void *no, int argc, char**argv)
{    
    uint32_t parm[4];
    //parm[0]: 0: led0 1:led1
    //parm[1]: blink ms
    //parm[2]: gap ms
    //parm[3]: repeat

    if(argc != 5)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(4, &argv[1], parm))
        return RET_INVALID_PARAM;

    AB_LED_set_blink(parm[0], parm[1], parm[2], parm[3]);

    return RET_SUCCESS;;
}


int cmd_led_breath_tbl(void *no, int argc, char**argv)
{    
    uint32_t parm[4];
    //parm[0]: 0: led0 1:led1
    //parm[1]: blink ms
    //parm[2]: gap ms
    //parm[3]: repeat

    if(argc != 5)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(4, &argv[1], parm))
        return RET_INVALID_PARAM;

    AB_LED_set_breath(parm[0], parm[1], parm[2], parm[3]);

    return RET_SUCCESS;;
}

int cmd_led_on_tbl(void *no, int argc, char**argv)
{    
    uint32_t parm[1];

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(1, &argv[1], parm))
        return RET_INVALID_PARAM;

    AB_LED_set_on(parm[0]);

    return RET_SUCCESS;;
}



int cmd_led_start_tbl(void *no, int argc, char**argv)
{
    
    uint32_t parm[1];

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(1, &argv[1], parm))
        return RET_INVALID_PARAM;

 
    AB_LED_start(parm[0]);
 
    return RET_SUCCESS;;
}

int cmd_led_fstart_tbl(void *no, int argc, char**argv)
{
    
    uint32_t parm[1];

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(1, &argv[1], parm))
        return RET_INVALID_PARAM;

 
    AB_LED_follow_start(parm[0], 1-parm[0]);
 
    return RET_SUCCESS;;
}


int cmd_led_stop_tbl(void *no, int argc, char**argv)
{
    
    uint32_t parm[1];

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_StrArray2u32NumArray(1, &argv[1], parm))
        return RET_INVALID_PARAM;

 
    AB_LED_stop(parm[0]);
 
    return RET_SUCCESS;;
}

