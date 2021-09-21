#ifndef _EEPROM_H
#define _EEPROM_H

#define EEPROM_ADDRESS  0xA2
#define EEPROM_SIZE     128

extern bit WriteBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length);
extern bit ReadBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length);

#endif //_EEPROM_H
