#include "aduc812.h"
#include "led.h"


unsigned char a[] = {0x18, 0x3C, 0x7E, 0xFF, 0x7E, 0x3C, 0x18, 0x00};

		
void animation(void)
{
	unsigned char counter = 0;


	while (1)
	{
		leds( a[animation_counter] );
		counter = (++counter) % 8; //новое значение счетчика 
		delay(500);
	}
}