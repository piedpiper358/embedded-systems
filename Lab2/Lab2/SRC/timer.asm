;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Nov 29 14:32:32 2018
;--------------------------------------------------------
	.module timer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DelayMs
	.globl _DTimeMs
	.globl _GetMsCounter
	.globl _InitSysTimer
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
	.globl _SYS_TIMER_ISR
	.globl _SetVector
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
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
___systime:
	.ds 4
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
;	SRC/timer.c:16: static unsigned long __systime = 0;
	clr	a
	mov	___systime,a
	mov	(___systime + 1),a
	mov	(___systime + 2),a
	mov	(___systime + 3),a
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
;Allocation info for local variables in function 'InitSysTimer'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/timer.c:22: void InitSysTimer( void ){
;	-----------------------------------------
;	 function InitSysTimer
;	-----------------------------------------
_InitSysTimer:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/timer.c:24: TR=0x0;
	clr	_TR1
;	SRC/timer.c:35: TMOD = TMOD & ~(GATE | CT | M1) | M0;
	mov	r2,_TMOD
	mov	a,#0x1F
	anl	a,r2
	mov	b,a
	mov	a,#0x10
	orl	a,b
	mov	_TMOD,a
;	SRC/timer.c:38: TH = 0xFC;
	mov	_TH1,#0xFC
;	SRC/timer.c:39: TL = 0x66; 
	mov	_TL1,#0x66
;	SRC/timer.c:41: TR=0x1;
	setb	_TR1
;	SRC/timer.c:43: SetVector( vec, (void *)SYS_TIMER_ISR );
	mov	r2,#_SYS_TIMER_ISR
	mov	r3,#(_SYS_TIMER_ISR >> 8)
	mov	r4,#0x80
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#0x201B
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
;	SRC/timer.c:45: ET = 1; 
	setb	_ET1
;	SRC/timer.c:47: EA = 1;
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SYS_TIMER_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/timer.c:53: void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ ){
;	-----------------------------------------
;	 function SYS_TIMER_ISR
;	-----------------------------------------
_SYS_TIMER_ISR:
	ar2 = 0x0a
	ar3 = 0x0b
	ar4 = 0x0c
	ar5 = 0x0d
	ar6 = 0x0e
	ar7 = 0x0f
	ar0 = 0x08
	ar1 = 0x09
	push	acc
	push	psw
	mov	psw,#0x08
;	SRC/timer.c:55: TH = 0xFC; // ????????????? ???????:
	mov	_TH1,#0xFC
;	SRC/timer.c:56: TL = 0x66; // ????????? ?? ??????? ?????? 1000 ?? (???? ??????)
	mov	_TL1,#0x66
;	SRC/timer.c:57: __systime++; // ????? ? ????????????
	inc	___systime
	clr	a
	cjne	a,___systime,00103$
	inc	(___systime + 1)
	cjne	a,(___systime + 1),00103$
	inc	(___systime + 2)
	cjne	a,(___systime + 2),00103$
	inc	(___systime + 3)
00103$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'GetMsCounter'
;------------------------------------------------------------
;res                       Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	SRC/timer.c:64: unsigned long GetMsCounter( void ){
;	-----------------------------------------
;	 function GetMsCounter
;	-----------------------------------------
_GetMsCounter:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	SRC/timer.c:66: ET = 0;
	clr	_ET1
;	SRC/timer.c:67: res = __systime;
	mov	r2,___systime
	mov	r3,(___systime + 1)
	mov	r4,(___systime + 2)
	mov	r5,(___systime + 3)
;	SRC/timer.c:68: ET = 1;
	setb	_ET1
;	SRC/timer.c:69: return res;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DTimeMs'
;------------------------------------------------------------
;t0                        Allocated to stack - offset 1
;t1                        Allocated to registers 
;------------------------------------------------------------
;	SRC/timer.c:80: unsigned long DTimeMs( unsigned long t0 ){
;	-----------------------------------------
;	 function DTimeMs
;	-----------------------------------------
_DTimeMs:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
;	SRC/timer.c:81: unsigned long t1 = GetMsCounter();
	lcall	_GetMsCounter
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	SRC/timer.c:82: return t1 - t0;
	mov	r0,_bp
	inc	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	a,r2
	inc	r0
	subb	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayMs'
;------------------------------------------------------------
;t                         Allocated to stack - offset 1
;t1                        Allocated to stack - offset 5
;------------------------------------------------------------
;	SRC/timer.c:88: void DelayMs( unsigned long t ){
;	-----------------------------------------
;	 function DelayMs
;	-----------------------------------------
_DelayMs:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x08
	mov	sp,a
;	SRC/timer.c:89: unsigned long t1 = ( unsigned long )GetMsCounter();
	lcall	_GetMsCounter
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	SRC/timer.c:90: while ( DTimeMs( t1 ) <= t );
00101$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_DTimeMs
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	jnc	00101$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetVector'
;------------------------------------------------------------
;Vector                    Allocated to stack - offset -5
;Address                   Allocated to registers r2 r3 
;TmpVector                 Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/timer.c:104: void SetVector(unsigned char xdata * Address, void * Vector){
;	-----------------------------------------
;	 function SetVector
;	-----------------------------------------
_SetVector:
	push	_bp
	mov	_bp,sp
;	SRC/timer.c:108: *Address = 0x02;
	mov	r2,dpl
	mov  r3,dph
	mov	a,#0x02
	movx	@dptr,a
;	SRC/timer.c:110: TmpVector = (unsigned char xdata *) (Address + 1);
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
00103$:
;	SRC/timer.c:111: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	ar4,r5
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	SRC/timer.c:112: ++TmpVector;
;	SRC/timer.c:113: *TmpVector = (unsigned char) Vector;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
