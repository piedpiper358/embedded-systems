
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

//#define printErrord(errorCode) printError(errorCode, "No message") аргумент по умолчанию
#define ON 1 
#define OFF 0


static unsigned long start_time_stamp;
static unsigned long duration;
static uint8_t volume = 7; //значение по умолчанию
static uint16_t frequency; 
static unsigned char on_off = ON;
static uint8_t current_ena = 0x1C; //0b0100000;


void SOUND_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ );

void __SetFrequency();
void __SetVolume(unsigned char on_off);

static uint8_t note_period[2] = { 0xff, 0xff };


//Установка длительности звучания (в милисекундах)
void SetDuration(unsigned long d){
	duration = d;
	__SetFrequency(); //Настройка таймера на заданную частоту
	__SetVolume(ON); //Включение звукоизлучателя
	TR=0x1; //Включение таймера 0
	start_time_stamp = GetMsCounter();
} 


//Установка длительности звучания (в милисекундах)
void SetDurationAndWait(unsigned long d){
	duration = d;
	__SetFrequency(); //Настройка таймера на заданную частоту
	__SetVolume(ON); //Включение звукоизлучателя
	TR=0x1; //Включение таймера 0
	start_time_stamp = GetMsCounter();
	
	DelayMs(d);
	__SetVolume(OFF);
	TR=0x0;
} 

//Установка частоты
void SetFrequency(uint16_t f){
	
	uint16_t delay = TIMER_FREQ / (2 * f);
	//частоты в два раза больше
	note_period[1] = 0xFF - (delay>>8) & 0xFF; //Перезагрузка регистров
	note_period[0] = 0xFF - delay & 0xFF; 
	//note_period[1] - (delay>>8) & 0xFF; /.резкий звук
	
	
	frequency = f;
	
	/*uint8_t* ptr = (uint8_t*)&delay;
	// sdcc -> little endian? aduc -> big endian?
	note_period[0] = 0xFF - ptr[0];
	note_period[1] = 0xFF - ptr[1];*/
} 

//Установка громкости
void SetVolume(unsigned char v){
	volume = v > 7 ? 7 : v;
} 

///////////////////////////////////////////////////////////////////////////
// Инициализация звукового таймера
///////////////////////////////////////////////////////////////////////////
void InitSoundTimer( void ){
	
	InitSysTimer(); 
	
	TR=0x0; //Выключение таймера 1
	
	//TMOD = TMOD & 0x0F | 0x10; //  C/T = 0; M1,M0 = 0,1
	TMOD = TMOD & ~(GATE | CT | M1) | M0;
	//TR1=0x1;
	// Выбор режима работы - 16-разрядный таймер
	SetVector( vec, (void *)SOUND_ISR );
	//Установка вектора прерываний в пользовательской таблице
	ET = 1; //Разрешение прерываний от таймера
	EA = 1; //Разрешение всех прерываний
	
	
	TR=0x1;
}



//////////////////////// SOUND_ISR ///////////////////////////
// Обработчик прерывания от звукового таймера 
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


//Установка громкости
void __SetVolume(unsigned char __on_off){
	//(в SDK-1.1R3/R4/R5 сигналы EPMSND0 и EPMSND1 не подключены)
	write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
	on_off = ++__on_off % 2;
	
	
	//current_ena ^= 0x1C; //0001 1100
	//current_ena ^= (volume>7 ? 7: volume) << 2
	//write_max(ENA, current_ena); //0b001XXX00
	
} 

//Установка частоты
void __SetFrequency(){
	TL = note_period[0]; //Перезагрузка регистров
	TH = note_period[1];
} 

