/*
* AHRS_alg/AHRS_alg.h
*
* Copyright (C) 2017 3ivr. All rights reserved.
*/

/*
* algorithm for Acc, Gyro and Mag sensor.
*
* Library: algorithm
* Package: I3
* Module : algorithm
* Author : Leo.Wan
*/
#ifndef AHRS_ALG_AHRS_ALG_H
#define AHRS_ALG_AHRS_ALG_H
#include <stdlib.h>
#include <stdbool.h>

// calibration
extern float acc_coeff[12];
extern float gyro_coeff[12];
extern float mag_coeff[12];

// Acc, Gyro, Mag fusion.
extern float gyro_error;
extern float gyro_drift;

// overflow for sensor raw data value.
extern float acc_max_range;
extern float gyro_max_range;
extern float mag_max_range;
extern float scale_valid;
extern float correct_bias_scale;

/**
* @brief  initialization algorithm data.
* @param  non
*
* @return true for success, false for failed.
* @remark executing first function to initialize all data.
*/
bool InitAlg(void);

/**
* @brief  algorithm processing for accelerometer, gyroscope and magnetometer sensor raw data to attitude.
* @param  sensor_data[0] -> x, sensor_data[1] -> y, sensor_data[2] -> z: accelerometer sensor raw data.
*         sensor_data[3] -> x, sensor_data[4] -> y, sensor_data[5] -> z: gyroscope sensor raw data.
*         sensor_data[6] -> x, sensor_data[7] -> y, sensor_data[8] -> z: magnetometer sensor raw data.
*         timestamp: timestamp of get sensor raw data, (millisecond)
* @return true for success, false for failed.
* @remark The input accelerometer gyroscope and magnetometer data will be converted into physical quantities.
*/
bool AlgorithmProcess(const float* sensor_data, unsigned int timestamp);
/**
* @brief  initialization attitude on any time.
* @param  non
*
* @return true for success, false for failed.
* @remark After executing this function, you need to perform the AlgorithmProcess function,
          then, the Attitude function to obtain the attitude information
*/
bool InitAttitude(void);

/**
* @brief  get attitude information of quaternion.
* @param  x: first element of quaternion
*         y: second element of quaternion
*         z: third element of quaternion
*         w: fourth element of quaternion
*
* @return non.
* @remark
*/
void GetQuaternion(float* x, float* y, float* z, float* w);
/**
* @brief  get attitude information of Axis angle.
* @param  x: x element of Axis
*         y: y element of Axis
*         z: z element of Axis
*         angle: element of angle
*
* @return non.
* @remark
*/
void GetAxisAngle(float* x, float* y, float* z, float* angle);
/**
* @brief  get attitude information of eular.(degree)
* @param  yaw: yaw
*         pitch: pitch
*         roll: roll
*
* @return non.
* @remark
*/
void GetEularDegree(float* yaw, float* pitch, float* roll);
/**
* @brief  get attitude information of eular.(radian)
* @param  yaw: yaw
*         pitch: pitch
*         roll: roll
*
* @return non.
* @remark
*/
void GetEularRadian(float* yaw, float* pitch, float* roll);
/**
* @brief  persistent controller steady time.
* @param  mtime millisecond.
*
*
*
* @return true for succeed, otherwise false.
* @remark persistent mtime millisecond steady state.
*/
bool GetSteadyStateTime(const int mtime);
/**
* @brief  get init attitude info.
* @param  non.
*
*
*
* @return true for succeed, otherwise false.
* @remark after executing InitAttitude function, and get init information is manual, otherwise auto model.
*/
bool IsInitAttitudeDone();
/**
* @brief  get daydream protocol accelerometer info format.
* @param  x: x value of accelerometer
*         y: y value of accelerometer
*         z: z value of accelerometer
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetAccToDaydream(short* x, short* y, short* z);
/**
* @brief  get daydream protocol gyroscope info format.
* @param  x: x value of gyroscope
*         y: y value of gyroscope
*         z: z value of gyroscope
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetGyroToDaydream(short* x, short* y, short* z);
/**
* @brief  get daydream protocol orient info format.
* @param  x: x value of orient
*         y: y value of orient
*         z: z value of orient
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetOrientToDaydream(short* x, short* y, short* z);
/**
* @brief  get accelerometer info.
* @param  x: x value of accelerometer
*         y: y value of accelerometer
*         z: z value of accelerometer
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetSensorAcc(float* x, float* y, float* z);
/**
* @brief  get gyroscope info.
* @param  x: x value of gyroscope
*         y: y value of gyroscope
*         z: z value of gyroscope
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetSensorGyro(float* x, float* y, float* z);
/**
* @brief  get orient info.
* @param  x: x value of orient
*         y: y value of orient
*         z: z value of orient
*         w: z value of orient
* @return true for succeed, otherwise false.
* @remark non.
*/
bool GetSensorOrient(float* x, float* y, float* z, float* w);
/**
* @brief  need provide a magnetometer value.
* @param  non
*
*
* @return true for need, otherwise false.
* @remark non.
*/
bool IsNeedMagnetic(void);
#endif // AHRS_ALG_AHRS_ALG_H
