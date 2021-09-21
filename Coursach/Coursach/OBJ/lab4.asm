;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 22:49:04 2019
;--------------------------------------------------------
	.module lab4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _PrintConLog
	.globl _DecipherCode
	.globl _CompareEEPROM
	.globl _CompareString
	.globl _PrintTime
	.globl _dip
	.globl _LCD_TypeAnimation
	.globl _PrintString
	.globl _delay
	.globl _CheckTimeLimitSec
	.globl _CheckTimeLimitHsec
	.globl _getTime
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
	.globl _xbuffer
	.globl _user_code
	.globl _service_code
	.globl _CurrentTime
	.globl _StartTime
	.globl _input
	.globl _num_log
	.globl _buffer
	.globl _message
	.globl _PrintNumber
	.globl _log
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_buffer::
	.ds 3
_num_log::
	.ds 1
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
_input::
	.ds 4
_StartTime::
	.ds 4
_CurrentTime::
	.ds 4
_delay_startTime_1_1:
	.ds 4
_delay_currentTime_1_1:
	.ds 4
_PrintConLog_getLog_1_1:
	.ds 5
_log_newLog_1_1:
	.ds 5
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_service_code::
	.ds 4
_user_code::
	.ds 4
_xbuffer::
	.ds 128
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
;	SRC/lab4.c:90: unsigned char* buffer = xbuffer;
	mov	_buffer,#_xbuffer
	mov	(_buffer + 1),#(_xbuffer >> 8)
	mov	(_buffer + 2),#0x00
