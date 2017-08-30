/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
/*!
      \page Example_FLASH_flash_test "Example/FLASH/flash_test"
      \code {.c}
*/
#include "ab1600.h"
#include "bsp_generic.h"
#include "ab_flash.h"

/******************************************************************************
* defines
******************************************************************************/
#define MY_TAG "tags"

/******************************************************************************
* variables
******************************************************************************/
const bsp_generic_parm bsp_init_parm = {AB_CLK_48M, uart1_ins, {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT}};
const volatile uint8_t __attribute__ ((section (".ap_sector"), aligned(4096))) ap_data[2048];

/******************************************************************************
* main
******************************************************************************/
void main()
{
    bool ret;

    AB_BSP_init(&bsp_init_parm);

    if(strcmp(MY_TAG, (char*)ap_data))
    {
        printf("data invlid, write flash\n");
        
        ret = AB_Flash_SectorErase((uint32_t)ap_data);

        printf("Erase sector %s\n", ret ? "success" : "fail");
        
        if(ret)
        {
            ret = AB_Flash_ByteProgram((uint32_t)ap_data, MY_TAG, strlen(MY_TAG)+1);
            printf("Write %s\n", ret ? "success" : "fail");
        }
    }

    if(strcmp(MY_TAG, (char*)ap_data))
        printf("data still invalid\n");
    else
        printf("data valided, thank you!!\n");

    while(1);
}

/*!
      \endcode
*/

