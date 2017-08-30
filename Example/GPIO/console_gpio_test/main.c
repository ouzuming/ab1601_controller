/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_GPIO_console_gpio_test "Example/GPIO/console_gpio_test"
      \code {.c}
*/
#include "ab1600.h"
#include "ab_queue.h"
#include "ab_uart.h"
#include "console.h"
#include "Drv_gpio.h"

/*Uart interface*/
static void uart_rx_data_ind_console(uint16_t len)
{
    uint8_t buf[10];
    uint16_t rlen;
    
    while(rlen = AB_UART_Read(uart1_ins, buf, 10))
    {
        AB_console_handle(buf, rlen);
    }
}


const Ab_UartParam  uart_param_3M_console = {3000000L, 380, uart_rx_data_ind_console, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};

static void console_tx_to_uart(const uint8_t* buf, uint16_t len)
{
    AB_UART_Write(uart1_ins, (uint8_t*)buf, len);
}
   

/*************************************************************************/
/*GPIO command*/
/*************************************************************************/
int cmd_gpio_dir_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t is_output;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &is_output))
        return RET_INVALID_PARAM;

    DRV_Gpio_DirSet(mask, (bool)is_output);

    return RET_SUCCESS;
}

int cmd_gpio_dir_get(void *no, int argc, char** argv)
{    
    if(argc != 1)
        return RET_WRONG_PRARM_NUMBER;

    printf("All Pins Direction = 0x%08X\n", DRV_Gpio_DirGet());
    return RET_SUCCESS;
}

int cmd_gpio_val_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t is_one;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &is_one))
        return RET_INVALID_PARAM;

    DRV_Gpio_ValSet(mask, (bool)is_one);

    return RET_SUCCESS;
}

int cmd_gpio_val_get(void *no, int argc, char** argv)
{
    uint32_t num;
    if(argc != 1 && argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(argc == 1)
        printf("All Pins Value = 0x%08X\n", DRV_Gpio_ValGet());
    else
    {
        if(!AB_UTIL_Str2Num(argv[1], &num) || (num > NUM_OF_GPIO))
            return RET_WRONG_PRARM_NUMBER;
        
        printf("Pin %d Value = %d\n", num, DRV_Gpio_PinValGet((uint8_t) num));
    }
    return RET_SUCCESS;
}

int cmd_gpio_int_en(void *no, int argc, char** argv)
{
    uint32_t io_num;
    
    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &io_num))
        return RET_WRONG_PRARM_NUMBER;

    DRV_Gpio_IntEn((uint8_t)io_num);
    return RET_SUCCESS;
}

int cmd_gpio_int_dis(void *no, int argc, char** argv)
{
    uint32_t io_num;

    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &io_num))
        return RET_WRONG_PRARM_NUMBER;

    DRV_Gpio_IntDis((uint8_t)io_num);
    return RET_SUCCESS;
}

int cmd_gpio_inv_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t is_output;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &is_output))
        return RET_INVALID_PARAM;

    DRV_Gpio_InvSet(mask, (bool)is_output);

    return RET_SUCCESS;
}

int cmd_gpio_inv_get(void *no, int argc, char** argv)
{    
    if(argc != 1)
        return RET_WRONG_PRARM_NUMBER;

    printf("All Pins Inverse Setting = 0x%08X\n", DRV_Gpio_InvGet());
    return RET_SUCCESS;
}


int cmd_gpio_pull_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t pull_type;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &pull_type))
        return RET_INVALID_PARAM;

    DRV_Gpio_PullSet(mask, (GPIO_PULL_TYPE)pull_type);

    return RET_SUCCESS;
}

int cmd_gpio_pull_get(void *no, int argc, char** argv)
{    
    uint32_t io_num;
    GPIO_PULL_TYPE pull_type;
    
    if(argc != 2)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &io_num))
        return RET_INVALID_PARAM;

    pull_type = DRV_Gpio_PinPullGet(io_num);
    printf("Pin %d is %s\n", io_num, pull_type == PULL_NO ? "no pull" : (pull_type == PULL_UP ? "pull up" : "pull down"));
    return RET_SUCCESS;
}



