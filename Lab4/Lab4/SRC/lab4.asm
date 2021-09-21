;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Jan 13 00:38:10 2019
;--------------------------------------------------------
	.module lab4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _error
	.globl _dip
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
	.globl _WFIFO
	.globl _RFIFO
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
_RFIFO::
	.ds 6
_WFIFO::
	.ds 6
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	SRC/lab4.c:16: TQueue RFIFO = {NULL, NULL};
	mov	_RFIFO,#0x00
	mov	(_RFIFO + 1),#0x00
	mov	(_RFIFO + 2),#0x00
	mov	(_RFIFO + 0x0003),#0x00
	mov	((_RFIFO + 0x0003) + 1),#0x00
	mov	((_RFIFO + 0x0003) + 2),#0x00
;	SRC/lab4.c:17: TQueue WFIFO = {NULL, NULL};
	mov	_WFIFO,#0x00
	mov	(_WFIFO + 1),#0x00
	mov	(_WFIFO + 2),#0x00
	mov	(_WFIFO + 0x0003),#0x00
	mov	((_WFIFO + 0x0003) + 1),#0x00
	mov	((_WFIFO + 0x0003) + 2),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'dip'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/lab4.c:19: unsigned char dip()
;	-----------------------------------------
;	 function dip
;	-----------------------------------------
_dip:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/lab4.c:21: return read_max(EXT_LO);
	mov	dptr,#0x0002
	ljmp	_read_max
