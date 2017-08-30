/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    paw3205db_spi.c
DESCRIPTION
NOTES
********************************************************************************/
#include "Paw3205db_spi.h"
#include "Drv_spi.h"
#include "Drv_gpio.h"
#include "Drv_pinmux.h"
#include "mouse.h"

static volatile bool bSpiCmos = false;

DRIVER_MOUSE_SENSOR_PARA mouse_sensor_para = 
{
    0xFF,//sensor_type
    0x30,//sensor_pid
    0x04,//cpi[2:0], b100: 1600, 011: 1200
    0x70,//sleep1_setting sleep1  4ms*8=32 ms
    0x90,//sleep2_setting sleep2  64ms * 10 =640 ms
    0x10,//enter_time: Enter time sleep1 128*(1+1)=256 ms ; sleep2 20480 *(0+1) = 20480 ms
    0x90,//rest2_rate
    0x00,//rest2_downshift
    0x00,//rest3_rate		
    0x0A,//laser_ctrl
    0x80,//laserpower_cfg0
};

static void SpiBlockCB(SPI_PORT spi, uint8_t *tx_buf, uint16_t tx_len, uint8_t *rx_buf, uint16_t rx_len)
{

    bSpiCmos = false;
}

void Paw3205db_GpioInit()
{
    //MOTSWK setting
    DRV_PinMux_SigSet( PIN_MOTSWK_MASK , PIN_GPIO );
    DRV_Gpio_DirSet( PIN_MOTSWK_MASK, PIO_INPUT );

    //SPI setting
    DRV_PinMux_GrpSet( SPI_PIN_MASK1, PIN_SPI );
}


void Paw3205db_SpiInit()
{
    SPI_INIT_PARAMS init_parm;
    
    init_parm.clk_polarity = SPI_SCLK_POL_HI;
    init_parm.clk_phase = SPI_SCLK_PHASE_EVEN;
    init_parm.is_msb_first = SPI_MSB_FIRST;
    init_parm.is_cs_low_active = 1;
    init_parm.is_master_mode = SPI_MODE_MASTER;
    init_parm.is_full_duplex = 0;
    init_parm.reserved = 0;
    init_parm.clk_rate = PAW_SPI_CLK_RATE;
    init_parm.complete_cb = SpiBlockCB;
    init_parm.is_3wire = SPI_MODE_BIDIRECTION;

    DRV_SPI_Init( spi_port1, &init_parm );
}


void Paw3205db_Init()
{
    uint8_t byPID1;
    uint8_t byPID2;
    uint8_t byOpMode;

    byPID1 = SpiSensorRead( SPI_MOUSE_REGISTER_ID1 );
    byPID2 = SpiSensorRead( SPI_MOUSE_REGISTER_ID2 );
    byOpMode = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE );
    MS_PRINT("PID_1 = 0x%2X\n", byPID1 );
    MS_PRINT("PID_2 = 0x%2X\n", byPID2 );
    
    if ( byPID1 != PRODUCT_ID1 )
    {
        MS_PRINT("SPI fail, please check the connection or SPI configuration!!\n");
        MS_PRINT("Or check what kind of CMOS sensor be used!\n");
    }
    
    if ( SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE ) != 0xB8 )
    {
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE, 0xB8 );
    }

    #if 0
    byOpMode = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION );
    printf("REG[0x06] Config = 0x%2X\n", byOpMode );
    #endif

    SensorPowerDown_Exit( SENSOR_POWERDOWN_LED_ON );

    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , mouse_sensor_para.cpi );//CPI == 1600

    //Frequency ,
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_SLEEP1_SETTING,  mouse_sensor_para.sleep1_setting ); //Default 4ms
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_ENTER_TIME, mouse_sensor_para.enter_time ); //Enter time ,256/ 20480 ms
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_SLEEP2_SETTING, mouse_sensor_para.sleep2_setting ); //32 ms
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_IMAGE_THRESHOLD, mouse_sensor_para.laser_ctrl ); //Laser control
    
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,  0x00 );//Disable A-7F write

}
uint8_t SpiSensorRead( uint8_t addr )
{
    uint32_t txlen, rxlen, i;
    uint8_t txbuf[2];
    uint8_t pRxBuf[2] = {0,0};
    
    txbuf[0] = addr;

    bSpiCmos = true;
    
    DRV_SPI_WriteRead( spi_port1, txbuf, LEN_SPI_TX, pRxBuf, LEN_SPI_RX );

    while (bSpiCmos);
    
    return pRxBuf[0];

}