static void gpio_int_handler(uint8_t io_num)
{
    printf("io %d int\n", io_num);
}

int cmd_gpio_int_reg(void *no, int argc, char** argv)
{
    uint32_t io_num;
    uint32_t trigger_type;

    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &io_num))
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[2], &trigger_type))
        return RET_WRONG_PRARM_NUMBER;

    DRV_Gpio_IntReg(io_num, (GPIO_INTR_TYPE_ENUM) trigger_type, gpio_int_handler);
    return RET_SUCCESS;
}

/*************************************************************************/
/*ODGPIO command*/
/*************************************************************************/
int cmd_odgpio_oe_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t is_output;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &is_output))
        return RET_INVALID_PARAM;

    DRV_OdGpio_OeSet((uint8_t)mask, (bool)is_output);

    return RET_SUCCESS;
}

int cmd_odgpio_oe_get(void *no, int argc, char** argv)
{    
    if(argc != 1)
        return RET_WRONG_PRARM_NUMBER;

    printf("All Pins Direction = 0x%02X\n", Drv_OdGpioDirGet());
    return RET_SUCCESS;
}

int cmd_odgpio_val_set(void *no, int argc, char** argv)
{
    uint32_t mask;
    uint32_t is_one;
    
    if(argc != 3)
        return RET_WRONG_PRARM_NUMBER;

    if(!AB_UTIL_Str2Num(argv[1], &mask) || !AB_UTIL_Str2Num(argv[2], &is_one))
        return RET_INVALID_PARAM;

    DRV_OdGpio_ValSet((uint8_t)mask, (uint8_t)is_one);

    return RET_SUCCESS;
}

int cmd_odgpio_val_get(void *no, int argc, char** argv)
{
    uint32_t num;
    if(argc != 1)
        return RET_WRONG_PRARM_NUMBER;

    printf("All Pins Value = 0x%02X\n", DRV_OdGpio_ValGet());
    return RET_SUCCESS;
}


/*GPIO command sub-tables*/
const console_cmds_t cmd_gpio_dir_tbl[] =
{
    {"set", cmd_gpio_dir_set, NULL},
    {"get", cmd_gpio_dir_get, NULL},
    {NULL, NULL, NULL}
};

const console_cmds_t cmd_gpio_val_tbl[] =
{
    {"set", cmd_gpio_val_set, NULL},
    {"get", cmd_gpio_val_get, NULL},
    {NULL, NULL, NULL}
};
const console_cmds_t cmd_gpio_int_tbl[] =
{
    {"en", cmd_gpio_int_en, NULL},
    {"dis", cmd_gpio_int_dis, NULL},
    {"reg", cmd_gpio_int_reg, NULL},
    {NULL, NULL, NULL}
};
const console_cmds_t cmd_gpio_inv_tbl[] =
{
    {"set", cmd_gpio_inv_set, NULL},
    {"get", cmd_gpio_inv_get, NULL},
    {NULL, NULL, NULL}
};
const console_cmds_t cmd_gpio_pull_tbl[] =
{
    {"set", cmd_gpio_pull_set, NULL},
    {"get", cmd_gpio_pull_get, NULL},
    {NULL, NULL, NULL}
};
const console_cmds_t cmd_gpio_tbl[] =
{
    {"dir", NULL, cmd_gpio_dir_tbl},
    {"val", NULL, cmd_gpio_val_tbl},
    {"int", NULL, cmd_gpio_int_tbl},
    {"inv", NULL, cmd_gpio_inv_tbl},
    {"pull", NULL, cmd_gpio_pull_tbl},
    {NULL, NULL, NULL}
};


/*ODGPIO command sub-tables*/
const console_cmds_t cmd_odgpio_oe_tbl[] =
{
    {"set", cmd_odgpio_oe_set, NULL},
    {"get", cmd_odgpio_oe_get, NULL},
    {NULL, NULL, NULL}
};

const console_cmds_t cmd_odgpio_val_tbl[] =
{
    {"set", cmd_odgpio_val_set, NULL},
    {"get", cmd_odgpio_val_get, NULL},
    {NULL, NULL, NULL}
};

