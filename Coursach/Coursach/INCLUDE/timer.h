#ifndef __TIMER__H
#define __TIMER__H

void InitSysTimer(void); ///������������� �������. 
unsigned long GetMsCounter(void); //��������� ������� ����� ������� � �������������. 
unsigned long DTimeMs(unsigned long t0); //��������� ���������� �����������, ��������� � ��������� ����� t0 � �� �������� �������. 
void DelayMs(unsigned long t); //�������� �� t �����������.
void SetVector(unsigned char xdata * Address, void * Vector);

#endif //__TIMER__H
