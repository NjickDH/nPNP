#include "board.h"
#include "servo.h"
#include "RS485.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdio.h>

void Timer_init()
{
	/*Configure timer1*/
	TCCR1A  = ((1 << COM1A1) | (1 << COM1A0)); //Set OC1A on compare match (set output to high level)
	TCCR1B = (1 << WGM13) | (1 << CS10) | (1 << CS11); //PWM, 64 prescaling
	OCR1A = 2313; //Duty cycle
	ICR1  = 2500; //50Hz
}
