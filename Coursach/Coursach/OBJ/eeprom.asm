;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 15:28:39 2019
;--------------------------------------------------------
	.module eeprom
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WriteBlockEEPROM
	.globl _ReadBlockEEPROM
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
;Allocation info for local variables in function 'WriteBlockEEPROM'
;------------------------------------------------------------
;buf                       Allocated to stack - offset -4
;length                    Allocated to stack - offset -5
;address                   Allocated to stack - offset 1
;try                       Allocated to registers r5 r6 
;pages                     Allocated to stack - offset 2
;i                         Allocated to registers r5 
;finalRemainder            Allocated to stack - offset 3
;initialRemainder          Allocated to stack - offset 4
;sloc0                     Allocated to stack - offset 5
;------------------------------------------------------------
;	SRC/eeprom.c:62: bit WriteBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length)
;	-----------------------------------------
;	 function WriteBlockEEPROM
;	-----------------------------------------
_WriteBlockEEPROM:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	SRC/eeprom.c:67: if((address + length) > EEPROM_SIZE) 
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a,r3
	mov	r7,a
	mov	a,r6
	addc	a,r4
	mov	r2,a
	clr	c
	mov	a,#0x80
	subb	a,r7
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	SRC/eeprom.c:69: return 1;
	setb	c
	ljmp	00135$
