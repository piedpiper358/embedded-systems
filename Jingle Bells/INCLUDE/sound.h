#ifndef __SOUND__H
#define __SOUND__H

#include <stdint.h>


void InitSoundTimer( void );
void SetDuration(unsigned long d);
void SetDurationAndWait(unsigned long d);
void SetFrequency(uint16_t f);
void SetVolume(unsigned char v);



#endif //__SOUND__H
