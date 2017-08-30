/******************************************************************************
Copyright (c) Airoha 2016 - All rights reserved

FILE NAME 
    remote_mouse.c
DESCRIPTION
NOTES
********************************************************************************/
#include "remote.h"
#include "Drv_pinmux.h"
#include "ab_log.h"

#if defined(DD_SRC)
// The defition follow the mtd.c
#define MTD_PWR_PIO_MASK        (1<<MTD_PWR_PIO)
#define MTD_SPI_GRP_MASK        SPI_PIN_MASK0
#endif

static void _remote_mouse_init(void);
static void _remote_mouse_standby(void);
static void _remote_mouse_enabled(void);
static void _remote_mouse_gesture(void);
static void _remote_mouse_deltaXY(void);

static void _remote_mouse_process_motion_data(void);

bool mouse_10ms_time_out;
bool mouse_motion_detected;
bool mouse_disable_request;
bool mouse_enable_request;

int16_t mabs_X = 0;
int16_t mabs_Y = 0;


#define VALID_TAG  (0x20160812)

typedef t_struct_AIR_MOTION_SensorAxis AXIS_OFFSET;

typedef enum
{
    MOUSE_DATA_DEPRECATED   = 0x0000,
    MOUSE_DATA_VALID        = 0xAAAA,
    MOUSE_DATA_UNUSED       = 0xFFFF,
}DATA_STATUS;

typedef struct
{
    int16_t    GX;
    int16_t    GY;
    int16_t    GZ;
    int16_t    AX;
    int16_t    AY;
    int16_t    AZ;
    uint16_t    Sensitivity;
    uint16_t    DataStatus;
} MOUSE_DATA;

#define MOUSE_DATA_NUM  ((4096-sizeof(uint32_t))/sizeof(MOUSE_DATA))

typedef struct
{
    MOUSE_DATA  data[MOUSE_DATA_NUM];
    uint32_t    validTag;
}RC_MOUSE_DATA;

AXIS_OFFSET ACCO; //accel offset
const volatile RC_MOUSE_DATA __attribute__ ((section (".ap_sector"), aligned(4096))) rc_mouse_data;


const uint16_t gesture_table[6] =
{
    0x0224,     /* LEFT:                use as AC Back          */
    0x0225,     /* RIGHT:               use as AC Forward       */
    0x00B6,     /* UP:                  use as previous track   */
    0x00B5,     /* DOWN:                use as next track       */
    0x00E9,     /* CLOCKWISE:           use as Volume +         */
    0x00EA,     /* COUNTER CLOCKWISE:   use as Volume -         */
};

const char *gesture_string[] =
 {
      "LEFT",
      "RIGHT",
      "UP",
      "DOWN",
      "CLOCKWISE",
      "COUNTER CLOCKWISE",
};


t_struct_AIR_MOTION_ProcessDeltaSamples lSensorSamples;
t_struct_AIR_MOTION_ProcessDeltaStatus  lData;

t_struct_AIR_MOTION_Init                lInitParameters =
{
    .DeltaGain = {
        .X                  = 9,
        .Y                  = 9,},

    .GyroOffsets = {
        .X                  = 0,
        .Y                  = 0,
        .Z                  = 0,},

    .GyroStaticMaxNoise     = 8,
    .StaticSamples          = 150,
    .SwipeMinDist           = 150,
    .SwipeMaxNoise          = 200,
    .StartupSamples         = 20,
    .ClickStillSamples      = 30,
    .ClickStillTolerance    = AirMotionNormal,
    .IsRollCompEnabled      = true,
    .Acc1gLsb               = 4096,
    .GyroSensitivity        = 262,
};

RC_LOOP_FUNC fRemote_mouse_loop = _remote_mouse_init;

typedef enum
{
    GYRO_OFFSET,
    ACCEL_OFFSET,
}MOUSE_OFFSET_SEL;

