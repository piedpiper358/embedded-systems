
#include <stdlib.h>
#include <ctype.h>

#include "aduc812.h"
#include "sio.h"
#include "led.h"
#include "max.h"
#include "queue.h"
//#include "async.h"

//#include <clocale>



TQueue RFIFO = {NULL, NULL};
TQueue WFIFO = {NULL, NULL};

unsigned char dip()
{
	return read_max(EXT_LO);
}

/**http://www.strudel.org.uk/itoa/
	 * C++ version 0.4 char* style "itoa":
	 * Written by Lukas Chmela
	 * Released under GPLv3.

	 */
/*char* itoa(int value, char* result, int base) {
		
		
		char* ptr = result, *ptr1 = result, tmp_char;
		int tmp_value;
		
		// check that the base if valid
		if (base < 2 || base > 36) { *result = '\0'; return result; }

		

		do {
			tmp_value = value;
			value /= base;
			*ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
		} while ( value );

		// Apply negative sign
		if (tmp_value < 0) *ptr++ = '-';
		// *ptr++ = '\0';
		while(ptr1 < ptr) {
			tmp_char = *ptr;
			*ptr--= *ptr1;
			*ptr1++ = tmp_char;
		}
		// *ptr1++ = '\0';
		return result;
	}
	*/
/*char* itoa(int value, char* result, int base) {
	
	
		char* ptr = result, *ptr1 = result, tmp_char;
		int tmp_value;
		
		// check that the base if valid
		if (base < 2 || base > 36) { *result = '\0'; return result; }

		

		do {
			tmp_value = value;
			value /= base;
			// *ptr++ = zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [ 35 + (tmp_value - value * base)];
			*ptr++ = "0123456789abcdefghijklmnopqrstuvwxyz" [(tmp_value - value * base)];
		} while ( value );

		// Apply negative sign
		if (tmp_value < 0) *ptr++ = '-';
		*ptr-- = '\0';
		while(ptr1 < ptr) {
			tmp_char = *ptr;
			*ptr--= *ptr1;
			*ptr1++ = tmp_char;
		}
		return result;
	}
*/
	
char* itoa(int value, char* result, int base) {
	
	
		char* ptr = result, *ptr1 = result, tmp_char;
		int tmp_value;
		
		// check that the base if valid
		if (base < 2 || base > 10/*36*/) { *result = '\0'; return result; }

		

		do {
			tmp_value = value;
			*ptr++ = (value % base) + '0';
			value /= base;
			//*ptr++ = /*zyxwvutsrqponmlkjihgfedcba987654321*/"0123456789"/*abcdefghijklmnopqrstuvwxyz" [/*35 +*/ (tmp_value - value * base)];

		} while ( value );

		// Apply negative sign
		if (tmp_value < 0) *ptr++ = '-';
		*ptr-- = '\0';
		while(ptr1 < ptr) {
			tmp_char = *ptr;
			*ptr--= *ptr1;
			*ptr1++ = tmp_char;
		}
		return result;
	}
	
	
	
	
	
/*char* itoa( int value, char* result, int base ) {
		// check that the base if valid
		char* ptr1 = result, *ptr2 = result, tmp_char;
		//char* out = result;
		int quotient = abs(value);
		
		if (base < 2 || base > 16) { *result = 0; return result; }

		
		*ptr1++ = '\0';
		do {
			const int tmp = quotient / base;
			*ptr1 = "0123456789abcdef"[ quotient - (tmp*base) ];
			++ptr1;
			quotient = tmp;
		} while ( quotient );

		// Apply negative sign
		if ( value < 0) *ptr1++ = '-';

		//std::reverse( result, out );
		// *out = 0;
		//return result;
		
		
		
		
		// Apply negative sign
		//if (tmp_value < 0) *ptr1++ = '-';
		// *ptr1-- = '\0';
		while(ptr2 < ptr1) {
			tmp_char = *ptr1;
			*ptr1--= *ptr2;
			*ptr2++ = tmp_char;
		}
		
		//while ((ptr1!=last)&&(*ptr1!=--last)) {
		//	std::iter_swap (first,last);
		//	++first;
		//}
		// *out = 0;
		return result;
	}

*/

/*int toupper_rus_cp866(int c){
	//CP866
	if(c>='а' && c<='п')
		return c-0x20;
	if(c>='р' && c<='я')
		return c-0x50;
	if(c=='ё')
		return c-0x01;
	return c;
}*/
/*void delay(unsigned long ms)
{
	volatile unsigned long i, j;

	for (j = 0; j < ms; j++)
	{
		for (i = 0; i < 50; i++);
	}


}*/

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
	int counte=0;

	unsigned int old_mode=0;

    init_sio( S1200 );
    type("Тест драйвера SIO для стенда SDK-1.1\r\n");
    type("Нажимайте кнопки для тестирования... \r\n");
	
	
	//RI=0;
	//TI=0;
	
	//leds(IE);
	//delay(5000);
	while (1)
	{
		dip_value = dip();

		if (dip_value == 0x01) {
			
			/*if(old_mode==1){
				ES=0;
				//EA=0;
				old_mode=0;
			}
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
			}*/
		}
		else if(dip_value == 0x00){
			if(old_mode==0){
				ES=0;
				//EA=1;
				old_mode=1;
			}



			//REN=1;
			
			//if(!isEmpty(&RFIFO)){
				//type("\r\nRFIFO: ");
				//Print(&RFIFO);
				//type("\r\nWFIFO: ");
				//Print(&WFIFO);	
				
				
				//c = Pop(&RFIFO);
				//Push(&WFIFO, c);

				
				
			
				leds(0x00); //убираем сигнал ошибки
				//c = com[counter++];
				c=rsio();
				wsio(c);
				//c = ReadUART();
				//WriteUART(c);
		
				
				
				//type("\r\nRFIFO: ");
				//Print(&RFIFO);
				//type("\r\nWFIFO: ");
				//Print(&WFIFO);
				
				if(isdigit(c)){
					if(dig_count>=2){
						error("\r\nТрех- или более значное число\r\n");
					}
					str[dig_count]=c;
					dig_count++;
					str[dig_count]='\0';
					//i = (++i) % 2;
				} 
				else if(c=='*'){
					if(dig_count==0){
						error("\r\nВы не ввели число\r\n");
					}
					else{
						res *= atoi(str);
						dig_count=0;
					}
				}
				else if(c=='='){
					res *= atoi(str);					
					//type(itoa(res, str, 10));
					type("\r\n");
					//sprintf(str, "%d", res);
					res = 1;
					dig_count=0;
				}
				else{
					if(c!=' ' && c!='\t'){
						//isspace(c) isblank*//*c!=' '
						error("\r\nИнвалидный символ\r\n");
						res = 1;
						dig_count=0;
						
					}
				}
		}
	}
}					
					
					
					
/*#include <stdio.h>
void main(){
   char str[2];
   int digit = 5;
   str[0] = digit + '0';
   str[1] = 0; // обязательно добавить конец строки!
}
 
Также, можно использовать функции atoi (ANSII To Integer), из библиотеки stdlib.h:
#include <stdio.h>
#include <stdlib.h>
void main (){
  int i;
  char str[256] = "12345"; //исходное число в виде строки
  i = atoi(str);    //результат
}

Аналогично предыдущему, itoa (Integer To ANSII):
#include <stdio.h>
#include <stdlib.h>
void main(){
   int a = 12345;   //исходное число
   int radix = 10;  //система счисления
   char buffer[20]; //результат
   char *p;  //указатель на результат
   p = itoa(a,buffer,radix);
}*/
					
					
					
					
					
				
		
		


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