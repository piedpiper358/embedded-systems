;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 01:04:32 2019
;--------------------------------------------------------
	.module rtc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GetTime
	.globl _SetTime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
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
;Allocation info for local variables in function 'GetTime'
;------------------------------------------------------------
;time                      Allocated to registers r2 r3 
;h                         Allocated to registers r5 
;------------------------------------------------------------
;	SRC/rtc.c:79: unsigned char /*bit*/ GetTime(TIME xdata * time)
;	-----------------------------------------
;	 function GetTime
;	-----------------------------------------
_GetTime:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	SRC/rtc.c:83: if( !GetAck(RTC_ADDRESS) )
	mov	dpl,#0xA0
	push	ar2
	push	ar3
	lcall	_GetAck
	pop	ar3
	pop	ar2
	jc	00102$
;	SRC/rtc.c:84: return 1; //RTC failed to respond
	mov	dpl,#0x01
	ret
00102$:
;	SRC/rtc.c:86: if( ReceiveBlock(RTC_ADDRESS, 1, (unsigned char xdata*)time, 4) )
	push	ar2
	push	ar3
	mov	a,#0x04
	push	acc
	push	ar2
	push	ar3
	mov	a,#0x01
	push	acc
	mov	dpl,#0xA0
	lcall	_ReceiveBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	c,F0
	mov	b0,c
	jnc	00104$
;	SRC/rtc.c:87: return 1; //Error reading
	mov	dpl,#0x01
	ret
00104$:
;	SRC/rtc.c:89: time->hsec = BCD2Bin(time->hsec);
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	r5,a
	anl	ar4,#0xF0
	mov	a,r4
	swap	a
	anl	a,#0x0f
	mov	b,#0x0A
	mul	ab
	add	a,r5
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	SRC/rtc.c:90: time->sec  = BCD2Bin(time->sec);
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	r7,a
	anl	ar6,#0xF0
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	b,#0x0A
	mul	ab
	add	a,r7
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	SRC/rtc.c:91: time->min  = BCD2Bin(time->min);
	mov	a,#0x02
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	r7,a
	anl	ar6,#0xF0
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	b,#0x0A
	mul	ab
	add	a,r7
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	SRC/rtc.c:92: h          = BCD2Bin(time->hour & 0x3F);
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0F
	anl	a,r4
	mov	r5,a
	mov	a,#0x30
	anl	a,r4
	swap	a
	anl	a,#0x0f
	mov	b,#0x0A
	mul	ab
	mov	r6,a
	add	a,r5
	mov	r5,a
;	SRC/rtc.c:94: if( time->hour & 0xC0 ) //12h format and pm time
	mov	a,r4
	anl	a,#0xC0
	jz	00109$
;	SRC/rtc.c:96: if(time->hour < 12)
	cjne	r4,#0x0C,00120$
00120$:
	jnc	00106$
;	SRC/rtc.c:97: time->hour = h + 12;
	mov	a,#0x0C
	add	a,r5
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
	sjmp	00110$
00106$:
;	SRC/rtc.c:99: time->hour = 0;
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	sjmp	00110$
00109$:
;	SRC/rtc.c:102: time->hour = h;
	mov	dpl,r2
	mov	dph,r3
	mov	a,r5
	movx	@dptr,a
00110$:
;	SRC/rtc.c:104: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetTime'
;------------------------------------------------------------
;time                      Allocated to registers r2 r3 
;h                         Allocated to stack - offset 3
;t                         Allocated to stack - offset 1
;------------------------------------------------------------
;	SRC/rtc.c:120: unsigned char /*bit*/ SetTime(TIME xdata * time)
;	-----------------------------------------
;	 function SetTime
;	-----------------------------------------
_SetTime:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
;	SRC/rtc.c:125: if( !GetAck(RTC_ADDRESS) )
	mov	dpl,#0xA0
	push	ar2
	push	ar3
	lcall	_GetAck
	pop	ar3
	pop	ar2
	jc	00102$
;	SRC/rtc.c:126: return 1; //RTC failed to respond
	mov	dpl,#0x01
	ljmp	00105$
00102$:
;	SRC/rtc.c:128: t.hsec = Bin2BCD(time->hsec);
	mov	r0,_bp
	inc	r0
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	mov	b,#0x0A
	div	ab
	mov	r5,b
	mov	b,#0x0A
	mov	a,r4
	div	ab
	swap	a
	anl	a,#0xf0
	add	a,r5
	mov	@r0,a
;	SRC/rtc.c:129: t.sec  = Bin2BCD(time->sec);
	mov	r4,_bp
	inc	r4
	mov	a,r4
	inc	a
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x0A
	div	ab
	mov	r6,b
	mov	b,#0x0A
	mov	a,r5
	div	ab
	swap	a
	anl	a,#0xf0
	add	a,r6
	mov	@r0,a
;	SRC/rtc.c:130: t.min  = Bin2BCD(time->min);
	mov	a,#0x02
	add	a,r4
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,#0x0A
	div	ab
	mov	r6,b
	mov	b,#0x0A
	mov	a,r5
	div	ab
	swap	a
	anl	a,#0xf0
	add	a,r6
	mov	@r0,a
;	SRC/rtc.c:131: t.hour = Bin2BCD(time->hour & 0x3F);
	mov	a,#0x03
	add	a,r4
	mov	r0,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x3F
	mov	b,#0x0A
	mov	a,r2
	div	ab
	mov	r3,b
	mov	b,#0x0A
	mov	a,r2
	div	ab
	swap	a
	anl	a,#0xf0
	add	a,r3
	mov	@r0,a
;	SRC/rtc.c:133: if( TransmitBlock(RTC_ADDRESS, 1, (unsigned char xdata*)&t, 4) )
	mov	r2,#0x00
	mov	a,#0x04
	push	acc
	push	ar4
	push	ar2
	mov	a,#0x01
	push	acc
	mov	dpl,#0xA0
	lcall	_TransmitBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	c,F0
	mov	b0,c
	jnc	00104$
;	SRC/rtc.c:134: return 1; //Error reading
	mov	dpl,#0x01
	sjmp	00105$
00104$:
;	SRC/rtc.c:136: return 0;
	mov	dpl,#0x00
00105$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
