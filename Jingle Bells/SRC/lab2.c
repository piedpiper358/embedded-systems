
#include "aduc812.h"
#include "led.h"
#include "max.h"
#include "sound.h"
#include "timer.h"
#include "counter.h"

#include <stdint.h>
//float notes[] = {261.63, 293.67, 329.63, 349.22, 391.99, 440.00, 493.88};


typedef struct{
	uint16_t pitch;
	float duration;
	//duration, pitch, intensity (or loudness), and timbre (or quality).
} note;



#define	C	262		//до
#define D	294		//ре
#define E	330		//ми
#define F	349		//фа
#define G	392		//соль
#define A	440		//ля
#define B	494		//си



#define	NM		/*large, duplex longa, or maxima (occasionally octuple note, octuple whole note, or octuple entire musical note)*/	(8)
#define	NL		/*long or longa (occasionally quadruple note or quadruple whole note)	4*/	(4) 
#define	NB		/*double whole note, double note	breve*/						(2)
#define	N1		/*whole note					semibreve*/						(1)	
#define	N2		/*half note						minim*/							(1/2)
#define	N4		/*Quarter note					crotchet*/						(1/4)
#define	N8		/*Eighth note					quaver*/						(1/8)
#define	N16		/*Sixteenth note				semiquaver*/					(1/16)
#define	N32		/*Thirty-second note			demisemiquaver*/				(1/32)
#define	N64		/*Sixty-fourth note				hemidemisemiquaver*/			(1/64)
#define	N128	/*Hundred twenty-eighth note	semihemidemisemiquaver*/		(1/128)
#define	N256	/*Two hundred fifty-sixth note	demisemihemidemisemiquaver*/	(1/256)


#define	RN	/*No Rest*/ 											(0)
#define	RL	/*L_r Longa					Longa_rest				*/	(4)
#define	RB	/*D_r Double_whole_rest		Breve_rest				*/	(2)
#define	R1	/*W_r Whole_rest			Semibreve_rest			*/	(1)
#define	R2	/*H_r Half_rest				Minim_rest				*/	?(1/2)
#define	R4	/*Q_r Quarter_rest			Crotchet_rest			*/	?(1/4)
#define	R8	/*E_r Eighth_rest			Quaver_rest				*/	?(1/8)
#define	R16	/*S_r Sixteenth_rest		Semiquaver_rest			*/	?(1/16)
#define	R32	/*T_r Thirty-second_rest	Demisemiquaver_rest		*/	?(1/32)
#define	R64	/*S_r Sixty-fourth_rest		Hemidemisemiquaver_rest	*/	(1/64)



#define ARRAYSIZE(x)  (sizeof(x) / sizeof((x)[0]))


/*{E, E, E, - //jingle bells
E, E, E, - //jingle bells
E, G, C, D, E, - - - 


F, F, F, F, F, 		E, E, E, E, 	D, D, E, D, - 
G, - E, E, E, - E, E, E, - E, G, C, D, E, - - - F, F, F, F, F, E, E, E, G, G, F, D, C - - -*/




const uint16_t notes[]  = {E, E, E, E, E, E, E, G, C, D, E, F, F, F, F, F, E, E, E, E, D, D, E, D, G, E, E, E, E, E, E, E, G, C, D, E, F, F, F, F, F, E, E, E, G, G, F, D, C}; //49 нот
const float pauses[] = {
N4, N4, N2, 
N4, N4, N2, 
N4, N4, N4, N8, N1, 
N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4, N4, N2, N4};  



/* const note notes[]={
	{E, N4},{E, N4},{E, N2},
	{E, N4},{E, N4},{E, N2},
	{E, N4},{G, N4},{C, N4},{D, N8},{E, N1},
	
	{F, N4},{F, N4},{F, N4},{F, N4},{F, N4},	{E, N4},{E, N4},{E, N4},{E, N4},	{C, N4},{E, N4},{G, N4},{C, N2}
	
}; */





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
		//SetFrequency(notes[cur_note].pitch);
		//SetDurationAndWait((unsigned long) ((float)2000 * notes[cur_note].duration));
		//
		
		SetFrequency(notes[cur_note]);
		SetDurationAndWait(500);
		//SetDurationAndWait((unsigned long) ((float)2000 * pauses[cur_note]));
		
		//wait(pauses[cur_note]);
		//leds(0x01 << cur_note);		
			 
		cur_note = (++cur_note) % ARRAYSIZE(notes);
		//DelayMs(500);
	}
}