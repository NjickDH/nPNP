#ifndef SERVO_HEADER
#define SERVO_HEADER

#include <stdbool.h>

typedef struct
{
	int steps;
	int direction;
	int speed;
	bool status;
}servo;

typedef enum
{
	stopped,
	slow,
	medium,
	fast
}speedTypes;

typedef enum
{
	forward,
	reverse
}directionTypes;

typedef enum
{
	SERVO_OK,
	SERVO_TIMEOUT
}servoStatus;

void Timer_init();
servoStatus Servo_move(int steps, int direction, int speed);

#endif