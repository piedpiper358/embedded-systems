
#include "aduc812.h"
#include "max.h"

void SetVector(unsigned char xdata * Address, void * Vector);
void T0_ISR( void ) __interrupt ( 0 );

unsigned long __systime = 0;

//Инициализация системного таймера
void InitSysTimer( void )
{
	TR0=0x0;//Выключение таймера 0
	TMOD = TMOD & 0b11111101 | 0b0000001;
	// Выбор режима работы - 16-разрядный таймер
	TH0 = 0xFC; //Настройка таймера на частоту 1000 Гц
	TL0 = 0x66; 
	TR0=0x1; //Включение таймера 0
	SetVector( 0x200B, (void *)T0_ISR );
	//Установка вектора прерываний в пользовательской таблице
	ET0 = 1; //Разрешение прерываний от таймера 0
	EA = 1; //Разрешение всех прерываний
}

//Обработчик прерывания от таймера 0
void T0_ISR( void ) __interrupt ( 0 ){
	__systime++; // Время в милисекундах
	TH0 = 0xFC; //Настройка таймера на частоту 1000 Гц
	TL0 = 0x66; 
}

//Получение текущей метки времени в миллисекундах
unsigned long GetMsCounter( void ){
	unsigned long res;
	ET0 = 0;
	res = __systime;
	ET0 = 1;
	return res;
}

//Подсчет количества миллисекунд, прошедших с временной метки t0 до текущего времени.
unsigned long DTimeMs( unsigned long t0 ){
	unsigned long t1 = ( unsigned long )GetMsCounter();
	return t1 - t0;
}

//Задержка на t миллисекунд
void DelayMs( unsigned long t ){
	unsigned long t1 = ( unsigned long )GetMsCounter();
	while ( 1 ){
		if ( DTimeMs( t1 ) > t ) break;
	}
}

//Установка вектора прерывания в пользовательской таблице
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












 




