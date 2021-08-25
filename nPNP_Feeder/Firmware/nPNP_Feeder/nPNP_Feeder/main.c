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

int main(void)
{
	Board_init();		
	Timer_init();
	RS485_init();
	LTR559_Init();
	
	sei(); //Enable interrupts
	
    while (1) 
    {
// 		TWI_Read_proximity(); //Used to test LTR559 by reading PS data and transmitting over RS485 to pc
// 		_delay_ms(1000);
		while((PIND & (1 << BUTTON_A)) == (1 << BUTTON_A))
		{
			if(Servo_move(1, forward, slow) != SERVO_OK)
			{
				Error_Handler();
			}
			_delay_ms(100);
		}
		
		while((PIND & (1 << BUTTON_B)) == (1 << BUTTON_B))
		{
			if(Servo_move(1, reverse, slow) != SERVO_OK)
			{
				Error_Handler();
			}
			_delay_ms(100);
 		}
	}
}