static void _remote_mouse_get_flash_data(AXIS_OFFSET * GOF, AXIS_OFFSET * AOF, uint8_t * sensitivity)
{
    if(rc_mouse_data.validTag == VALID_TAG)
    {
        uint8_t i;

        for(i=0; i<MOUSE_DATA_NUM; i++)
        {

            if(rc_mouse_data.data[i].DataStatus == MOUSE_DATA_VALID)
            {
                GOF->X = rc_mouse_data.data[i].GX;
                GOF->Y = rc_mouse_data.data[i].GY;
                GOF->Z = rc_mouse_data.data[i].GZ;
                AOF->X = rc_mouse_data.data[i].AX;
                AOF->Y = rc_mouse_data.data[i].AY;
                AOF->Z = rc_mouse_data.data[i].AZ;
                *sensitivity = (uint16_t)rc_mouse_data.data[i].Sensitivity;

                return;
            }
            else if(rc_mouse_data.data[i].DataStatus == MOUSE_DATA_UNUSED)
            {
                break;
            }
        }
    }

    GOF->X = GOF->Y = GOF->Z = 0;
    AOF->X = AOF->Y = AOF->Z = 0;
    *sensitivity = 9;

    return;
}


void _remote_g_sensor_interrupt(uint8_t id)
{
    DRV_Gpio_IntDis(REMOTE_GPIO_GSENSOR_INT);

    if(mouse_motion_detected || remote_mouse_enabled)
        return;

    remote_check_bt_bonding();

    printf("G Sensor threshold triggered ----> ");

    if(remote_bt_bonded)
    {
        printf("device bonded, report motion.\n");
        mouse_motion_detected = true;
    }
    else
    {
        printf("device not bonded, ignore this interrupt.\n");
    }
}

void remote_mouse_wake_on_motion_init(void)
{
    if(rc_cfg.WAKE_ON_MOTION)
    {
        mouse_motion_detected = true;

        mtd_SensorOn();

        if(mtd_is_interrupt_issued())
            _remote_g_sensor_interrupt(0);
        else
            mtd_enter_WOM_mode(0xA0);

        DRV_Gpio_DirSet(REMOTE_GPIO_GSENSOR_INT_MASK, false);
        DRV_Gpio_IntReg(REMOTE_GPIO_GSENSOR_INT, EDGE_POS, _remote_g_sensor_interrupt);

        DRV_Gpio_DebEn(REMOTE_GPIO_GSENSOR_INT, false);
        DRV_Gpio_IntEn(REMOTE_GPIO_GSENSOR_INT);
        DRV_Gpio_PullSet(REMOTE_GPIO_GSENSOR_INT_MASK, PULL_DOWN);
    }
}

static void _remote_mouse_init(void)
{
    uint8_t sensitivity;


    _remote_mouse_get_flash_data(&lInitParameters.GyroOffsets, &ACCO, &sensitivity);

    lInitParameters.DeltaGain.X = lInitParameters.DeltaGain.Y = sensitivity;

    printf("sensitivity = %d\n", lInitParameters.DeltaGain.X);
    printf("GOF = %6d, %6d, %6d\n", lInitParameters.GyroOffsets.X,lInitParameters.GyroOffsets.Y,lInitParameters.GyroOffsets.Z);
    printf("AOF = %6d, %6d, %6d\n", ACCO.X, ACCO.Y, ACCO.Z);

    AIR_MOTION_Init(&lInitParameters);

    fRemote_mouse_loop = _remote_mouse_standby;

    remote_mouse_wake_on_motion_init();
}

void remote_mouse_10ms_interrupt(void* ptr)
{
    mouse_10ms_time_out = true;
}

void remote_self_disable(uint32_t id)
{
    printf("air mouse static over 6 seconds, disable itself. \n");

    remote_mouse_request_to_disable();
}

