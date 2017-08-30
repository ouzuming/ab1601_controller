/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    main.c
DESCRIPTION
NOTES
********************************************************************************/
 /*!
      \page Example_Queue "Example/Queue"
      \code {.c}
*/
#include "ab1600.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ab_queue.h"
#include "ab_uart.h"
#include "ab_clk.h"

//0: success with number == entry_num
//1: success with number != entry_num due to memory not enough
//2: fail with data
int queue_push_pop_test (int entry_num, int entry_size)
{
    int i, k;
    void* queue;
    uint8_t* dat;
    int pop_cnt;
    int error;

    queue = AB_queue_alloc();

    //printf("(%d-bytes %d entries)...", entry_size, entry_num);

    for (i = 0; i < entry_num; i++)
    {
        dat = AB_queue_entry_alloc (entry_size);

        //printf("dat = %x\n", dat);
        if (!dat)
        {
            break;
        }

        for (k = 0; k < entry_size; k++)
            dat[k] = k;

        AB_queue_push (queue, dat);
    }

    // printf("actually, %d entries allocated and pushed\n", i);

    dat = 0;
    pop_cnt = 0;
    error = 0;
    while (dat = AB_queue_pop (queue))
    {
        // printf("dat = %x\n", dat);
        for (k = 0; k < entry_size; k++)
        {
            if (dat[k] != (k & 0xff))
                error = 1;
        }
        AB_queue_entry_free (dat);
        pop_cnt++;
    }


    //printf("%d entries popped\n", pop_cnt);

    AB_queue_free (queue);

    if (!error && pop_cnt == i)
    {
        if (i != entry_num)
            return 1;
    }
    else
    {
        return 2;
    }

    return 0;
}

const Ab_UartParam  uart_param_3M_noRX = {3000000L, 380, NULL, UART_FORMAT_WORD_LENGTH_8_BIT | UART_FORMAT_STOP_1_BIT};


void main()
{
    uint32_t i, j;
    int ret;

    AB_CLK_Switch(AB_CLK_48M, true);

    /*printf to uart1*/
    Ab_printf_init(uart1_ins);

    AB_UART_Open(uart1_ins, (Ab_UartParam*)&uart_param_3M_noRX);

    for (j = 1; j < 1000; j++)
    {
        printf ("Entry size = %d bytes testing ...\n", j);
    
        for (i = 1; i < 1000000; i++)
        {
            ret = queue_push_pop_test (i, j);
            if (ret == 2)
            {
                printf ("Fail!!!, data error in number = %d test\n", i);
                while (1);
            }
            else if (ret == 1)
            {
                printf ("    Max %d entries allowed\n", i);
                break;
            }
        }
    }

    while (1);
}
/*!
      \endcode
*/