const console_cmds_t cmd_odgpio_tbl[] =
{
    {"oe", NULL, cmd_odgpio_oe_tbl},
    {"val", NULL, cmd_odgpio_val_tbl},
    {NULL, NULL, NULL}
};

int cmd_help(void *no, int argc, char** argv)
{    
    printf("Usage: gpio dir set [pin_mask] [dir]\n");
    printf("                                            //Set GPIOs' direction through assign mask\n");
    
    printf("Usage:gpio dir get\n");
    printf("                                            //Get GPIOs' direction setting\n");

    printf("Usage:gpio val set [pin_mask] [val]\n");
    printf("                                            //Set GPIOs' level through assign mask\n");
    printf("Usage:gpio val get [pin_mask]\n");
    printf("                                            //Get GPIOs' values\n");
    printf("Usage:gpio int reg [pin_number] [trigger]\n");
    printf("                                            //Register a GPIO level through assigned io number\n");
    printf("Usage:gpio int en [pin_number]\n");
    printf("                                            //Enable GPIO interrupt by assigned io number\n");
    printf("Usage:gpio int dis [pin_number]\n");
    printf("                                            //Disable GPIO interrupt by assigned io number\n");
    printf("Usage:gpio inv set [pin_mask] [inv]\n");
    printf("                                            //Set GPIOs' inverse through assign mask\n");
    printf("Usage:gpio inv get [pin_mask]\n");
    printf("                                            //Get GPIOs' inverse setting.\n");
    printf("Usage:gpio pull set [pin_mask] [pull]\n");
    printf("                                            //Set GPIOs' pull setting through assign mask\n");
    printf("Usage:gpio pull get [pin_mask]\n");
    printf("                                            //Get GPIOs' pull setting\n");
    printf("Usage:odgpio oe set [pin_mask] [out]\n");
    printf("                                            //Set OD GPIOs' output enable\n");
    printf("Usage:odgpio oe get\n");
    printf("                                            //Get OD GPIOs' output enable setting\n");
    printf("Usage:odgpio val set [pin8_mask] [drive]\n");
    printf("                                            //Set OD GPIOs' low driving through assign mask\n");
    printf("Usage:odgpio val get [pin8_mask]\n");
    printf("                                            //Get OD GPIOs' driving setting\n");

printf("\n\nCommon parameters:\n");
printf("  [val]:       0 for low\n");
printf("               1 for high\n");
printf("  [pull]:      0 for no pull.\n"); 
printf("               1 for pulling high\n");
printf("               2 for pulling low\n");
printf("  [dir]:       0 for input\n");
printf("               1 for output\n");
printf("  [out]:       0 for output disable\n");
printf("               1 for output enabed\n");
printf("  [pin_mask]:  GPIO 0~GPIO29 bitmap. Valided from 0x00000000 to 0x3FFFFFFF\n");        
printf("  [pin8_mask]: OD GPIO 0~OD GPIO5 bitmap. Valided from 0x00 to 0x1F\n");        
printf("  [trigger]:   Types which trigger the gpio interrupt trigger.\n");
printf("               0 for neg-edge\n");
printf("               1 for pos-edge\n"); 
printf("               2,3 for both-edge\n");
printf("               4 for level low\n");
printf("               5 for level high\n");
printf("  [inv]:       0 for no-inversing\n");
printf("               1 for inversing\n");
printf("  [val]:       0 for low driving\n");
printf("               1 for release\n");

}

/*command table*/
const console_cmds_t cmd_tbl[] =
{
    {"gpio", NULL, cmd_gpio_tbl},
    {"odgpio", NULL, cmd_odgpio_tbl},
    {"help", cmd_help, NULL},
    {NULL, NULL, NULL}
};

void main()
{

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    /*uart init*/
    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_console);

    /*console init*/
    printf("Type \"help\" for usage\n");
    AB_console_init("gpio/odgpio commander > ", console_tx_to_uart, (console_cmds_t*)cmd_tbl);
 
    while (1);
}

/*!
      \endcode
*/

