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
// ��ࠡ��稪 ���뢠��� UART.
// �室: ���.
// ��室: ���.
// �������: ���.
//////////////////////////////////////////////////////////////
void SIO_ISR( void ) __interrupt ( 4 ){
	if(TI){
		// ��।�� ����
		// ��⠥� WFIFO (���� ��।��) � �����뢠�� ��� � SBUF
		if(!isEmpty(&WFIFO))
			SBUF = Pop(&WFIFO);
		//leds(0x55);
	}
	if(RI){
		// �ਥ� ����
		// ��⠥� SBUF � �����뢠�� ��� � RFIFO (���� �ਥ��)
		Push(&RFIFO, SBUF);
		//leds(0x77);
	}
}




int toupper_rus_cp866(int c){
	//CP866
	if(c>='�' && c<='�')
		return c-0x20;
	if(c>='�' && c<='�')
		return c-0x50;
	if(c=='�')
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
    type("���� �ࠩ��� SIO ��� �⥭�� SDK-1.1\r\n");
    type("�������� ������ ��� ���஢����... \r\n");

	while (1)
	{
		dip_value = dip();

		if (dip_value == 0x01) {
			ES=0;
			if( rsiostat() ){
				c = rsio();
				if(c>='A' && c<='�' || c>='�' && c<='�')
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
						error("���- ��� ����� ���筮� �᫮");
					}
					str[dig_count]=c;
					dig_count++;
					str[dig_count]='\0';
					//i = (++i) % 2;
				} 
				else if(c=='*'){
					if(dig_count==0){
						error("�� �� ����� �᫮");
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
						error("��������� ᨬ���");
					}
				}
			}
		}
	}
}

//chcp 1251
//chcp 866
//m3p ࠡ��� �� 866
//CP866

//���. 98   ���. 249

//(UL3 ��� HEX-202), UL-0.0.1


/*6.
������⥫� �������� �ᥫ. �������� ���祭�� �����⥫�� - �� 010 �� 9910
�����⥫쭮. ����஫���� SDK-1.1 �� ��᫥����⥫쭮�� ������ � ��஭�
���ᮭ��쭮�� �������� � �ᯮ�짮������ �ନ���쭮� �ணࠬ��
��।����� �����⥫� (������� �᫠), ��祬 ࠧ����⥫�� ���������
���祭�� ���� ᨬ��� 㬭������ (?*'), ���殬 ����� ���� ᨬ���
ࠢ���⢠ (?=?), ����稢襥�� ��ࠦ���� �⮡ࠦ����� � �ନ����
���ᮭ��쭮�� ��������. ��᫥ 祣� ����஫��� �����頥� १����
����樨, ����� �⮡ࠦ����� � �ନ����. ������ ����� ��ࠦ����
��稭����� � ����� ��ப�. ����������� � ��砥 ����� �����४��� ���祭��
- ᮮ�饭�� �� �訡�� � ��᫥����⥫�� ����� � ��������� ᢥ⮤�����
(������ୠ� ࠡ�� � 1).



*/