void remote_check_motion(void)
{
    if(rc_cfg.WAKE_ON_MOTION)
    {
        if(mouse_motion_detected)
        {
            if(remote_ble_status == BLE_IDLE && remote_bt_bonded)
            {
                remote_ble_status = BLE_ACTIVATED;
            }
            else if(remote_ble_status == BLE_CONNECTED && remote_link_encrypted)
            {
                printf("mouse enabled by motion.\n");

                ndis_enter_critical();
                mouse_motion_detected = false;
                remote_mouse_request_to_enable();
                ndis_exit_critical();
            }
        }
    }
}

/*
#define RC_MOUSE_FRAME_XOFFSET  80
void RC_mouse_print_frame(void)
{

    char bound_hori[]  = "*---------------------------------------------------------------------------------*\n\0";
    char bound_blank[] = "|                                                                                 |\n\0";
    uint8_t i;

    mabs_X = 0;
    mabs_Y = 0;

    ANSI_HVP(1,RC_MOUSE_FRAME_XOFFSET);

    printf("%s",bound_hori);

    for(i=0;i<41;i++)
    {
        ANSI_HVP(i+2,RC_MOUSE_FRAME_XOFFSET);
        printf("%s",bound_blank);
    }

    ANSI_HVP(43,RC_MOUSE_FRAME_XOFFSET);
    printf("%s",bound_hori);

    ANSI_HVP(22,42+RC_MOUSE_FRAME_XOFFSET);
}

void RC_mouse_move_cursor(void)
{
    int16_t X,Y;

    X = mabs_X/10;
    Y = mabs_Y/20;

    ANSI_HVP(Y+22,X+42+RC_MOUSE_FRAME_XOFFSET);
}
*/
void remote_check_mouse_state_change_request(void)
{

    if(mouse_enable_request)
    {
        ndis_enter_critical();
        mouse_enable_request = false;
        ndis_exit_critical();

        if(rc_ffunc.air_mouse)
        {
            printf("air mouse function forbidden due to low battery level!\n");
            remote_led_rc_function_enable(F_LED_FUNC_DISABLED_BY_LOW_BAT);
            remote_led_rc_function_state_clear(F_LED_FUNC_DISABLED_BY_LOW_BAT);
        }
        else
        {
            ndis_enter_critical();
            remote_mouse_enabled = true;
            //remote_sleep_disable.field.mouse_on = true;
            ndis_exit_critical();


            #if defined(DD_SRC)
            DRV_PinMux_SigSet(MTD_SPI_GRP_MASK, PIN_GPIO);
            DRV_Gpio_DirSet(MTD_SPI_GRP_MASK, true);
            DRV_Gpio_ValSet(MTD_SPI_GRP_MASK, 1);
            OS_delay_ms(1);
            #endif // DD_SRC

            remote_mouse_sensor_enable();
            #if defined(RC_IRTX) || defined(RC_IRRX)
            DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10 * 8, false, NULL, remote_mouse_10ms_interrupt);
            #else
            DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10, false, NULL, remote_mouse_10ms_interrupt);
            #endif
            remote_led_rc_function_enable(F_LED_MOUSE);

            AIR_MOTION_Init(&lInitParameters);
            //RC_mouse_print_frame();
        }


    }

    if(mouse_disable_request)
    {
        ndis_enter_critical();
        remote_mouse_enabled = false;
        mouse_disable_request = false;
        //remote_sleep_disable.field.mouse_on = false;
        ndis_exit_critical();

        #if defined(DD_SRC)
        DRV_Gpio_DirSet(MTD_SPI_GRP_MASK, false);
        #endif // DD_SRC

        remote_mouse_sensor_disable();
        AB_Timer_AlertUnset(TIMER_ID_MOUSE_SELF_DISABLE);
        DRV_TMR32B0_NotifyDisable(REMOTE_MIC_MOUSE_TIMER);
        remote_led_rc_function_disable(F_LED_MOUSE);
    }
}

