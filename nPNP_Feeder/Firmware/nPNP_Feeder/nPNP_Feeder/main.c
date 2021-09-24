/*
 * nPNP Feeder software
 *
 * Created: 13/08/2021 16:45:48
 * Author : Nick
 */ 

#include "board.h"
#include "RS485.h"
#include "servo.h"
#include "LTR559.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

extern volatile uint8_t uartData;
extern volatile int encoderCount;
volatile int selfEncodingStatus = 0;

/* PID variables */
float kp = 15;
float kd = 0.025;
float ki = 50;

float ePrev = 0; //Previous error
float dt = 0.01; //Sample period
float eIntergral = 0; //Integral counter
int setpoint = 0;

int main(void)
{
	Board_init();		
	Timer_init();
	RS485_init();
	LTR559_Init();
	
	sei(); //Enable interrupts
	
    while (1) 
	{	
		/***** PID Control *****/
		int e = setpoint - encoderCount; //Error
		float Dedt = (e - ePrev) / dt; //Derivative
		eIntergral += (e * dt); //Integral
		
		float u = (kp * e) + (kd * Dedt) + (ki * eIntergral); //Control signal
		
		//Cap control signal maximum values
		if(u >= 100.0f)	u = 100.0f;
		if(u <= -100.0f) u = -100.0f;
		
		//Convert control signal to PWM
		float dutyCyle = 1.5f + (0.005f * u); //1.5 is stopped, +/-0.5 maps to full forwards and full backwards 
		DUTY_CYCLE(dutyCyle);
		
		#if S_PID
	 		RS485_Transmit_byte((int16_t)encoderCount);
	 		RS485_Transmit_byte((int16_t)encoderCount >> 8);
	 		RS485_Transmit_byte((int16_t)setpoint);
	 		RS485_Transmit_byte((int16_t)setpoint >> 8);	
		#endif //S_PID

		ePrev = e; //update previous error
		_delay_ms(11); //11 ms since transmitting system response had influence on tuning
		
		/***** RS485/UART Data handling *****/
		switch(uartData)
		{
			case 'f':
				if(e == 0) setpoint += 4; //Move forward
				uartData = 0;
				break;
			case 'b':
				if(e == 0) setpoint -= 4; //Move backward
				uartData = 0;
				break;
			case 'c':
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
							RS485_Transmit_byte(sampleBuffer[i-1]);
							RS485_Transmit_byte(sampleBuffer[i-1] >> 8);
							RS485_Transmit_byte(sampleBuffer[i]);
							RS485_Transmit_byte(sampleBuffer[i] >> 8);
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
					uartData = 0;
					break;
				}
		}

		/***** Button handling *****/
		if((PIND & (1 << BUTTON_A)) == (1 << BUTTON_A))
		{
			if(e == 0) setpoint -= 4;
		}
		
		if((PIND & (1 << BUTTON_B)) == (1 << BUTTON_B))
		{
			if(e == 0) setpoint += 4;
 		}
	}
}

