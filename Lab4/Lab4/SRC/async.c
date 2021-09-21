#include "aduc812.h"

#define FIFOSize 16

void SetVector(unsigned char xdata *Address, void *Vector);
void SIO_ISR(void) __interrupt(4);

struct FIFOb {
	unsigned char buf[FIFOSize];
	char RP;
	char WP;
};

struct FIFOb wFIFO, rFIFO;
bit TRANSFER_NOW; //Флаг для разрешения проблемы начальной передачи

//Функция, устанавливающая вектор прерывания в пользовательской таблице
//прерываний Вход:  Vector - адрес обработчика прерываний  Address - вектор
// пользовательской таблицы прерываний
//Выход: нет
void SetVector(unsigned char xdata *Address, void *Vector) {
	unsigned char xdata *TmpVector;
	*Address = 0x02;
	TmpVector = (unsigned char xdata *)(Address + 1);
	*TmpVector = (unsigned char)((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char)Vector;
}

/*----------------------------------------------------------------------------
                        init_sio()
-------------------------------------------------------------------------------
Инициализирует последовательный канал на заданной скорости. Использует таймер 1
Вход:       char speed - скорость. Задается константами, описанными в
                заголовочном файле sio.h
            bit sdouble - дублирование скорости: 0 - не дублировать скорость,
                заданную аргументом speed; 1 - дублировать.
Выход:      нет
Результат:  нет
----------------------------------------------------------------------------- */
void init_sio(unsigned char speed) {
	TH1 = speed;
	TMOD |= 0x20; //Таймер 1 будет работать в режиме autoreload
	TCON |= 0x40; //Запуск таймера 1
	PCON |= 0x00; // SMOD = 0
	SCON = 0x50; //Настройки последовательного канала: Режим 1(8 бит данных,
	             //асинхронный, переменная скорость)
	ES = 0; //Запрещение прерываний от приемопередатчика
	wFIFO.RP = wFIFO.WP = rFIFO.RP = rFIFO.WP = 0;
	TRANSFER_NOW = 0;
	SetVector(0x2023, (void *)SIO_ISR);
}

//Функция записи элемента в буфер
//Вход: FIFOb* а - буфер
//Выход: 1 - успешно записан
//		0 - буфер полон
bit PushFIFO(struct FIFOb *a, unsigned char c) {
	if (!((a->RP == 0 && a->WP == FIFOSize - 1) ||
	      ((a->RP - a->WP) == 1))) //если буфер не полон
	{
		a->buf[a->WP] = c; //записываем в буфер элемент c индексом WP
		if (++a->WP > FIFOSize - 1)
			a->WP = 0; //проверка выхода указателя за границы буфера
		return 1;
	} else
		return 0;
}

//Функция извлечения элемента из буфера
//Вход: FIFOb* а - буфер
//Выход: элемент буфера при удачном извлечении
// 						0 - если буфер пуст
unsigned char PopFIFO(struct FIFOb *a) {
	unsigned char c;
	if (a->WP == a->RP)
		return 0;      //если буфер пуст, возвращаем 0
	c = a->buf[a->RP]; //извлекаем элемент с индексом RP
	if (++(a->RP) > FIFOSize - 1)
		a->RP = 0; //проверка выхода указателя за границы буфера
	return c;
}

//Обработчик прерывания от последовательного канала
//Вход: нет
//Выход: нет
void SIO_ISR(void) __interrupt(4) {
	unsigned char c;
	if (TI) {
		c = PopFIFO(&wFIFO);
		TRANSFER_NOW = 1;
		if (c) { //если буфер непуст
			SBUF = c;
			// TI = 0;
		} else
			TRANSFER_NOW =
			    0; //завершаем цикл передачи - больше нечего передавать
	}

	if (RI) {
		PushFIFO(&rFIFO, SBUF);
		RI = 0;
	}
}

// API - функция отправки символа в последовательный канал
//Вход: нет
//Выход: принятый символ или 0 в случае пустого буфер
bit WriteUART(unsigned char c) {
	ES = 0; //отключаем прерывание от UART - работа с разделяемыми ресурсами
	if (PushFIFO(&wFIFO, c)) {
		ES = 1;
		if (!TRANSFER_NOW)
			TI = 1; //если цикл передачи не начат, искусственно вызываем
			        //прерывание установкой флага
		return 1;
	} else {
		ES = 1;
		return 0; //если буфер полон
	}
}
// API - функция отправки ASCIIZ строки в последовательный канал
//Вход: нет
//Выход: принятый символ или 0 в случае пустого буфер
void APIString(const unsigned char *str) {
	unsigned char i = 0;
	while (i < 80) {
		if (str[i] == '\0')
			break;
		WriteUART(str[i++]);
	}
}

// API - функция приема символа из последовательного канала
//Вход: нет
//Выход: принятый символ или 0 в случае пустого буфера
unsigned char ReadUART(void) {
	unsigned char c;
	ES = 0;
	c = PopFIFO(&rFIFO);
	ES = 1;
	return c;
}