void remote_check_mouse_timer(void)
{
    if(mouse_10ms_time_out)
    {
        static uint8_t count = 0;

        ndis_enter_critical();
        mouse_10ms_time_out = false;
        ndis_exit_critical();

        _remote_mouse_process_motion_data();

        if(ble_conn_interval <= 50)
        {
            if(BT_Pending_TxCnt() < 3000)
                _remote_mouse_enabled();
            else
            {
                if(++count%128 == 0)
                    printf("too much pending BT data, suspend mouse function\n");
            }
        }
        else
        {
            if(++count%128 == 0)
                printf("connection interval not ideal(%3d ms), suspend mouse function.\n", ble_conn_interval);
        }
    }
}

void _remote_mouse_standby(void)
{
    if(remote_mic_status == MIC_ENABLED)
    {
        AB_Timer_AlertUnset(TIMER_ID_MOUSE_SELF_DISABLE);
        return;
    }


    remote_check_mouse_timer();
    remote_check_motion();
    remote_check_mouse_state_change_request();

/*
    if(remote_mouse_enabled)
    {
        AB_PWR_Stanby();
    }
*/
}

void _remote_mouse_enabled(void)
{
    if(remote_gesture_enabled)
        _remote_mouse_gesture();
    else
        _remote_mouse_deltaXY();
}

void remote_check_mouse_continue(void)
{
    if(remote_mouse_enabled)
    {
        DRV_TMR32B0_NotifyDisable(REMOTE_MIC_MOUSE_TIMER);
        #if defined(RC_IRTX) || defined(RC_IRRX)
        DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10 * 8, false, NULL, remote_mouse_10ms_interrupt);
        #else
        DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10, false, NULL, remote_mouse_10ms_interrupt);
        #endif
    }
}

void _remote_mouse_gesture(void)
{
    uint8_t mask = *(uint8_t *)&lData.SwipesDetected;

    if(!!mask)
    {
        uint8_t i;

        for(i=0; i<6; i++)
        {
            if((mask>>i) & 0x1)
            {
                _remote_SendKey(gesture_table[i]);
                _remote_SendKey(0x0000);
                printf("gesture detected: %s \n",gesture_string[i]);
                break;
            }
        }
        AIR_MOTION_ResetSwipeRecognition();
        remote_reset_deep_sleep_timer(rc_deepsleep_timeout.MOUSE_ON);
    }
}
/*
#define CLAMP(x, low, high)  (((x) > (high)) ? (high) : (((x) < (low)) ? (low) : (x)))
void RC_mouse_visualize_via_uart(void)
{

    static uint8_t count = 0;

    mabs_X += lData.Delta.X;
    mabs_Y += lData.Delta.Y;

    mabs_X = CLAMP(mabs_X, -400,400);
    mabs_Y = CLAMP(mabs_Y, -400,400);

    RC_mouse_move_cursor();

    if(RC_hids_report3[2])
        printf("\b.\b");
    else
        printf("\b \b");
}
*/
void _remote_mouse_deltaXY(void)
{
    static bool not_static;

    if(!lData.Status.IsStatic)
    {
        RC_hids_report3[0] = (uint8_t)lData.Delta.X;
        RC_hids_report3[1] = (uint8_t)lData.Delta.Y;

        remote_send_hid_report(report3_handle);
        remote_reset_deep_sleep_timer(rc_deepsleep_timeout.MOUSE_ON);
        AB_Timer_AlertUnset(TIMER_ID_MOUSE_SELF_DISABLE);
        not_static = true;
        //RC_mouse_visualize_via_uart();
    }
    else
    {
        if(not_static)
        {
            not_static = false;
            #if defined(RC_IRTX) || defined(RC_IRRX)
            AB_Timer_AlertSet(TIMER_ID_MOUSE_SELF_DISABLE, false, 6000 * 8, remote_self_disable);
            #else
            AB_Timer_AlertSet(TIMER_ID_MOUSE_SELF_DISABLE, false, 6000, remote_self_disable);
            #endif
            printf("RC static \n");
        }
    }
}

