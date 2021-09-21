
#include "aduc812.h"
#include "sio.h"
#include <ctype.h>
#include <stdlib.h>

//#include <clocale>
#include "queue.h"
TQueue FIFO = {NULL, NULL};
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
	}
	if(RI){
		// Прием байта
		// Читаем SBUF и записываем его в RFIFO (буфер приема)
	}
}




int toupper_rus_cp866(int c){
	if(c>='а' && c<='п')
		return c-0x20;
	if(c>='р' && c<='я')
		return c-0x50;
	if(c=='ё')
		return c-0x01;
	return c;
}


void main( void ){
	unsigned char c;

    init_sio( S1200 );
	//init_sio2( 1200 );
	
    type("Тест драйвера SIO для стенда SDK-1.1\r\n");
    type("Нажимайте кнопки для тестирования... \r\n");

	
	
	type("\r\nFIFO: ");
		Print(&FIFO);
				

		Push(&FIFO, 'a');
		Push(&FIFO, 'b');
		Push(&FIFO, 'c');
		Push(&FIFO, 'd');
		Push(&FIFO, 'e');
		
		type("\r\nFIFO: ");
		Print(&FIFO);
		
		c = Pop(&FIFO);
	
		type("\r\nFIFO: ");
		Print(&FIFO);
	
	while( 1 ){
		if( rsiostat() ){
			c = rsio();
			//c = (char)tolower(c);

			/*if(isalpha(c)){
				//wsio('*');
			}
			else{
				//wsio(' ');
			}*/
			if(c>='A' && c<='п' || c>='р' && c<='ё'){
			//if(c>=128){	
				//wsio('р');
				//c=toupper(c);
				c=toupper_rus_cp866(c);
			}
			if(c>='a' && c<='z' || c>='A' && c<='Z' ){
				//wsio('а');
				c=tolower(c);
			}
	  		//type(":\t");
			wsio( c );
			wsio( c-1 );
			wsio( c-2 );
			type("\r\n");
		}
	}
}   

//chcp 1251
//chcp 866
//m3p работет на 866
//CP866

//стр. 98   стр. 249

//(UL3 или HEX-202), UL-0.0.1


/*6. На каждый принятый по последовательному каналу символ 
(от персонального компьютера к SDK-1.1) в ответ передается 
этот же символ и 2 предшествующих ему символа согласно таблице 
ASCII (от SDK-1.1 к персональному компьютеру) и отображается 
в терминальной программе. Причем все символы русского алфавита 
отображаются в верхнем регистре, все символы английского алфавита - 
в нижнем регистре. Например, на символ ?л' (?Л') ответом является 
?ЛКЙ', ?5' - ?543', ?i' (?I') - ?ihg' и т.д.*/