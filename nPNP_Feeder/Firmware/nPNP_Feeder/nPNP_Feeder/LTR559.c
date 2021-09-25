#include "Board.h"
#include "LTR559.h"
#include "RS485.h"
#include "servo.h"
#include "eeprom.h"
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
	TWI_Write_register(PS_LED, 0b00011111); //60Khz LED pulse - DUTY 50% - LED 50mA
	TWI_Write_register(PS_CONTR, 0x03); //Active mode - saturation indicator off
	TWI_Write_register(PS_MEAS_RATE, 0x08); //10ms measurement repeat rate
	
	/* Read threshold value from EEPROM previously saved by a self configure */
	uint16_t upperThreshold = 0;
	upperThreshold = EEPROM_read(1);
	upperThreshold |= (EEPROM_read(2) << 8);

	TWI_Write_register(PS_THRES_UP_0, upperThreshold); //Upper interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_UP_1, upperThreshold >> 8);
	TWI_Write_register(PS_THRES_LOW_0, 0); //Lower interrupt threshold - 12 bit value
	TWI_Write_register(PS_THRES_LOW_1, 0);
	
	//TWI_Write_register(0x83, 0b00001000); //Number of pulses
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
	TWCR = (1 << TWEN) | (1 << TWINT) | (1 << TWSTA); //Set another start condition
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
	TWDR = LTR_WRITE;                       //Data to send - ie, address + write bit
	TWCR = ((1 << TWEN) | (1 << TWINT));	//Trigger I2C action
	wait_for_completion;
	
	/*send the register address*/
	TWDR = reg;								//Register address
	TWCR = ((1 << TWEN )| (1 << TWINT));	//Trigger I2C action
	wait_for_completion;
	
	/*send the data byte*/
	TWDR = data;							//Data byte
	TWCR = ((1 << TWEN) | (1 << TWINT));	//Trigger I2C action
	wait_for_completion;
	
	/*set the stop condition*/
	TWCR = ((1 << TWEN) | (1 << TWINT) | (1 << TWSTO));
}

uint16_t TWI_Read_proximity()
{
	uint16_t psData = 0;
	psData = TWI_Read_register(0x8D);
	psData += TWI_Read_register(0x8E) << 8;

	return psData;
}

volatile int encoderCount = 0;
extern volatile float cDutyCycle;
extern volatile int selfEncodingStatus;
ISR(PCINT1_vect)
{	
	if(selfEncodingStatus != 1)
	{
		if(cDutyCycle > 1.5f)
			encoderCount++;
		else if(cDutyCycle < 1.5f)
			encoderCount--;
	}
}