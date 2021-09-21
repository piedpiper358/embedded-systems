#ifndef __MAX__H
#define __MAX__H

//Peripherals
//���������� 䠩� ��� ࠡ��� � ����ਥ� �⥭�� SDK1.1


//�����⥫� ���⮢
#define MAXBASE 0x8 //����� ��࠭��� ���譥� ����� (xdata), �㤠 �⮡ࠦ�����
                    //ॣ����� ����⥫�.
					
					
//�������� ॣ���஢
#define KB          0x0		//������� ���������� KB
#define DATA_IND    0x1		//������� 設� ������ ��� DATA_IND
#define EXT_LO      0x2		//dip-��४���⥫�
							//������� ������ ��ࠫ���쭮�� ���� EXT_LO
#define EXT_HI      0x3		//������� ������ ��ࠫ���쭮�� ���� EXT_HI
#define ENA         0x4		//������� �ࠢ����� ENA
#define C_IND       0x6		//������� �ࠢ����� ��� C_IND
#define SV          0x7		//������� �ࠢ����� ᢥ⮤������ SV


void write_max( unsigned char xdata *regnum, unsigned char val );
unsigned char read_max( unsigned char xdata *regnum );

#endif //__MAX__H
