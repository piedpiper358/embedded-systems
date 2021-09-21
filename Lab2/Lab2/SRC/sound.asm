;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Nov 29 14:32:32 2018
;--------------------------------------------------------
	.module sound
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _InitSoundTimer
	.globl _SetVolume
	.globl _SetFrequency
	.globl _SetDurationAndWait
	.globl _SetDuration
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
	.globl _SOUND_ISR
	.globl ___SetVolume
	.globl ___SetFrequency
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
_start_time_stamp:
	.ds 4
_duration:
	.ds 4
_volume:
	.ds 1
_frequency:
	.ds 2
_on_off:
	.ds 1
_current_ena:
	.ds 1
_note_period:
	.ds 2
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
;	SRC/sound.c:28: static uint8_t volume = 7; //значение по умолчанию
	mov	_volume,#0x07
;	SRC/sound.c:30: static unsigned char on_off = ON;
	mov	_on_off,#0x01
;	SRC/sound.c:31: static uint8_t current_ena = 0x1C; //0b0100000;
	mov	_current_ena,#0x1C
;	SRC/sound.c:39: static uint8_t note_period[2] = { 0xff, 0xff };
	mov	_note_period,#0xFF
	mov	(_note_period + 0x0001),#0xFF
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
;Allocation info for local variables in function 'SetDuration'
;------------------------------------------------------------
;d                         Allocated to registers 
;------------------------------------------------------------
;	SRC/sound.c:43: void SetDuration(unsigned long d){
;	-----------------------------------------
;	 function SetDuration
;	-----------------------------------------
_SetDuration:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	_duration,dpl
	mov	(_duration + 1),dph
	mov	(_duration + 2),b
	mov	(_duration + 3),a
;	SRC/sound.c:45: __SetFrequency(); //Настройка таймера на заданную частоту
	lcall	___SetFrequency
;	SRC/sound.c:46: __SetVolume(ON); //Включение звукоизлучателя
	mov	dpl,#0x01
	lcall	___SetVolume
;	SRC/sound.c:47: TR=0x1; //Включение таймера 0
	setb	_TR0
;	SRC/sound.c:48: start_time_stamp = GetMsCounter();
	lcall	_GetMsCounter
	mov	_start_time_stamp,dpl
	mov	(_start_time_stamp + 1),dph
	mov	(_start_time_stamp + 2),b
	mov	(_start_time_stamp + 3),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetDurationAndWait'
;------------------------------------------------------------
;d                         Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	SRC/sound.c:53: void SetDurationAndWait(unsigned long d){
;	-----------------------------------------
;	 function SetDurationAndWait
;	-----------------------------------------
_SetDurationAndWait:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	SRC/sound.c:54: duration = d;
	mov	_duration,r2
	mov	(_duration + 1),r3
	mov	(_duration + 2),r4
	mov	(_duration + 3),r5
;	SRC/sound.c:55: __SetFrequency(); //Настройка таймера на заданную частоту
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___SetFrequency
;	SRC/sound.c:56: __SetVolume(ON); //Включение звукоизлучателя
	mov	dpl,#0x01
	lcall	___SetVolume
;	SRC/sound.c:57: TR=0x1; //Включение таймера 0
	setb	_TR0
;	SRC/sound.c:58: start_time_stamp = GetMsCounter();
	lcall	_GetMsCounter
	mov	_start_time_stamp,dpl
	mov	(_start_time_stamp + 1),dph
	mov	(_start_time_stamp + 2),b
	mov	(_start_time_stamp + 3),a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/sound.c:60: DelayMs(d);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_DelayMs
;	SRC/sound.c:61: __SetVolume(OFF);
	mov	dpl,#0x00
	lcall	___SetVolume
;	SRC/sound.c:62: TR=0x0;
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetFrequency'
;------------------------------------------------------------
;f                         Allocated to registers r2 r3 
;delay                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	SRC/sound.c:66: void SetFrequency(uint16_t f){
;	-----------------------------------------
;	 function SetFrequency
;	-----------------------------------------
_SetFrequency:
	mov	r2,dpl
	mov	r3,dph
;	SRC/sound.c:68: uint16_t delay = TIMER_FREQ / (2 * f);
	mov	ar4,r2
	mov	a,r3
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x1000
	mov	b,#0x0E
	clr	a
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
;	SRC/sound.c:70: note_period[1] = 0xFF - (delay>>8) & 0xFF; //Перезагрузка регистров
	mov	ar6,r5
	mov	a,#0xFF
	clr	c
	subb	a,r6
	mov	(_note_period + 0x0001),a
;	SRC/sound.c:71: note_period[0] = 0xFF - delay & 0xFF; 
	mov	a,#0xFF
	clr	c
	subb	a,r4
	mov	_note_period,a
;	SRC/sound.c:75: frequency = f;
	mov	_frequency,r2
	mov	(_frequency + 1),r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetVolume'
;------------------------------------------------------------
;v                         Allocated to registers r2 
;------------------------------------------------------------
;	SRC/sound.c:84: void SetVolume(unsigned char v){
;	-----------------------------------------
;	 function SetVolume
;	-----------------------------------------
_SetVolume:
;	SRC/sound.c:85: volume = v > 7 ? 7 : v;
	mov	a,dpl
	mov	r2,a
	add	a,#0xff - 0x07
	jnc	00103$
	mov	r3,#0x07
	sjmp	00104$
00103$:
	mov	ar3,r2
00104$:
	mov	_volume,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitSoundTimer'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/sound.c:91: void InitSoundTimer( void ){
;	-----------------------------------------
;	 function InitSoundTimer
;	-----------------------------------------
_InitSoundTimer:
;	SRC/sound.c:93: InitSysTimer(); 
	lcall	_InitSysTimer
;	SRC/sound.c:95: TR=0x0; //Выключение таймера 1
	clr	_TR0
;	SRC/sound.c:98: TMOD = TMOD & ~(GATE | CT | M1) | M0;
	mov	r2,_TMOD
	mov	a,#0xF1
	anl	a,r2
	mov	b,a
	mov	a,#0x01
	orl	a,b
	mov	_TMOD,a
;	SRC/sound.c:101: SetVector( vec, (void *)SOUND_ISR );
	mov	r2,#_SOUND_ISR
	mov	r3,#(_SOUND_ISR >> 8)
	mov	r4,#0x80
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#0x200B
	lcall	_SetVector
	dec	sp
	dec	sp
	dec	sp
;	SRC/sound.c:103: ET = 1; //Разрешение прерываний от таймера
	setb	_ET0
;	SRC/sound.c:104: EA = 1; //Разрешение всех прерываний
	setb	_EA
;	SRC/sound.c:107: TR=0x1;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SOUND_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/sound.c:115: void SOUND_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ )
;	-----------------------------------------
;	 function SOUND_ISR
;	-----------------------------------------
_SOUND_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	SRC/sound.c:120: if(DTimeMs(start_time_stamp) < duration){	
	mov	dpl,_start_time_stamp
	mov	dph,(_start_time_stamp + 1)
	mov	b,(_start_time_stamp + 2)
	mov	a,(_start_time_stamp + 3)
	lcall	_DTimeMs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	clr	c
	mov	a,r2
	subb	a,_duration
	mov	a,r3
	subb	a,(_duration + 1)
	mov	a,r4
	subb	a,(_duration + 2)
	mov	a,r5
	subb	a,(_duration + 3)
	jnc	00102$
;	SRC/sound.c:121: __SetFrequency();
	lcall	___SetFrequency
;	SRC/sound.c:122: __SetVolume(on_off);
	mov	dpl,_on_off
	lcall	___SetVolume
	sjmp	00104$
00102$:
;	SRC/sound.c:125: __SetVolume(OFF);
	mov	dpl,#0x00
	lcall	___SetVolume
;	SRC/sound.c:126: TR=0x0;
	clr	_TR0
00104$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function '__SetVolume'
;------------------------------------------------------------
;__on_off                  Allocated to registers r2 
;------------------------------------------------------------
;	SRC/sound.c:132: void __SetVolume(unsigned char __on_off){
;	-----------------------------------------
;	 function __SetVolume
;	-----------------------------------------
___SetVolume:
;	SRC/sound.c:134: write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
	mov	a,dpl
	mov	r2,a
	jz	00103$
	mov	a,_volume
	add	a,#0xff - 0x07
	jnc	00105$
	mov	r3,#0x07
	sjmp	00106$
00105$:
	mov	r3,_volume
00106$:
	mov	a,r3
	add	a,r3
	add	a,acc
	mov	r3,a
	orl	ar3,#0x20
	sjmp	00104$
00103$:
	mov	r3,#0x20
00104$:
	push	ar2
	push	ar3
	mov	dptr,#0x0004
	lcall	_write_max
	dec	sp
	pop	ar2
;	SRC/sound.c:135: on_off = ++__on_off % 2;
	inc	r2
	mov	a,#0x01
	anl	a,r2
	mov	_on_off,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '__SetFrequency'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/sound.c:145: void __SetFrequency(){
;	-----------------------------------------
;	 function __SetFrequency
;	-----------------------------------------
___SetFrequency:
;	SRC/sound.c:146: TL = note_period[0]; //Перезагрузка регистров
	mov	_TL0,_note_period
;	SRC/sound.c:147: TH = note_period[1];
	mov	_TH0,(_note_period + 0x0001)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