;	SRC/lab4.c:91: unsigned char num_log = 0;
	mov	_num_log,#0x00
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
;Allocation info for local variables in function 'getTime'
;------------------------------------------------------------
;time                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/lab4.c:109: unsigned char getTime(TIME xdata* time){
;	-----------------------------------------
;	 function getTime
;	-----------------------------------------
_getTime:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/lab4.c:110: if( GetTime(time) ){
	lcall	_GetTime
	mov	a,dpl
	jz	00102$
;	SRC/lab4.c:111: message("GetTime failed"); //log(GETTIME_ERR);
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_message
;	SRC/lab4.c:112: return 1;
	mov	dpl,#0x01
;	SRC/lab4.c:114: return 0;
	ret
00102$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTimeLimitHsec'
;------------------------------------------------------------
;curTime                   Allocated to stack - offset -4
;limit                     Allocated to stack - offset -6
;startTime                 Allocated to stack - offset 1
;sTime                     Allocated to stack - offset 3
;cTime                     Allocated to stack - offset 7
;sloc0                     Allocated to stack - offset 11
;sloc1                     Allocated to stack - offset 15
;------------------------------------------------------------
;	SRC/lab4.c:117: unsigned char CheckTimeLimitHsec(TIME xdata * startTime, TIME xdata * curTime, int limit){
;	-----------------------------------------
;	 function CheckTimeLimitHsec
;	-----------------------------------------
_CheckTimeLimitHsec:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x12
	mov	sp,a
;	SRC/lab4.c:119: unsigned long long sTime = startTime->hour*360000 + startTime->min*6000 + startTime->sec*100 + startTime->hsec; 
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x7E40
	mov	b,#0x05
	clr	a
	lcall	__mullong
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	push	ar2
	push	ar3
	mov	dptr,#0x1770
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	movx	a,@dptr
	mov	b,#0x64
	mul	ab
	mov	r6,a
	mov	a,b
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	a,r5
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r0
	add	a,r6
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r2
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	inc	r1
	mov	@r1,a
;	SRC/lab4.c:120: unsigned long long cTime = curTime->hour*360000   + curTime->min*6000   + curTime->sec*100 + startTime->hsec;
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x7E40
	mov	b,#0x05
	clr	a
	lcall	__mullong
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dptr,#0x1770
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	b,#0x64
	mul	ab
	mov	r6,a
	mov	a,b
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	addc	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	SRC/lab4.c:121: return cTime > sTime + limit;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,@r0
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	a,r2
	inc	r0
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	clr	a
	rlc	a
	mov	dpl,a
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTimeLimitSec'
;------------------------------------------------------------
;curTime                   Allocated to stack - offset -4
;limit                     Allocated to stack - offset -6
;startTime                 Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/lab4.c:123: unsigned char CheckTimeLimitSec(TIME xdata * startTime, TIME xdata * curTime, int limit){
;	-----------------------------------------
;	 function CheckTimeLimitSec
;	-----------------------------------------
_CheckTimeLimitSec:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
;	SRC/lab4.c:124: return CheckTimeLimitHsec(startTime, curTime, limit*100);
	push	ar2
	push	ar3
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	_CheckTimeLimitHsec
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;hsec                      Allocated to registers r2 r3 
;startTime                 Allocated with name '_delay_startTime_1_1'
;currentTime               Allocated with name '_delay_currentTime_1_1'
;------------------------------------------------------------
;	SRC/lab4.c:126: void delay(int hsec){
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dpl
	mov	r3,dph
;	SRC/lab4.c:130: getTime( &startTime );
	mov	dptr,#_delay_startTime_1_1
	push	ar2
	push	ar3
	lcall	_getTime
	pop	ar3
	pop	ar2
;	SRC/lab4.c:131: do{ getTime( &currentTime ); }
00101$:
	mov	dptr,#_delay_currentTime_1_1
	push	ar2
	push	ar3
	lcall	_getTime
	pop	ar3
	pop	ar2
;	SRC/lab4.c:132: while( !CheckTimeLimitHsec( &startTime, &currentTime, hsec ) );
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	mov	a,#_delay_currentTime_1_1
	push	acc
	mov	a,#(_delay_currentTime_1_1 >> 8)
	push	acc
	mov	dptr,#_delay_startTime_1_1
	lcall	_CheckTimeLimitHsec
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PrintString'
;------------------------------------------------------------
;s                         Allocated to stack - offset 1
;i                         Allocated to registers r5 r6 
;isEnd                     Allocated to registers b0 
;------------------------------------------------------------
;	SRC/lab4.c:135: void PrintString(char* s){
;	-----------------------------------------
;	 function PrintString
;	-----------------------------------------
_PrintString:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	SRC/lab4.c:137: bit isEnd = 0;
	clr	b0
;	SRC/lab4.c:138: for(i=0; i<16; i++){
	mov	r5,#0x00
	mov	r6,#0x00
00106$:
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00110$
;	SRC/lab4.c:139: if(s[i]==0){isEnd=1;}
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	jnz	00102$
	setb	b0
00102$:
;	SRC/lab4.c:140: if(isEnd) LCD_Putch(' '); else LCD_Putch(s[i]);
	jnb	b0,00104$
	mov	dpl,#0x20
	push	ar5
	push	ar6
	push	bits
	lcall	_LCD_Putch
	pop	bits
	pop	ar6
	pop	ar5
	sjmp	00108$
00104$:
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	push	ar6
	push	bits
	lcall	_LCD_Putch
	pop	bits
	pop	ar6
	pop	ar5
00108$:
;	SRC/lab4.c:138: for(i=0; i<16; i++){
	inc	r5
	cjne	r5,#0x00,00106$
	inc	r6
	sjmp	00106$
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_TypeAnimation'
;------------------------------------------------------------
;s                         Allocated to stack - offset 1
;ptr                       Allocated to registers r5 r6 r7 
;i                         Allocated to stack - offset 7
;isEnd                     Allocated to stack - offset 9
;length                    Allocated to registers 
;y                         Allocated to registers b0 
;------------------------------------------------------------
;	SRC/lab4.c:155: void LCD_TypeAnimation(char* s){
;	-----------------------------------------
;	 function LCD_TypeAnimation
;	-----------------------------------------
_LCD_TypeAnimation:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	SRC/lab4.c:161: bit y = LCD_GetY();
	lcall	_LCD_GetY
	mov	b0,c
;	SRC/lab4.c:165: LCD_Type("                ");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	bits
	lcall	_LCD_Type
	pop	bits
;	SRC/lab4.c:166: LCD_GotoXY(0,y);
	mov	c,b0
	mov	b[0],c
	push	bits
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
	pop	bits
;	SRC/lab4.c:167: PrintString(ptr++);
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_PrintString
	pop	bits
;	SRC/lab4.c:168: getTime( &StartTime );
	mov	dptr,#_StartTime
	push	bits
	lcall	_getTime
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
;	SRC/lab4.c:170: while( ! ScanKBOnce(&input[0]) ){
00106$:
	mov	dptr,#_input
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_ScanKBOnce
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00115$
	ljmp	00109$
00115$:
;	SRC/lab4.c:172: getTime( &CurrentTime );
	mov	dptr,#_CurrentTime
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_getTime
	pop	bits
;	SRC/lab4.c:173: if(CheckTimeLimitHsec( &StartTime, &CurrentTime, ANIMATION_DELAY_TIME )){
	push	bits
	mov	a,#0x28
	push	acc
	clr	a
	push	acc
	mov	a,#_CurrentTime
	push	acc
	mov	a,#(_CurrentTime >> 8)
	push	acc
	mov	dptr,#_StartTime
	lcall	_CheckTimeLimitHsec
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r2
	jz	00106$
;	SRC/lab4.c:174: getTime( &StartTime );
	mov	dptr,#_StartTime
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_getTime
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
;	SRC/lab4.c:175: if(ptr[15]){
	mov	a,#0x0F
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00102$
;	SRC/lab4.c:176: LCD_Type("                ");
	mov	dptr,#__str_1
	mov	b,#0x80
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_LCD_Type
	pop	bits
;	SRC/lab4.c:177: LCD_GotoXY(0,y);
	mov	c,b0
	mov	b[0],c
	push	bits
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
;	SRC/lab4.c:178: PrintString(ptr++);
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	inc	r5
	cjne	r5,#0x00,00118$
	inc	r6
00118$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	push	ar7
	push	bits
	lcall	_PrintString
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00106$
00102$:
;	SRC/lab4.c:181: ptr = s;
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	ljmp	00106$
00109$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'message'
;------------------------------------------------------------
;msg                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	SRC/lab4.c:188: void message(unsigned char*  msg){
;	-----------------------------------------
;	 function message
;	-----------------------------------------
_message:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	SRC/lab4.c:189: LCD_Clear();
	push	ar2
	push	ar3
	push	ar4
	lcall	_LCD_Clear
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/lab4.c:190: LCD_Type(msg); 
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_LCD_Type
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/lab4.c:191: Type(msg);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_Type
;	SRC/lab4.c:192: Type("\r\n");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_Type
;	SRC/lab4.c:194: delay(DISPLAY_MESSAGE_DELAY_TIME);
	mov	dptr,#0x012C
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'dip'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/lab4.c:198: unsigned char dip(){
;	-----------------------------------------
;	 function dip
;	-----------------------------------------
_dip:
;	SRC/lab4.c:199: return ReadMax(EXT_LO);
	mov	dptr,#0x0002
	ljmp	_ReadMax
;------------------------------------------------------------
;Allocation info for local variables in function 'PrintTime'
;------------------------------------------------------------
;buffer                    Allocated to stack - offset -5
;time                      Allocated to stack - offset 1
;i                         Allocated to registers 
;sloc0                     Allocated to stack - offset 5
;sloc1                     Allocated to stack - offset 4
;------------------------------------------------------------
;	SRC/lab4.c:201: unsigned char* PrintTime(TIME* time, unsigned char* buffer){
;	-----------------------------------------
;	 function PrintTime
;	-----------------------------------------
_PrintTime:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	SRC/lab4.c:204: buffer[i++] = (time->hour / 10 % 10) + '0';
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,#0x0A
	div	ab
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	SRC/lab4.c:205: buffer[i++] = (time->hour % 10) + '0';
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	SRC/lab4.c:206: buffer[i++] = ':';
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3A
	lcall	__gptrput
;	SRC/lab4.c:209: buffer[i++] = (time->min / 10 % 10) + '0';
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x03
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,#0x0A
	div	ab
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	SRC/lab4.c:210: buffer[i++] = (time->min % 10) + '0';
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	SRC/lab4.c:211: buffer[i++] = ':';
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3A
	lcall	__gptrput
;	SRC/lab4.c:214: buffer[i++] = (time->sec / 10 % 10) + '0';
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x06
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,#0x0A
	div	ab
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
;	SRC/lab4.c:215: buffer[i++] = (time->sec % 10) + '0';
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x07
	add	a,r5
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	SRC/lab4.c:216: buffer[i] = '\0';
	mov	a,#0x08
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	SRC/lab4.c:218: return buffer;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CompareString'
;------------------------------------------------------------
;str2                      Allocated to stack - offset -5
;length                    Allocated to stack - offset -6
;str1                      Allocated to stack - offset 1
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	SRC/lab4.c:220: char CompareString(unsigned char* str1, unsigned char* str2, unsigned char length){
;	-----------------------------------------
;	 function CompareString
;	-----------------------------------------
_CompareString:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	SRC/lab4.c:222: for(i = 0; i < length; i++)
	mov	r5,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	clr	c
	mov	a,r5
	subb	a,@r0
	jnc	00106$
;	SRC/lab4.c:223: if( str1[i] != str2[i] )
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,r6
	cjne	a,ar2,00113$
	sjmp	00105$
00113$:
;	SRC/lab4.c:224: return 1;
	mov	dpl,#0x01
	sjmp	00107$
00105$:
;	SRC/lab4.c:222: for(i = 0; i < length; i++)
	inc	r5
	sjmp	00103$
00106$:
;	SRC/lab4.c:225: return 0;
	mov	dpl,#0x00
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CompareEEPROM'
;------------------------------------------------------------
;compStr                   Allocated to stack - offset -5
;length                    Allocated to stack - offset -6
;address                   Allocated to registers r2 
;i                         Allocated to stack - offset 2
;------------------------------------------------------------
;	SRC/lab4.c:227: char CompareEEPROM(unsigned char address, unsigned char* compStr, unsigned char length){
;	-----------------------------------------
;	 function CompareEEPROM
;	-----------------------------------------
_CompareEEPROM:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	SRC/lab4.c:229: if( ReadBlockEEPROM(address, xbuffer, length) ){ 
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,#_xbuffer
	push	acc
	mov	a,#(_xbuffer >> 8)
	push	acc
	mov	dpl,r2
	lcall	_ReadBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	mov	b0,c
	jnc	00102$
;	SRC/lab4.c:230: log(READ_EEPROM_ERR);
	mov	dpl,#0x66
	lcall	_log
;	SRC/lab4.c:231: message("Read EEEPROM error!");
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_message
;	SRC/lab4.c:232: return 2;
	mov	dpl,#0x02
	sjmp	00104$
00102$:
;	SRC/lab4.c:236: return CompareString(buffer, compStr, length);
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,_buffer
	mov	dph,(_buffer + 1)
	mov	b,(_buffer + 2)
	lcall	_CompareString
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00104$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PrintNumber'
;------------------------------------------------------------
;num                       Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	SRC/lab4.c:243: void PrintNumber(unsigned char num){
;	-----------------------------------------
;	 function PrintNumber
;	-----------------------------------------
_PrintNumber:
	mov	r2,dpl
;	SRC/lab4.c:244: char i = 0;
	mov	r3,#0x00
;	SRC/lab4.c:246: buffer[i] = 								(num / 100 % 10) + '0';
	mov	r4,_buffer
	mov	r5,(_buffer + 1)
	mov	r6,(_buffer + 2)
	mov	b,#0x64
	mov	a,r2
	div	ab
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	SRC/lab4.c:247: buffer[buffer[i]=='0' ? i : ++i ] = 		(num / 10 % 10) + '0';
	cjne	r7,#0x30,00103$
	mov	r4,#0x00
	sjmp	00104$
00103$:
	mov	r3,#0x01
	mov	r4,#0x01
00104$:
	mov	a,r4
	add	a,_buffer
	mov	r4,a
	clr	a
	addc	a,(_buffer + 1)
	mov	r5,a
	mov	r6,(_buffer + 2)
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	b,#0x0A
	div	ab
	mov	a,b
	add	a,#0x30
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	SRC/lab4.c:248: buffer[buffer[i]=='0' && i==0 ? i : ++i] = 	(num % 10) + '0';
	mov	a,r3
	add	a,_buffer
	mov	r4,a
	clr	a
	addc	a,(_buffer + 1)
	mov	r5,a
	mov	r6,(_buffer + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x30,00107$
	mov	a,r3
	cjne	a,#0x01,00117$
00117$:
	clr	a
	rlc	a
	mov	r4,a
	jnz	00108$
00107$:
	mov	r4,#0x00
	sjmp	00109$
00108$:
	mov	r4,#0x01
00109$:
	mov	a,r4
	jz	00105$
	mov	ar4,r3
	sjmp	00106$
00105$:
	inc	r3
	mov	ar4,r3
00106$:
	mov	a,r4
	add	a,_buffer
	mov	r4,a
	clr	a
	addc	a,(_buffer + 1)
	mov	r5,a
	mov	r6,(_buffer + 2)
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	a,b
	add	a,#0x30
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	SRC/lab4.c:249: buffer[++i] = 								'\0';
	inc	r3
	mov	a,r3
	add	a,_buffer
	mov	r3,a
	clr	a
	addc	a,(_buffer + 1)
	mov	r2,a
	mov	r4,(_buffer + 2)
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'DecipherCode'
;------------------------------------------------------------
;msg_code                  Allocated to registers r2 
;------------------------------------------------------------
;	SRC/lab4.c:258: void DecipherCode(unsigned char msg_code){
;	-----------------------------------------
;	 function DecipherCode
;	-----------------------------------------
_DecipherCode:
	mov	r2,dpl
;	SRC/lab4.c:259: switch(msg_code){
	cjne	r2,#0x01,00127$
	sjmp	00101$
00127$:
	cjne	r2,#0x02,00128$
	sjmp	00102$
00128$:
	cjne	r2,#0x04,00129$
	sjmp	00106$
00129$:
	cjne	r2,#0x05,00130$
	sjmp	00107$
00130$:
	cjne	r2,#0x08,00131$
	ljmp	00109$
00131$:
	cjne	r2,#0x0A,00132$
	sjmp	00103$
00132$:
	cjne	r2,#0x0B,00133$
	sjmp	00104$
00133$:
	cjne	r2,#0x14,00134$
	sjmp	00105$
00134$:
	cjne	r2,#0x15,00135$
	sjmp	00108$
00135$:
	ljmp	00110$
;	SRC/lab4.c:260: case START:
00101$:
;	SRC/lab4.c:261: LCD_TypeAnimation("Start");
	mov	dptr,#__str_4
	mov	b,#0x80
;	SRC/lab4.c:262: break;
	ljmp	_LCD_TypeAnimation
;	SRC/lab4.c:263: case INITIALIZATION:
00102$:
;	SRC/lab4.c:264: LCD_TypeAnimation("Initialization");
	mov	dptr,#__str_5
	mov	b,#0x80
;	SRC/lab4.c:265: break;
	ljmp	_LCD_TypeAnimation
;	SRC/lab4.c:266: case SERVICE_LOGIN_SUCCEED:
00103$:
;	SRC/lab4.c:267: LCD_TypeAnimation("Service login succeed");
	mov	dptr,#__str_6
	mov	b,#0x80
;	SRC/lab4.c:268: break;
	ljmp	_LCD_TypeAnimation
;	SRC/lab4.c:269: case SERVICE_MENU_TIMELIMIT_EXCCEEDED:
00104$:
;	SRC/lab4.c:270: LCD_TypeAnimation("Time limit in the service menu exceeded!");
	mov	dptr,#__str_7
	mov	b,#0x80
;	SRC/lab4.c:271: break;
;	SRC/lab4.c:272: case USER_LOGIN_SUCCEED:
	ljmp	_LCD_TypeAnimation
00105$:
;	SRC/lab4.c:273: LCD_TypeAnimation("User login succeed");
	mov	dptr,#__str_8
	mov	b,#0x80
;	SRC/lab4.c:274: break;
;	SRC/lab4.c:275: case DOOR_IS_OPEN:
	ljmp	_LCD_TypeAnimation
00106$:
;	SRC/lab4.c:276: LCD_TypeAnimation("Door is open");
	mov	dptr,#__str_9
	mov	b,#0x80
;	SRC/lab4.c:277: break;
;	SRC/lab4.c:278: case DOOR_IS_CLOSE:
	ljmp	_LCD_TypeAnimation
00107$:
;	SRC/lab4.c:279: LCD_TypeAnimation("Door is close");
	mov	dptr,#__str_10
	mov	b,#0x80
;	SRC/lab4.c:280: break;
;	SRC/lab4.c:281: case INCORRECT_CODE:
	ljmp	_LCD_TypeAnimation
00108$:
;	SRC/lab4.c:282: LCD_TypeAnimation("Incorrect code");
	mov	dptr,#__str_11
	mov	b,#0x80
;	SRC/lab4.c:283: break;
;	SRC/lab4.c:284: case INPUT_CANCELED:
	ljmp	_LCD_TypeAnimation
00109$:
;	SRC/lab4.c:285: LCD_TypeAnimation("Input canceled");
	mov	dptr,#__str_12
	mov	b,#0x80
;	SRC/lab4.c:286: break;
;	SRC/lab4.c:287: default:
	ljmp	_LCD_TypeAnimation
00110$:
;	SRC/lab4.c:288: PrintNumber(msg_code);
	mov	dpl,r2
	lcall	_PrintNumber
;	SRC/lab4.c:289: LCD_Type(buffer);
	mov	r2,_buffer
	mov	r3,(_buffer + 1)
	mov	r4,(_buffer + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_LCD_Type
;	SRC/lab4.c:290: while( ! ScanKBOnce(&input[0]) ){}
00111$:
	mov	dptr,#_input
	mov	b,#0x00
	lcall	_ScanKBOnce
	jnc	00111$
;	SRC/lab4.c:292: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PrintConLog'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;getLog                    Allocated with name '_PrintConLog_getLog_1_1'
;------------------------------------------------------------
;	SRC/lab4.c:295: void PrintConLog(unsigned char i){
;	-----------------------------------------
;	 function PrintConLog
;	-----------------------------------------
_PrintConLog:
;	SRC/lab4.c:297: if( ReadBlockEEPROM(LOG_ADDRESS(i), (unsigned char xdata *)&getLog, sizeof(LOG_ENTRY)) ){ 
	mov	a,dpl
	mov	r2,a
	mov	b,#0x05
	mul	ab
	mov	dpl,a
	mov	dph,b
	push	ar2
	mov	a,#0x73
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r3,dpl
	dec	sp
	dec	sp
	mov	a,#0x0A
	add	a,r3
	mov	dpl,a
	mov	a,#0x05
	push	acc
	mov	a,#_PrintConLog_getLog_1_1
	push	acc
	mov	a,#(_PrintConLog_getLog_1_1 >> 8)
	push	acc
	lcall	_ReadBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	mov	b0,c
	jnc	00102$
;	SRC/lab4.c:298: message("Read EEEPROM error!");//log(READ_EEPROM_ERR);
	mov	dptr,#__str_3
	mov	b,#0x80
	ljmp	_message
00102$:
;	SRC/lab4.c:302: LCD_Clear();
	push	ar2
	lcall	_LCD_Clear
;	SRC/lab4.c:303: LCD_GotoXY(0,0);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
;	SRC/lab4.c:304: LCD_Type("#");
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_LCD_Type
	pop	ar2
;	SRC/lab4.c:305: PrintNumber(i);		
	mov	dpl,r2
	lcall	_PrintNumber
;	SRC/lab4.c:306: LCD_Type(buffer);
	mov	r2,_buffer
	mov	r3,(_buffer + 1)
	mov	r4,(_buffer + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_LCD_Type
;	SRC/lab4.c:307: LCD_GotoXY(8,0);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x08
	lcall	_LCD_GotoXY
;	SRC/lab4.c:308: PrintTime((TIME *)&getLog.time, buffer);
	push	_buffer
	push	(_buffer + 1)
	push	(_buffer + 2)
	mov	dptr,#_PrintConLog_getLog_1_1
	mov	b,#0x00
	lcall	_PrintTime
	dec	sp
	dec	sp
	dec	sp
;	SRC/lab4.c:309: LCD_Type(buffer);
	mov	r2,_buffer
	mov	r3,(_buffer + 1)
	mov	r4,(_buffer + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_LCD_Type
;	SRC/lab4.c:310: LCD_GotoXY(0,1);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
;	SRC/lab4.c:311: DecipherCode(getLog.msg_code);
	mov	dptr,#(_PrintConLog_getLog_1_1 + 0x0004)
	movx	a,@dptr
	mov	dpl,a
	ljmp	_DecipherCode
;------------------------------------------------------------
;Allocation info for local variables in function 'log'
;------------------------------------------------------------
;msg_code                  Allocated to registers r2 
;newLog                    Allocated with name '_log_newLog_1_1'
;------------------------------------------------------------
;	SRC/lab4.c:315: unsigned char log(unsigned char msg_code){
;	-----------------------------------------
;	 function log
;	-----------------------------------------
_log:
	mov	r2,dpl
;	SRC/lab4.c:336: getTime((TIME xdata *)&newLog.time);
	mov	dptr,#_log_newLog_1_1
	push	ar2
	lcall	_getTime
	pop	ar2
;	SRC/lab4.c:337: newLog.msg_code = msg_code;
	mov	dptr,#(_log_newLog_1_1 + 0x0004)
	mov	a,r2
	movx	@dptr,a
;	SRC/lab4.c:339: if( WriteBlockEEPROM(LOG_ADDRESS(num_log), (unsigned char xdata *)&newLog, sizeof(LOG_ENTRY)) ){	
	mov	a,_num_log
	mov	b,#0x05
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	a,#0x73
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r2,dpl
	dec	sp
	dec	sp
	mov	a,#0x0A
	add	a,r2
	mov	dpl,a
	mov	a,#0x05
	push	acc
	mov	a,#_log_newLog_1_1
	push	acc
	mov	a,#(_log_newLog_1_1 >> 8)
	push	acc
	lcall	_WriteBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	mov	b0,c
	jnc	00102$
;	SRC/lab4.c:340: message("Write error!"); //log
	mov	dptr,#__str_14
	mov	b,#0x80
	lcall	_message
;	SRC/lab4.c:341: return 1;
	mov	dpl,#0x01
	ret
00102$:
;	SRC/lab4.c:344: num_log++;  
	inc	_num_log
;	SRC/lab4.c:346: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r4 
;cur_log                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/lab4.c:352: void main( void ){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	SRC/lab4.c:355: int cur_log = 0;
	mov	r2,#0x00
	mov	r3,#0x00
;	SRC/lab4.c:360: log(START);
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_log
;	SRC/lab4.c:361: InitSIO(S9600, 0);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0xFD
	lcall	_InitSIO
;	SRC/lab4.c:362: Type("Initialization\r\n");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_Type
;	SRC/lab4.c:363: log(INITIALIZATION);
	mov	dpl,#0x02
	lcall	_log
;	SRC/lab4.c:364: InitLCD(); 
	lcall	_InitLCD
;	SRC/lab4.c:366: if( CompareEEPROM(MAGIC_NUMBER_ADDRESS, MAGIC_NUMBER, 2)){//нет магии
	mov	a,#0x02
	push	acc
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#0x00
	lcall	_CompareEEPROM
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jnz	00243$
	ljmp	00108$
00243$:
;	SRC/lab4.c:367: log(NO_MAGIC);
	mov	dpl,#0x06
	push	ar2
	push	ar3
	lcall	_log
;	SRC/lab4.c:368: Type("Magic not found!\r\n");
	mov	dptr,#__str_17
	mov	b,#0x80
	lcall	_Type
	pop	ar3
	pop	ar2
;	SRC/lab4.c:371: for(i = 0; i < 2;  i++) //Записать магическое число
	mov	r4,#0x00
00176$:
	cjne	r4,#0x02,00244$
00244$:
	jnc	00179$
;	SRC/lab4.c:372: buffer[i] = MAGIC_NUMBER[i];
	push	ar2
	push	ar3
	mov	a,r4
	add	a,_buffer
	mov	r5,a
	clr	a
	addc	a,(_buffer + 1)
	mov	r6,a
	mov	r7,(_buffer + 2)
	mov	a,r4
	mov	dptr,#__str_16
	movc	a,@a+dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	SRC/lab4.c:371: for(i = 0; i < 2;  i++) //Записать магическое число
	inc	r4
	pop	ar3
	pop	ar2
	sjmp	00176$
00179$:
;	SRC/lab4.c:373: for(i = 0; i < 4;  i++) //Записать сервисный код по-умолчанию
	mov	r4,#0x00
00180$:
	cjne	r4,#0x04,00246$
00246$:
	jnc	00183$
;	SRC/lab4.c:374: buffer[i+2] = DEFAULT_SERVICE_CODE[i];
	push	ar2
	push	ar3
	mov	ar5,r4
	mov	r6,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,_buffer
	mov	r5,a
	mov	a,r6
	addc	a,(_buffer + 1)
	mov	r6,a
	mov	r7,(_buffer + 2)
	mov	a,r4
	mov	dptr,#__str_18
	movc	a,@a+dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	SRC/lab4.c:373: for(i = 0; i < 4;  i++) //Записать сервисный код по-умолчанию
	inc	r4
	pop	ar3
	pop	ar2
	sjmp	00180$
00183$:
;	SRC/lab4.c:375: for(i = 0; i < 4;  i++) //Записать пользовательский код по-умолчанию
	mov	r4,#0x00
00184$:
	cjne	r4,#0x04,00248$
00248$:
	jnc	00187$
;	SRC/lab4.c:376: buffer[i+6] = DEFAULT_USER_CODE[i];	
	push	ar2
	push	ar3
	mov	ar5,r4
	mov	r6,#0x00
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,r5
	add	a,_buffer
	mov	r5,a
	mov	a,r6
	addc	a,(_buffer + 1)
	mov	r6,a
	mov	r7,(_buffer + 2)
	mov	a,r4
	mov	dptr,#__str_19
	movc	a,@a+dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	SRC/lab4.c:375: for(i = 0; i < 4;  i++) //Записать пользовательский код по-умолчанию
	inc	r4
	pop	ar3
	pop	ar2
	sjmp	00184$
00187$:
;	SRC/lab4.c:378: if( WriteBlockEEPROM(EEPROM_START_ADDRESS, xbuffer, 2+4+4) ){
	push	ar2
	push	ar3
	mov	a,#0x0A
	push	acc
	mov	a,#_xbuffer
	push	acc
	mov	a,#(_xbuffer >> 8)
	push	acc
	mov	dpl,#0x00
	lcall	_WriteBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	b0,c
	jc	00250$
	ljmp	00174$
00250$:
;	SRC/lab4.c:381: LCD_Type("Write error!"); 
	mov	dptr,#__str_14
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_LCD_Type
;	SRC/lab4.c:382: Type("Failure during setting default service code\r\n");
	mov	dptr,#__str_20
	mov	b,#0x80
	lcall	_Type
	pop	ar3
	pop	ar2
	sjmp	00174$
00108$:
;	SRC/lab4.c:390: Type("Magic found!\r\n");
	mov	dptr,#__str_21
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_Type
;	SRC/lab4.c:391: if( ReadBlockEEPROM(SERVICE_CODE_ADDRESS, service_code, 4) ) //Чтение сервисного кода
	mov	a,#0x04
	push	acc
	mov	a,#_service_code
	push	acc
	mov	a,#(_service_code >> 8)
	push	acc
	mov	dpl,#0x02
	lcall	_ReadBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	b0,c
	jnc	00104$
;	SRC/lab4.c:392: message("Read EEEPROM error!");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
	pop	ar3
	pop	ar2
00104$:
;	SRC/lab4.c:393: if( ReadBlockEEPROM(USER_CODE_ADDRESS, user_code, 4) )//Чтение пользовательского кода
	push	ar2
	push	ar3
	mov	a,#0x04
	push	acc
	mov	a,#_user_code
	push	acc
	mov	a,#(_user_code >> 8)
	push	acc
	mov	dpl,#0x06
	lcall	_ReadBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	b0,c
	jnc	00174$
;	SRC/lab4.c:394: message("Read EEEPROM error!");
	mov	dptr,#__str_3
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
	pop	ar3
	pop	ar2
;	SRC/lab4.c:398: while(1){ //основной цикл
00174$:
;	SRC/lab4.c:399: WriteMax(LEDLINE, 0);
	push	ar2
	push	ar3
	clr	a
	push	acc
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
;	SRC/lab4.c:400: LCD_Clear();
	lcall	_LCD_Clear
;	SRC/lab4.c:402: LCD_Type("    Password:   "); //предложение ввода
	mov	dptr,#__str_22
	mov	b,#0x80
	lcall	_LCD_Type
	pop	ar3
	pop	ar2
;	SRC/lab4.c:404: for(i=0; i<4; i++){
	mov	r4,#0x00
00188$:
	cjne	r4,#0x04,00253$
00253$:
	jc	00254$
	ljmp	00191$
00254$:
;	SRC/lab4.c:405: while( ! ScanKBOnce(&input[i]) ){
00118$:
	mov	a,r4
	add	a,#_input
	mov	r5,a
	clr	a
	addc	a,#(_input >> 8)
	mov	r6,a
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	_ScanKBOnce
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00120$
;	SRC/lab4.c:407: if( i>0 && !getTime(&CurrentTime) ){
	mov	a,r4
	jz	00118$
	mov	dptr,#_CurrentTime
	push	ar2
	push	ar3
	push	ar4
	lcall	_getTime
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00118$
;	SRC/lab4.c:414: if( CheckTimeLimitSec(&StartTime, &CurrentTime, INPUT_CODE_TIME_LIMIT) ){
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0xDC
	push	acc
	mov	a,#0x05
	push	acc
	mov	a,#_CurrentTime
	push	acc
	mov	a,#(_CurrentTime >> 8)
	push	acc
	mov	dptr,#_StartTime
	lcall	_CheckTimeLimitSec
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r5
	jz	00118$
;	SRC/lab4.c:415: message("Input code time limit exceeded!"); //log("Input code time limit exceeded!");
	mov	dptr,#__str_23
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
	pop	ar3
	pop	ar2
;	SRC/lab4.c:416: goto wait;
	ljmp	00174$
00120$:
;	SRC/lab4.c:421: if(i==0) getTime(&StartTime); //начало отсчета
	mov	a,r4
	jnz	00122$
	mov	dptr,#_StartTime
	push	ar2
	push	ar3
	push	ar4
	lcall	_getTime
	pop	ar4
	pop	ar3
	pop	ar2
00122$:
;	SRC/lab4.c:422: if(input[i]=='C'){
	mov	a,r4
	add	a,#_input
	mov	dpl,a
	clr	a
	addc	a,#(_input >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x43,00126$
;	SRC/lab4.c:423: log(INPUT_CANCELED);
	mov	dpl,#0x08
	push	ar2
	push	ar3
	lcall	_log
	pop	ar3
	pop	ar2
;	SRC/lab4.c:424: goto wait;
	ljmp	00174$
;	SRC/lab4.c:429: LCD_Putch(input[i]);
00126$:
;	SRC/lab4.c:431: WriteMax(LEDLINE, POW2((i+1)*2) - 1);
	mov	a,r4
	inc	a
	mov	r5,a
	add	a,acc
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00264$
00262$:
	add	a,acc
00264$:
	djnz	b,00262$
	dec	a
	mov	r6,a
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
	pop	ar5
	pop	ar3
	pop	ar2
;	SRC/lab4.c:404: for(i=0; i<4; i++){
	mov	ar4,r5
	ljmp	00188$
00191$:
;	SRC/lab4.c:434: delay(20);
	mov	dptr,#0x0014
	push	ar2
	push	ar3
	lcall	_delay
;	SRC/lab4.c:435: WriteMax(LEDLINE, 0);//убираем светодиоды
	clr	a
	push	acc
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
;	SRC/lab4.c:440: if(CompareString(service_code, input, 4))
	mov	a,#0x04
	push	acc
	mov	a,#_input
	push	acc
	mov	a,#(_input >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_service_code
	mov	b,#0x00
	lcall	_CompareString
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r5
	jz	00168$
;	SRC/lab4.c:441: Type("Not a service code\r\n");
	mov	dptr,#__str_24
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_Type
	pop	ar3
	pop	ar2
	ljmp	00169$
00168$:
;	SRC/lab4.c:443: log(SERVICE_LOGIN_SUCCEED);
	mov	dpl,#0x0A
	push	ar2
	push	ar3
	lcall	_log
;	SRC/lab4.c:445: LCD_Clear();
	lcall	_LCD_Clear
;	SRC/lab4.c:446: LCD_Type("  Service Menu: "); 
	mov	dptr,#__str_25
	mov	b,#0x80
	lcall	_LCD_Type
;	SRC/lab4.c:449: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	SRC/lab4.c:450: LCD_Clear();
	lcall	_LCD_Clear
;	SRC/lab4.c:451: LCD_Type("2 - View logs");
	mov	dptr,#__str_26
	mov	b,#0x80
	lcall	_LCD_Type
;	SRC/lab4.c:452: LCD_GotoXY(0,1);
	setb	b[0]
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
;	SRC/lab4.c:453: LCD_Type("5 - Change code");			
	mov	dptr,#__str_27
	mov	b,#0x80
	lcall	_LCD_Type
;	SRC/lab4.c:455: getTime(&StartTime);
	mov	dptr,#_StartTime
	lcall	_getTime
	pop	ar3
	pop	ar2
;	SRC/lab4.c:456: while( ! ScanKBOnce(&input[0]) ){
00129$:
	mov	dptr,#_input
	mov	b,#0x00
	push	ar2
	push	ar3
	lcall	_ScanKBOnce
	pop	ar3
	pop	ar2
	jc	00131$
;	SRC/lab4.c:458: getTime(&CurrentTime);
	mov	dptr,#_CurrentTime
	push	ar2
	push	ar3
	lcall	_getTime
;	SRC/lab4.c:460: if( CheckTimeLimitSec(&StartTime, &CurrentTime, SERVICE_MENU_TIME_LIMIT) ){
	mov	a,#0x70
	push	acc
	mov	a,#0x17
	push	acc
	mov	a,#_CurrentTime
	push	acc
	mov	a,#(_CurrentTime >> 8)
	push	acc
	mov	dptr,#_StartTime
	lcall	_CheckTimeLimitSec
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r5
	jz	00129$
;	SRC/lab4.c:461: LCD_Type("Leaving the service menu");
	mov	dptr,#__str_28
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_LCD_Type
;	SRC/lab4.c:462: Type("Time limit in the service menu exceeded!\r\n");
	mov	dptr,#__str_29
	mov	b,#0x80
	lcall	_Type
;	SRC/lab4.c:463: log(SERVICE_MENU_TIMELIMIT_EXCCEEDED);
	mov	dpl,#0x0B
	lcall	_log
	pop	ar3
	pop	ar2
;	SRC/lab4.c:464: goto wait;
	ljmp	00174$
00131$:
;	SRC/lab4.c:467: switch(input[0] - '0'){
	mov	dptr,#_input
	movx	a,@dptr
	mov	r5,a
	mov	r7,#0x00
	add	a,#0xd0
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	cjne	r6,#0x02,00268$
	cjne	r7,#0x00,00268$
	ljmp	00236$
00268$:
	cjne	r6,#0x05,00269$
	cjne	r7,#0x00,00269$
	sjmp	00270$
00269$:
	ljmp	00163$
00270$:
;	SRC/lab4.c:469: LCD_Clear();
	push	ar2
	push	ar3
	lcall	_LCD_Clear
;	SRC/lab4.c:470: LCD_GotoXY(0,0);
	clr	b[0]
	mov	bits,b
	mov	dpl,#0x00
	lcall	_LCD_GotoXY
;	SRC/lab4.c:471: LCD_Type(" Enter new code "); 
	mov	dptr,#__str_30
	mov	b,#0x80
	lcall	_LCD_Type
	pop	ar3
	pop	ar2
;	SRC/lab4.c:472: for(i=0; i<4; i++){
	mov	r4,#0x00
00192$:
	cjne	r4,#0x04,00271$
00271$:
	jnc	00195$
;	SRC/lab4.c:473: while( ! ScanKBOnce(&input[i]) ){}
00133$:
	push	ar2
	push	ar3
	mov	a,r4
	add	a,#_input
	mov	r6,a
	clr	a
	addc	a,#(_input >> 8)
	mov	r7,a
	mov	r2,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	push	ar2
	push	ar3
	push	ar4
	lcall	_ScanKBOnce
	pop	ar4
	pop	ar3
	pop	ar2
	clr	a
	rlc	a
	pop	ar3
	pop	ar2
	jz	00133$
;	SRC/lab4.c:478: if(input[i]=='C'){
	mov	a,r4
	add	a,#_input
	mov	dpl,a
	clr	a
	addc	a,#(_input >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x43,00139$
;	SRC/lab4.c:479: log(INPUT_CANCELED);
	mov	dpl,#0x08
	push	ar2
	push	ar3
	lcall	_log
	pop	ar3
	pop	ar2
;	SRC/lab4.c:480: goto wait;
	ljmp	00174$
00139$:
;	SRC/lab4.c:482: WriteMax(LEDLINE, POW2((i+1)*2) - 1);
	mov	a,r4
	inc	a
	mov	r6,a
	add	a,acc
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00278$
00276$:
	add	a,acc
00278$:
	djnz	b,00276$
	dec	a
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
	pop	ar6
	pop	ar3
	pop	ar2
;	SRC/lab4.c:472: for(i=0; i<4; i++){
	mov	ar4,r6
	ljmp	00192$
00195$:
;	SRC/lab4.c:484: delay(30);
	mov	dptr,#0x001E
	push	ar2
	push	ar3
	lcall	_delay
;	SRC/lab4.c:485: WriteMax(LEDLINE, 0);
	clr	a
	push	acc
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
;	SRC/lab4.c:487: if( WriteBlockEEPROM(USER_CODE_ADDRESS, input, 4 )){
	mov	a,#0x04
	push	acc
	mov	a,#_input
	push	acc
	mov	a,#(_input >> 8)
	push	acc
	mov	dpl,#0x06
	lcall	_WriteBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	b0,c
	jnc	00141$
;	SRC/lab4.c:488: message("WriteBlockEEPROM error");
	mov	dptr,#__str_31
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
;	SRC/lab4.c:489: Type("Failure during setting new user code\r\n");
	mov	dptr,#__str_32
	mov	b,#0x80
	lcall	_Type
	pop	ar3
	pop	ar2
00141$:
;	SRC/lab4.c:491: if( ReadBlockEEPROM(USER_CODE_ADDRESS, user_code, 4 )){
	push	ar2
	push	ar3
	mov	a,#0x04
	push	acc
	mov	a,#_user_code
	push	acc
	mov	a,#(_user_code >> 8)
	push	acc
	mov	dpl,#0x06
	lcall	_ReadBlockEEPROM
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
	mov	b0,c
	jnc	00143$
;	SRC/lab4.c:492: message("ReadBlockEEPROM error");
	mov	dptr,#__str_33
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
;	SRC/lab4.c:493: Type("Failure during setting new user code\r\n");
	mov	dptr,#__str_32
	mov	b,#0x80
	lcall	_Type
	pop	ar3
	pop	ar2
00143$:
;	SRC/lab4.c:495: if(CompareString(user_code, input, 4)){
	push	ar2
	push	ar3
	mov	a,#0x04
	push	acc
	mov	a,#_input
	push	acc
	mov	a,#(_input >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_user_code
	mov	b,#0x00
	lcall	_CompareString
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	00145$
;	SRC/lab4.c:497: message("CompareString error");
	mov	dptr,#__str_34
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
	pop	ar3
	pop	ar2
00145$:
;	SRC/lab4.c:499: message("User code successfully changed");
	mov	dptr,#__str_35
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
	pop	ar3
	pop	ar2
;	SRC/lab4.c:500: break;
	ljmp	00174$
;	SRC/lab4.c:502: do {
00236$:
00160$:
;	SRC/lab4.c:503: if(cur_log>=0 && cur_log<num_log) //не совсем так
	mov	a,r3
	jb	acc.7,00148$
	mov	r4,_num_log
	mov	r6,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00148$
;	SRC/lab4.c:504: PrintConLog(cur_log);				
	mov	dpl,r2
	push	ar2
	push	ar3
	lcall	_PrintConLog
	pop	ar3
	pop	ar2
00148$:
;	SRC/lab4.c:507: if(input[0]=='A')
	mov	dptr,#_input
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x41,00154$
;	SRC/lab4.c:508: if(cur_log==0) 			{LCD_Clear(); LCD_Type("Reached the start of the list."); delay(100);}
	mov	a,r2
	orl	a,r3
	jnz	00151$
	push	ar2
	push	ar3
	lcall	_LCD_Clear
	mov	dptr,#__str_36
	mov	b,#0x80
	lcall	_LCD_Type
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar3
	pop	ar2
	sjmp	00154$
00151$:
;	SRC/lab4.c:509: else cur_log--;	
	dec	r2
	cjne	r2,#0xff,00287$
	dec	r3
00287$:
00154$:
;	SRC/lab4.c:510: if(input[0]=='D')
	mov	dptr,#_input
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x44,00161$
;	SRC/lab4.c:511: if(cur_log==num_log-1)  {LCD_Clear(); LCD_Type("Reached the end of the list."); delay(100); }
	mov	r4,_num_log
	mov	r6,#0x00
	dec	r4
	cjne	r4,#0xff,00290$
	dec	r6
00290$:
	mov	a,r2
	cjne	a,ar4,00156$
	mov	a,r3
	cjne	a,ar6,00156$
	push	ar2
	push	ar3
	lcall	_LCD_Clear
	mov	dptr,#__str_37
	mov	b,#0x80
	lcall	_LCD_Type
	mov	dptr,#0x0064
	lcall	_delay
	pop	ar3
	pop	ar2
	sjmp	00161$
00156$:
;	SRC/lab4.c:512: else cur_log++;								
	inc	r2
	cjne	r2,#0x00,00293$
	inc	r3
00293$:
00161$:
;	SRC/lab4.c:513: }while(input[0]!='C');
	mov	dptr,#_input
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x43,00294$
	sjmp	00295$
00294$:
	ljmp	00160$
00295$:
;	SRC/lab4.c:514: break;
	ljmp	00174$
;	SRC/lab4.c:515: default:
00163$:
;	SRC/lab4.c:516: if(input[0]=='C'){
	cjne	r5,#0x43,00296$
	sjmp	00297$
00296$:
	ljmp	00174$
00297$:
;	SRC/lab4.c:517: log(INPUT_CANCELED);
	mov	dpl,#0x08
	push	ar2
	push	ar3
	lcall	_log
	pop	ar3
	pop	ar2
;	SRC/lab4.c:518: goto wait;
	ljmp	00174$
;	SRC/lab4.c:522: goto wait;
00169$:
;	SRC/lab4.c:527: if(CompareString(user_code, input, 4)){
	push	ar2
	push	ar3
	mov	a,#0x04
	push	acc
	mov	a,#_input
	push	acc
	mov	a,#(_input >> 8)
	push	acc
	clr	a
	push	acc
	mov	dptr,#_user_code
	mov	b,#0x00
	lcall	_CompareString
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	00171$
;	SRC/lab4.c:528: message(" Incorrect code ");
	mov	dptr,#__str_38
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_message
;	SRC/lab4.c:529: log(INCORRECT_CODE);
	mov	dpl,#0x15
	lcall	_log
	pop	ar3
	pop	ar2
	ljmp	00174$
00171$:
;	SRC/lab4.c:533: WriteMax(LEDLINE, 0xAA);
	push	ar2
	push	ar3
	mov	a,#0xAA
	push	acc
	mov	dptr,#0x0007
	lcall	_WriteMax
	dec	sp
;	SRC/lab4.c:535: LCD_Clear();
	lcall	_LCD_Clear
;	SRC/lab4.c:536: LCD_Type("  Door is open! ");
	mov	dptr,#__str_39
	mov	b,#0x80
	lcall	_LCD_Type
;	SRC/lab4.c:537: LCD_Type("   Come on in!  ");
	mov	dptr,#__str_40
	mov	b,#0x80
	lcall	_LCD_Type
;	SRC/lab4.c:538: log(DOOR_IS_OPEN);
	mov	dpl,#0x04
	lcall	_log
;	SRC/lab4.c:540: delay(DOOR_OPEN_TIME_LIMIT);
	mov	dptr,#0x01F4
	lcall	_delay
;	SRC/lab4.c:541: log(DOOR_IS_CLOSE);
	mov	dpl,#0x05
	lcall	_log
	pop	ar3
	pop	ar2
	ljmp	00174$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "GetTime failed"
	.db 0x00
__str_1:
	.ascii "                "
	.db 0x00
__str_2:
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "Read EEEPROM error!"
	.db 0x00
__str_4:
	.ascii "Start"
	.db 0x00
__str_5:
	.ascii "Initialization"
	.db 0x00
__str_6:
	.ascii "Service login succeed"
	.db 0x00
__str_7:
	.ascii "Time limit in the service menu exceeded!"
	.db 0x00
__str_8:
	.ascii "User login succeed"
	.db 0x00
__str_9:
	.ascii "Door is open"
	.db 0x00
__str_10:
	.ascii "Door is close"
	.db 0x00
__str_11:
	.ascii "Incorrect code"
	.db 0x00
__str_12:
	.ascii "Input canceled"
	.db 0x00
__str_13:
	.ascii "#"
	.db 0x00
__str_14:
	.ascii "Write error!"
	.db 0x00
__str_15:
	.ascii "Initialization"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_16:
	.ascii "BS"
	.db 0x00
__str_17:
	.ascii "Magic not found!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_18:
	.ascii "8888"
	.db 0x00
__str_19:
	.ascii "5555"
	.db 0x00
__str_20:
	.ascii "Failure during setting default service code"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_21:
	.ascii "Magic found!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_22:
	.ascii "    Password:   "
	.db 0x00
__str_23:
	.ascii "Input code time limit exceeded!"
	.db 0x00
__str_24:
	.ascii "Not a service code"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_25:
	.ascii "  Service Menu: "
	.db 0x00
__str_26:
	.ascii "2 - View logs"
	.db 0x00
__str_27:
	.ascii "5 - Change code"
	.db 0x00
__str_28:
	.ascii "Leaving the service menu"
	.db 0x00
__str_29:
	.ascii "Time limit in the service menu exceeded!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_30:
	.ascii " Enter new code "
	.db 0x00
__str_31:
	.ascii "WriteBlockEEPROM error"
	.db 0x00
__str_32:
	.ascii "Failure during setting new user code"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_33:
	.ascii "ReadBlockEEPROM error"
	.db 0x00
__str_34:
	.ascii "CompareString error"
	.db 0x00
__str_35:
	.ascii "User code successfully changed"
	.db 0x00
__str_36:
	.ascii "Reached the start of the list."
	.db 0x00
__str_37:
	.ascii "Reached the end of the list."
	.db 0x00
__str_38:
	.ascii " Incorrect code "
	.db 0x00
__str_39:
	.ascii "  Door is open! "
	.db 0x00
__str_40:
	.ascii "   Come on in!  "
	.db 0x00
	.area XINIT   (CODE)
__xinit__service_code:
	.ascii "8888"
__xinit__user_code:
	.ascii "5555"
__xinit__xbuffer:
	.db #0x30
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.area CABS    (ABS,CODE)
