#include "Board.h"
#include "LTR559.h"
#include "RS485.h"
#include "servo.h"
#include <avr/io.h>
#include <stdint.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void LTR559_Init()
{
	/*Enable interrupt on PC2 - PCINT10*/
	PCICR |= (1 << PCIE1);
	PCMSK1 |= (1 << PCINT10);
	
	TWI_Init();
	TWI_Write_register(LTR_INTERRUPT, 0x05); //INT active high - only PS trigger
	//TWI_Write_register(PS_LED, 0b11111111); //60Khz LED pulse - DUTY 50% - LED 50mA
	TWI_Write_register(PS_CONTR, 0x03); //Active mode - saturation indicator off
	TWI_Write_register(PS_MEAS_RATE, 0x08); //10ms measurement repeat rate
	TWI_Write_register(PS_THRES_UP_0, 0b01011110); //Upper interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_UP_1, 1);
	TWI_Write_register(PS_THRES_LOW_0, 0); //Lower interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_LOW_1, 0);
	
	TWI_Write_register(0x83, 0b00001000); //Number of pulses
	//TWI_Write_register(INTERRUPT_PRST, 0b10100000); //Interrupt persist - 10 consecutive PS values out of threshold range
}

void TWI_Init()
{
	TWBR = 12; //400kHz = (16MHz) / (16 + 2(12) * (1))
}

uint8_t TWI_Read_register(uint8_t registerValue)
{
	/*set the start condition*/
	TWCR = (1 << TWEN) | (1 << TWINT) | (1 << TWSTA);
	wait_for_completion;
			
	/*send the address*/
	TWDR = LTR_WRITE;
	TWCR = (1 << TWEN) | (1 << TWINT); //trigger I2C action
	wait_for_completion;
				
	/*specify the register*/
	TWDR = registerValue; //register value in the data register
	TWCR = (1 << TWEN) | (1 << TWINT);
	wait_for_completion;
			
	/*switch master to read (receiver) mode and slave to transmitter*/
	TWCR = (1 << TWEN) | (1 << TWINT) | (1 << TWSTA); //set another start condition
	wait_for_completion;
	
	TWDR = LTR_READ;
	TWCR = (1 << TWEN) | (1 << TWINT);
	wait_for_completion;
			
	TWCR = (1 << TWEN) | (1 << TWINT);
	wait_for_completion;
	
	/*The received byte is now in the TWDR data register*/
	uint8_t register_value = TWDR;
			
	/*set stop condition*/
	TWCR = (1 << TWINT) | (1 << TWEN) | (1 << TWSTO);

	return register_value;
}

void TWI_Write_register(uint8_t reg, uint8_t data)
{
	/*set the start condition*/
	TWCR = ((1 << TWEN) | (1 << TWINT) | (1 << TWSTA));
	wait_for_completion;
	
	/*send the address*/
	TWDR = LTR_WRITE;                         // data to send - ie, address + write bit
	TWCR = ((1 << TWEN) | (1 << TWINT));  // trigger I2C action
	wait_for_completion;
	
	/*send the register address*/
	TWDR = reg;                         // register address
	TWCR = ((1 << TWEN )| (1 << TWINT));  // trigger I2C action
	wait_for_completion;
	
	/*send the data byte*/
	TWDR = data;                         // data byte
	TWCR = ((1 << TWEN) | (1 << TWINT));  // trigger I2C action
	wait_for_completion;
	
	/*set the stop condition*/
	TWCR = ((1 << TWEN) | (1 << TWINT) | (1 << TWSTO));
}


void TWI_Read_proximity()
{
	uint16_t psData = 0;
	psData = TWI_Read_register(0x8D);
	psData += TWI_Read_register(0x8E) << 8;

	RS485_Transmit_byte(psData);
	RS485_Transmit_byte(psData >> 8);
	
}

ISR(PCINT1_vect)
{
// 	if((PINC & (1 << PINC2)) == (1 << PINC2))
// 	{
// 		PORTD ^= (1 << LED_B);
// 		OCR1A = 2313;
// 	}
}