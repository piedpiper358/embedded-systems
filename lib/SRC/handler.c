



#define 0x2003



#define PSMI		/*������� ��������� ������� ADuC812*/	0x2043		
#define IE0			/*������� ���������� INT0*/				0x2003	
#define ADCI		/*����� �������������� ���*/			0x2033		
#define TF0			/*������������ �������/�������� 0*/		0x200B	
#define IE1			/*������� ���������� INT1*/				0x2013		
#define TF1			/*������������ �������/�������� 1*/		0x201B		
#define I2CI/ISPI	/*���������� �� I2C/SPI*/				0x203B	
#define RI/TI		/*���������� �� UART*/					0x2023	
#define TF2/EXF2	/*������������ �������/�������� 2*/		0x202B


//////////////////////// SetVector //////////////////////////
// �������, ��������������� ������ ���������� � ���������������� �������
// ����������.
// ����: Vector - ����� ����������� ����������,
// Address - ������ ���������������� ������� ����������.
// �����: ���.
// ���������: ���.
//////////////////////////////////////////////////////////////
void SetVector(unsigned char xdata * Address, void * Vector)
{
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

