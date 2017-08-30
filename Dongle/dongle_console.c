/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    dongle_console.c
DESCRIPTION
NOTES
********************************************************************************/
#include "console.h"

static int cmd_help(void *no, int argc, char** argv)
{
    extern void ab_malloc_info_printf();

    ab_malloc_info_printf();
    return 0;
}

static int cmd_test(void *no, int argc, char** argv)
{
    if(!strcmp(argv[1], "jump0"))
    {
        void (*fn)(void) = NULL;
        fn();
    }
    else if(!strcmp(argv[1], "write"))
    {
        *(uint16_t*)0x10001 = 0;
    }
    else if(!strcmp(argv[1], "read"))
    {
        uint16_t var;

        var = *(uint16_t*)0x10001;
    }
    return 0;
}

const console_cmds_t DONGLE_shell_cmds[] = 
{
    {"help", cmd_help, NULL},
    {"test", cmd_test, NULL},
    {NULL, NULL, NULL}
};


