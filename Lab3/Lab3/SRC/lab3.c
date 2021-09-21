
#include "aduc812.h"
#include "sio.h"
#include <ctype.h>
#include <stdlib.h>

//#include <clocale>
#include "queue.h"
TQueue FIFO = {NULL, NULL};
//////////////////////// SIO_ISR //////////////////////////////
// ��ࠡ��稪 ���뢠��� UART.
// �室: ���.
// ��室: ���.
// �������: ���.
//////////////////////////////////////////////////////////////
void SIO_ISR( void ) __interrupt ( 4 ){
	if(TI){
		// ��।�� ����
		// ��⠥� WFIFO (���� ��।��) � �����뢠�� ��� � SBUF
	}
	if(RI){
		// �ਥ� ����
		// ��⠥� SBUF � �����뢠�� ��� � RFIFO (���� �ਥ��)
	}
}




int toupper_rus_cp866(int c){
	if(c>='�' && c<='�')
		return c-0x20;
	if(c>='�' && c<='�')
		return c-0x50;
	if(c=='�')
		return c-0x01;
	return c;
}


void main( void ){
	unsigned char c;

    init_sio( S1200 );
	//init_sio2( 1200 );
	
    type("���� �ࠩ��� SIO ��� �⥭�� SDK-1.1\r\n");
    type("�������� ������ ��� ���஢����... \r\n");

	
	
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
			if(c>='A' && c<='�' || c>='�' && c<='�'){
			//if(c>=128){	
				//wsio('�');
				//c=toupper(c);
				c=toupper_rus_cp866(c);
			}
			if(c>='a' && c<='z' || c>='A' && c<='Z' ){
				//wsio('�');
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
//m3p ࠡ��� �� 866
//CP866

//���. 98   ���. 249

//(UL3 ��� HEX-202), UL-0.0.1


/*6. �� ����� �ਭ��� �� ��᫥����⥫쭮�� ������ ᨬ��� 
(�� ���ᮭ��쭮�� �������� � SDK-1.1) � �⢥� ��।����� 
��� �� ᨬ��� � 2 �।������� ��� ᨬ���� ᮣ��᭮ ⠡��� 
ASCII (�� SDK-1.1 � ���ᮭ��쭮�� ���������) � �⮡ࠦ����� 
� �ନ���쭮� �ணࠬ��. ��祬 �� ᨬ���� ���᪮�� ��䠢�� 
�⮡ࠦ����� � ���孥� ॣ����, �� ᨬ���� ������᪮�� ��䠢�� - 
� ������ ॣ����. ���ਬ��, �� ᨬ��� ?�' (?�') �⢥⮬ ���� 
?���', ?5' - ?543', ?i' (?I') - ?ihg' � �.�.*/