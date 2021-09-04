#include "RS485.h"
#include "servo.h"
#include "Board.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>

volatile uint8_t uartData;

void RS485_init()
{
	//Set baud rate
	UBRR0L = UBRRVAL; //low byte
	UBRR0H = (UBRRVAL >> 8); //high byte
	
	/*8 data bits - no parity - 1 stop bit*/
	UCSR0B |= (1 << TXEN0) | (1 << RXEN0) | (1 << RXCIE0) | (1 << TXCIE0); //UART receiver/transmitter enable and enable RX complete interrupt
	UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00); //8 Bit
}

void RS485_Transmit_byte(uint8_t data)
{
	while (!(UCSR0A & (1 << UDRE0))); //Wait until there is no more data in UDR0
	PORTB |= (1 << RS485_DE); //Enable RS485 transmitting
	UDR0 = data; //Transmit data
}

void RS485_Transmit_string(char *string)
{
	int charCounter = 0;
	while(charCounter < strlen(string))
	{
		RS485_Transmit_byte(*(string + charCounter));
		charCounter++;
	}
}

ISR(USART_RX_vect)
{
	uartData = UDR0; //Received data must be read to clear RXC flag
}

ISR(USART_TX_vect)
{
	PORTB &= ~(1 << RS485_DE); //Enable RS485 receiving
}