;------------------------------------------------------------
;Allocation info for local variables in function 'error'
;------------------------------------------------------------
;str                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	SRC/lab4.c:159: void error(char * str ){
;	-----------------------------------------
;	 function error
;	-----------------------------------------
_error:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	SRC/lab4.c:160: leds(0xAA);
	mov	dpl,#0xAA
	push	ar2
	push	ar3
	push	ar4
	lcall	_leds
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/lab4.c:161: type(str);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_type
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;res                       Allocated to stack - offset 1
;str                       Allocated to stack - offset 3
;dig_count                 Allocated to registers r4 
;dip_value                 Allocated to registers r7 
;com                       Allocated to registers 
;counte                    Allocated to registers 
;old_mode                  Allocated to registers r5 r6 
;------------------------------------------------------------
;	SRC/lab4.c:164: void main( void ){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0c
	mov	sp,a
;	SRC/lab4.c:166: unsigned int /*long*/ res = 1;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x01
	clr	a
	inc	r0
	mov	@r0,a
;	SRC/lab4.c:167: unsigned char str[10/*3*/] = {0};
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x02
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x03
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x04
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x05
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x06
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x07
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x08
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x09
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
;	SRC/lab4.c:168: unsigned char dig_count = 0;
	mov	r4,#0x00
;	SRC/lab4.c:173: unsigned int old_mode=0;
	mov	r5,#0x00
	mov	r6,#0x00
;	SRC/lab4.c:175: init_sio( S1200 );
	mov	dpl,#0xE8
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_init_sio
;	SRC/lab4.c:176: type("Тест драйвера SIO для стенда SDK-1.1\r\n");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_type
;	SRC/lab4.c:177: type("Нажимайте кнопки для тестирования... \r\n");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_type
	pop	ar0
	pop	ar6
	pop	ar5
	pop	ar4
;	SRC/lab4.c:185: while (1)
00126$:
;	SRC/lab4.c:187: dip_value = dip();
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_dip
	mov	r7,dpl
	pop	ar0
	pop	ar6
	pop	ar5
	pop	ar4
;	SRC/lab4.c:189: if (dip_value == 0x01) {
	cjne	r7,#0x01,00141$
	sjmp	00126$
00141$:
;	SRC/lab4.c:208: else if(dip_value == 0x00){
	mov	a,r7
	jnz	00126$
;	SRC/lab4.c:209: if(old_mode==0){
	mov	a,r5
	orl	a,r6
	jnz	00102$
;	SRC/lab4.c:210: ES=0;
	clr	_ES
;	SRC/lab4.c:212: old_mode=1;
	mov	r5,#0x01
	mov	r6,#0x00
00102$:
;	SRC/lab4.c:232: leds(0x00); //убираем сигнал ошибки
	mov	dpl,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_leds
;	SRC/lab4.c:234: c=rsio();
	lcall	_rsio
	mov	r7,dpl
	pop	ar0
;	SRC/lab4.c:235: wsio(c);
	mov	dpl,r7
	push	ar7
	push	ar0
	lcall	_wsio
	pop	ar0
	pop	ar7
;	SRC/lab4.c:246: if(isdigit(c)){
	mov	dpl,r7
	push	ar7
	push	ar0
	lcall	_isdigit
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jz	00118$
;	SRC/lab4.c:247: if(dig_count>=2){
	cjne	r4,#0x02,00145$
00145$:
	jc	00104$
;	SRC/lab4.c:248: error("\r\nТрех- или более значное число\r\n");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_error
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
00104$:
;	SRC/lab4.c:250: str[dig_count]=c;
	mov	a,r4
	add	a,r0
	mov	r1,a
	mov	@r1,ar7
;	SRC/lab4.c:251: dig_count++;
	inc	r4
;	SRC/lab4.c:252: str[dig_count]='\0';
	mov	a,r4
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	ljmp	00126$
00118$:
;	SRC/lab4.c:255: else if(c=='*'){
	cjne	r7,#0x2A,00115$
;	SRC/lab4.c:256: if(dig_count==0){
	mov	a,r4
	jnz	00106$
;	SRC/lab4.c:257: error("\r\nВы не ввели число\r\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_error
	pop	ar0
	pop	ar6
	pop	ar5
	pop	ar4
	ljmp	00126$
00106$:
;	SRC/lab4.c:260: res *= atoi(str);
	push	ar5
	push	ar6
	mov	ar5,r0
	mov	r6,#0x00
	mov	r2,#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r2
	push	ar5
	push	ar6
	push	ar0
	lcall	_atoi
	mov	r2,dpl
	mov	r3,dph
	push	ar2
	push	ar3
	mov	r1,_bp
	inc	r1
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar0
	pop	ar6
	pop	ar5
	mov	r1,_bp
	inc	r1
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
;	SRC/lab4.c:261: dig_count=0;
	mov	r4,#0x00
	pop	ar6
	pop	ar5
	ljmp	00126$
00115$:
;	SRC/lab4.c:264: else if(c=='='){
	cjne	r7,#0x3D,00112$
;	SRC/lab4.c:265: res *= atoi(str);					
	push	ar5
	push	ar6
	mov	ar2,r0
	mov	r3,#0x00
	mov	r5,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	push	ar5
	push	ar6
	push	ar0
	lcall	_atoi
;	SRC/lab4.c:267: type("\r\n");
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_type
	pop	ar0
	pop	ar6
	pop	ar5
;	SRC/lab4.c:269: res = 1;
	mov	r1,_bp
	inc	r1
	mov	@r1,#0x01
	clr	a
	inc	r1
	mov	@r1,a
;	SRC/lab4.c:270: dig_count=0;
	mov	r4,#0x00
	pop	ar6
	pop	ar5
	ljmp	00126$
00112$:
;	SRC/lab4.c:273: if(c!=' ' && c!='\t'){
	cjne	r7,#0x20,00152$
	ljmp	00126$
00152$:
	cjne	r7,#0x09,00153$
	ljmp	00126$
00153$:
;	SRC/lab4.c:275: error("\r\nИнвалидный символ\r\n");
	mov	dptr,#__str_6
	mov	b,#0x80
	push	ar5
	push	ar6
	push	ar0
	lcall	_error
	pop	ar0
	pop	ar6
	pop	ar5
;	SRC/lab4.c:276: res = 1;
	mov	r1,_bp
	inc	r1
	mov	@r1,#0x01
	clr	a
	inc	r1
	mov	@r1,a
;	SRC/lab4.c:277: dig_count=0;
	mov	r4,#0x00
	ljmp	00126$
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "2*5="
	.db 0x00
__str_1:
	.db 0x92
	.db 0xA5
	.db 0xE1
	.db 0xE2
	.ascii " "
	.db 0xA4
	.db 0xE0
	.db 0xA0
	.db 0xA9
	.db 0xA2
	.db 0xA5
	.db 0xE0
	.db 0xA0
	.ascii " SIO "
	.db 0xA4
	.db 0xAB
	.db 0xEF
	.ascii " "
	.db 0xE1
	.db 0xE2
	.db 0xA5
	.db 0xAD
	.db 0xA4
	.db 0xA0
	.ascii " SDK-1.1"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_2:
	.db 0x8D
	.db 0xA0
	.db 0xA6
	.db 0xA8
	.db 0xAC
	.db 0xA0
	.db 0xA9
	.db 0xE2
	.db 0xA5
	.ascii " "
	.db 0xAA
	.db 0xAD
	.db 0xAE
	.db 0xAF
	.db 0xAA
	.db 0xA8
	.ascii " "
	.db 0xA4
	.db 0xAB
	.db 0xEF
	.ascii " "
	.db 0xE2
	.db 0xA5
	.db 0xE1
	.db 0xE2
	.db 0xA8
	.db 0xE0
	.db 0xAE
	.db 0xA2
	.db 0xA0
	.db 0xAD
	.db 0xA8
	.db 0xEF
	.ascii "... "
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_3:
	.db 0x0D
	.db 0x0A
	.db 0x92
	.db 0xE0
	.db 0xA5
	.db 0xE5
	.ascii "- "
	.db 0xA8
	.db 0xAB
	.db 0xA8
	.ascii " "
	.db 0xA1
	.db 0xAE
	.db 0xAB
	.db 0xA5
	.db 0xA5
	.ascii " "
	.db 0xA7
	.db 0xAD
	.db 0xA0
	.db 0xE7
	.db 0xAD
	.db 0xAE
	.db 0xA5
	.ascii " "
	.db 0xE7
	.db 0xA8
	.db 0xE1
	.db 0xAB
	.db 0xAE
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_4:
	.db 0x0D
	.db 0x0A
	.db 0x82
	.db 0xEB
	.ascii " "
	.db 0xAD
	.db 0xA5
	.ascii " "
	.db 0xA2
	.db 0xA2
	.db 0xA5
	.db 0xAB
	.db 0xA8
	.ascii " "
	.db 0xE7
	.db 0xA8
	.db 0xE1
	.db 0xAB
	.db 0xAE
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_5:
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_6:
	.db 0x0D
	.db 0x0A
	.db 0x88
	.db 0xAD
	.db 0xA2
	.db 0xA0
	.db 0xAB
	.db 0xA8
	.db 0xA4
	.db 0xAD
	.db 0xEB
	.db 0xA9
	.ascii " "
	.db 0xE1
	.db 0xA8
	.db 0xAC
	.db 0xA2
	.db 0xAE
	.db 0xAB
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
