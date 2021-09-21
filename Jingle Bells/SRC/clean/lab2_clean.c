
#include "sound.h"
#include "timer.h"
#include "counter.h"

float notes[] = {261.63, 293.67, 329.63, 349.22, 391.99, 440.00, 493.88};

// Главная функция
void main( void ){
	unsigned char cur_note = 0x00;

	InitSysTimer();
	InitSoundTimer();
	InitCounter();
	
	while(1) 
	{
		SetFrequency(notes[cur_note]);
		SetDuration(500);		
		cur_note = (++cur_note) % 7;
		DelayMs(500);
	}
}