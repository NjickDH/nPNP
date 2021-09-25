#ifndef EEPROM_HEADER
#define EEPROM_HEADER

#include <avr/boot.h>

void EEPROM_write(unsigned int uiAddress, unsigned char ucData);
unsigned char EEPROM_read(unsigned int uiAddress);

#endif