#ifndef __MAX__H
#define __MAX__H

//Peripherals
//Заголовочный файл для работы с периферией стенда SDK1.1


//Расширитель портов
#define MAXBASE 0x8 //Номер страницы внешней памяти (xdata), куда отображаются
                    //регистры расширителя.
					
					
//Названия регистров
#define KB          0x0		//Регистр клавиатуры KB
#define DATA_IND    0x1		//Регистр шины данных ЖКИ DATA_IND
#define EXT_LO      0x2		//dip-переключатели
							//Регистр данных параллельного порта EXT_LO
#define EXT_HI      0x3		//Регистр данных параллельного порта EXT_HI
#define ENA         0x4		//Регистр управления ENA
#define C_IND       0x6		//Регистр управления ЖКИ C_IND
#define SV          0x7		//Регистр управления светодиодами SV


void write_max( unsigned char xdata *regnum, unsigned char val );
unsigned char read_max( unsigned char xdata *regnum );

#endif //__MAX__H
