

#define __TIMER_NUMBER__ 1


#include "choice_timer.h"
#include "aduc812.h"
#include "max.h"




void SetVector(unsigned char xdata * Address, void * Vector);
void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ );

static unsigned long __systime = 0;


///////////////////////////////////////////////////////////////////////////
// Инициализация Таймера 1 (1000Гц)
///////////////////////////////////////////////////////////////////////////
void InitSysTimer( void ){
	//0. Выключение таймера
	TR=0x0;
	//1. Задание одного из четырех режимов работы
	// Выбор режима работы 16-разрядный таймер
	/*TMOD = TMOD & 0xF0 | 0x01; //  C/T = 0; M1,M0 = 0,1
	
	TMOD &= ~T0_CT;
	TMOD |= ~T0_M0;
	TMOD &= ~T0_M1;*/
	
	//TMOD = TMOD & ~(T0_GATE | T0_CT | T0_M1) | T0_M0;
	
	TMOD = TMOD & ~(GATE | CT | M1) | M0;
	
	//2. Настройка таймера на частоту 1000 Гц
	TH = 0xFC;
	TL = 0x66; 
	//3. Включение таймера
	TR=0x1;
	//4. Установка вектора прерываний в пользовательской таблице
	SetVector( vec, (void *)SYS_TIMER_ISR );
	//5. Разрешение прерываний от таймера
	ET = 1; 
	//6. Разрешение всех прерываний
	EA = 1;
}

//////////////////////// T1_ISR //////////////////////////////
// Обработчик прерывания от таймера (Handler)
//////////////////////////////////////////////////////////////
void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ ){

	TH = 0xFC; // Инициализация таймера:
	TL = 0x66; // настройка на частоту работы 1000 Гц (чуть больше)
	__systime++; // Время в милисекундах
}


///////////////////////////////////////////////////////////////////////////
// Чтение милисекундного счетчика (Получение текущей метки времени в миллисекундах.)
///////////////////////////////////////////////////////////////////////////
unsigned long GetMsCounter( void ){
	unsigned long res;
	ET = 0;
	res = __systime;
	ET = 1;
	return res;
}

/*void SetStartTime( unsigned long t ){
	__systime = t;
}*/

///////////////////////////////////////////////////////////////////////////
// Возвращает прошедшее время (от момента замера)
////(Измерение количества миллисекунд, прошедших с временной метки t0 и до текущего времени. )
///////////////////////////////////////////////////////////////////////////
unsigned long DTimeMs( unsigned long t0 ){
	unsigned long t1 = GetMsCounter();
	return t1 - t0;
}

///////////////////////////////////////////////////////////////////////////
// Задержка в милисекундах (Задержка на t миллисекунд.)
///////////////////////////////////////////////////////////////////////////
void DelayMs( unsigned long t ){
	unsigned long t1 = ( unsigned long )GetMsCounter();
	while ( DTimeMs( t1 ) <= t );
}




//////////////////////// SetVector //////////////////////////
// Функция, устанавливающая вектор прерывания в пользовательской таблице
// прерываний.
// Вход: Vector - адрес обработчика прерывания,
// Address - вектор пользовательской таблицы прерываний.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
void SetVector(unsigned char xdata * Address, void * Vector){
	unsigned char xdata * TmpVector; // Временная переменная
	// Первым байтом по указанному адресу записывается
	// код команды передачи управления ljmp, равный 0x02
	*Address = 0x02;
	// Далее записывается адрес перехода Vector
	TmpVector = (unsigned char xdata *) (Address + 1);
	*TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char) Vector;
	// Таким образом, по адресу Address теперь
	// располагается инструкция ljmp Vector
}


/*void main( void ){
	unsigned char light = 1;
	InitSystimer0();

	while( 1 ){
		leds( light );
		if( light == 0xFF ) light = 1;
		else light |= light << 1;
		DelayMs( 300 );
	}	
}*/












 