void _remote_mouse_motion_data_bias(void)
{
    //do accel and gyro orientation transform for AML lib
    lSensorSamples.AccSamples.X  *= ACCEL_X_SIGN;
    lSensorSamples.AccSamples.Y  *= ACCEL_Y_SIGN;
    lSensorSamples.AccSamples.Z  *= ACCEL_Z_SIGN;

    lSensorSamples.GyroSamples.X *= GYRO_X_SIGN;
    lSensorSamples.GyroSamples.Y *= GYRO_Y_SIGN;
    lSensorSamples.GyroSamples.Z *= GYRO_Z_SIGN;
}

void _remote_mouse_process_motion_data(void)
{
    uint8_t buf[14];

    mtd_RegRead(0x3B, 14, buf);

    lSensorSamples.AccSamples.X  = (int16_t)(buf[ 0]<<8 | buf[ 1]<<0)-ACCO.X;
    lSensorSamples.AccSamples.Y  = (int16_t)(buf[ 2]<<8 | buf[ 3]<<0)-ACCO.Y;
    lSensorSamples.AccSamples.Z  = (int16_t)(buf[ 4]<<8 | buf[ 5]<<0)-ACCO.Z;

    lSensorSamples.GyroSamples.X = (int16_t)(buf[ 8]<<8 | buf[ 9]<<0);
    lSensorSamples.GyroSamples.Y = (int16_t)(buf[10]<<8 | buf[11]<<0);
    lSensorSamples.GyroSamples.Z = (int16_t)(buf[12]<<8 | buf[13]<<0);

    _remote_mouse_motion_data_bias();

    lSensorSamples.ClickSample   = RC_hids_report3[2];

    lData = AIR_MOTION_ProcessDelta(lSensorSamples);

    if(lData.Status.NewGyroOffset)
    {
        lInitParameters.GyroOffsets.X = lData.GyroOffsets.X;
        lInitParameters.GyroOffsets.Y = lData.GyroOffsets.Y;
        lInitParameters.GyroOffsets.Z = lData.GyroOffsets.Z;
    }
}

void remote_mouse_key_pressed(void)
{
    if(remote_mic_status != MIC_REMOTE_DISABLED)
        return;

    if(remote_mouse_enabled)
        remote_mouse_request_to_disable();
    else
        remote_mouse_request_to_enable();
}

void remote_gesture_key_pressed(void)
{
    remote_gesture_enabled = true;
    AIR_MOTION_ResetSwipeRecognition();
    AB_Timer_AlertUnset(TIMER_ID_MOUSE_SELF_DISABLE);
}

void _remote_reset_mouse_data_in_flash(void)
{
    bool status;
    uint32_t tag = VALID_TAG;

    status = AB_Flash_SectorErase(&rc_mouse_data);

    if(status)
       status = AB_Flash_ByteProgram(&rc_mouse_data.validTag, &tag, 4);

    if(!status)
        printf("RC FLASH access failed!\n");
}

void _remote_save_mouse_data_to_flash(void)
{
    bool status;
    uint8_t i;

    DRV_MCU_ClearCache();

    if( rc_mouse_data.validTag != VALID_TAG ||
        rc_mouse_data.data[MOUSE_DATA_NUM-1].DataStatus == MOUSE_DATA_VALID)
    {
        printf("MAX NUM reached or Flash not inited, reset flash.\n");
        _remote_reset_mouse_data_in_flash();
    }


    if(1)
    {
        for(i=0; i<MOUSE_DATA_NUM; i++)
        {

            if(rc_mouse_data.data[i].DataStatus == MOUSE_DATA_VALID)
            {
                uint16_t dep = MOUSE_DATA_DEPRECATED;

                printf("kill last data in flash.\n");
                status = AB_Flash_ByteProgram(&rc_mouse_data.data[i].DataStatus, &dep, 2);
            }

            if(rc_mouse_data.data[i].DataStatus == MOUSE_DATA_UNUSED)
            {
                MOUSE_DATA newdata;

                newdata.GX = lInitParameters.GyroOffsets.X;
                newdata.GY = lInitParameters.GyroOffsets.Y;
                newdata.GZ = lInitParameters.GyroOffsets.Z;
                newdata.AX = ACCO.X;
                newdata.AY = ACCO.Y;
                newdata.AZ = ACCO.Z;
                newdata.Sensitivity = lInitParameters.DeltaGain.X;
                newdata.DataStatus = MOUSE_DATA_VALID;

                status = AB_Flash_ByteProgram(&rc_mouse_data.data[i], &newdata, sizeof(MOUSE_DATA));

                if(status)
                    printf("update mouse data in flash succeed.\n");
                else
                    printf("update mouse data in flash failed. \n");

                return;;
            }
        }
    }
}

