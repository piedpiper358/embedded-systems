;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 01:04:33 2019
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RecvByte
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _CS0
	.globl _CS1
	.globl _CS2
	.globl _CS3
	.globl _SCONV
	.globl _CCONV
	.globl _DMA
	.globl _ADCI
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _XEN
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _WDE
	.globl _WDS
	.globl _WDR2
	.globl _WDR1
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _PSI
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _T2
	.globl _T2EX
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _DACCON
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0H
	.globl _DAC0L
	.globl _SPICON
	.globl _SPIDAT
	.globl _ADCCON3
	.globl _ADCGAINH
	.globl _ADCGAINL
	.globl _ADCOFSH
	.globl _ADCOFSL
	.globl _B
	.globl _ADCCON1
	.globl _I2CCON
	.globl _ACC
	.globl _PSMCON
	.globl _ADCDATAH
	.globl _ADCDATAL
	.globl _ADCCON2
	.globl _DMAP
	.globl _DMAH
	.globl _DMAL
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EADRL
	.globl _WDCON
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ETIM3
	.globl _ETIM2
	.globl _ETIM1
	.globl _ECON
	.globl _IP
	.globl _P3
	.globl _IE2
	.globl _IE
	.globl _P2
	.globl _I2CADD
	.globl _I2CDAT
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _GetAck
	.globl _ReceiveBlock
	.globl _TransmitBlock
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_I2CDAT	=	0x009a
_I2CADD	=	0x009b
_P2	=	0x00a0
_IE	=	0x00a8
_IE2	=	0x00a9
_P3	=	0x00b0
_IP	=	0x00b8
_ECON	=	0x00b9
_ETIM1	=	0x00ba
_ETIM2	=	0x00bb
_ETIM3	=	0x00c4
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_WDCON	=	0x00c0
_EADRL	=	0x00c6
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_DMAL	=	0x00d2
_DMAH	=	0x00d3
_DMAP	=	0x00d4
_ADCCON2	=	0x00d8
_ADCDATAL	=	0x00d9
_ADCDATAH	=	0x00da
_PSMCON	=	0x00df
_ACC	=	0x00e0
_I2CCON	=	0x00e8
_ADCCON1	=	0x00ef
_B	=	0x00f0
_ADCOFSL	=	0x00f1
_ADCOFSH	=	0x00f2
_ADCGAINL	=	0x00f3
_ADCGAINH	=	0x00f4
_ADCCON3	=	0x00f5
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_DAC0L	=	0x00f9
_DAC0H	=	0x00fa
_DAC1L	=	0x00fb
_DAC1H	=	0x00fc
_DACCON	=	0x00fd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_T2EX	=	0x0091
_T2	=	0x0090
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_PSI	=	0x00bf
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_PRE2	=	0x00c7
_PRE1	=	0x00c6
_PRE0	=	0x00c5
_WDR1	=	0x00c3
_WDR2	=	0x00c2
_WDS	=	0x00c1
_WDE	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_XEN	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_ADCI	=	0x00df
_DMA	=	0x00de
_CCONV	=	0x00dd
_SCONV	=	0x00dc
_CS3	=	0x00db
_CS2	=	0x00da
_CS1	=	0x00d9
_CS0	=	0x00d8
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;ch                        Allocated to registers r2 
;------------------------------------------------------------
;	SRC/i2c.c:49: static void Delay(void)
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/i2c.c:53: while(ch++ < 2);
	mov	r2,#0x00
00101$:
	mov	ar3,r2
	inc	r2
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x82
	jc	00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendByte'
;------------------------------------------------------------
;ch                        Allocated to registers r2 
;cnt                       Allocated to registers r3 
;ack                       Allocated to registers 
;------------------------------------------------------------
;	SRC/i2c.c:66: static bit SendByte(unsigned char ch)//Returns ack (0 = acknowledged)
;	-----------------------------------------
;	 function SendByte
;	-----------------------------------------
_SendByte:
	mov	r2,dpl
;	SRC/i2c.c:71: MDE=1;//Output
	setb	_MDE
