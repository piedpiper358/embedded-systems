#include "aduc812.h"
#include "led.h"
#include "max.h"


unsigned char state = 0b00011000; //��������� ��������� �������� 
//unsigned char a[] = {0x18, 0x3C, 0x7E, 0xFF, 0x7E, 0x3C, 0x18, 0x00};

		
// �������� �� �������� ���������� ��
void delay(unsigned long ms)
{
	volatile unsigned long i, j;

	for (j = 0; j < ms; j++)
	{
		for (i = 0; i < 50; i++);
	}


}
unsigned char dip()
{
	return read_max(EXT_LO);
}

void main(void)
{
	unsigned char counter = 0;
	unsigned char dip_value;
	
	unsigned char up_down=0;
	

	while (1)
	{
		dip_value = dip();

		if (dip_value == 0x66) {
			//E��� �� DIP-�������������� 0x66, 
			//�� ������� ��������� ������ ��������
			
			//leds( a[animation_counter] );
			
			
			/*if (counter > 3)
				state = state & state << 1 & state >> 1; //������
			else
				state = state | state << 1 | state >> 1; //����������
			if (counter == 0) state = 0b00011000;
			leds(state);
			counter = (++counter) % 8; //����� �������� �������� */


			
			if( state == 0xFF ) up_down = 1;
			if( state == 0x00 ) {up_down = 0; state = 0b00011000;}
			else
			state = up_down ? state & state << 1 & state >> 1 : state | state << 1 | state >> 1;
			leds(state);
			

			
			
			
			
			
			delay(500);
		}
		else {
			leds(~dip_value); 	//����� ���������������� 
								//�������� � DIP-��������������
			//counter = 0x00;		//�������� �������� ������
			state = 0b00011000;
		}
	}
}