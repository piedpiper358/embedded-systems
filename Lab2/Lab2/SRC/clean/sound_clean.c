
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
uint8_t volume = 7; //значение по умолчанию
float frequency; 
unsigned char on_off = ON;

void T1_ISR( void ) __interrupt ( 1 );
void __SetFrequency();
void __SetVolume(unsigned char on_off);

//Установка длительности звучания (в милисекундах)
void SetDuration(unsigned long d){
	duration = d;
	__SetFrequency(); //Настройка таймера на заданную частоту
	__SetVolume(ON); //Включение звукоизлучателя
	TR1=0x1; //Включение таймера 0
	start_time_stamp = GetMsCounter(); //Установить временную метку
} 

//Установка частоты
void SetFrequency(float f){
	frequency = f;
} 

//Установка громкости
void SetVolume(unsigned char v){
	volume = v > 7 ? 7 : v;
} 

//Инициализация звукового таймера
void InitSoundTimer( void ){
	InitSysTimer();
	TR1=0x0; //Выключение таймера 1
	TMOD = TMOD & 0b10011111 | 0b00010000;
	// Выбор режима работы - 16-разрядный таймер
	SetVector( 0x201B, (void *)T1_ISR );
	//Установка вектора прерываний в пользовательской таблице
	ET1 = 1; //Разрешение прерываний от таймера 1
	EA = 1; //Разрешение всех прерываний
}

//Обработчик прерывания от таймера 1 	
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

//Внутренняя функция для установки уровня громкости
void __SetVolume(unsigned char __on_off){
	write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
	on_off = ++__on_off % 2;
} 

//Внутренняя функция установки регистров TH1 и TL1
void __SetFrequency(){
	uint16_t freq = COUNTS_MAX - (int)round(F_OSC / MN / (frequency * 2) );
	//Настраиваем на частоту в два раза больше заданной,
	//поскольку трубется прерываться два раза в период
	//чтобы включить и выключить звукоизлучатель
	TH1 = (freq>>8) & 0xFF; 
	TL1 = freq & 0xFF; 
} 







