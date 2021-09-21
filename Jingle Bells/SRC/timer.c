

#define __TIMER_NUMBER__ 1


#include "choice_timer.h"
#include "aduc812.h"
#include "max.h"




void SetVector(unsigned char xdata * Address, void * Vector);
void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ );

static unsigned long __systime = 0;


///////////////////////////////////////////////////////////////////////////
// ������������� ������� 1 (1000��)
///////////////////////////////////////////////////////////////////////////
void InitSysTimer( void ){
	//0. ���������� �������
	TR=0x0;
	//1. ������� ������ �� ������� ������� ������
	// ����� ������ ������ 16-��������� ������
	/*TMOD = TMOD & 0xF0 | 0x01; //  C/T = 0; M1,M0 = 0,1
	
	TMOD &= ~T0_CT;
	TMOD |= ~T0_M0;
	TMOD &= ~T0_M1;*/
	
	//TMOD = TMOD & ~(T0_GATE | T0_CT | T0_M1) | T0_M0;
	
	TMOD = TMOD & ~(GATE | CT | M1) | M0;
	
	//2. ��������� ������� �� ������� 1000 ��
	TH = 0xFC;
	TL = 0x66; 
	//3. ��������� �������
	TR=0x1;
	//4. ��������� ������� ���������� � ���������������� �������
	SetVector( vec, (void *)SYS_TIMER_ISR );
	//5. ���������� ���������� �� �������
	ET = 1; 
	//6. ���������� ���� ����������
	EA = 1;
}

//////////////////////// T1_ISR //////////////////////////////
// ���������� ���������� �� ������� (Handler)
//////////////////////////////////////////////////////////////
void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ ){

	TH = 0xFC; // ������������� �������:
	TL = 0x66; // ��������� �� ������� ������ 1000 �� (���� ������)
	__systime++; // ����� � ������������
}


///////////////////////////////////////////////////////////////////////////
// ������ �������������� �������� (��������� ������� ����� ������� � �������������.)
///////////////////////////////////////////////////////////////////////////
unsigned long GetMsCounter( void ){
	unsigned long res;
	ET = 0;
	res = __systime;
	ET = 1;
	return res;
}

/*void SetStartTime( unsigned long t ){
	__systime = t;
}*/

///////////////////////////////////////////////////////////////////////////
// ���������� ��������� ����� (�� ������� ������)
////(��������� ���������� �����������, ��������� � ��������� ����� t0 � �� �������� �������. )
///////////////////////////////////////////////////////////////////////////
unsigned long DTimeMs( unsigned long t0 ){
	unsigned long t1 = GetMsCounter();
	return t1 - t0;
}

///////////////////////////////////////////////////////////////////////////
// �������� � ������������ (�������� �� t �����������.)
///////////////////////////////////////////////////////////////////////////
void DelayMs( unsigned long t ){
	unsigned long t1 = ( unsigned long )GetMsCounter();
	while ( DTimeMs( t1 ) <= t );
}




//////////////////////// SetVector //////////////////////////
// �������, ��������������� ������ ���������� � ���������������� �������
// ����������.
// ����: Vector - ����� ����������� ����������,
// Address - ������ ���������������� ������� ����������.
// �����: ���.
// ���������: ���.
//////////////////////////////////////////////////////////////
void SetVector(unsigned char xdata * Address, void * Vector){
	unsigned char xdata * TmpVector; // ��������� ����������
	// ������ ������ �� ���������� ������ ������������
	// ��� ������� �������� ���������� ljmp, ������ 0x02
	*Address = 0x02;
	// ����� ������������ ����� �������� Vector
	TmpVector = (unsigned char xdata *) (Address + 1);
	*TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char) Vector;
	// ����� �������, �� ������ Address ������
	// ������������� ���������� ljmp Vector
}


/*void main( void ){
	unsigned char light = 1;
	InitSystimer0();

	while( 1 ){
		leds( light );
		if( light == 0xFF ) light = 1;
		else light |= light << 1;
		DelayMs( 300 );
	}	
}*/












 




