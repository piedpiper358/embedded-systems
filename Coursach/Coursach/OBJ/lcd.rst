                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 15:49:36 2019
                              5 ;--------------------------------------------------------
                              6 	.module lcd
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Strobe
                             13 	.globl _SwitchCurPosControl
                             14 	.globl _LCD_SwitchCursor
                             15 	.globl _LCD_Clear
                             16 	.globl _InitLCD
                             17 	.globl _LCD_Putch
                             18 	.globl _LCD_GotoXY
                             19 	.globl _LCD_Type
                             20 	.globl _LCD_GetX
                             21 	.globl _LCD_GetY
                             22 ;--------------------------------------------------------
                             23 ; special function registers
                             24 ;--------------------------------------------------------
                             25 	.area RSEG    (DATA)
                             26 ;--------------------------------------------------------
                             27 ; special function bits
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; overlayable register banks
                             32 ;--------------------------------------------------------
                             33 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      34 	.ds 8
                             35 ;--------------------------------------------------------
                             36 ; overlayable bit register bank
                             37 ;--------------------------------------------------------
                             38 	.area BIT_BANK	(REL,OVR,DATA)
   0021                      39 bits:
   0021                      40 	.ds 1
                    8000     41 	b0 = bits[0]
                    8100     42 	b1 = bits[1]
                    8200     43 	b2 = bits[2]
                    8300     44 	b3 = bits[3]
                    8400     45 	b4 = bits[4]
                    8500     46 	b5 = bits[5]
                    8600     47 	b6 = bits[6]
                    8700     48 	b7 = bits[7]
                             49 ;--------------------------------------------------------
                             50 ; internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area DSEG    (DATA)
   0008                      53 _cur_x:
   0008                      54 	.ds 1
                             55 ;--------------------------------------------------------
                             56 ; overlayable items in internal ram 
                             57 ;--------------------------------------------------------
                             58 	.area OSEG    (OVR,DATA)
                             59 ;--------------------------------------------------------
                             60 ; indirectly addressable internal ram data
                             61 ;--------------------------------------------------------
                             62 	.area ISEG    (DATA)
                             63 ;--------------------------------------------------------
                             64 ; absolute internal ram data
                             65 ;--------------------------------------------------------
                             66 	.area IABS    (ABS,DATA)
                             67 	.area IABS    (ABS,DATA)
                             68 ;--------------------------------------------------------
                             69 ; bit data
                             70 ;--------------------------------------------------------
                             71 	.area BSEG    (BIT)
   0000                      72 _CurPosCtrl:
   0000                      73 	.ds 1
   0001                      74 _cur_y:
   0001                      75 	.ds 1
                             76 ;--------------------------------------------------------
                             77 ; paged external ram data
                             78 ;--------------------------------------------------------
                             79 	.area PSEG    (PAG,XDATA)
                             80 ;--------------------------------------------------------
                             81 ; external ram data
                             82 ;--------------------------------------------------------
                             83 	.area XSEG    (XDATA)
                             84 ;--------------------------------------------------------
                             85 ; absolute external ram data
                             86 ;--------------------------------------------------------
                             87 	.area XABS    (ABS,XDATA)
                             88 ;--------------------------------------------------------
                             89 ; external initialized ram data
                             90 ;--------------------------------------------------------
                             91 	.area XISEG   (XDATA)
                             92 	.area HOME    (CODE)
                             93 	.area GSINIT0 (CODE)
                             94 	.area GSINIT1 (CODE)
                             95 	.area GSINIT2 (CODE)
                             96 	.area GSINIT3 (CODE)
                             97 	.area GSINIT4 (CODE)
                             98 	.area GSINIT5 (CODE)
                             99 	.area GSINIT  (CODE)
                            100 	.area GSFINAL (CODE)
                            101 	.area CSEG    (CODE)
                            102 ;--------------------------------------------------------
                            103 ; global & static initialisations
                            104 ;--------------------------------------------------------
                            105 	.area HOME    (CODE)
                            106 	.area GSINIT  (CODE)
                            107 	.area GSFINAL (CODE)
                            108 	.area GSINIT  (CODE)
                            109 ;	SRC/lcd.c:46: static char cur_x=0;//0-15
   2161 75 08 00            110 	mov	_cur_x,#0x00
                            111 ;	SRC/lcd.c:41: static bit CurPosCtrl=1;    //Отслеживание драйвером текущей позиции курсора
   2164 D2 00               112 	setb	_CurPosCtrl
                            113 ;	SRC/lcd.c:47: static bit cur_y=0; //0/1
   2166 C2 01               114 	clr	_cur_y
                            115 ;--------------------------------------------------------
                            116 ; Home
                            117 ;--------------------------------------------------------
                            118 	.area HOME    (CODE)
                            119 	.area HOME    (CODE)
                            120 ;--------------------------------------------------------
                            121 ; code
                            122 ;--------------------------------------------------------
                            123 	.area CSEG    (CODE)
                            124 ;------------------------------------------------------------
                            125 ;Allocation info for local variables in function 'SwitchCurPosControl'
                            126 ;------------------------------------------------------------
                            127 ;o                         Allocated to registers 
                            128 ;------------------------------------------------------------
                            129 ;	SRC/lcd.c:66: void SwitchCurPosControl(bit o)
                            130 ;	-----------------------------------------
                            131 ;	 function SwitchCurPosControl
                            132 ;	-----------------------------------------
   21CC                     133 _SwitchCurPosControl:
                    0002    134 	ar2 = 0x02
                    0003    135 	ar3 = 0x03
                    0004    136 	ar4 = 0x04
                    0005    137 	ar5 = 0x05
                    0006    138 	ar6 = 0x06
                    0007    139 	ar7 = 0x07
                    0000    140 	ar0 = 0x00
                    0001    141 	ar1 = 0x01
   21CC A2 08               142 	mov	c,b0
   21CE 92 00               143 	mov	_CurPosCtrl,c
                            144 ;	SRC/lcd.c:68: CurPosCtrl=o;
   21D0 22                  145 	ret
                            146 ;------------------------------------------------------------
                            147 ;Allocation info for local variables in function 'Strobe'
                            148 ;------------------------------------------------------------
                            149 ;c                         Allocated to registers r2 
                            150 ;i                         Allocated to registers r2 r3 
                            151 ;------------------------------------------------------------
                            152 ;	SRC/lcd.c:88: void Strobe(char c)
                            153 ;	-----------------------------------------
                            154 ;	 function Strobe
                            155 ;	-----------------------------------------
   21D1                     156 _Strobe:
   21D1 AA 82               157 	mov	r2,dpl
                            158 ;	SRC/lcd.c:92: WriteMax(C_IND,c | 0x1);  //Установка строба E
   21D3 74 01               159 	mov	a,#0x01
   21D5 4A                  160 	orl	a,r2
   21D6 FB                  161 	mov	r3,a
   21D7 C0 02               162 	push	ar2
   21D9 C0 03               163 	push	ar3
   21DB 90 00 06            164 	mov	dptr,#0x0006
   21DE 12 21 AA            165 	lcall	_WriteMax
   21E1 15 81               166 	dec	sp
   21E3 D0 02               167 	pop	ar2
                            168 ;	SRC/lcd.c:93: WriteMax(C_IND,c & 0xFE); //Сброс строба
   21E5 53 02 FE            169 	anl	ar2,#0xFE
   21E8 C0 02               170 	push	ar2
   21EA 90 00 06            171 	mov	dptr,#0x0006
   21ED 12 21 AA            172 	lcall	_WriteMax
   21F0 15 81               173 	dec	sp
                            174 ;	SRC/lcd.c:95: for (i=0;i<300;i++)continue; //Задержка на время исполнения команды 
   21F2 7A 00               175 	mov	r2,#0x00
   21F4 7B 00               176 	mov	r3,#0x00
   21F6                     177 00101$:
   21F6 C3                  178 	clr	c
   21F7 EA                  179 	mov	a,r2
   21F8 94 2C               180 	subb	a,#0x2C
   21FA EB                  181 	mov	a,r3
   21FB 94 01               182 	subb	a,#0x01
   21FD 50 07               183 	jnc	00105$
   21FF 0A                  184 	inc	r2
   2200 BA 00 F3            185 	cjne	r2,#0x00,00101$
   2203 0B                  186 	inc	r3
   2204 80 F0               187 	sjmp	00101$
   2206                     188 00105$:
   2206 22                  189 	ret
                            190 ;------------------------------------------------------------
                            191 ;Allocation info for local variables in function 'LCD_SwitchCursor'
                            192 ;------------------------------------------------------------
                            193 ;blink                     Allocated to registers b1 
                            194 ;cursor                    Allocated to registers b0 
                            195 ;i                         Allocated to registers 
                            196 ;------------------------------------------------------------
                            197 ;	SRC/lcd.c:113: void LCD_SwitchCursor(bit cursor, bit blink)
                            198 ;	-----------------------------------------
                            199 ;	 function LCD_SwitchCursor
                            200 ;	-----------------------------------------
   2207                     201 _LCD_SwitchCursor:
                            202 ;	SRC/lcd.c:119: ((cursor)?CURSOR_ON:0) |
   2207 30 08 04            203 	jnb	b0,00103$
   220A 7A 02               204 	mov	r2,#0x02
   220C 80 02               205 	sjmp	00104$
   220E                     206 00103$:
   220E 7A 00               207 	mov	r2,#0x00
   2210                     208 00104$:
   2210 43 02 0C            209 	orl	ar2,#0x0C
                            210 ;	SRC/lcd.c:120: ((blink)?BLINK:0) );
   2213 30 09 04            211 	jnb	b1,00105$
   2216 7B 01               212 	mov	r3,#0x01
   2218 80 02               213 	sjmp	00106$
   221A                     214 00105$:
   221A 7B 00               215 	mov	r3,#0x00
   221C                     216 00106$:
   221C EB                  217 	mov	a,r3
   221D 42 02               218 	orl	ar2,a
                            219 ;	SRC/lcd.c:117: WriteMax( DATA_IND, DISPLAY_CTRL |
   221F C0 02               220 	push	ar2
   2221 90 00 01            221 	mov	dptr,#0x0001
   2224 12 21 AA            222 	lcall	_WriteMax
   2227 15 81               223 	dec	sp
                            224 ;	SRC/lcd.c:122: Strobe(0x8); //R/W = 0; RS = 0
   2229 75 82 08            225 	mov	dpl,#0x08
   222C 02 21 D1            226 	ljmp	_Strobe
                            227 ;------------------------------------------------------------
                            228 ;Allocation info for local variables in function 'LCD_Clear'
                            229 ;------------------------------------------------------------
                            230 ;i                         Allocated to stack - offset 1
                            231 ;------------------------------------------------------------
                            232 ;	SRC/lcd.c:136: void LCD_Clear(void)
                            233 ;	-----------------------------------------
                            234 ;	 function LCD_Clear
                            235 ;	-----------------------------------------
   222F                     236 _LCD_Clear:
                            237 ;	SRC/lcd.c:140: WriteMax(DATA_IND, CLEAR);
   222F 74 01               238 	mov	a,#0x01
   2231 C0 E0               239 	push	acc
   2233 90 00 01            240 	mov	dptr,#0x0001
   2236 12 21 AA            241 	lcall	_WriteMax
   2239 15 81               242 	dec	sp
                            243 ;	SRC/lcd.c:141: Strobe(0x8); //clear
   223B 75 82 08            244 	mov	dpl,#0x08
   223E 12 21 D1            245 	lcall	_Strobe
                            246 ;	SRC/lcd.c:142: cur_x = 0;
   2241 75 08 00            247 	mov	_cur_x,#0x00
                            248 ;	SRC/lcd.c:143: cur_y = 0;
   2244 C2 01               249 	clr	_cur_y
   2246 22                  250 	ret
                            251 ;------------------------------------------------------------
                            252 ;Allocation info for local variables in function 'InitLCD'
                            253 ;------------------------------------------------------------
                            254 ;i                         Allocated to registers r2 r3 
                            255 ;------------------------------------------------------------
                            256 ;	SRC/lcd.c:157: void InitLCD(void)
                            257 ;	-----------------------------------------
                            258 ;	 function InitLCD
                            259 ;	-----------------------------------------
   2247                     260 _InitLCD:
                            261 ;	SRC/lcd.c:161: for(i=0; i<4000; i++)continue; //Ожидание включения ЖКИ (>15мс после подачи 
   2247 7A 00               262 	mov	r2,#0x00
   2249 7B 00               263 	mov	r3,#0x00
   224B                     264 00101$:
   224B C3                  265 	clr	c
   224C EA                  266 	mov	a,r2
   224D 94 A0               267 	subb	a,#0xA0
   224F EB                  268 	mov	a,r3
   2250 94 0F               269 	subb	a,#0x0F
   2252 50 07               270 	jnc	00104$
   2254 0A                  271 	inc	r2
   2255 BA 00 F3            272 	cjne	r2,#0x00,00101$
   2258 0B                  273 	inc	r3
   2259 80 F0               274 	sjmp	00101$
   225B                     275 00104$:
                            276 ;	SRC/lcd.c:164: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
   225B 74 30               277 	mov	a,#0x30
   225D C0 E0               278 	push	acc
   225F 90 00 01            279 	mov	dptr,#0x0001
   2262 12 21 AA            280 	lcall	_WriteMax
   2265 15 81               281 	dec	sp
                            282 ;	SRC/lcd.c:165: Strobe(0x8);
   2267 75 82 08            283 	mov	dpl,#0x08
   226A 12 21 D1            284 	lcall	_Strobe
                            285 ;	SRC/lcd.c:166: for(i=0; i<1500; i++)continue; //Ожидание, предусмотренное протоколом
   226D 7A 00               286 	mov	r2,#0x00
   226F 7B 00               287 	mov	r3,#0x00
   2271                     288 00105$:
   2271 C3                  289 	clr	c
   2272 EA                  290 	mov	a,r2
   2273 94 DC               291 	subb	a,#0xDC
   2275 EB                  292 	mov	a,r3
   2276 94 05               293 	subb	a,#0x05
   2278 50 07               294 	jnc	00108$
   227A 0A                  295 	inc	r2
   227B BA 00 F3            296 	cjne	r2,#0x00,00105$
   227E 0B                  297 	inc	r3
   227F 80 F0               298 	sjmp	00105$
   2281                     299 00108$:
                            300 ;	SRC/lcd.c:170: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
   2281 74 30               301 	mov	a,#0x30
   2283 C0 E0               302 	push	acc
   2285 90 00 01            303 	mov	dptr,#0x0001
   2288 12 21 AA            304 	lcall	_WriteMax
   228B 15 81               305 	dec	sp
                            306 ;	SRC/lcd.c:171: Strobe(0x8);
   228D 75 82 08            307 	mov	dpl,#0x08
   2290 12 21 D1            308 	lcall	_Strobe
                            309 ;	SRC/lcd.c:172: for(i=0; i<50; i++)continue;   //Ожидание, предусмотренное протоколом
   2293 7A 00               310 	mov	r2,#0x00
   2295 7B 00               311 	mov	r3,#0x00
   2297                     312 00109$:
   2297 C3                  313 	clr	c
   2298 EA                  314 	mov	a,r2
   2299 94 32               315 	subb	a,#0x32
   229B EB                  316 	mov	a,r3
   229C 94 00               317 	subb	a,#0x00
   229E 50 07               318 	jnc	00112$
   22A0 0A                  319 	inc	r2
   22A1 BA 00 F3            320 	cjne	r2,#0x00,00109$
   22A4 0B                  321 	inc	r3
   22A5 80 F0               322 	sjmp	00109$
   22A7                     323 00112$:
                            324 ;	SRC/lcd.c:175: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS);
   22A7 74 30               325 	mov	a,#0x30
   22A9 C0 E0               326 	push	acc
   22AB 90 00 01            327 	mov	dptr,#0x0001
   22AE 12 21 AA            328 	lcall	_WriteMax
   22B1 15 81               329 	dec	sp
                            330 ;	SRC/lcd.c:176: Strobe(0x8);
   22B3 75 82 08            331 	mov	dpl,#0x08
   22B6 12 21 D1            332 	lcall	_Strobe
                            333 ;	SRC/lcd.c:180: WriteMax(DATA_IND, FUNCTION_SET|EIGHT_BITS|TWO_LINE);
   22B9 74 38               334 	mov	a,#0x38
   22BB C0 E0               335 	push	acc
   22BD 90 00 01            336 	mov	dptr,#0x0001
   22C0 12 21 AA            337 	lcall	_WriteMax
   22C3 15 81               338 	dec	sp
                            339 ;	SRC/lcd.c:181: Strobe(0x8);
   22C5 75 82 08            340 	mov	dpl,#0x08
   22C8 12 21 D1            341 	lcall	_Strobe
                            342 ;	SRC/lcd.c:184: WriteMax(DATA_IND, DISPLAY_CTRL); //Display off
   22CB 74 08               343 	mov	a,#0x08
   22CD C0 E0               344 	push	acc
   22CF 90 00 01            345 	mov	dptr,#0x0001
   22D2 12 21 AA            346 	lcall	_WriteMax
   22D5 15 81               347 	dec	sp
                            348 ;	SRC/lcd.c:185: Strobe(0x8);
   22D7 75 82 08            349 	mov	dpl,#0x08
   22DA 12 21 D1            350 	lcall	_Strobe
                            351 ;	SRC/lcd.c:188: WriteMax(DATA_IND, CLEAR); 
   22DD 74 01               352 	mov	a,#0x01
   22DF C0 E0               353 	push	acc
   22E1 90 00 01            354 	mov	dptr,#0x0001
   22E4 12 21 AA            355 	lcall	_WriteMax
   22E7 15 81               356 	dec	sp
                            357 ;	SRC/lcd.c:189: Strobe(0x8);
   22E9 75 82 08            358 	mov	dpl,#0x08
   22EC 12 21 D1            359 	lcall	_Strobe
                            360 ;	SRC/lcd.c:192: WriteMax(DATA_IND, ENTRY_MODE|INCR);
   22EF 74 06               361 	mov	a,#0x06
   22F1 C0 E0               362 	push	acc
   22F3 90 00 01            363 	mov	dptr,#0x0001
   22F6 12 21 AA            364 	lcall	_WriteMax
   22F9 15 81               365 	dec	sp
                            366 ;	SRC/lcd.c:193: Strobe(0x8);
   22FB 75 82 08            367 	mov	dpl,#0x08
   22FE 12 21 D1            368 	lcall	_Strobe
                            369 ;	SRC/lcd.c:195: WriteMax(DATA_IND, DISPLAY_CTRL|DISPLAY_ON); //Cursor OFF, Blinking OFF
   2301 74 0C               370 	mov	a,#0x0C
   2303 C0 E0               371 	push	acc
   2305 90 00 01            372 	mov	dptr,#0x0001
   2308 12 21 AA            373 	lcall	_WriteMax
   230B 15 81               374 	dec	sp
                            375 ;	SRC/lcd.c:196: Strobe(0x8);
   230D 75 82 08            376 	mov	dpl,#0x08
   2310 02 21 D1            377 	ljmp	_Strobe
                            378 ;------------------------------------------------------------
                            379 ;Allocation info for local variables in function 'LCD_Putch'
                            380 ;------------------------------------------------------------
                            381 ;ch                        Allocated to registers r2 
                            382 ;------------------------------------------------------------
                            383 ;	SRC/lcd.c:212: void LCD_Putch(char ch)
                            384 ;	-----------------------------------------
                            385 ;	 function LCD_Putch
                            386 ;	-----------------------------------------
   2313                     387 _LCD_Putch:
   2313 AA 82               388 	mov	r2,dpl
                            389 ;	SRC/lcd.c:215: if(CurPosCtrl)
   2315 30 00 25            390 	jnb	_CurPosCtrl,00104$
                            391 ;	SRC/lcd.c:217: LCD_GotoXY(cur_x,cur_y);
   2318 85 08 82            392 	mov	dpl,_cur_x
   231B A2 01               393 	mov	c,_cur_y
   231D 92 F0               394 	mov	b[0],c
   231F C0 02               395 	push	ar2
   2321 85 F0 21            396 	mov	bits,b
   2324 12 23 4D            397 	lcall	_LCD_GotoXY
   2327 D0 02               398 	pop	ar2
                            399 ;	SRC/lcd.c:218: if(++cur_x>15)cur_x=0,cur_y=~cur_y;
   2329 05 08               400 	inc	_cur_x
   232B C3                  401 	clr	c
   232C 74 8F               402 	mov	a,#(0x0F ^ 0x80)
   232E 85 08 F0            403 	mov	b,_cur_x
   2331 63 F0 80            404 	xrl	b,#0x80
   2334 95 F0               405 	subb	a,b
   2336 50 05               406 	jnc	00104$
   2338 75 08 00            407 	mov	_cur_x,#0x00
   233B D2 01               408 	setb	_cur_y
   233D                     409 00104$:
                            410 ;	SRC/lcd.c:221: WriteMax(DATA_IND,ch);
   233D C0 02               411 	push	ar2
   233F 90 00 01            412 	mov	dptr,#0x0001
   2342 12 21 AA            413 	lcall	_WriteMax
   2345 15 81               414 	dec	sp
                            415 ;	SRC/lcd.c:222: Strobe(0xC); //R/W = 0, RS = 1 (данные)
   2347 75 82 0C            416 	mov	dpl,#0x0C
   234A 02 21 D1            417 	ljmp	_Strobe
                            418 ;------------------------------------------------------------
                            419 ;Allocation info for local variables in function 'LCD_GotoXY'
                            420 ;------------------------------------------------------------
                            421 ;y                         Allocated to registers b0 
                            422 ;x                         Allocated to registers r2 
                            423 ;------------------------------------------------------------
                            424 ;	SRC/lcd.c:235: void LCD_GotoXY(unsigned char x,bit y)
                            425 ;	-----------------------------------------
                            426 ;	 function LCD_GotoXY
                            427 ;	-----------------------------------------
   234D                     428 _LCD_GotoXY:
   234D AA 82               429 	mov	r2,dpl
                            430 ;	SRC/lcd.c:237: WriteMax(DATA_IND,RAM_DD|(x+((y)?0x40:0)));
   234F 30 08 04            431 	jnb	b0,00103$
   2352 7B 40               432 	mov	r3,#0x40
   2354 80 02               433 	sjmp	00104$
   2356                     434 00103$:
   2356 7B 00               435 	mov	r3,#0x00
   2358                     436 00104$:
   2358 EB                  437 	mov	a,r3
   2359 2A                  438 	add	a,r2
   235A F5 F0               439 	mov	b,a
   235C 74 80               440 	mov	a,#0x80
   235E 45 F0               441 	orl	a,b
   2360 FB                  442 	mov	r3,a
   2361 C0 02               443 	push	ar2
   2363 C0 21               444 	push	bits
   2365 C0 03               445 	push	ar3
   2367 90 00 01            446 	mov	dptr,#0x0001
   236A 12 21 AA            447 	lcall	_WriteMax
   236D 15 81               448 	dec	sp
   236F D0 21               449 	pop	bits
                            450 ;	SRC/lcd.c:238: Strobe(0x8); //set ram
   2371 75 82 08            451 	mov	dpl,#0x08
   2374 C0 21               452 	push	bits
   2376 12 21 D1            453 	lcall	_Strobe
   2379 D0 21               454 	pop	bits
   237B D0 02               455 	pop	ar2
                            456 ;	SRC/lcd.c:239: cur_x = x;
   237D 8A 08               457 	mov	_cur_x,r2
                            458 ;	SRC/lcd.c:240: cur_y = y;
   237F A2 08               459 	mov	c,b0
   2381 92 01               460 	mov	_cur_y,c
   2383 22                  461 	ret
                            462 ;------------------------------------------------------------
                            463 ;Allocation info for local variables in function 'LCD_Type'
                            464 ;------------------------------------------------------------
                            465 ;s                         Allocated to registers r2 r3 r4 
                            466 ;t                         Allocated to registers b0 
                            467 ;------------------------------------------------------------
                            468 ;	SRC/lcd.c:252: void LCD_Type(char* s)
                            469 ;	-----------------------------------------
                            470 ;	 function LCD_Type
                            471 ;	-----------------------------------------
   2384                     472 _LCD_Type:
   2384 AA 82               473 	mov	r2,dpl
   2386 AB 83               474 	mov	r3,dph
   2388 AC F0               475 	mov	r4,b
                            476 ;	SRC/lcd.c:254: bit t = CurPosCtrl;
   238A A2 00               477 	mov	c,_CurPosCtrl
   238C 92 08               478 	mov	b0,c
                            479 ;	SRC/lcd.c:256: SwitchCurPosControl(1);
   238E D2 F0               480 	setb	b[0]
   2390 C0 02               481 	push	ar2
   2392 C0 03               482 	push	ar3
   2394 C0 04               483 	push	ar4
   2396 C0 21               484 	push	bits
   2398 85 F0 21            485 	mov	bits,b
   239B 12 21 CC            486 	lcall	_SwitchCurPosControl
   239E D0 21               487 	pop	bits
   23A0 D0 04               488 	pop	ar4
   23A2 D0 03               489 	pop	ar3
   23A4 D0 02               490 	pop	ar2
                            491 ;	SRC/lcd.c:257: while(*s)
   23A6                     492 00101$:
   23A6 8A 82               493 	mov	dpl,r2
   23A8 8B 83               494 	mov	dph,r3
   23AA 8C F0               495 	mov	b,r4
   23AC 12 3C 9F            496 	lcall	__gptrget
   23AF FD                  497 	mov	r5,a
   23B0 60 1C               498 	jz	00103$
                            499 ;	SRC/lcd.c:258: LCD_Putch(*s++);
   23B2 0A                  500 	inc	r2
   23B3 BA 00 01            501 	cjne	r2,#0x00,00110$
   23B6 0B                  502 	inc	r3
   23B7                     503 00110$:
   23B7 8D 82               504 	mov	dpl,r5
   23B9 C0 02               505 	push	ar2
   23BB C0 03               506 	push	ar3
   23BD C0 04               507 	push	ar4
   23BF C0 21               508 	push	bits
   23C1 12 23 13            509 	lcall	_LCD_Putch
   23C4 D0 21               510 	pop	bits
   23C6 D0 04               511 	pop	ar4
   23C8 D0 03               512 	pop	ar3
   23CA D0 02               513 	pop	ar2
   23CC 80 D8               514 	sjmp	00101$
   23CE                     515 00103$:
                            516 ;	SRC/lcd.c:260: SwitchCurPosControl(t);
   23CE A2 08               517 	mov	c,b0
   23D0 92 F0               518 	mov	b[0],c
   23D2 85 F0 21            519 	mov	bits,b
   23D5 02 21 CC            520 	ljmp	_SwitchCurPosControl
                            521 ;------------------------------------------------------------
                            522 ;Allocation info for local variables in function 'LCD_GetX'
                            523 ;------------------------------------------------------------
                            524 ;------------------------------------------------------------
                            525 ;	SRC/lcd.c:270: char LCD_GetX(void){
                            526 ;	-----------------------------------------
                            527 ;	 function LCD_GetX
                            528 ;	-----------------------------------------
   23D8                     529 _LCD_GetX:
                            530 ;	SRC/lcd.c:271: return cur_x;
   23D8 85 08 82            531 	mov	dpl,_cur_x
   23DB 22                  532 	ret
                            533 ;------------------------------------------------------------
                            534 ;Allocation info for local variables in function 'LCD_GetY'
                            535 ;------------------------------------------------------------
                            536 ;------------------------------------------------------------
                            537 ;	SRC/lcd.c:274: bit LCD_GetY(void){
                            538 ;	-----------------------------------------
                            539 ;	 function LCD_GetY
                            540 ;	-----------------------------------------
   23DC                     541 _LCD_GetY:
                            542 ;	SRC/lcd.c:275: return cur_y;
   23DC A2 01               543 	mov	c,_cur_y
   23DE 22                  544 	ret
                            545 	.area CSEG    (CODE)
                            546 	.area CONST   (CODE)
                            547 	.area XINIT   (CODE)
                            548 	.area CABS    (ABS,CODE)
