
#include "aduc812.h"
#include "led.h"
#include "max.h"
#include "sound.h"
#include "timer.h"


unsigned char int_counter = 0;

void INT0_ISR( void ) __interrupt ( 2 );

// Инициализация счетчика
void InitCounter( void ){
	SetVector( 0x2003, (void *)INT0_ISR );
	//Установка вектора прерываний в пользовательской таблице
	IT0=0x1; //Определяем тип запроса прерывания: по спаду
	write_max(ENA, 0b0100000);
	EX0=1; //Разрешение внешнего прерывания 0
	EA = 1; //Разрешение всех прерываний
}

// Обработчик внешнего прерывания
void INT0_ISR( void ) __interrupt ( 2 ){
	leds( int_counter++ );	
}
