



#define 0x2003



#define PSMI		/*Монитор источника питания ADuC812*/	0x2043		
#define IE0			/*Внешнее прерывание INT0*/				0x2003	
#define ADCI		/*Конец преобразования АЦП*/			0x2033		
#define TF0			/*Переполнение таймера/счетчика 0*/		0x200B	
#define IE1			/*Внешнее прерывание INT1*/				0x2013		
#define TF1			/*Переполнение таймера/счетчика 1*/		0x201B		
#define I2CI/ISPI	/*Прерывание от I2C/SPI*/				0x203B	
#define RI/TI		/*Прерывание от UART*/					0x2023	
#define TF2/EXF2	/*Переполнение таймера/счетчика 2*/		0x202B


//////////////////////// SetVector //////////////////////////
// Функция, устанавливающая вектор прерывания в пользовательской таблице
// прерываний.
// Вход: Vector - адрес обработчика прерывания,
// Address - вектор пользовательской таблицы прерываний.
// Выход: нет.
// Результат: нет.
//////////////////////////////////////////////////////////////
void SetVector(unsigned char xdata * Address, void * Vector)
{
	unsigned char xdata * TmpVector; // Временная переменная
	// Первым байтом по указанному адресу записывается
	// код команды передачи управления ljmp, равный 0x02
	*Address = 0x02;
	// Далее записывается адрес перехода Vector
	TmpVector = (unsigned char xdata *) (Address + 1);
	*TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	++TmpVector;
	*TmpVector = (unsigned char) Vector;
	// Таким образом, по адресу Address теперь
	// располагается инструкция ljmp Vector
}

