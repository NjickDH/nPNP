#include "RS485.h"
#include "servo.h"
#include "Board.h"
#include "configure.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <string.h>

volatile uint8_t uartData[20] = {0};
volatile uint8_t uartDataCounter = 0;

extern int setpoint;

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

void RS485_Parse_Data()
{
	if(uartData[0] == 1)
	{
		//Wait untill full packet has been received
		if(uartData[1] == uartDataCounter)
		{
			switch(uartData[2])
			{
				case 0x01: //Self configure command
				{
					selfConfigure();
					break;
				}
				case 0x02: //Move tape command
				{
					if(uartData[3] == 1)
					{
						setpoint -= uartData[4];
					}
					else
					{
						setpoint += uartData[4];
					}
					break;
				}
			}
			
			//reset buffer and counter
			for(int i = 0; i < uartDataCounter; i++)
			{
				uartData[i] = 0;
			}
			uartDataCounter = 0;
		}
	}
	else if(uartData[0] != 1)
	{
		if(uartData[1] == uartDataCounter)
		{
			//Reset buffer since data is not for us
			for(int i = 0; i < uartDataCounter; i++)
			{
				uartData[i] = 0;
			}
			uartDataCounter = 0;
		}
	}
}

ISR(USART_RX_vect)
{
	uartData[uartDataCounter] = UDR0; //Received data must be read to clear RXC flag
	uartDataCounter = (uartDataCounter + 1) % 20;
}

ISR(USART_TX_vect)
{
	PORTB &= ~(1 << RS485_DE); //Enable RS485 receiving
}