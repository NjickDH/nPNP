#include "board.h"
#include "servo.h"
#include "RS485.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

volatile int count = 0;
volatile servo myServo; //volatile since status variable used in ISR also used outside ISR

void Timer_init()
{
	/*Configure timer1*/
	TCCR1B = (1 << WGM12) | (1 << CS10); //CTC, no prescaling
	OCR1A = 1600; //16000000/1600 = 10Khz ISR
	TIMSK1 = (1 << OCIE1A); //Enable the compare match interrupt
}

servoStatus Servo_move(int steps, int direction, int speed)
{
	cli();
	myServo.direction = direction;
	myServo.speed = speed;
	myServo.steps = steps + 1;
	myServo.status = true;
	count = 0; //Reset count to 0 to make sure timer starts with new pulse
	sei();
	
	uint32_t tempCounter = 0;
	while(myServo.status == true)
	{
		_delay_ms(20); //One pulse should take 20ms
		if(tempCounter > steps + 10)
		{
			RS485_Transmit_string("SERVO_TIMEOUT"); //Transmit error message
			return SERVO_TIMEOUT; //If servo has been moving 200ms more than expected return timeout
		}
		tempCounter++;
	}
	
	char str[50]; //Allocate data for string
	sprintf(str, "SERVO_OK: %d STEPS - %d - %d\n\r", steps, direction, speed);
	RS485_Transmit_string(str);
	
	return SERVO_OK; //If status flag has been updated within timeout margin return OK status
}

ISR(TIMER1_COMPA_vect)
{
	/*One ISR tick is 0.1ms*/
	count++;
	
	if(myServo.steps > 0)
	{
		PORTD &= ~(1 << LED_R); //Red LED on
		switch (myServo.speed)
		{
			case slow:
			if(myServo.direction == forward)
			{
				if(count == 0 || count == 14) //--13--___187___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			else
			{
				if(count == 0 || count == 16) //--17--___183___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			break;
			case medium:
			if(myServo.direction == forward)
			{
				if(count == 0 || count == 12) //--11--___189___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			else
			{
				if(count == 0 || count == 18) //--18--___182___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			break;
			case fast:
			if(myServo.direction == forward)
			{
				if(count == 0 || count == 5) //--9--___191___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			else
			{
				if(count == 0 || count == 25) //--20--___180___
				{
					PORTB ^= (1 << PB1); //toggle pin
				}
				if(count == 200)
				{
					myServo.steps--; //reduce one of the steps left to take
					count = -1; //restart counting
				}
			}
			break;
		}
	}
	if(myServo.steps == 0)
	{
		PORTD |= (1 << LED_R); //Red LED off
		PORTB |= (1 << PB1); //Servo pin high
		myServo.status = false;
	}
}