00102$:
;	SRC/eeprom.c:72: if(address/PAGE_SIZE == (address+length)/PAGE_SIZE){
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r2,a
	mov	a,r5
	add	a,r3
	mov	dpl,a
	mov	a,r6
	addc	a,r4
	mov	dph,a
	push	ar2
	push	ar5
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	pop	ar2
	mov	r7,#0x00
	mov	a,r2
	cjne	a,ar3,00104$
	mov	a,r7
	cjne	a,ar4,00104$
;	SRC/eeprom.c:74: initialRemainder = length /*- address % PAGE_SIZE*/;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	sjmp	00105$
00104$:
;	SRC/eeprom.c:77: initialRemainder = (PAGE_SIZE - address % PAGE_SIZE) % PAGE_SIZE;
	mov	r0,_bp
	inc	r0
	mov	a,#0x07
	anl	a,@r0
	mov	r3,a
	mov	r4,#0x00
	mov	a,#0x08
	clr	c
	subb	a,r3
	mov	dpl,a
	clr	a
	subb	a,r4
	mov	dph,a
	push	ar5
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
00105$:
;	SRC/eeprom.c:79: pages = (length - initialRemainder) / PAGE_SIZE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	push	ar5
	push	ar6
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar3
;	SRC/eeprom.c:80: finalRemainder = (length - initialRemainder) % PAGE_SIZE;
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	mov	dpl,r5
	mov	dph,r6
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	dec	sp
	dec	sp
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar4
;	SRC/eeprom.c:99: if( initialRemainder )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jz	00114$
;	SRC/eeprom.c:102: while(!GetAck(EEPROM_ADDRESS))
	mov	r5,#0x00
	mov	r6,#0x00
00108$:
	mov	dpl,#0xA2
	push	ar5
	push	ar6
	lcall	_GetAck
	pop	ar6
	pop	ar5
	jc	00110$
;	SRC/eeprom.c:104: if(++try > 5000)
	inc	r5
	cjne	r5,#0x00,00160$
	inc	r6
00160$:
	clr	c
	mov	a,#0x88
	subb	a,r5
	mov	a,#0x13
	subb	a,r6
	jnc	00108$
;	SRC/eeprom.c:106: return 1; //EEPROM failed to respond
	setb	c
	ljmp	00135$
00110$:
;	SRC/eeprom.c:110: if( TransmitBlock(EEPROM_ADDRESS, address, buf, initialRemainder) )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0xA2
	lcall	_TransmitBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	c,F0
	mov	b0,c
	jnc	00114$
;	SRC/eeprom.c:112: return 1; //Error writing
	setb	c
	ljmp	00135$
00114$:
;	SRC/eeprom.c:117: for(i = 0; i < pages; ++i)
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	pop	acc
	mov	@r0,a
	mov	r4,#0x00
00131$:
	mov	r0,_bp
	inc	r0
	inc	r0
	clr	c
	mov	a,r4
	subb	a,@r0
	jc	00163$
	ljmp	00134$
00163$:
;	SRC/eeprom.c:120: while(!GetAck(EEPROM_ADDRESS))
	mov	r3,#0x00
	mov	r2,#0x00
00117$:
	mov	dpl,#0xA2
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	lcall	_GetAck
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00119$
;	SRC/eeprom.c:122: if(++try > 5000)
	inc	r3
	cjne	r3,#0x00,00165$
	inc	r2
00165$:
	clr	c
	mov	a,#0x88
	subb	a,r3
	mov	a,#0x13
	subb	a,r2
	jnc	00117$
;	SRC/eeprom.c:124: return 1; //EEPROM failed to respond
	setb	c
	ljmp	00135$
00119$:
;	SRC/eeprom.c:128: if( TransmitBlock(EEPROM_ADDRESS, address + initialRemainder + (i<<3), buf + initialRemainder + (i<<3), PAGE_SIZE) )
	mov	ar2,r4
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r2
	swap	a
	rr	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf8
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	a,r2
	add	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	push	ar6
	push	ar7
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	push	ar4
	push	ar6
	push	ar7
	mov	a,#0x08
	push	acc
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0xA2
	lcall	_TransmitBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar4
	mov	c,F0
	mov	b0,c
	pop	ar7
	pop	ar6
	jnb	b0,00133$
;	SRC/eeprom.c:130: return 1; //Error writing
	setb	c
	ljmp	00135$
00133$:
;	SRC/eeprom.c:117: for(i = 0; i < pages; ++i)
	inc	r4
	mov	ar5,r4
	ljmp	00131$
00134$:
;	SRC/eeprom.c:134: if( finalRemainder )
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	jnz	00168$
	ljmp	00130$
00168$:
;	SRC/eeprom.c:137: while(!GetAck(EEPROM_ADDRESS))
	mov	r2,#0x00
	mov	r3,#0x00
00124$:
	mov	dpl,#0xA2
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	lcall	_GetAck
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	jc	00126$
;	SRC/eeprom.c:139: if(++try > 5000)
	inc	r2
	cjne	r2,#0x00,00170$
	inc	r3
00170$:
	clr	c
	mov	a,#0x88
	subb	a,r2
	mov	a,#0x13
	subb	a,r3
	jnc	00124$
;	SRC/eeprom.c:141: return 1; //EEPROM failed to respond
	setb	c
	sjmp	00135$
00126$:
;	SRC/eeprom.c:145: if( TransmitBlock(EEPROM_ADDRESS, address + initialRemainder + (i<<3), buf + initialRemainder + (i<<3), finalRemainder) )
	mov	ar2,r5
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r2
	swap	a
	rr	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf8
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	a,r2
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	mov	a,r5
	swap	a
	rr	a
	anl	a,#0xf8
	add	a,r2
	mov	r2,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	push	ar2
	mov	dpl,#0xA2
	lcall	_TransmitBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	c,F0
	mov	b0,c
	jnc	00130$
;	SRC/eeprom.c:147: return 1; //Error writing
	setb	c
	sjmp	00135$
00130$:
;	SRC/eeprom.c:151: return 0;
	clr	c
00135$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadBlockEEPROM'
;------------------------------------------------------------
;buf                       Allocated to stack - offset -4
;length                    Allocated to stack - offset -5
;address                   Allocated to registers r2 
;try                       Allocated to registers r3 r4 
;------------------------------------------------------------
;	SRC/eeprom.c:169: bit ReadBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length)
;	-----------------------------------------
;	 function ReadBlockEEPROM
;	-----------------------------------------
_ReadBlockEEPROM:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
;	SRC/eeprom.c:173: if((address + length) > EEPROM_SIZE) return 1;
	mov	ar3,r2
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	clr	c
	mov	a,#0x80
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	setb	c
;	SRC/eeprom.c:176: while(!GetAck(EEPROM_ADDRESS))
	sjmp	00110$
00114$:
	mov	r3,#0x00
	mov	r4,#0x00
00105$:
	mov	dpl,#0xA2
	push	ar2
	push	ar3
	push	ar4
	lcall	_GetAck
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00107$
;	SRC/eeprom.c:178: if(++try > 5000) // >10 мс
	inc	r3
	cjne	r3,#0x00,00119$
	inc	r4
00119$:
	clr	c
	mov	a,#0x88
	subb	a,r3
	mov	a,#0x13
	subb	a,r4
	jnc	00105$
;	SRC/eeprom.c:179: return 1; //EEPROM failed to respond
	setb	c
	sjmp	00110$
00107$:
;	SRC/eeprom.c:182: if( ReceiveBlock(EEPROM_ADDRESS, address, buf, length) )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	mov	dpl,#0xA2
	lcall	_ReceiveBlock
	mov	F0,c
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	c,F0
	mov	b0,c
	jnc	00109$
;	SRC/eeprom.c:184: return 1; //Error writing
	setb	c
	sjmp	00110$
00109$:
;	SRC/eeprom.c:187: return 0;
	clr	c
00110$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
