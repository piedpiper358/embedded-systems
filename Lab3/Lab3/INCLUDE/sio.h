#ifndef __SIO__H
#define __SIO__H

//Константы скорости
#define S9600	0xFD
#define S4800	0xFA
#define S2400	0xF4
#define S1200	0xE8

#define S600	0xD0
#define S300	0xA0
//#define S19200 XXX

//14400


#if __SPEED__ == 19200
	#define TH1_VAL 0xFD
	#define SMOD_VAL 1	
#endif




unsigned char rsiostat(void);
void wsio( unsigned char c );
unsigned char rsio(void);
void type(char * str);
void init_sio( unsigned char speed  );
void init_sio2( unsigned int baud );

#endif // __SIO__H
