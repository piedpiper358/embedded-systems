;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Jan 24 15:49:36 2019
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Strobe
	.globl _SwitchCurPosControl
	.globl _LCD_SwitchCursor
	.globl _LCD_Clear
	.globl _InitLCD
	.globl _LCD_Putch
	.globl _LCD_GotoXY
	.globl _LCD_Type
	.globl _LCD_GetX
	.globl _LCD_GetY
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
_cur_x:
	.ds 1
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
_CurPosCtrl:
	.ds 1
_cur_y:
	.ds 1
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
;	SRC/lcd.c:46: static char cur_x=0;//0-15
	mov	_cur_x,#0x00
;	SRC/lcd.c:41: static bit CurPosCtrl=1;    //Отслеживание драйвером текущей позиции курсора
	setb	_CurPosCtrl
;	SRC/lcd.c:47: static bit cur_y=0; //0/1
	clr	_cur_y
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
;Allocation info for local variables in function 'SwitchCurPosControl'
;------------------------------------------------------------
;o                         Allocated to registers 
;------------------------------------------------------------
;	SRC/lcd.c:66: void SwitchCurPosControl(bit o)
;	-----------------------------------------
;	 function SwitchCurPosControl
;	-----------------------------------------
_SwitchCurPosControl:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	c,b0
	mov	_CurPosCtrl,c
;	SRC/lcd.c:68: CurPosCtrl=o;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Strobe'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/lcd.c:88: void Strobe(char c)
;	-----------------------------------------
;	 function Strobe
;	-----------------------------------------
_Strobe:
	mov	r2,dpl
;	SRC/lcd.c:92: WriteMax(C_IND,c | 0x1);  //Установка строба E
	mov	a,#0x01
	orl	a,r2
	mov	r3,a
	push	ar2
	push	ar3
	mov	dptr,#0x0006
	lcall	_WriteMax
	dec	sp
	pop	ar2
;	SRC/lcd.c:93: WriteMax(C_IND,c & 0xFE); //Сброс строба
	anl	ar2,#0xFE
	push	ar2
	mov	dptr,#0x0006
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:95: for (i=0;i<300;i++)continue; //Задержка на время исполнения команды 
	mov	r2,#0x00
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r2
	subb	a,#0x2C
	mov	a,r3
	subb	a,#0x01
	jnc	00105$
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SwitchCursor'
;------------------------------------------------------------
;blink                     Allocated to registers b1 
;cursor                    Allocated to registers b0 
;i                         Allocated to registers 
;------------------------------------------------------------
;	SRC/lcd.c:113: void LCD_SwitchCursor(bit cursor, bit blink)
;	-----------------------------------------
;	 function LCD_SwitchCursor
;	-----------------------------------------
_LCD_SwitchCursor:
;	SRC/lcd.c:119: ((cursor)?CURSOR_ON:0) |
	jnb	b0,00103$
	mov	r2,#0x02
	sjmp	00104$
00103$:
	mov	r2,#0x00
00104$:
	orl	ar2,#0x0C
;	SRC/lcd.c:120: ((blink)?BLINK:0) );
	jnb	b1,00105$
	mov	r3,#0x01
	sjmp	00106$
00105$:
	mov	r3,#0x00
00106$:
	mov	a,r3
	orl	ar2,a
;	SRC/lcd.c:117: WriteMax( DATA_IND, DISPLAY_CTRL |
	push	ar2
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:122: Strobe(0x8); //R/W = 0; RS = 0
	mov	dpl,#0x08
	ljmp	_Strobe
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Clear'
;------------------------------------------------------------
;i                         Allocated to stack - offset 1
;------------------------------------------------------------
;	SRC/lcd.c:136: void LCD_Clear(void)
;	-----------------------------------------
;	 function LCD_Clear
;	-----------------------------------------
_LCD_Clear:
;	SRC/lcd.c:140: WriteMax(DATA_IND, CLEAR);
	mov	a,#0x01
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:141: Strobe(0x8); //clear
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:142: cur_x = 0;
	mov	_cur_x,#0x00
;	SRC/lcd.c:143: cur_y = 0;
	clr	_cur_y
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitLCD'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	SRC/lcd.c:157: void InitLCD(void)
;	-----------------------------------------
;	 function InitLCD
;	-----------------------------------------
_InitLCD:
;	SRC/lcd.c:161: for(i=0; i<4000; i++)continue; //Ожидание включения ЖКИ (>15мс после подачи 
	mov	r2,#0x00
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r2
	subb	a,#0xA0
	mov	a,r3
	subb	a,#0x0F
	jnc	00104$
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00104$:
;	SRC/lcd.c:164: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
	mov	a,#0x30
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:165: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:166: for(i=0; i<1500; i++)continue; //Ожидание, предусмотренное протоколом
	mov	r2,#0x00
	mov	r3,#0x00
00105$:
	clr	c
	mov	a,r2
	subb	a,#0xDC
	mov	a,r3
	subb	a,#0x05
	jnc	00108$
	inc	r2
	cjne	r2,#0x00,00105$
	inc	r3
	sjmp	00105$
00108$:
;	SRC/lcd.c:170: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
	mov	a,#0x30
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:171: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:172: for(i=0; i<50; i++)continue;   //Ожидание, предусмотренное протоколом
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r2
	subb	a,#0x32
	mov	a,r3
	subb	a,#0x00
	jnc	00112$
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
	sjmp	00109$
00112$:
;	SRC/lcd.c:175: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
	mov	a,#0x30
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:176: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:180: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS|TWO_LINE);
	mov	a,#0x38
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:181: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:184: WriteMax(DATA_IND, DISPLAY_CTRL); //Display off
	mov	a,#0x08
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:185: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:188: WriteMax(DATA_IND, CLEAR); 
	mov	a,#0x01
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:189: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:192: WriteMax(DATA_IND, ENTRY_MODE|INCR);
	mov	a,#0x06
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:193: Strobe(0x8);
	mov	dpl,#0x08
	lcall	_Strobe
