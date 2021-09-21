                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 01:04:32 2019
                              5 ;--------------------------------------------------------
                              6 	.module rtc
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _GetTime
                             13 	.globl _SetTime
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 	.area RSEG    (DATA)
                             18 ;--------------------------------------------------------
                             19 ; special function bits
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (DATA)
                             22 ;--------------------------------------------------------
                             23 ; overlayable register banks
                             24 ;--------------------------------------------------------
                             25 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      26 	.ds 8
                             27 ;--------------------------------------------------------
                             28 ; overlayable bit register bank
                             29 ;--------------------------------------------------------
                             30 	.area BIT_BANK	(REL,OVR,DATA)
   0021                      31 bits:
   0021                      32 	.ds 1
                    8000     33 	b0 = bits[0]
                    8100     34 	b1 = bits[1]
                    8200     35 	b2 = bits[2]
                    8300     36 	b3 = bits[3]
                    8400     37 	b4 = bits[4]
                    8500     38 	b5 = bits[5]
                    8600     39 	b6 = bits[6]
                    8700     40 	b7 = bits[7]
                             41 ;--------------------------------------------------------
                             42 ; internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area DSEG    (DATA)
                             45 ;--------------------------------------------------------
                             46 ; overlayable items in internal ram 
                             47 ;--------------------------------------------------------
                             48 	.area OSEG    (OVR,DATA)
                             49 ;--------------------------------------------------------
                             50 ; indirectly addressable internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area ISEG    (DATA)
                             53 ;--------------------------------------------------------
                             54 ; absolute internal ram data
                             55 ;--------------------------------------------------------
                             56 	.area IABS    (ABS,DATA)
                             57 	.area IABS    (ABS,DATA)
                             58 ;--------------------------------------------------------
                             59 ; bit data
                             60 ;--------------------------------------------------------
                             61 	.area BSEG    (BIT)
                             62 ;--------------------------------------------------------
                             63 ; paged external ram data
                             64 ;--------------------------------------------------------
                             65 	.area PSEG    (PAG,XDATA)
                             66 ;--------------------------------------------------------
                             67 ; external ram data
                             68 ;--------------------------------------------------------
                             69 	.area XSEG    (XDATA)
                             70 ;--------------------------------------------------------
                             71 ; absolute external ram data
                             72 ;--------------------------------------------------------
                             73 	.area XABS    (ABS,XDATA)
                             74 ;--------------------------------------------------------
                             75 ; external initialized ram data
                             76 ;--------------------------------------------------------
                             77 	.area XISEG   (XDATA)
                             78 	.area HOME    (CODE)
                             79 	.area GSINIT0 (CODE)
                             80 	.area GSINIT1 (CODE)
                             81 	.area GSINIT2 (CODE)
                             82 	.area GSINIT3 (CODE)
                             83 	.area GSINIT4 (CODE)
                             84 	.area GSINIT5 (CODE)
                             85 	.area GSINIT  (CODE)
                             86 	.area GSFINAL (CODE)
                             87 	.area CSEG    (CODE)
                             88 ;--------------------------------------------------------
                             89 ; global & static initialisations
                             90 ;--------------------------------------------------------
                             91 	.area HOME    (CODE)
                             92 	.area GSINIT  (CODE)
                             93 	.area GSFINAL (CODE)
                             94 	.area GSINIT  (CODE)
                             95 ;--------------------------------------------------------
                             96 ; Home
                             97 ;--------------------------------------------------------
                             98 	.area HOME    (CODE)
                             99 	.area HOME    (CODE)
                            100 ;--------------------------------------------------------
                            101 ; code
                            102 ;--------------------------------------------------------
                            103 	.area CSEG    (CODE)
                            104 ;------------------------------------------------------------
                            105 ;Allocation info for local variables in function 'GetTime'
                            106 ;------------------------------------------------------------
                            107 ;time                      Allocated to registers r2 r3 
                            108 ;h                         Allocated to registers r5 
                            109 ;------------------------------------------------------------
                            110 ;	SRC/rtc.c:79: unsigned char /*bit*/ GetTime(TIME xdata * time)
                            111 ;	-----------------------------------------
                            112 ;	 function GetTime
                            113 ;	-----------------------------------------
   2528                     114 _GetTime:
                    0002    115 	ar2 = 0x02
                    0003    116 	ar3 = 0x03
                    0004    117 	ar4 = 0x04
                    0005    118 	ar5 = 0x05
                    0006    119 	ar6 = 0x06
                    0007    120 	ar7 = 0x07
                    0000    121 	ar0 = 0x00
                    0001    122 	ar1 = 0x01
   2528 AA 82               123 	mov	r2,dpl
   252A AB 83               124 	mov	r3,dph
                            125 ;	SRC/rtc.c:83: if( !GetAck(RTC_ADDRESS) )
   252C 75 82 A0            126 	mov	dpl,#0xA0
   252F C0 02               127 	push	ar2
   2531 C0 03               128 	push	ar3
   2533 12 2A AB            129 	lcall	_GetAck
   2536 D0 03               130 	pop	ar3
   2538 D0 02               131 	pop	ar2
   253A 40 04               132 	jc	00102$
                            133 ;	SRC/rtc.c:84: return 1; //RTC failed to respond
   253C 75 82 01            134 	mov	dpl,#0x01
   253F 22                  135 	ret
   2540                     136 00102$:
                            137 ;	SRC/rtc.c:86: if( ReceiveBlock(RTC_ADDRESS, 1, (unsigned char xdata*)time, 4) )
   2540 C0 02               138 	push	ar2
   2542 C0 03               139 	push	ar3
   2544 74 04               140 	mov	a,#0x04
   2546 C0 E0               141 	push	acc
   2548 C0 02               142 	push	ar2
   254A C0 03               143 	push	ar3
   254C 74 01               144 	mov	a,#0x01
   254E C0 E0               145 	push	acc
   2550 75 82 A0            146 	mov	dpl,#0xA0
   2553 12 2A F2            147 	lcall	_ReceiveBlock
   2556 92 D5               148 	mov	F0,c
   2558 E5 81               149 	mov	a,sp
   255A 24 FC               150 	add	a,#0xfc
   255C F5 81               151 	mov	sp,a
   255E D0 03               152 	pop	ar3
   2560 D0 02               153 	pop	ar2
   2562 A2 D5               154 	mov	c,F0
   2564 92 08               155 	mov	b0,c
   2566 50 04               156 	jnc	00104$
                            157 ;	SRC/rtc.c:87: return 1; //Error reading
   2568 75 82 01            158 	mov	dpl,#0x01
   256B 22                  159 	ret
   256C                     160 00104$:
                            161 ;	SRC/rtc.c:89: time->hsec = BCD2Bin(time->hsec);
   256C 8A 82               162 	mov	dpl,r2
   256E 8B 83               163 	mov	dph,r3
   2570 E0                  164 	movx	a,@dptr
   2571 FC                  165 	mov	r4,a
   2572 74 0F               166 	mov	a,#0x0F
   2574 5C                  167 	anl	a,r4
   2575 FD                  168 	mov	r5,a
   2576 53 04 F0            169 	anl	ar4,#0xF0
   2579 EC                  170 	mov	a,r4
   257A C4                  171 	swap	a
   257B 54 0F               172 	anl	a,#0x0f
   257D 75 F0 0A            173 	mov	b,#0x0A
   2580 A4                  174 	mul	ab
   2581 2D                  175 	add	a,r5
   2582 8A 82               176 	mov	dpl,r2
   2584 8B 83               177 	mov	dph,r3
   2586 F0                  178 	movx	@dptr,a
                            179 ;	SRC/rtc.c:90: time->sec  = BCD2Bin(time->sec);
   2587 74 01               180 	mov	a,#0x01
   2589 2A                  181 	add	a,r2
   258A FC                  182 	mov	r4,a
   258B E4                  183 	clr	a
   258C 3B                  184 	addc	a,r3
   258D FD                  185 	mov	r5,a
   258E 8C 82               186 	mov	dpl,r4
   2590 8D 83               187 	mov	dph,r5
   2592 E0                  188 	movx	a,@dptr
   2593 FE                  189 	mov	r6,a
   2594 74 0F               190 	mov	a,#0x0F
   2596 5E                  191 	anl	a,r6
   2597 FF                  192 	mov	r7,a
   2598 53 06 F0            193 	anl	ar6,#0xF0
   259B EE                  194 	mov	a,r6
   259C C4                  195 	swap	a
   259D 54 0F               196 	anl	a,#0x0f
   259F 75 F0 0A            197 	mov	b,#0x0A
   25A2 A4                  198 	mul	ab
   25A3 2F                  199 	add	a,r7
   25A4 8C 82               200 	mov	dpl,r4
   25A6 8D 83               201 	mov	dph,r5
   25A8 F0                  202 	movx	@dptr,a
                            203 ;	SRC/rtc.c:91: time->min  = BCD2Bin(time->min);
   25A9 74 02               204 	mov	a,#0x02
   25AB 2A                  205 	add	a,r2
   25AC FC                  206 	mov	r4,a
   25AD E4                  207 	clr	a
   25AE 3B                  208 	addc	a,r3
   25AF FD                  209 	mov	r5,a
   25B0 8C 82               210 	mov	dpl,r4
   25B2 8D 83               211 	mov	dph,r5
   25B4 E0                  212 	movx	a,@dptr
   25B5 FE                  213 	mov	r6,a
   25B6 74 0F               214 	mov	a,#0x0F
   25B8 5E                  215 	anl	a,r6
   25B9 FF                  216 	mov	r7,a
   25BA 53 06 F0            217 	anl	ar6,#0xF0
   25BD EE                  218 	mov	a,r6
   25BE C4                  219 	swap	a
   25BF 54 0F               220 	anl	a,#0x0f
   25C1 75 F0 0A            221 	mov	b,#0x0A
   25C4 A4                  222 	mul	ab
   25C5 2F                  223 	add	a,r7
   25C6 FF                  224 	mov	r7,a
   25C7 8C 82               225 	mov	dpl,r4
   25C9 8D 83               226 	mov	dph,r5
   25CB F0                  227 	movx	@dptr,a
                            228 ;	SRC/rtc.c:92: h          = BCD2Bin(time->hour & 0x3F);
   25CC 74 03               229 	mov	a,#0x03
   25CE 2A                  230 	add	a,r2
   25CF FA                  231 	mov	r2,a
   25D0 E4                  232 	clr	a
   25D1 3B                  233 	addc	a,r3
   25D2 FB                  234 	mov	r3,a
   25D3 8A 82               235 	mov	dpl,r2
   25D5 8B 83               236 	mov	dph,r3
   25D7 E0                  237 	movx	a,@dptr
   25D8 FC                  238 	mov	r4,a
   25D9 74 0F               239 	mov	a,#0x0F
   25DB 5C                  240 	anl	a,r4
   25DC FD                  241 	mov	r5,a
   25DD 74 30               242 	mov	a,#0x30
   25DF 5C                  243 	anl	a,r4
   25E0 C4                  244 	swap	a
   25E1 54 0F               245 	anl	a,#0x0f
   25E3 75 F0 0A            246 	mov	b,#0x0A
   25E6 A4                  247 	mul	ab
   25E7 FE                  248 	mov	r6,a
   25E8 2D                  249 	add	a,r5
   25E9 FD                  250 	mov	r5,a
                            251 ;	SRC/rtc.c:94: if( time->hour & 0xC0 ) //12h format and pm time
   25EA EC                  252 	mov	a,r4
   25EB 54 C0               253 	anl	a,#0xC0
   25ED 60 18               254 	jz	00109$
                            255 ;	SRC/rtc.c:96: if(time->hour < 12)
   25EF BC 0C 00            256 	cjne	r4,#0x0C,00120$
   25F2                     257 00120$:
   25F2 50 0B               258 	jnc	00106$
                            259 ;	SRC/rtc.c:97: time->hour = h + 12;
   25F4 74 0C               260 	mov	a,#0x0C
   25F6 2D                  261 	add	a,r5
   25F7 FC                  262 	mov	r4,a
   25F8 8A 82               263 	mov	dpl,r2
   25FA 8B 83               264 	mov	dph,r3
   25FC F0                  265 	movx	@dptr,a
   25FD 80 0E               266 	sjmp	00110$
   25FF                     267 00106$:
                            268 ;	SRC/rtc.c:99: time->hour = 0;
   25FF 8A 82               269 	mov	dpl,r2
   2601 8B 83               270 	mov	dph,r3
   2603 E4                  271 	clr	a
   2604 F0                  272 	movx	@dptr,a
   2605 80 06               273 	sjmp	00110$
   2607                     274 00109$:
                            275 ;	SRC/rtc.c:102: time->hour = h;
   2607 8A 82               276 	mov	dpl,r2
   2609 8B 83               277 	mov	dph,r3
   260B ED                  278 	mov	a,r5
   260C F0                  279 	movx	@dptr,a
   260D                     280 00110$:
                            281 ;	SRC/rtc.c:104: return 0;
   260D 75 82 00            282 	mov	dpl,#0x00
   2610 22                  283 	ret
                            284 ;------------------------------------------------------------
                            285 ;Allocation info for local variables in function 'SetTime'
                            286 ;------------------------------------------------------------
                            287 ;time                      Allocated to registers r2 r3 
                            288 ;h                         Allocated to stack - offset 3
                            289 ;t                         Allocated to stack - offset 1
                            290 ;------------------------------------------------------------
                            291 ;	SRC/rtc.c:120: unsigned char /*bit*/ SetTime(TIME xdata * time)
                            292 ;	-----------------------------------------
                            293 ;	 function SetTime
                            294 ;	-----------------------------------------
   2611                     295 _SetTime:
   2611 C0 1E               296 	push	_bp
   2613 E5 81               297 	mov	a,sp
   2615 F5 1E               298 	mov	_bp,a
   2617 24 04               299 	add	a,#0x04
   2619 F5 81               300 	mov	sp,a
   261B AA 82               301 	mov	r2,dpl
   261D AB 83               302 	mov	r3,dph
                            303 ;	SRC/rtc.c:125: if( !GetAck(RTC_ADDRESS) )
   261F 75 82 A0            304 	mov	dpl,#0xA0
   2622 C0 02               305 	push	ar2
   2624 C0 03               306 	push	ar3
   2626 12 2A AB            307 	lcall	_GetAck
   2629 D0 03               308 	pop	ar3
   262B D0 02               309 	pop	ar2
   262D 40 06               310 	jc	00102$
                            311 ;	SRC/rtc.c:126: return 1; //RTC failed to respond
   262F 75 82 01            312 	mov	dpl,#0x01
   2632 02 26 D2            313 	ljmp	00105$
   2635                     314 00102$:
                            315 ;	SRC/rtc.c:128: t.hsec = Bin2BCD(time->hsec);
   2635 A8 1E               316 	mov	r0,_bp
   2637 08                  317 	inc	r0
   2638 8A 82               318 	mov	dpl,r2
   263A 8B 83               319 	mov	dph,r3
   263C E0                  320 	movx	a,@dptr
   263D FC                  321 	mov	r4,a
   263E 75 F0 0A            322 	mov	b,#0x0A
   2641 84                  323 	div	ab
   2642 AD F0               324 	mov	r5,b
   2644 75 F0 0A            325 	mov	b,#0x0A
   2647 EC                  326 	mov	a,r4
   2648 84                  327 	div	ab
   2649 C4                  328 	swap	a
   264A 54 F0               329 	anl	a,#0xf0
   264C 2D                  330 	add	a,r5
   264D F6                  331 	mov	@r0,a
                            332 ;	SRC/rtc.c:129: t.sec  = Bin2BCD(time->sec);
   264E AC 1E               333 	mov	r4,_bp
   2650 0C                  334 	inc	r4
   2651 EC                  335 	mov	a,r4
   2652 04                  336 	inc	a
   2653 F8                  337 	mov	r0,a
   2654 8A 82               338 	mov	dpl,r2
   2656 8B 83               339 	mov	dph,r3
   2658 A3                  340 	inc	dptr
   2659 E0                  341 	movx	a,@dptr
   265A FD                  342 	mov	r5,a
   265B 75 F0 0A            343 	mov	b,#0x0A
   265E 84                  344 	div	ab
   265F AE F0               345 	mov	r6,b
   2661 75 F0 0A            346 	mov	b,#0x0A
   2664 ED                  347 	mov	a,r5
   2665 84                  348 	div	ab
   2666 C4                  349 	swap	a
   2667 54 F0               350 	anl	a,#0xf0
   2669 2E                  351 	add	a,r6
   266A F6                  352 	mov	@r0,a
                            353 ;	SRC/rtc.c:130: t.min  = Bin2BCD(time->min);
   266B 74 02               354 	mov	a,#0x02
   266D 2C                  355 	add	a,r4
   266E F8                  356 	mov	r0,a
   266F 8A 82               357 	mov	dpl,r2
   2671 8B 83               358 	mov	dph,r3
   2673 A3                  359 	inc	dptr
   2674 A3                  360 	inc	dptr
   2675 E0                  361 	movx	a,@dptr
   2676 FD                  362 	mov	r5,a
   2677 75 F0 0A            363 	mov	b,#0x0A
   267A 84                  364 	div	ab
   267B AE F0               365 	mov	r6,b
   267D 75 F0 0A            366 	mov	b,#0x0A
   2680 ED                  367 	mov	a,r5
   2681 84                  368 	div	ab
   2682 C4                  369 	swap	a
   2683 54 F0               370 	anl	a,#0xf0
   2685 2E                  371 	add	a,r6
   2686 F6                  372 	mov	@r0,a
                            373 ;	SRC/rtc.c:131: t.hour = Bin2BCD(time->hour & 0x3F);
   2687 74 03               374 	mov	a,#0x03
   2689 2C                  375 	add	a,r4
   268A F8                  376 	mov	r0,a
   268B 8A 82               377 	mov	dpl,r2
   268D 8B 83               378 	mov	dph,r3
   268F A3                  379 	inc	dptr
   2690 A3                  380 	inc	dptr
   2691 A3                  381 	inc	dptr
   2692 E0                  382 	movx	a,@dptr
   2693 FA                  383 	mov	r2,a
   2694 53 02 3F            384 	anl	ar2,#0x3F
   2697 75 F0 0A            385 	mov	b,#0x0A
   269A EA                  386 	mov	a,r2
   269B 84                  387 	div	ab
   269C AB F0               388 	mov	r3,b
   269E 75 F0 0A            389 	mov	b,#0x0A
   26A1 EA                  390 	mov	a,r2
   26A2 84                  391 	div	ab
   26A3 C4                  392 	swap	a
   26A4 54 F0               393 	anl	a,#0xf0
   26A6 2B                  394 	add	a,r3
   26A7 F6                  395 	mov	@r0,a
                            396 ;	SRC/rtc.c:133: if( TransmitBlock(RTC_ADDRESS, 1, (unsigned char xdata*)&t, 4) )
   26A8 7A 00               397 	mov	r2,#0x00
   26AA 74 04               398 	mov	a,#0x04
   26AC C0 E0               399 	push	acc
   26AE C0 04               400 	push	ar4
   26B0 C0 02               401 	push	ar2
   26B2 74 01               402 	mov	a,#0x01
   26B4 C0 E0               403 	push	acc
   26B6 75 82 A0            404 	mov	dpl,#0xA0
   26B9 12 2B DE            405 	lcall	_TransmitBlock
   26BC 92 D5               406 	mov	F0,c
   26BE E5 81               407 	mov	a,sp
   26C0 24 FC               408 	add	a,#0xfc
   26C2 F5 81               409 	mov	sp,a
   26C4 A2 D5               410 	mov	c,F0
   26C6 92 08               411 	mov	b0,c
   26C8 50 05               412 	jnc	00104$
                            413 ;	SRC/rtc.c:134: return 1; //Error reading
   26CA 75 82 01            414 	mov	dpl,#0x01
   26CD 80 03               415 	sjmp	00105$
   26CF                     416 00104$:
                            417 ;	SRC/rtc.c:136: return 0;
   26CF 75 82 00            418 	mov	dpl,#0x00
   26D2                     419 00105$:
   26D2 85 1E 81            420 	mov	sp,_bp
   26D5 D0 1E               421 	pop	_bp
   26D7 22                  422 	ret
                            423 	.area CSEG    (CODE)
                            424 	.area CONST   (CODE)
                            425 	.area XINIT   (CODE)
                            426 	.area CABS    (ABS,CODE)
