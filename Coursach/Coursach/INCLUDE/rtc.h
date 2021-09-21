#ifndef _RTC_H
#define _RTC_H

#define RTC_ADDRESS     0xA0

typedef struct 
{
    unsigned char hsec; //Сотые доли секунды
    unsigned char sec;
    unsigned char min;
    unsigned char hour;
} TIME;

typedef struct 
{
    unsigned char year; //0..3
    unsigned char month;
    unsigned char day;
    unsigned char weekday;
} DATE;

extern unsigned char /*bit*/ GetTime(TIME xdata * time);
extern bit GetDate(DATE xdata * time);
extern unsigned char /*bit*/ SetTime(TIME xdata * time);
extern bit SetDate(DATE xdata * time);

#endif //_RTC_H
