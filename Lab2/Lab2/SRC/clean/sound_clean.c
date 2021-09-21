
#include <stdint.h>
#include "aduc812.h"
#include "timer.h"
#include "max.h"
#include "led.h"

#define round(x) ((int)((x)+0.5))
#define F_OSC 11059200
#define COUNTS_MAX 65536
#define MN 12
#define OFF 0
#define ON 1 

unsigned long start_time_stamp;
unsigned long duration;
uint8_t volume = 7; //�������� �� ���������
float frequency; 
unsigned char on_off = ON;

void T1_ISR( void ) __interrupt ( 1 );
void __SetFrequency();
void __SetVolume(unsigned char on_off);

//��������� ������������ �������� (� ������������)
void SetDuration(unsigned long d){
	duration = d;
	__SetFrequency(); //��������� ������� �� �������� �������
	__SetVolume(ON); //��������� ���������������
	TR1=0x1; //��������� ������� 0
	start_time_stamp = GetMsCounter(); //���������� ��������� �����
} 

//��������� �������
void SetFrequency(float f){
	frequency = f;
} 

//��������� ���������
void SetVolume(unsigned char v){
	volume = v > 7 ? 7 : v;
} 

//������������� ��������� �������
void InitSoundTimer( void ){
	InitSysTimer();
	TR1=0x0; //���������� ������� 1
	TMOD = TMOD & 0b10011111 | 0b00010000;
	// ����� ������ ������ - 16-��������� ������
	SetVector( 0x201B, (void *)T1_ISR );
	//��������� ������� ���������� � ���������������� �������
	ET1 = 1; //���������� ���������� �� ������� 1
	EA = 1; //���������� ���� ����������
}

//���������� ���������� �� ������� 1 	
void T1_ISR( void ) __interrupt ( 1 ){
	if(DTimeMs(start_time_stamp) < duration){	
		__SetFrequency();
		__SetVolume(on_off);
	}
	else{
		__SetVolume(OFF);
		TR1=0x0;
	}
}

//���������� ������� ��� ��������� ������ ���������
void __SetVolume(unsigned char __on_off){
	write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
	on_off = ++__on_off % 2;
} 

//���������� ������� ��������� ��������� TH1 � TL1
void __SetFrequency(){
	uint16_t freq = COUNTS_MAX - (int)round(F_OSC / MN / (frequency * 2) );
	//����������� �� ������� � ��� ���� ������ ��������,
	//��������� �������� ����������� ��� ���� � ������
	//����� �������� � ��������� ���������������
	TH1 = (freq>>8) & 0xFF; 
	TL1 = freq & 0xFF; 
} 







