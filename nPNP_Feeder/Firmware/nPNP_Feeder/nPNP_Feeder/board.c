#include "board.h"
#include "RS485.h"
#include "servo.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

void Board_init()
{
	/*Configure servo output*/
	DDRB |= (1 << DDB1) | (1 << DDB2); //Servo and RS485 DE pin
	PORTB |= (1 << PB1) | (0 << PB2); //Servo pin high and RS485 DE pin low
		
	/*Configure button inputs*/
	DDRD |= (0 << DDD2) | (0 << DDD3); //Button A and B
		
	/*Configure LED Outputs*/
	DDRD |= (1 << DDD4) | (1 << DDD5) | (1 << DDD6); //Red, blue and green (Respectively)
	PORTD |= (1 << DDD4) | (1 << DDD5) | (1 << DDD6); //Turn LED off
}

void Error_Handler()
{
	cli();
	
	/*Wait until both buttons are pressed*/
	while(((PIND & (1 << BUTTON_A)) != (1 << BUTTON_A)) || ((PIND & (1 << BUTTON_B)) != (1 << BUTTON_B)))
	{
		_delay_ms(500);
		PORTD |= (1 << LED_R) | (1 << LED_B);
		_delay_ms(500);
		PORTD &= ~(1 << LED_R) & ~(1 << LED_B);
	}
	
	PORTD |= (1 << LED_R) | (1 << LED_B); //Turn LED's off again
	sei();
}