;	SRC/i2c.c:72: MCO=0;
	clr	_MCO
;	SRC/i2c.c:73: for(cnt=0; cnt<8; cnt++,ch<<=1)
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00104$
;	SRC/i2c.c:75: MDO=(ch&0x80)?1:0;
	mov	a,r2
	rlc	a
	mov	_MDO,c
;	SRC/i2c.c:76: MCO=1;
	setb	_MCO
;	SRC/i2c.c:77: Delay();
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
;	SRC/i2c.c:78: MCO=0;
	clr	_MCO
;	SRC/i2c.c:73: for(cnt=0; cnt<8; cnt++,ch<<=1)
	inc	r3
	mov	a,r2
	add	a,r2
	mov	r2,a
	sjmp	00101$
00104$:
;	SRC/i2c.c:80: MDE=0;//Input
	clr	_MDE
;	SRC/i2c.c:81: MCO=1;
	setb	_MCO
;	SRC/i2c.c:82: Delay();
	lcall	_Delay
;	SRC/i2c.c:83: ack=MDI;
	mov	c,_MDI
;	SRC/i2c.c:84: MCO=0;
	clr	_MCO
;	SRC/i2c.c:85: return ack;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Start'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/i2c.c:97: static void Start(void)
;	-----------------------------------------
;	 function Start
;	-----------------------------------------
_Start:
;	SRC/i2c.c:99: MDE=1;//Output
	setb	_MDE
;	SRC/i2c.c:100: MDO=1;
	setb	_MDO
;	SRC/i2c.c:101: MCO=1;
	setb	_MCO
;	SRC/i2c.c:102: Delay();
	lcall	_Delay
;	SRC/i2c.c:103: MDO=0;
	clr	_MDO
;	SRC/i2c.c:104: Delay();
	lcall	_Delay
;	SRC/i2c.c:105: MCO=0;
	clr	_MCO
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Stop'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/i2c.c:117: static void Stop(void)
;	-----------------------------------------
;	 function Stop
;	-----------------------------------------
_Stop:
;	SRC/i2c.c:119: MDE=1;//Output
	setb	_MDE
;	SRC/i2c.c:120: MCO=0;
	clr	_MCO
;	SRC/i2c.c:121: MDO=0;
	clr	_MDO
;	SRC/i2c.c:122: MCO=1;
	setb	_MCO
;	SRC/i2c.c:123: Delay();
	lcall	_Delay
;	SRC/i2c.c:124: MDO=1;
	setb	_MDO
;	SRC/i2c.c:125: Delay();
	lcall	_Delay
;	SRC/i2c.c:126: MDE=0;//Input (release line)
	clr	_MDE
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Begin'
;------------------------------------------------------------
;addr                      Allocated to registers r2 
;------------------------------------------------------------
;	SRC/i2c.c:140: static bit Begin(unsigned char addr)//Returns ack (0 = acknowledged)
;	-----------------------------------------
;	 function Begin
;	-----------------------------------------
_Begin:
	mov	r2,dpl
;	SRC/i2c.c:142: Start();
	push	ar2
	lcall	_Start
	pop	ar2
;	SRC/i2c.c:143: return SendByte(addr);
	mov	dpl,r2
	ljmp	_SendByte
;------------------------------------------------------------
;Allocation info for local variables in function 'Ack'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/i2c.c:155: static void Ack(void)//Sends ack
;	-----------------------------------------
;	 function Ack
;	-----------------------------------------
_Ack:
;	SRC/i2c.c:157: MDE=1; //Output
	setb	_MDE
;	SRC/i2c.c:158: MCO=0;
	clr	_MCO
;	SRC/i2c.c:159: MDO=0;
	clr	_MDO
;	SRC/i2c.c:160: MCO=1;
	setb	_MCO
;	SRC/i2c.c:161: Delay();
	lcall	_Delay