bool SpiSensorWrite( uint8_t addr, uint8_t data )
{
    uint32_t txlen, rxlen, i;
    uint8_t Txbuf[2];
    
    Txbuf[0] = addr | PAW_SPI_WRITE_CMD_BIT;
    Txbuf[1] = data;

    bSpiCmos = true;
    
    DRV_SPI_WriteRead( spi_port1, Txbuf, 2, NULL, 0 );

    while (bSpiCmos);
    
    return bSpiCmos;

}

void SensorSleepMode( MOUSE_SENSOR_SLEEP_TYPE mode )
{
    uint8_t byOpMode;
    
    byOpMode = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE );

    if ( mode == SENSOR_SLEEP_MODE1 )
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE , 0xB2 ); //Force entering sleep2

    if ( mode == SENSOR_SLEEP_MODE2 )
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE , 0xBC ); //Force entering sleep2


}


void SensorPowerDown( MOUSE_SENSOR_POWERDOWN_TYPE mouse_current_mode )
{
	uint8_t mot0swk1;

    switch ( mouse_current_mode )
   	{
  	    case SENSOR_POWERDOWN_LED_OFF:
            SpiSensorWrite(SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION, 0x08 );//PD_enh be set, power down mode
            
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,  0x5A );//Reg 0x0A~0x7F can be read/write
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_0X4B,  0x13 );
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,  0x00 );//Reg 0x0A~0x7F read Only
            // b 1 "01" 1 1100 enter sleep2
            //LEDsht_enh 0   1   Slp_enh Slp2_enh   Slp2For    Slp1For    Wakeup
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE , 0xBC ); //Force entering sleep2
           break;
	
        case SENSOR_POWERDOWN_LED_ON:
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,  0x5A );//Reg 0x0A~0x7F can be read/write
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_SLEEP2_SETTING,  mouse_sensor_para.rest2_rate );
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,  0x00 );//Reg 0x0A~0x7F read Only
            
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE , 0xBC ); //Force entering sleep2
            //switch to SWKINT
            mot0swk1 = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION );
            mot0swk1 |= MOT0SWK1;
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , mot0swk1 );		   
        break;

		
        case SENSOR_POWERDOWN_NONE:
            mot0swk1 = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION );
            mot0swk1 |= MOT0SWK1;
            SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , mot0swk1 );
			break;
   	}
}

void Paw3205db_EnterPowerUp()
{

    uint8_t cpi_mode;
    cpi_mode = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION );
    cpi_mode &= ~PD_ENH; //0xF7;//Bit 3 = 0 //clear power down mode
    cpi_mode |= RESET; // reset
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , cpi_mode ); 	

}

void Sensor_Reset()
{
    uint8_t byValue;
    byValue = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION );
    byValue |= RESET;
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , byValue ); 	
    byValue &= ~RESET;
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_CONFIGURATION , byValue ); 	
}


void SensorPowerDown_Exit( MOUSE_SENSOR_POWERDOWN_TYPE mouse_current_mode )
{
    uint8_t byValue;
    
    Paw3205db_EnterPowerUp();
    
    if  ( mouse_current_mode == SENSOR_POWERDOWN_LED_ON )
    {
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,	0x5A );//Disable 0x0A-7F write
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_0X4B, 0x1B );
        SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT ,	0x00 );//Enable 0x0A-7F write
    }
    
    #if 0
    byValue = SpiSensorRead( SPI_PIXART_3205_MOUSE_REGISTER_OP_MODE );
    printf( "OP_Mode = 0x%X\n" , byValue );
    #endif
}


#if 1
void SensorPowerUp_App( MOUSE_SENSOR_POWERDOWN_TYPE mouse_current_mode )
{
    Paw3205db_EnterPowerUp();

    //---For PAW3205DB-TJ3T Exit PowerDown---//
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT, 0x08 );
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_0X4B, 0x1B );	
    SpiSensorWrite( SPI_PIXART_3205_MOUSE_REGISTER_WRITE_PROTECT, 0x08 );		
    //---------------------------------//
}
#endif

