#ifndef _I2C_H
#define _I2C_H

extern bit ReceiveBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len);
extern bit TransmitBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len);
extern bit GetAck(unsigned char address); //Returns 1 if there was an ACK

#endif //_I2C_H
