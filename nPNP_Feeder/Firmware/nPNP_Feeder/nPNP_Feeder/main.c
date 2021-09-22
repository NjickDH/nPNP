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
extern int count;
int main(void)
{
	Board_init();		
	Timer_init();
	RS485_init();
	LTR559_Init();
	
	sei(); //Enable interrupts
	OCR1A = 2300;
    while (1) 
    {		
		TWI_Read_proximity();
		_delay_ms(10);
		
		switch(uartData)
		{
			case 'f':
				OCR1A = 2287;
				uartData = 0;
				break;
			case 'b':
				OCR1A = 2339;
				uartData = 0;	
				break;
			case 'c':
				OCR1A = 2300;
				uartData = 0;
				break;
		}

		while((PIND & (1 << BUTTON_A)) == (1 << BUTTON_A))
		{
			OCR1A = 2250;
			_delay_ms(100);
		}
		
		while((PIND & (1 << BUTTON_B)) == (1 << BUTTON_B))
		{
			OCR1A = 2339;
			_delay_ms(100);
 		}
	}
}

