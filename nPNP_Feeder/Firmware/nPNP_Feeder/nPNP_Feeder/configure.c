#include "board.h"
#include "RS485.h"
#include "servo.h"
#include "LTR559.h"
#include "eeprom.h"
#include "configure.h"
#include <util/delay.h>
#include <avr/io.h>

volatile int selfEncodingStatus = 0;

void selfConfigure()
{
	selfEncodingStatus = 1;
	uint16_t sampleBuffer[100] = {0};
						
	/* Get peaks and valleys */
	uint16_t peaks[50] = {0};
	uint8_t peakCounter = 0;
	uint16_t valleys[50] = {0};
	uint8_t valleyCounter = 0;
						
	//Do in increments because of limited memory
	for(int x = 0; x < 7; x++)
	{
		/* Get data */
		DUTY_CYCLE(1.6);
		for(int i = 1; i < 100; i++)
		{
			sampleBuffer[i] = (sampleBuffer[i - 1] + TWI_Read_proximity()) / 2;
			_delay_ms(10); //LTR559 sample rate
		}
		DUTY_CYCLE(1.5);
							
		for(int i = 1; i < 100; i++)
		{
			if(sampleBuffer[i] > sampleBuffer[i - 1] && sampleBuffer[i] > sampleBuffer[i + 1])
			{
				peaks[peakCounter] = sampleBuffer[i];
				peakCounter++;
			}
			if(sampleBuffer[i] < sampleBuffer[i - 1] && sampleBuffer[i] < sampleBuffer[i + 1])
			{
				valleys[valleyCounter] = sampleBuffer[i];
				valleyCounter++;
			}
		}
	}
						
	/* Find lowest value in peaks and highest value in valleys */
	uint64_t peakSum = 0;
	uint16_t valleySum = 0;
						
	for(int i = 0; i < peakCounter; i++) peakSum += peaks[i];
	for(int i = 0; i < valleyCounter; i++) valleySum = valleys[i];
						
	/* Calculate mid point and set LTR559 Interrupt Threshold to this value */
	uint16_t middleValue = ((peakSum/peakCounter) + (valleySum/valleyCounter)) / 2;
	TWI_Write_register(PS_THRES_UP_0, middleValue); //Upper interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_UP_1, middleValue >> 8);
	TWI_Write_register(PS_THRES_LOW_0, 0); //Lower interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_LOW_1, 0);
						
	//Save value in EEPROM so that it can be used upon next power cycle
	EEPROM_write(1, middleValue);
	EEPROM_write(2, middleValue >> 8);
						
	#if S_SELF_CONF
	for(int i = 1; i < 100; i++)
	{
		RS485_Transmit_byte(middleValue);
		RS485_Transmit_byte(middleValue >> 8);
							
		/* Plot all samples */
		RS485_Transmit_byte(sampleBuffer[i]);
		RS485_Transmit_byte(sampleBuffer[i] >> 8);
	}
	#endif
						
	selfEncodingStatus = 0;
}