;	SRC/i2c.c:162: MCO=0;
	clr	_MCO
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Nack'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/i2c.c:174: static void Nack(void)//Sends NAck
;	-----------------------------------------
;	 function Nack
;	-----------------------------------------
_Nack:
;	SRC/i2c.c:176: MDE=1;
	setb	_MDE
;	SRC/i2c.c:177: MCO=0;
	clr	_MCO
;	SRC/i2c.c:178: MDO=1;
	setb	_MDO
;	SRC/i2c.c:179: MCO=1;
	setb	_MCO
;	SRC/i2c.c:180: Delay();
	lcall	_Delay
;	SRC/i2c.c:181: MCO=0;
	clr	_MCO
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetAck'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	SRC/i2c.c:194: bit GetAck(unsigned char address) //Returns 1 if there was an ACK
;	-----------------------------------------
;	 function GetAck
;	-----------------------------------------
_GetAck:
	mov	r2,dpl
;	SRC/i2c.c:196: I2CM=1; //I2C Master mode
	setb	_I2CM
;	SRC/i2c.c:197: if( Begin(address&0xFE) ){Stop();return 0;}
	mov	a,#0xFE
	anl	a,r2
	mov	dpl,a
	lcall	_Begin
	jnc	00102$
	lcall	_Stop
	clr	c
	ret
00102$:
;	SRC/i2c.c:198: Stop();
	lcall	_Stop
;	SRC/i2c.c:200: return 1;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RecvByte'
;------------------------------------------------------------
;cnt                       Allocated to registers r3 
;ch                        Allocated to registers r2 
;------------------------------------------------------------
;	SRC/i2c.c:213: unsigned char RecvByte(void)
;	-----------------------------------------
;	 function RecvByte
;	-----------------------------------------
_RecvByte:
;	SRC/i2c.c:216: unsigned char ch=0;
	mov	r2,#0x00
;	SRC/i2c.c:218: MDE=0;//Input
	clr	_MDE
;	SRC/i2c.c:219: MCO=0;
	clr	_MCO
;	SRC/i2c.c:220: for(cnt=0; cnt<8; cnt++)
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00104$
;	SRC/i2c.c:222: ch<<=1;
	mov	a,r2
	add	a,r2
	mov	r2,a
;	SRC/i2c.c:223: MCO=1;
	setb	_MCO
;	SRC/i2c.c:224: Delay();
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
;	SRC/i2c.c:225: ch|=MDI;
	mov	c,_MDI
	clr	a
	rlc	a
	mov	r4,a
	orl	ar2,a
;	SRC/i2c.c:226: MCO=0;
	clr	_MCO
;	SRC/i2c.c:220: for(cnt=0; cnt<8; cnt++)
	inc	r3
	sjmp	00101$
00104$:
;	SRC/i2c.c:228: return ch;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReceiveBlock'
;------------------------------------------------------------
;addr                      Allocated to stack - offset -3
;block                     Allocated to stack - offset -5
;len                       Allocated to stack - offset -6
;address                   Allocated to registers r2 
;l                         Allocated to registers r6 
;ch                        Allocated to registers r7 
;------------------------------------------------------------
;	SRC/i2c.c:247: bit ReceiveBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len)
;	-----------------------------------------
;	 function ReceiveBlock
;	-----------------------------------------
_ReceiveBlock:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	SRC/i2c.c:251: I2CM=1; //I2C Master mode
	setb	_I2CM
;	SRC/i2c.c:252: address=(address&0xFE); //Write
	anl	ar2,#0xFE
;	SRC/i2c.c:254: if(Begin(address)){Stop();return 1;}//Error - No ACK
	mov	dpl,r2
	push	ar2
	lcall	_Begin
	pop	ar2
	jnc	00102$
	lcall	_Stop
	setb	c
	ljmp	00113$
00102$:
;	SRC/i2c.c:255: if(SendByte(addr)){Stop();return 1;}
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	push	ar2
	lcall	_SendByte
	pop	ar2
	jnc	00104$
	lcall	_Stop
	setb	c
	ljmp	00113$
00104$:
;	SRC/i2c.c:256: Delay();
	push	ar2
	lcall	_Delay
