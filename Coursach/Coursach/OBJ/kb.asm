;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 22:14:53 2019
;--------------------------------------------------------
	.module kb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ScanKBOnce
	.globl _KBTable
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_KBTable::
	.ds 17
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
;	SRC/kb.c:40: char KBTable[]="147*2580369#ABCD"; //Таблица символов, соответствующих клавишам
	mov	_KBTable,#0x31
	mov	(_KBTable + 0x0001),#0x34
	mov	(_KBTable + 0x0002),#0x37
	mov	(_KBTable + 0x0003),#0x2A
	mov	(_KBTable + 0x0004),#0x32
	mov	(_KBTable + 0x0005),#0x35
	mov	(_KBTable + 0x0006),#0x38
	mov	(_KBTable + 0x0007),#0x30
	mov	(_KBTable + 0x0008),#0x33
	mov	(_KBTable + 0x0009),#0x36
	mov	(_KBTable + 0x000a),#0x39
	mov	(_KBTable + 0x000b),#0x23
	mov	(_KBTable + 0x000c),#0x41
	mov	(_KBTable + 0x000d),#0x42
	mov	(_KBTable + 0x000e),#0x43
	mov	(_KBTable + 0x000f),#0x44
	mov	(_KBTable + 0x0010),#0x00
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
;Allocation info for local variables in function 'ScanKBOnce'
;------------------------------------------------------------
;ch                        Allocated to stack - offset 1
;row                       Allocated to registers r3 
;col                       Allocated to registers r7 
;rownum                    Allocated to registers r7 
;colnum                    Allocated to stack - offset 4
;i                         Allocated to registers r6 r2 
;------------------------------------------------------------
;	SRC/kb.c:67: bit ScanKBOnce(char *ch)
;	-----------------------------------------
;	 function ScanKBOnce
;	-----------------------------------------
_ScanKBOnce:
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
	push	dph
	push	b
	inc	sp
;	SRC/kb.c:74: for(colnum = 0; colnum < 4; colnum++)
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
00113$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	cjne	@r0,#0x04,00128$
00128$:
	jc	00129$
	ljmp	00116$
00129$:
;	SRC/kb.c:76: col = 0x1 << colnum; //0001,0010,0100,1000,0001,...
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	b,@r0
	inc	b
	mov	a,#0x01
	sjmp	00132$
00130$:
	add	a,acc
00132$:
	djnz	b,00130$
;	SRC/kb.c:78: WriteMax(KB, ~col); //11111110,11111101,11111011,11110111,11111110,...
	cpl	a
	mov	r7,a
	push	ar5
	push	ar7
	mov	dptr,#0x0000
	lcall	_WriteMax
	dec	sp
	pop	ar5
;	SRC/kb.c:82: for(rownum = 0; rownum < 4; rownum++)
	mov	r7,#0x00
	mov	r4,#0x00
00109$:
	cjne	r4,#0x04,00133$
00133$:
	jc	00134$
	ljmp	00115$
00134$:
;	SRC/kb.c:84: row = ReadMax(KB) & (0x10 << rownum);
	push	ar7
	mov	dptr,#0x0000
	push	ar4
	push	ar5
	lcall	_ReadMax
	mov	r7,dpl
	pop	ar5
	pop	ar4
	mov	b,r4
	inc	b
	mov	a,#0x10
	sjmp	00137$
00135$:
	add	a,acc
00137$:
	djnz	b,00135$
	mov	r6,a
	anl	ar7,a
	mov	ar3,r7
;	SRC/kb.c:85: if( !row ) //Обнаружено нажатие клавиши:
	pop	ar7
	mov	a,r3
;	SRC/kb.c:87: for(i = 0; i<SECOND_SCAN_AFTER; i++)continue;//проверка на дребезг контакта:
	jnz	00111$
	mov	r6,a
	mov	r2,a
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r2
	subb	a,#0x1F
	jnc	00104$
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r2
	sjmp	00101$
00104$:
;	SRC/kb.c:90: row = ReadMax(KB) & (0x10 << rownum);
	mov	dptr,#0x0000
	push	ar4
	push	ar5
	push	ar7
	lcall	_ReadMax
	mov	r2,dpl
	pop	ar7
	pop	ar5
	pop	ar4
	mov	b,r4
	inc	b
	mov	a,#0x10
	sjmp	00142$
00140$:
	add	a,acc
00142$:
	djnz	b,00140$
	anl	ar2,a
	mov	ar3,r2
;	SRC/kb.c:91: if( !row )
	mov	a,r3
	jnz	00111$
;	SRC/kb.c:93: *ch = (KBTable[(colnum<<2) + rownum]);
	mov	a,r5
	add	a,r5
	add	a,acc
	mov	r2,a
	mov	a,r7
	add	a,r2
	add	a,#_KBTable
	mov	r0,a
	mov	ar2,@r0
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	SRC/kb.c:94: return 1; //Стабильное нажатие клавиши
	setb	c
	sjmp	00117$
00111$:
;	SRC/kb.c:82: for(rownum = 0; rownum < 4; rownum++)
	inc	r4
	mov	ar7,r4
	ljmp	00109$
00115$:
;	SRC/kb.c:74: for(colnum = 0; colnum < 4; colnum++)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	ljmp	00113$
00116$:
;	SRC/kb.c:102: return 0; //Ни одна клавиша не нажата
	clr	c
00117$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
