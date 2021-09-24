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
extern volatile int edgeCount;

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
	DUTY_CYCLE(1.5);
    while (1) 
	{
// 		while(1)
// 		{
// 			TWI_Read_proximity();
// 			_delay_ms(10);
// 		}
		
		//Error
		int e = setpoint - edgeCount;
		
		//Derivative
		float Dedt = (e - ePrev) / dt;
		
		//Intergral
		eIntergral = eIntergral + (e * dt);
		
		float u = (kp * e) + (kd * Dedt) + (ki * eIntergral);
		
		if(u >= 100.0f)
		{
			u = 100.0f;
		}
		if(u <= -100.0f)
		{
			u = -100.0f;
		}
		
		float test = 1.5f + (0.005f * u);
		DUTY_CYCLE(test);
		
// 		RS485_Transmit_byte((int16_t)edgeCount);
// 		RS485_Transmit_byte((int16_t)edgeCount >> 8);
// 		RS485_Transmit_byte((int16_t)setpoint);
// 		RS485_Transmit_byte((int16_t)setpoint >> 8	
	
		ePrev = e;
		_delay_ms(11); //11 ms since transmitting system response has influence
		
		switch(uartData)
		{
			case 'p':
				if(e == 0)
				{
					setpoint += 4; //set pid threshold here
				}
				uartData = 0;
				break;
			case 'b':
				DUTY_CYCLE(1.4);
				uartData = 0;	
				break;
			case 'c':
				PORTD &= ~(1 << LED_B);
				DUTY_CYCLE(1.6);
				uartData = 0;
				break;
		}

// 		while((PIND & (1 << BUTTON_A)) == (1 << BUTTON_A))
// 		{
// 			OCR1A = 2250;
// 			_delay_ms(100);
// 		}
// 		
// 		while((PIND & (1 << BUTTON_B)) == (1 << BUTTON_B))
// 		{
// 			OCR1A = 2339;
// 			_delay_ms(100);
//  		}
	}
}

