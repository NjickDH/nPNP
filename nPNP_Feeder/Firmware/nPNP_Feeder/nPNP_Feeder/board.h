#ifndef BOARD_HEADER
#define BOARD_HEADER

#define S_PID			0
#define S_SELF_CONF		0

#define F_CPU			16000000UL

#define BUTTON_A		PIND2
#define BUTTON_B		PIND3

#define LED_R			PD4
#define LED_B			PD5
#define LED_G			PD6

#define RS485_DE		PINB2

void Error_Handler();
void Board_init();

#endif