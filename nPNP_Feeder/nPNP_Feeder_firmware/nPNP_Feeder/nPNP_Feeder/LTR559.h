#ifndef LTR559_HEADER
#define LTR559_HEADER

#include <stdint.h>

#define wait_for_completion while(!(TWCR & (1 << TWINT)));

#define	LTR_ADRESS			0x23
#define LTR_WRITE			0x46
#define LTR_READ			0x47
 
#define PS_MEAS_RATE		0x84
#define LTR_INTERRUPT		0x8F
#define PS_CONTR			0x81
#define PS_LED				0x82
#define PS_THRES_UP_0		0x90
#define PS_THRES_UP_1		0x91
#define PS_THRES_LOW_0		0x92
#define PS_THRES_LOW_1		0x93
#define INTERRUPT_PRST		0x9E

void LTR559_Init();
void TWI_Init();
uint8_t TWI_Read_register(uint8_t registerValue);
void TWI_Write_register(uint8_t register, uint8_t data);
void TWI_Read_proximity();

#endif