typedef struct
{
    int32_t X;
    int32_t Y;
    int32_t Z;
} ACC_K;

bool _remote_mouse_vcmd_calibration(uint16_t * mouse_data)
{
    MOUSE_DATA * data = (MOUSE_DATA *)mouse_data;
    bool  new_gyro_offset = false;
    ACC_K ACC;
    uint8_t i,j;

    lInitParameters.StaticSamples      = 20;
    lInitParameters.GyroStaticMaxNoise = 24;
    AIR_MOTION_Init(&lInitParameters);

    mtd_IOinit();
    mtd_SensorOn();

    for(i=0; i<20; i++)
    {
        OS_delay_ms(1);
        _remote_mouse_process_motion_data();
    }

    for(j=0; j<3; j++)
    {
        memset(&ACC, 0, sizeof(ACC));
        memset(&ACCO,0, sizeof(ACCO));

        for(i=0; i<50; i++)
        {
            _remote_mouse_process_motion_data();
            ACC.X += ACCEL_X_SIGN*lSensorSamples.AccSamples.X;
            ACC.Y += ACCEL_Y_SIGN*lSensorSamples.AccSamples.Y;
            ACC.Z += ACCEL_Z_SIGN*lSensorSamples.AccSamples.Z;

            if(lData.Status.NewGyroOffset)
                new_gyro_offset = true;

            OS_delay_ms(3);
        }

        ACCO.X = (int16_t)(ACC.X/50);
        ACCO.Y = (int16_t)(ACC.Y/50);
        ACCO.Z = (int16_t)(ACC.Z/50)+4096;  //1g

        if(new_gyro_offset)
            break;
    }

    mtd_SensorOff();

    data->DataStatus    = MOUSE_DATA_VALID;
    data->Sensitivity   = 9;
    data->GX            = lInitParameters.GyroOffsets.X;
    data->GY            = lInitParameters.GyroOffsets.Y;
    data->GZ            = lInitParameters.GyroOffsets.Z;
    data->AX            = ACCO.X;
    data->AY            = ACCO.Y;
    data->AZ            = ACCO.Z;

    return new_gyro_offset;
}

void _remote_mouse_calibration(void)
{
    uint8_t i,j;
    bool  new_gyro_offset = false;
    ACC_K ACC;


    DRV_WDT_Disable();
    remote_led_rc_function_enable(F_LED_MOUSE_WAIT_STEADY);

    lInitParameters.StaticSamples      = 20;
    lInitParameters.GyroStaticMaxNoise = 24;
    AIR_MOTION_Init(&lInitParameters);

    for(i=0; i<200; i++)
    {
        OS_delay_ms(20);
        _remote_mouse_process_motion_data();
    }

    remote_led_rc_function_disable(F_LED_MOUSE_WAIT_STEADY);
    remote_led_rc_function_enable(F_LED_MOUSE_CALIBRATING);

    for(j=0; j<10; j++)
    {
        memset(&ACC, 0, sizeof(ACC));
        memset(&ACCO,0, sizeof(ACCO));

        for(i=0; i<50; i++)
        {
            _remote_mouse_process_motion_data();
            ACC.X += ACCEL_X_SIGN*lSensorSamples.AccSamples.X;
            ACC.Y += ACCEL_Y_SIGN*lSensorSamples.AccSamples.Y;
            ACC.Z += ACCEL_Z_SIGN*lSensorSamples.AccSamples.Z;

            if(lData.Status.NewGyroOffset)
                new_gyro_offset = true;

            OS_delay_ms(10);
        }

        ACCO.X = (int16_t)(ACC.X/50);
        ACCO.Y = (int16_t)(ACC.Y/50);
        ACCO.Z = (int16_t)(ACC.Z/50)+4096;  //1g

        if(new_gyro_offset)
        {
            printf("New Gyro offset is calculated successfully. Save new parameter to flash.\n");
            _remote_save_mouse_data_to_flash();
            break;
        }
        else
        {
            if(j == 9)
                printf("Maximum retry reached.\n");
            else
                printf("New Gyro offset is not calculated successfully. Try to calibrate again.\n");
        }
    }

    DRV_WDT_Enable(5);

    lInitParameters.StaticSamples      = 150;
    lInitParameters.GyroStaticMaxNoise = 8;
    AIR_MOTION_Init(&lInitParameters);

    remote_led_rc_function_disable(F_LED_MOUSE_CALIBRATING);
}

