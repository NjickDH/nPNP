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
#include "eeprom.h"
#include "configure.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

extern volatile int encoderCount;

/* PID variables */
float kp = 10;
float kd = 0;
float ki = 40;

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
		RS485_Parse_Data();

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

