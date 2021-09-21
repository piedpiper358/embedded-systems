#ifndef __SIO__H
#define __SIO__H

//Константы скорости
#define S9600	0xFD
#define S4800	0xFA
#define S2400	0xF4
#define S1200	0xE8

//#define S600	0xD0

//#define S19200 XXX




#if __SPEED__ == 1200
	#define TH1_VAL 0xE8
	#define SMOD_VAL 0	
#endif
#if __SPEED__ == 2400
	#define TH1_VAL 0xF4
	#define SMOD_VAL 0	
#endif
#if __SPEED__ == 4800
	#define TH1_VAL 0xFA
	#define SMOD_VAL 0	
#endif
#if __SPEED__ == 9600
	#define TH1_VAL 0xFD
	#define SMOD_VAL 0	
#endif
#if __SPEED__ == 19200
	#define TH1_VAL 0xFD
	#define SMOD_VAL 1	
#endif




unsigned char rsiostat(void);
void wsio( unsigned char c );
unsigned char rsio(void);
void type(char * str);
void init_sio( unsigned char speed, void * vector );

#endif // __SIO__H
