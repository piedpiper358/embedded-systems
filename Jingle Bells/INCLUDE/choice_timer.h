

#if __TIMER_NUMBER__ == 0


	#define TR TR0
	#define TL TL0
	#define TH TH0
	
	#define ET ET0
	#define vec 0x200B	
	
	#define TMOD TMOD
	#define M0 T0_M0
	#define M1 T0_M1 	
	#define CT T0_CT
	#define GATE T0_GATE
	
	
#endif

#if __TIMER_NUMBER__ == 1
	#define TR TR1
	#define TL TL1	
	#define TH TH1
	#define ET ET1
	#define vec 0x201B
	
	#define TMOD TMOD
	#define M0 T1_M0
	#define M1 T1_M1 	
	#define CT T1_CT
	#define GATE T1_GATE
#endif


#if __TIMER_NUMBER__ == 2
	#define TR TR2
	#define TL TL2	
	#define TH TH2
	#define ET ET2
	#define vec 0x202B
	
	#define TMOD T2CON
	#define M0 0x0
	#define M1 0x0 	
	#define CT 0x2
	#define GATE 0x0
#endif