;	SRC/lcd.c:195: WriteMax(DATA_IND, DISPLAY_CTRL|DISPLAY_ON); //Cursor OFF, Blinking OFF
	mov	a,#0x0C
	push	acc
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:196: Strobe(0x8);
	mov	dpl,#0x08
	ljmp	_Strobe
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Putch'
;------------------------------------------------------------
;ch                        Allocated to registers r2 
;------------------------------------------------------------
;	SRC/lcd.c:212: void LCD_Putch(char ch)
;	-----------------------------------------
;	 function LCD_Putch
;	-----------------------------------------
_LCD_Putch:
	mov	r2,dpl
;	SRC/lcd.c:215: if(CurPosCtrl)
	jnb	_CurPosCtrl,00104$
;	SRC/lcd.c:217: LCD_GotoXY(cur_x,cur_y);
	mov	dpl,_cur_x
	mov	c,_cur_y
	mov	b[0],c
	push	ar2
	mov	bits,b
	lcall	_LCD_GotoXY
	pop	ar2
;	SRC/lcd.c:218: if(++cur_x>15)cur_x=0,cur_y=~cur_y;
	inc	_cur_x
	clr	c
	mov	a,#(0x0F ^ 0x80)
	mov	b,_cur_x
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	_cur_x,#0x00
	setb	_cur_y
00104$:
;	SRC/lcd.c:221: WriteMax(DATA_IND,ch);
	push	ar2
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
;	SRC/lcd.c:222: Strobe(0xC); //R/W = 0, RS = 1 (данные)
	mov	dpl,#0x0C
	ljmp	_Strobe
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GotoXY'
;------------------------------------------------------------
;y                         Allocated to registers b0 
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	SRC/lcd.c:235: void LCD_GotoXY(unsigned char x,bit y)
;	-----------------------------------------
;	 function LCD_GotoXY
;	-----------------------------------------
_LCD_GotoXY:
	mov	r2,dpl
;	SRC/lcd.c:237: WriteMax(DATA_IND,RAM_DD|(x+((y)?0x40:0)));
	jnb	b0,00103$
	mov	r3,#0x40
	sjmp	00104$
00103$:
	mov	r3,#0x00
00104$:
	mov	a,r3
	add	a,r2
	mov	b,a
	mov	a,#0x80
	orl	a,b
	mov	r3,a
	push	ar2
	push	bits
	push	ar3
	mov	dptr,#0x0001
	lcall	_WriteMax
	dec	sp
	pop	bits
;	SRC/lcd.c:238: Strobe(0x8); //set ram
	mov	dpl,#0x08
	push	bits
	lcall	_Strobe
	pop	bits
	pop	ar2
;	SRC/lcd.c:239: cur_x = x;
	mov	_cur_x,r2
;	SRC/lcd.c:240: cur_y = y;
	mov	c,b0
	mov	_cur_y,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Type'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;t                         Allocated to registers b0 
;------------------------------------------------------------
;	SRC/lcd.c:252: void LCD_Type(char* s)
;	-----------------------------------------
;	 function LCD_Type
;	-----------------------------------------
_LCD_Type:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	SRC/lcd.c:254: bit t = CurPosCtrl;
	mov	c,_CurPosCtrl
	mov	b0,c
;	SRC/lcd.c:256: SwitchCurPosControl(1);
	setb	b[0]
	push	ar2
	push	ar3
	push	ar4
	push	bits
	mov	bits,b
	lcall	_SwitchCurPosControl
	pop	bits
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/lcd.c:257: while(*s)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	00103$
;	SRC/lcd.c:258: LCD_Putch(*s++);
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
00110$:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	push	bits
	lcall	_LCD_Putch
	pop	bits
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00101$
00103$:
;	SRC/lcd.c:260: SwitchCurPosControl(t);
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	ljmp	_SwitchCurPosControl
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GetX'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/lcd.c:270: char LCD_GetX(void){
;	-----------------------------------------
;	 function LCD_GetX
;	-----------------------------------------
_LCD_GetX:
;	SRC/lcd.c:271: return cur_x;
	mov	dpl,_cur_x
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GetY'
;------------------------------------------------------------
;------------------------------------------------------------
;	SRC/lcd.c:274: bit LCD_GetY(void){
;	-----------------------------------------
;	 function LCD_GetY
;	-----------------------------------------
_LCD_GetY:
;	SRC/lcd.c:275: return cur_y;
	mov	c,_cur_y
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
