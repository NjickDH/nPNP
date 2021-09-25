#ifndef UART_HEADER
#define UART_HEADER

#include "Board.h"
#include <stdint.h>

#define BAUDRATE	9600 //Baud rate
#define UBRRVAL		((F_CPU / (BAUDRATE * 16UL)) - 1) //Calculate UBRR value

void RS485_init();
void RS485_Transmit_byte(uint8_t data);
void RS485_Transmit_string(char *string);
void RS485_Parse_Data();

#endif