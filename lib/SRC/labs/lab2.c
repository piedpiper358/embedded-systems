
#include "aduc812.h"
#include "led.h"
#include "max.h"
#include "sound.h"
#include "timer.h"
#include "counter.h"

#include <stdint.h>
//float notes[] = {261.63, 293.67, 329.63, 349.22, 391.99, 440.00, 493.88};

uint16_t notes[] = {262, 294, 330, 349, 392, 440, 494};

//uint16_t notes[] = {987, 880, 783, 698, 659, 587, 523};

//////////////////////// Main ////////////////////////////////
// Главная функцияs
//////////////////////////////////////////////////////////////
void main( void )
{
	unsigned char cur_note = 0x00;

	//InitSysTimer();
	
	InitSoundTimer();
	InitCounter();
	write_max(IE, 0x10001011 );
	
	
	while(1) 
	{
		SetFrequency(notes[cur_note]);
		SetDurationAndWait(500);
		//leds(0x01 << cur_note);		
			 
		cur_note = (++cur_note) % 7;
		//DelayMs(500);
	}
}