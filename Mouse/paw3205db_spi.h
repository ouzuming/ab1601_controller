/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    paw3205db_spi.h
DESCRIPTION
NOTES
********************************************************************************/
#ifndef __PAW3205DB_SPI_HH__
#define __PAW3205DB_SPI_HH__

#include <stdint.h>
#include <stdbool.h>

/**@defgroup PAW3205DB-TJ3T register defination
* @{ */


#define SPI_MOUSE_REGISTER_ID1										0x00
#define SPI_MOUSE_REGISTER_ID2										0x01
#define SPI_PIXART_3205_MOUSE_REGISTER_MOTION_STATUS				0x02
#define SPI_PIXART_3205_MOUSE_REGISTER_DELTA_X						0x03
#define SPI_PIXART_3205_MOUSE_REGISTER_DELTA_Y						0x04
#define SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE						0x05
#define SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION				0x06
#define SPI_PIXART_3205_MOUSE_REGISTER_IMAGE_QUALITY				0x07
#define SPI_PIXART_3205_MOUSE_REGISTER_OP_STATE						0x08
#define SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT				0x09
#define SPI_PIXART_3205_MOUSE_REGISTER_SLEEP1_SETTING				0x0A
#define SPI_PIXART_3205_MOUSE_REGISTER_ENTER_TIME					0x0B
#define SPI_PIXART_3205_MOUSE_REGISTER_SLEEP2_SETTING				0x0C
#define SPI_PIXART_3205_MOUSE_REGISTER_IMAGE_THRESHOLD				0x0D
#define SPI_PIXART_3205_MOUSE_REGISTER_0X4B							0x4B			

/**@} */


//SPI_INIT_PARAMS selection

#define SPI_SCLK_POL_HI         1
#define SPI_SCLK_POL_LO         0
#define SPI_SCLK_PHASE_EVEN     1
#define SPI_SCLK_PHASE_ODD      0
#define SPI_MSB_FIRST           1
#define SPI_MODE_MASTER         1
#define SPI_MODE_BIDIRECTION    1

#define PRODUCT_ID1				0x30
#define PRODUCT_ID2				0xE1

#define PIN_MOTSWK_PAW3205DB	29
#define PIN_MOTSWK_MASK     ( 1<<PIN_MOTSWK_PAW3205DB ) // 0 : Active
#define PIN_MOTSWK_ACTIVE		0 // 0 : active

#define PIN_SPI_CLK			  23
#define PIN_SPI_CLK_MASK     ( 1<<PIN_SPI_CLK ) // 0 : Active


#define PIO_INPUT				0
#define PIO_OUTPUT				1


#define PAW_SPI_CLK_RATE        100000L
#define PAW_SPI_READ_CMD_BIT    (0<<7)
#define PAW_SPI_WRITE_CMD_BIT   (1<<7)

#define PAW_SPI_MOUSE_MOVE      (1<<7)

#define LEN_SPI_RX		1
#define LEN_SPI_TX 		1

#define PD_ENH	(1<<3) // reg=0x06, bit 3, power down mode
#define RESET	(1<<7) 
#define MOT0SWK1	(1<<6) 

typedef enum
{
	SENSOR_POWERDOWN_NONE,
	SENSOR_POWERDOWN_LED_ON,
	SENSOR_POWERDOWN_LED_OFF,
}MOUSE_SENSOR_POWERDOWN_TYPE;

typedef enum
{
	SENSOR_SLEEP_WAKE,
	SENSOR_SLEEP_MODE1,
	SENSOR_SLEEP_MODE2,
}MOUSE_SENSOR_SLEEP_TYPE;


typedef struct
{
	uint8_t sensor_type;
	uint8_t sensor_pid;
	uint8_t cpi;
	uint8_t sleep1_setting;
	uint8_t sleep2_setting;
	uint8_t enter_time;
	uint8_t rest2_rate;
	uint8_t rest2_downshift;
	uint8_t rest3_rate;
	uint8_t laser_ctrl;
	uint8_t laserpower_cfg;
}DRIVER_MOUSE_SENSOR_PARA;


void Paw3205db_GpioInit();
void Paw3205db_SpiInit();
void Paw3205db_Init();
uint8_t SpiSensorRead( uint8_t addr );
bool SpiSensorWrite( uint8_t addr, uint8_t data );
void SensorPowerDown( MOUSE_SENSOR_POWERDOWN_TYPE mouse_current_mode );
void SensorPowerDown_Exit( MOUSE_SENSOR_POWERDOWN_TYPE mouse_current_mode );
void Paw3205db_EnterPowerUp();
void Sensor_Reset();

#endif