;	SRC/i2c.c:257: Delay();
	lcall	_Delay
	pop	ar2
;	SRC/i2c.c:259: address=(address|1);//Read
	orl	ar2,#0x01
;	SRC/i2c.c:260: if(Begin(address)) {Stop();return 1;}
	mov	dpl,r2
	lcall	_Begin
	jnc	00106$
	lcall	_Stop
	setb	c
	ljmp	00113$
00106$:
;	SRC/i2c.c:261: Delay();
	lcall	_Delay
;	SRC/i2c.c:263: if(len-1)
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
	orl	a,r4
	jz	00108$
;	SRC/i2c.c:265: for(l=0;l<(len-1);l++)
	dec	r2
	cjne	r2,#0xff,00126$
	dec	r3
00126$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	r6,#0x00
00109$:
	push	ar4
	push	ar5
	mov	ar7,r6
	mov	r4,#0x00
	clr	c
	mov	a,r7
	subb	a,r2
	mov	a,r4
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	pop	ar4
	jnc	00121$
;	SRC/i2c.c:267: ch=RecvByte();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_RecvByte
	mov	r7,dpl
;	SRC/i2c.c:268: Ack();
	push	ar7
	lcall	_Ack
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/i2c.c:269: *block++=ch;
	mov	dpl,r4
	mov	dph,r5
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
;	SRC/i2c.c:265: for(l=0;l<(len-1);l++)
	inc	r6
	sjmp	00109$
00121$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00108$:
;	SRC/i2c.c:273: ch=RecvByte();
	lcall	_RecvByte
	mov	r2,dpl
	mov	ar7,r2
;	SRC/i2c.c:274: Nack();
	push	ar7
	lcall	_Nack
	pop	ar7
;	SRC/i2c.c:275: *block=ch;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	a,r7
	movx	@dptr,a
;	SRC/i2c.c:276: Stop();
	lcall	_Stop
;	SRC/i2c.c:277: return 0;
	clr	c
00113$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TransmitBlock'
;------------------------------------------------------------
;addr                      Allocated to stack - offset -3
;block                     Allocated to stack - offset -5
;len                       Allocated to stack - offset -6
;address                   Allocated to registers r2 
;ch                        Allocated to registers 
;l                         Allocated to registers r2 
;------------------------------------------------------------
;	SRC/i2c.c:297: bit TransmitBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len)
;	-----------------------------------------
;	 function TransmitBlock
;	-----------------------------------------
_TransmitBlock:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	SRC/i2c.c:301: I2CM=1; //I2C Master mode
	setb	_I2CM
;	SRC/i2c.c:302: address=(address&0xFE); //Write
	anl	ar2,#0xFE
;	SRC/i2c.c:303: if(Begin(address)) {Stop();return 1;}//Error - no Ack
	mov	dpl,r2
	lcall	_Begin
	jnc	00102$
	lcall	_Stop
	setb	c
	sjmp	00111$
00102$:
;	SRC/i2c.c:304: if(SendByte(addr)) {Stop();return 1;}
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	lcall	_SendByte
	jnc	00117$
	lcall	_Stop
	setb	c
;	SRC/i2c.c:306: for(l=0; l<len; l++,block++)
	sjmp	00111$
00117$:
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00107$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	jnc	00110$
;	SRC/i2c.c:308: ch=*block;
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	dpl,a
;	SRC/i2c.c:309: if(SendByte(ch)){ Stop(); return 1;}//Not to the end of the block
	push	ar2
	push	ar3
	push	ar4
	lcall	_SendByte
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00109$
	lcall	_Stop
	setb	c
	sjmp	00111$
00109$:
;	SRC/i2c.c:306: for(l=0; l<len; l++,block++)
	inc	r2
	inc	r3
	cjne	r3,#0x00,00107$
	inc	r4
	sjmp	00107$
00110$:
;	SRC/i2c.c:311: Stop();
	lcall	_Stop
;	SRC/i2c.c:312: return 0;
	clr	c
00111$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
