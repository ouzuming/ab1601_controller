/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
    \page Example_Console_bsp "Example/Console/bsp"
    \code {.c}
*/
#include "ab1600.h"
#include "bsp_generic.h"


/*-----------------------------------------------------
Command
------------------------------------------------------*/
int cmd_echo(void *no, int argc, char** argv)
{
    int i;
    for(i = 1; i < argc; i++)
        printf("%s", argv[i]);
    printf("\n");
    return 0;
}

int cmd_cmd(void *no, int argc, char** argv)
{
    printf("I am %s command\n", argv[0]);
    return 0;
}


const  console_cmds_t cmds[] = 
{
    {"echo", cmd_echo, NULL},
    {"cmd1", cmd_cmd, NULL},
    {"cmd2", cmd_cmd, NULL},
    {"cmd3", cmd_cmd, NULL},
    {NULL, NULL, NULL}
};




/*clock*/
const bsp_clock_parm clock_parm =
{
    .sys_clk_rate = AB_CLK_48M, 
    .isrc = true
};

/*console*/
const bsp_console_parm console_parm =
{
    .uart_port = uart1_ins, 
    .tbl = (console_cmds_t *)cmds,
    .prompt = "prompt > ",
};

/*printf*/
const bsp_printf_parm printf_parm =
{
    .uart_port = uart1_ins, 
};


/*uart*/
const bsp_uart_parm uart_parm = 
{
    .uart1_baud = 3000000L,
};


const bsp_generic_ex2_parm bsp_init_parm = 
{
    .clk_parm       = (bsp_clock_parm*) &clock_parm,    
    .printf_parm    = (bsp_printf_parm *) &printf_parm,
    .console_parm   = (bsp_console_parm *)&console_parm,     
    .uart_parm      = (bsp_uart_parm *) & uart_parm,
};


/*-----------------------------------------------------
main
------------------------------------------------------*/
void main()
{
   
    AB_BSP_initEx(&bsp_init_parm);

    while (1);
}


/*!
      \endcode
*/

