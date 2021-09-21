#ifndef __TIMER__H
#define __TIMER__H

void InitSysTimer(void); ///Инициализация таймера. 
unsigned long GetMsCounter(void); //Получение текущей метки времени в миллисекундах. 
unsigned long DTimeMs(unsigned long t0); //Измерение количества миллисекунд, прошедших с временной метки t0 и до текущего времени. 
void DelayMs(unsigned long t); //Задержка на t миллисекунд.
void SetVector(unsigned char xdata * Address, void * Vector);

#endif //__TIMER__H
