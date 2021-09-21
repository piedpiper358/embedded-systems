#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#include "aduc812.h"
#include "sio.h"
#include "led.h"
#include "max.h"
#include "queue.h"

//#include <clocale>



TQueue RFIFO = {NULL, NULL};
TQueue WFIFO = {NULL, NULL};

unsigned char dip()
{
	return read_max(EXT_LO);
}


//////////////////////// SIO_ISR //////////////////////////////
// Обработчик прерывания UART.
// Вход: нет.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
void SIO_ISR( void ) __interrupt ( 4 ){
	if(TI){
		// Передача байта
		// Читаем WFIFO (буфер передачи) и записываем его в SBUF
		if(!isEmpty(&WFIFO))
			SBUF = Pop(&WFIFO);
		//leds(0x55);
	}
	if(RI){
		// Прием байта
		// Читаем SBUF и записываем его в RFIFO (буфер приема)
		Push(&RFIFO, SBUF);
		//leds(0x77);
	}
}




int toupper_rus_cp866(int c){
	//CP866
	if(c>='а' && c<='п')
		return c-0x20;
	if(c>='р' && c<='я')
		return c-0x50;
	if(c=='ё')
		return c-0x01;
	return c;
}


void error(char * str ){
	leds(0xAA);
	type(str);
}

void main( void ){
	unsigned char c;
	unsigned int /*long*/ res = 1;
	unsigned char str[10/*3*/] = {0};
	unsigned char dig_count = 0;
	unsigned char dip_value;

    init_sio( S1200, (void *)SIO_ISR );
    type("Тест драйвера SIO для стенда SDK-1.1\r\n");
    type("Нажимайте кнопки для тестирования... \r\n");

	while (1)
	{
		dip_value = dip();

		if (dip_value == 0x01) {
			ES=0;
			if( rsiostat() ){
				c = rsio();
				if(c>='A' && c<='п' || c>='р' && c<='ё')
					c=toupper_rus_cp866(c);
				if(c>='a' && c<='z' || c>='A' && c<='Z' )
					c=tolower(c);
				wsio( c );
				wsio( c-1 );
				wsio( c-2 );
				type("\r\n");
			}
		}
		else if(dip_value == 0x00){
			ES=1;
			
			if(!isEmpty(&RFIFO)){
				c = Pop(&RFIFO);
				
				if(isdigit(c)){
					if(dig_count>=2){
						error("Трех- или более значное число");
					}
					str[dig_count]=c;
					dig_count++;
					str[dig_count]='\0';
					//i = (++i) % 2;
				} 
				else if(c=='*'){
					if(dig_count==0){
						error("Вы не ввели число");
					}
					else{
						res *= atoi(str);
						dig_count=0;
					}
				}
				else if(c=='='){
					res *= atoi(str);					
					//type(itoa(res, str, 10));
					sprintf(str, "%d", res);
					type(str);
					res = 1;
					dig_count=0;
				}
				else{
					if(c!=' ' && c!='\t'){
						//isspace(c) isblank*//*c!=' '
						error("Инвалидный символ");
					}
				}
			}
		}
	}
}

//chcp 1251
//chcp 866
//m3p работет на 866
//CP866

//стр. 98   стр. 249

//(UL3 или HEX-202), UL-0.0.1


/*6.
Умножитель десятичных чисел. Диапазон значений множителей - от 010 до 9910
включительно. Контроллеру SDK-1.1 по последовательному каналу со стороны
персонального компьютера с использованием терминальной программы
передаются множители (десятичные числа), причем разделителем введенных
значений является символ умножения (?*'), концом ввода является символ
равенства (?=?), получившееся выражение отображается в терминале
персонального компьютера. После чего контроллер возвращает результат
операции, который отображается в терминале. Каждое новое выражение
начинается с новой строки. Сигнализация в случае ввода некорректных значений
- сообщение об ошибке в последовательный канал и зажигание светодиодов
(лабораторная работа № 1).



*/