
#include <stdint.h>
#include "aduc812.h"
#include "timer.h"
#include "max.h"
#include "led.h"


#define __TIMER_NUMBER__ 0

#include "choice_timer.h"


#define round(x) ((int)((x)+0.5))

//__ADUC812_H
#define CPU_FREQ 11059200
#define TIMER_FREQ (CPU_FREQ/12)
#define COUNTER_FREQ (CPU_FREQ/24)

//#define printErrord(errorCode) printError(errorCode, "No message") �������� �� ���������
#define ON 1 
#define OFF 0


static unsigned long start_time_stamp;
static unsigned long duration;
static uint8_t volume = 7; //�������� �� ���������
static uint16_t frequency; 
static unsigned char on_off = ON;
static uint8_t current_ena = 0x1C; //0b0100000;


void SOUND_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ );

void __SetFrequency();
void __SetVolume(unsigned char on_off);

static uint8_t note_period[2] = { 0xff, 0xff };


//��������� ������������ �������� (� ������������)
void SetDuration(unsigned long d){
	duration = d;
	__SetFrequency(); //��������� ������� �� �������� �������
	__SetVolume(ON); //��������� ���������������
	TR=0x1; //��������� ������� 0
	start_time_stamp = GetMsCounter();
} 


//��������� ������������ �������� (� ������������)
void SetDurationAndWait(unsigned long d){
	duration = d;
	__SetFrequency(); //��������� ������� �� �������� �������
	__SetVolume(ON); //��������� ���������������
	TR=0x1; //��������� ������� 0
	start_time_stamp = GetMsCounter();
	
	DelayMs(d);
	__SetVolume(OFF);
	TR=0x0;
} 

//��������� �������
void SetFrequency(uint16_t f){
	
	uint16_t delay = TIMER_FREQ / (2 * f);
	//������� � ��� ���� ������
	note_period[1] = 0xFF - (delay>>8) & 0xFF; //������������ ���������
	note_period[0] = 0xFF - delay & 0xFF; 
	//note_period[1] - (delay>>8) & 0xFF; /.������ ����
	
	
	frequency = f;
	
	/*uint8_t* ptr = (uint8_t*)&delay;
	// sdcc -> little endian? aduc -> big endian?
	note_period[0] = 0xFF - ptr[0];
	note_period[1] = 0xFF - ptr[1];*/
} 

//��������� ���������
void SetVolume(unsigned char v){
	volume = v > 7 ? 7 : v;
} 

///////////////////////////////////////////////////////////////////////////
// ������������� ��������� �������
///////////////////////////////////////////////////////////////////////////
void InitSoundTimer( void ){
	
	InitSysTimer(); 
	
	TR=0x0; //���������� ������� 1
	
	//TMOD = TMOD & 0x0F | 0x10; //  C/T = 0; M1,M0 = 0,1
	TMOD = TMOD & ~(GATE | CT | M1) | M0;
	//TR1=0x1;
	// ����� ������ ������ - 16-��������� ������
	SetVector( vec, (void *)SOUND_ISR );
	//��������� ������� ���������� � ���������������� �������
	ET = 1; //���������� ���������� �� �������
	EA = 1; //���������� ���� ����������
	
	
	TR=0x1;
}



//////////////////////// SOUND_ISR ///////////////////////////
// ���������� ���������� �� ��������� ������� 
//////////////////////////////////////////////////////////////
void SOUND_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ )
{	
	//__SetFrequency();
	//__SetVolume(on_off);
	
	if(DTimeMs(start_time_stamp) < duration){	
		__SetFrequency();
		__SetVolume(on_off);
	}
	else{
		__SetVolume(OFF);
		TR=0x0;
	}
}


//��������� ���������
void __SetVolume(unsigned char __on_off){
	//(� SDK-1.1R3/R4/R5 ������� EPMSND0 � EPMSND1 �� ����������)
	write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
	on_off = ++__on_off % 2;
	
	
	//current_ena ^= 0x1C; //0001 1100
	//current_ena ^= (volume>7 ? 7: volume) << 2
	//write_max(ENA, current_ena); //0b001XXX00
	
} 

//��������� �������
void __SetFrequency(){
	TL = note_period[0]; //������������ ���������
	TH = note_period[1];
} 