void remote_mouse_calibration_key_pressed(void)
{
    AB_Timer_AlertUnset(TIMER_ID_MOUSE_SELF_DISABLE);

    if(remote_mouse_enabled)
    {
        DRV_TMR32B0_NotifyDisable(REMOTE_MIC_MOUSE_TIMER);
        _remote_mouse_calibration();
        #if defined(RC_IRTX) || defined(RC_IRRX)
        DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10 * 8, false, NULL, remote_mouse_10ms_interrupt);
        #else
        DRV_TMR32B0_NotifyEnable(REMOTE_MIC_MOUSE_TIMER, 10, false, NULL, remote_mouse_10ms_interrupt);
        #endif
    }
    else
    {
        #if defined(DD_SRC)
        DRV_PinMux_SigSet(MTD_SPI_GRP_MASK, PIN_GPIO);
        DRV_Gpio_DirSet(MTD_SPI_GRP_MASK, true);
        DRV_Gpio_ValSet(MTD_SPI_GRP_MASK, 1);
        OS_delay_ms(1);
        #endif // DD_SRC
    
        if(rc_cfg.WAKE_ON_MOTION)
            mtd_exit_WOM_mode();
        else
            mtd_SensorOn();

        _remote_mouse_calibration();

        #if defined(DD_SRC)
        DRV_Gpio_DirSet(MTD_SPI_GRP_MASK, false);
        #endif // DD_SRC
        
        remote_mouse_sensor_disable();

    }
}

void remote_switch_mouse_sensitivity(void)
{
    static uint8_t gMouseSensitivity = 9;

    gMouseSensitivity %=15;
    gMouseSensitivity +=3;

    lInitParameters.DeltaGain.X = gMouseSensitivity;
    lInitParameters.DeltaGain.Y = gMouseSensitivity;

    AIR_MOTION_Init(&lInitParameters);
}

void remote_mouse_sensor_enable(void)
{
    mtd_SensorOn();

    if(rc_cfg.WAKE_ON_MOTION)
    {
        mtd_exit_WOM_mode();
        DRV_Gpio_IntDis(REMOTE_GPIO_GSENSOR_INT);
    }
}

void remote_mouse_sensor_disable(void)
{
    if(rc_cfg.WAKE_ON_MOTION)
    {
        mtd_enter_WOM_mode(0xA0);

        remote_check_bt_bonding();

        if(remote_bt_bonded)
            DRV_Gpio_IntEn(REMOTE_GPIO_GSENSOR_INT);
        else
        {
            DRV_Gpio_IntDis(REMOTE_GPIO_GSENSOR_INT);
            DRV_Gpio_WakeDis(REMOTE_GPIO_GSENSOR_INT);
        }
    }
    else
    {
        mtd_SensorOff();
    }
}

void remote_mouse_request_to_enable(void)
{
    mouse_enable_request = true;
}

void remote_mouse_request_to_disable(void)
{
    mouse_disable_request = true;
}
