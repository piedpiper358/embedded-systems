                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 15:28:39 2019
                              5 ;--------------------------------------------------------
                              6 	.module eeprom
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WriteBlockEEPROM
                             13 	.globl _ReadBlockEEPROM
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
                            105 ;Allocation info for local variables in function 'WriteBlockEEPROM'
                            106 ;------------------------------------------------------------
                            107 ;buf                       Allocated to stack - offset -4
                            108 ;length                    Allocated to stack - offset -5
                            109 ;address                   Allocated to stack - offset 1
                            110 ;try                       Allocated to registers r5 r6 
                            111 ;pages                     Allocated to stack - offset 2
                            112 ;i                         Allocated to registers r5 
                            113 ;finalRemainder            Allocated to stack - offset 3
                            114 ;initialRemainder          Allocated to stack - offset 4
                            115 ;sloc0                     Allocated to stack - offset 5
                            116 ;------------------------------------------------------------
                            117 ;	SRC/eeprom.c:62: bit WriteBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length)
                            118 ;	-----------------------------------------
                            119 ;	 function WriteBlockEEPROM
                            120 ;	-----------------------------------------
   26D8                     121 _WriteBlockEEPROM:
                    0002    122 	ar2 = 0x02
                    0003    123 	ar3 = 0x03
                    0004    124 	ar4 = 0x04
                    0005    125 	ar5 = 0x05
                    0006    126 	ar6 = 0x06
                    0007    127 	ar7 = 0x07
                    0000    128 	ar0 = 0x00
                    0001    129 	ar1 = 0x01
   26D8 C0 1E               130 	push	_bp
   26DA 85 81 1E            131 	mov	_bp,sp
   26DD C0 82               132 	push	dpl
   26DF E5 81               133 	mov	a,sp
   26E1 24 05               134 	add	a,#0x05
   26E3 F5 81               135 	mov	sp,a
                            136 ;	SRC/eeprom.c:67: if((address + length) > EEPROM_SIZE) 
   26E5 A8 1E               137 	mov	r0,_bp
   26E7 08                  138 	inc	r0
   26E8 86 03               139 	mov	ar3,@r0
   26EA 7C 00               140 	mov	r4,#0x00
   26EC E5 1E               141 	mov	a,_bp
   26EE 24 FB               142 	add	a,#0xfb
   26F0 F8                  143 	mov	r0,a
   26F1 86 05               144 	mov	ar5,@r0
   26F3 7E 00               145 	mov	r6,#0x00
   26F5 ED                  146 	mov	a,r5
   26F6 2B                  147 	add	a,r3
   26F7 FF                  148 	mov	r7,a
   26F8 EE                  149 	mov	a,r6
   26F9 3C                  150 	addc	a,r4
   26FA FA                  151 	mov	r2,a
   26FB C3                  152 	clr	c
   26FC 74 80               153 	mov	a,#0x80
   26FE 9F                  154 	subb	a,r7
   26FF 74 80               155 	mov	a,#(0x00 ^ 0x80)
   2701 8A F0               156 	mov	b,r2
   2703 63 F0 80            157 	xrl	b,#0x80
   2706 95 F0               158 	subb	a,b
   2708 50 04               159 	jnc	00102$
                            160 ;	SRC/eeprom.c:69: return 1;
   270A D3                  161 	setb	c
   270B 02 29 8E            162 	ljmp	00135$
   270E                     163 00102$:
                            164 ;	SRC/eeprom.c:72: if(address/PAGE_SIZE == (address+length)/PAGE_SIZE){
   270E A8 1E               165 	mov	r0,_bp
   2710 08                  166 	inc	r0
   2711 E6                  167 	mov	a,@r0
   2712 C4                  168 	swap	a
   2713 23                  169 	rl	a
   2714 54 1F               170 	anl	a,#0x1f
   2716 FA                  171 	mov	r2,a
   2717 ED                  172 	mov	a,r5
   2718 2B                  173 	add	a,r3
   2719 F5 82               174 	mov	dpl,a
   271B EE                  175 	mov	a,r6
   271C 3C                  176 	addc	a,r4
   271D F5 83               177 	mov	dph,a
   271F C0 02               178 	push	ar2
   2721 C0 05               179 	push	ar5
   2723 C0 06               180 	push	ar6
   2725 74 08               181 	mov	a,#0x08
   2727 C0 E0               182 	push	acc
   2729 E4                  183 	clr	a
   272A C0 E0               184 	push	acc
   272C 12 3D 68            185 	lcall	__divsint
   272F AB 82               186 	mov	r3,dpl
   2731 AC 83               187 	mov	r4,dph
   2733 15 81               188 	dec	sp
   2735 15 81               189 	dec	sp
   2737 D0 06               190 	pop	ar6
   2739 D0 05               191 	pop	ar5
   273B D0 02               192 	pop	ar2
   273D 7F 00               193 	mov	r7,#0x00
   273F EA                  194 	mov	a,r2
   2740 B5 03 12            195 	cjne	a,ar3,00104$
   2743 EF                  196 	mov	a,r7
   2744 B5 04 0E            197 	cjne	a,ar4,00104$
                            198 ;	SRC/eeprom.c:74: initialRemainder = length /*- address % PAGE_SIZE*/;
   2747 E5 1E               199 	mov	a,_bp
   2749 24 FB               200 	add	a,#0xfb
   274B F8                  201 	mov	r0,a
   274C E5 1E               202 	mov	a,_bp
   274E 24 04               203 	add	a,#0x04
   2750 F9                  204 	mov	r1,a
   2751 E6                  205 	mov	a,@r0
   2752 F7                  206 	mov	@r1,a
   2753 80 34               207 	sjmp	00105$
   2755                     208 00104$:
                            209 ;	SRC/eeprom.c:77: initialRemainder = (PAGE_SIZE - address % PAGE_SIZE) % PAGE_SIZE;
   2755 A8 1E               210 	mov	r0,_bp
   2757 08                  211 	inc	r0
   2758 74 07               212 	mov	a,#0x07
   275A 56                  213 	anl	a,@r0
   275B FB                  214 	mov	r3,a
   275C 7C 00               215 	mov	r4,#0x00
   275E 74 08               216 	mov	a,#0x08
   2760 C3                  217 	clr	c
   2761 9B                  218 	subb	a,r3
   2762 F5 82               219 	mov	dpl,a
   2764 E4                  220 	clr	a
   2765 9C                  221 	subb	a,r4
   2766 F5 83               222 	mov	dph,a
   2768 C0 05               223 	push	ar5
   276A C0 06               224 	push	ar6
   276C 74 08               225 	mov	a,#0x08
   276E C0 E0               226 	push	acc
   2770 E4                  227 	clr	a
   2771 C0 E0               228 	push	acc
   2773 12 3D 2B            229 	lcall	__modsint
   2776 AB 82               230 	mov	r3,dpl
   2778 AC 83               231 	mov	r4,dph
   277A 15 81               232 	dec	sp
   277C 15 81               233 	dec	sp
   277E D0 06               234 	pop	ar6
   2780 D0 05               235 	pop	ar5
   2782 E5 1E               236 	mov	a,_bp
   2784 24 04               237 	add	a,#0x04
   2786 F8                  238 	mov	r0,a
   2787 A6 03               239 	mov	@r0,ar3
   2789                     240 00105$:
                            241 ;	SRC/eeprom.c:79: pages = (length - initialRemainder) / PAGE_SIZE;
   2789 E5 1E               242 	mov	a,_bp
   278B 24 04               243 	add	a,#0x04
   278D F8                  244 	mov	r0,a
   278E 86 03               245 	mov	ar3,@r0
   2790 7C 00               246 	mov	r4,#0x00
   2792 ED                  247 	mov	a,r5
   2793 C3                  248 	clr	c
   2794 9B                  249 	subb	a,r3
   2795 FD                  250 	mov	r5,a
   2796 EE                  251 	mov	a,r6
   2797 9C                  252 	subb	a,r4
   2798 FE                  253 	mov	r6,a
   2799 C0 05               254 	push	ar5
   279B C0 06               255 	push	ar6
   279D 74 08               256 	mov	a,#0x08
   279F C0 E0               257 	push	acc
   27A1 E4                  258 	clr	a
   27A2 C0 E0               259 	push	acc
   27A4 8D 82               260 	mov	dpl,r5
   27A6 8E 83               261 	mov	dph,r6
   27A8 12 3D 68            262 	lcall	__divsint
   27AB AB 82               263 	mov	r3,dpl
   27AD 15 81               264 	dec	sp
   27AF 15 81               265 	dec	sp
   27B1 D0 06               266 	pop	ar6
   27B3 D0 05               267 	pop	ar5
   27B5 A8 1E               268 	mov	r0,_bp
   27B7 08                  269 	inc	r0
   27B8 08                  270 	inc	r0
   27B9 A6 03               271 	mov	@r0,ar3
                            272 ;	SRC/eeprom.c:80: finalRemainder = (length - initialRemainder) % PAGE_SIZE;
   27BB 74 08               273 	mov	a,#0x08
   27BD C0 E0               274 	push	acc
   27BF E4                  275 	clr	a
   27C0 C0 E0               276 	push	acc
   27C2 8D 82               277 	mov	dpl,r5
   27C4 8E 83               278 	mov	dph,r6
   27C6 12 3D 2B            279 	lcall	__modsint
   27C9 AC 82               280 	mov	r4,dpl
   27CB AD 83               281 	mov	r5,dph
   27CD 15 81               282 	dec	sp
   27CF 15 81               283 	dec	sp
   27D1 A8 1E               284 	mov	r0,_bp
   27D3 08                  285 	inc	r0
   27D4 08                  286 	inc	r0
   27D5 08                  287 	inc	r0
   27D6 A6 04               288 	mov	@r0,ar4
                            289 ;	SRC/eeprom.c:99: if( initialRemainder )
   27D8 E5 1E               290 	mov	a,_bp
   27DA 24 04               291 	add	a,#0x04
   27DC F8                  292 	mov	r0,a
   27DD E6                  293 	mov	a,@r0
   27DE 60 58               294 	jz	00114$
                            295 ;	SRC/eeprom.c:102: while(!GetAck(EEPROM_ADDRESS))
   27E0 7D 00               296 	mov	r5,#0x00
   27E2 7E 00               297 	mov	r6,#0x00
   27E4                     298 00108$:
   27E4 75 82 A2            299 	mov	dpl,#0xA2
   27E7 C0 05               300 	push	ar5
   27E9 C0 06               301 	push	ar6
   27EB 12 2A AB            302 	lcall	_GetAck
   27EE D0 06               303 	pop	ar6
   27F0 D0 05               304 	pop	ar5
   27F2 40 12               305 	jc	00110$
                            306 ;	SRC/eeprom.c:104: if(++try > 5000)
   27F4 0D                  307 	inc	r5
   27F5 BD 00 01            308 	cjne	r5,#0x00,00160$
   27F8 0E                  309 	inc	r6
   27F9                     310 00160$:
   27F9 C3                  311 	clr	c
   27FA 74 88               312 	mov	a,#0x88
   27FC 9D                  313 	subb	a,r5
   27FD 74 13               314 	mov	a,#0x13
   27FF 9E                  315 	subb	a,r6
   2800 50 E2               316 	jnc	00108$
                            317 ;	SRC/eeprom.c:106: return 1; //EEPROM failed to respond
   2802 D3                  318 	setb	c
   2803 02 29 8E            319 	ljmp	00135$
   2806                     320 00110$:
                            321 ;	SRC/eeprom.c:110: if( TransmitBlock(EEPROM_ADDRESS, address, buf, initialRemainder) )
   2806 E5 1E               322 	mov	a,_bp
   2808 24 04               323 	add	a,#0x04
   280A F8                  324 	mov	r0,a
   280B E6                  325 	mov	a,@r0
   280C C0 E0               326 	push	acc
   280E E5 1E               327 	mov	a,_bp
   2810 24 FC               328 	add	a,#0xfc
   2812 F8                  329 	mov	r0,a
   2813 E6                  330 	mov	a,@r0
   2814 C0 E0               331 	push	acc
   2816 08                  332 	inc	r0
   2817 E6                  333 	mov	a,@r0
   2818 C0 E0               334 	push	acc
   281A A8 1E               335 	mov	r0,_bp
   281C 08                  336 	inc	r0
   281D E6                  337 	mov	a,@r0
   281E C0 E0               338 	push	acc
   2820 75 82 A2            339 	mov	dpl,#0xA2
   2823 12 2B DE            340 	lcall	_TransmitBlock
   2826 92 D5               341 	mov	F0,c
   2828 E5 81               342 	mov	a,sp
   282A 24 FC               343 	add	a,#0xfc
   282C F5 81               344 	mov	sp,a
   282E A2 D5               345 	mov	c,F0
   2830 92 08               346 	mov	b0,c
   2832 50 04               347 	jnc	00114$
                            348 ;	SRC/eeprom.c:112: return 1; //Error writing
   2834 D3                  349 	setb	c
   2835 02 29 8E            350 	ljmp	00135$
   2838                     351 00114$:
                            352 ;	SRC/eeprom.c:117: for(i = 0; i < pages; ++i)
   2838 7D 00               353 	mov	r5,#0x00
   283A E5 1E               354 	mov	a,_bp
   283C 24 FC               355 	add	a,#0xfc
   283E F8                  356 	mov	r0,a
   283F E5 1E               357 	mov	a,_bp
   2841 24 04               358 	add	a,#0x04
   2843 F9                  359 	mov	r1,a
   2844 E7                  360 	mov	a,@r1
   2845 26                  361 	add	a,@r0
   2846 FE                  362 	mov	r6,a
   2847 E4                  363 	clr	a
   2848 08                  364 	inc	r0
   2849 36                  365 	addc	a,@r0
   284A FF                  366 	mov	r7,a
   284B A8 1E               367 	mov	r0,_bp
   284D 08                  368 	inc	r0
   284E E5 1E               369 	mov	a,_bp
   2850 24 04               370 	add	a,#0x04
   2852 F9                  371 	mov	r1,a
   2853 E7                  372 	mov	a,@r1
   2854 26                  373 	add	a,@r0
   2855 C0 E0               374 	push	acc
   2857 E5 1E               375 	mov	a,_bp
   2859 24 05               376 	add	a,#0x05
   285B F8                  377 	mov	r0,a
   285C D0 E0               378 	pop	acc
   285E F6                  379 	mov	@r0,a
   285F 7C 00               380 	mov	r4,#0x00
   2861                     381 00131$:
   2861 A8 1E               382 	mov	r0,_bp
   2863 08                  383 	inc	r0
   2864 08                  384 	inc	r0
   2865 C3                  385 	clr	c
   2866 EC                  386 	mov	a,r4
   2867 96                  387 	subb	a,@r0
   2868 40 03               388 	jc	00163$
   286A 02 29 02            389 	ljmp	00134$
   286D                     390 00163$:
                            391 ;	SRC/eeprom.c:120: while(!GetAck(EEPROM_ADDRESS))
   286D 7B 00               392 	mov	r3,#0x00
   286F 7A 00               393 	mov	r2,#0x00
   2871                     394 00117$:
   2871 75 82 A2            395 	mov	dpl,#0xA2
   2874 C0 02               396 	push	ar2
   2876 C0 03               397 	push	ar3
   2878 C0 04               398 	push	ar4
   287A C0 06               399 	push	ar6
   287C C0 07               400 	push	ar7
   287E 12 2A AB            401 	lcall	_GetAck
   2881 D0 07               402 	pop	ar7
   2883 D0 06               403 	pop	ar6
   2885 D0 04               404 	pop	ar4
   2887 D0 03               405 	pop	ar3
   2889 D0 02               406 	pop	ar2
   288B 40 12               407 	jc	00119$
                            408 ;	SRC/eeprom.c:122: if(++try > 5000)
   288D 0B                  409 	inc	r3
   288E BB 00 01            410 	cjne	r3,#0x00,00165$
   2891 0A                  411 	inc	r2
   2892                     412 00165$:
   2892 C3                  413 	clr	c
   2893 74 88               414 	mov	a,#0x88
   2895 9B                  415 	subb	a,r3
   2896 74 13               416 	mov	a,#0x13
   2898 9A                  417 	subb	a,r2
   2899 50 D6               418 	jnc	00117$
                            419 ;	SRC/eeprom.c:124: return 1; //EEPROM failed to respond
   289B D3                  420 	setb	c
   289C 02 29 8E            421 	ljmp	00135$
   289F                     422 00119$:
                            423 ;	SRC/eeprom.c:128: if( TransmitBlock(EEPROM_ADDRESS, address + initialRemainder + (i<<3), buf + initialRemainder + (i<<3), PAGE_SIZE) )
   289F 8C 02               424 	mov	ar2,r4
   28A1 E4                  425 	clr	a
   28A2 C4                  426 	swap	a
   28A3 03                  427 	rr	a
   28A4 54 F8               428 	anl	a,#0xf8
   28A6 CA                  429 	xch	a,r2
   28A7 C4                  430 	swap	a
   28A8 03                  431 	rr	a
   28A9 CA                  432 	xch	a,r2
   28AA 6A                  433 	xrl	a,r2
   28AB CA                  434 	xch	a,r2
   28AC 54 F8               435 	anl	a,#0xf8
   28AE CA                  436 	xch	a,r2
   28AF 6A                  437 	xrl	a,r2
   28B0 FB                  438 	mov	r3,a
   28B1 EA                  439 	mov	a,r2
   28B2 2E                  440 	add	a,r6
   28B3 FA                  441 	mov	r2,a
   28B4 EB                  442 	mov	a,r3
   28B5 3F                  443 	addc	a,r7
   28B6 FB                  444 	mov	r3,a
   28B7 C0 06               445 	push	ar6
   28B9 C0 07               446 	push	ar7
   28BB EC                  447 	mov	a,r4
   28BC C4                  448 	swap	a
   28BD 03                  449 	rr	a
   28BE 54 F8               450 	anl	a,#0xf8
   28C0 FE                  451 	mov	r6,a
   28C1 E5 1E               452 	mov	a,_bp
   28C3 24 05               453 	add	a,#0x05
   28C5 F8                  454 	mov	r0,a
   28C6 EE                  455 	mov	a,r6
   28C7 26                  456 	add	a,@r0
   28C8 FE                  457 	mov	r6,a
   28C9 C0 04               458 	push	ar4
   28CB C0 06               459 	push	ar6
   28CD C0 07               460 	push	ar7
   28CF 74 08               461 	mov	a,#0x08
   28D1 C0 E0               462 	push	acc
   28D3 C0 02               463 	push	ar2
   28D5 C0 03               464 	push	ar3
   28D7 C0 06               465 	push	ar6
   28D9 75 82 A2            466 	mov	dpl,#0xA2
   28DC 12 2B DE            467 	lcall	_TransmitBlock
   28DF 92 D5               468 	mov	F0,c
   28E1 E5 81               469 	mov	a,sp
   28E3 24 FC               470 	add	a,#0xfc
   28E5 F5 81               471 	mov	sp,a
   28E7 D0 07               472 	pop	ar7
   28E9 D0 06               473 	pop	ar6
   28EB D0 04               474 	pop	ar4
   28ED A2 D5               475 	mov	c,F0
   28EF 92 08               476 	mov	b0,c
   28F1 D0 07               477 	pop	ar7
   28F3 D0 06               478 	pop	ar6
   28F5 30 08 04            479 	jnb	b0,00133$
                            480 ;	SRC/eeprom.c:130: return 1; //Error writing
   28F8 D3                  481 	setb	c
   28F9 02 29 8E            482 	ljmp	00135$
   28FC                     483 00133$:
                            484 ;	SRC/eeprom.c:117: for(i = 0; i < pages; ++i)
   28FC 0C                  485 	inc	r4
   28FD 8C 05               486 	mov	ar5,r4
   28FF 02 28 61            487 	ljmp	00131$
   2902                     488 00134$:
                            489 ;	SRC/eeprom.c:134: if( finalRemainder )
   2902 A8 1E               490 	mov	r0,_bp
   2904 08                  491 	inc	r0
   2905 08                  492 	inc	r0
   2906 08                  493 	inc	r0
   2907 E6                  494 	mov	a,@r0
   2908 70 03               495 	jnz	00168$
   290A 02 29 8D            496 	ljmp	00130$
   290D                     497 00168$:
                            498 ;	SRC/eeprom.c:137: while(!GetAck(EEPROM_ADDRESS))
   290D 7A 00               499 	mov	r2,#0x00
   290F 7B 00               500 	mov	r3,#0x00
   2911                     501 00124$:
   2911 75 82 A2            502 	mov	dpl,#0xA2
   2914 C0 02               503 	push	ar2
   2916 C0 03               504 	push	ar3
   2918 C0 05               505 	push	ar5
   291A C0 06               506 	push	ar6
   291C C0 07               507 	push	ar7
   291E 12 2A AB            508 	lcall	_GetAck
   2921 D0 07               509 	pop	ar7
   2923 D0 06               510 	pop	ar6
   2925 D0 05               511 	pop	ar5
   2927 D0 03               512 	pop	ar3
   2929 D0 02               513 	pop	ar2
   292B 40 11               514 	jc	00126$
                            515 ;	SRC/eeprom.c:139: if(++try > 5000)
   292D 0A                  516 	inc	r2
   292E BA 00 01            517 	cjne	r2,#0x00,00170$
   2931 0B                  518 	inc	r3
   2932                     519 00170$:
   2932 C3                  520 	clr	c
   2933 74 88               521 	mov	a,#0x88
   2935 9A                  522 	subb	a,r2
   2936 74 13               523 	mov	a,#0x13
   2938 9B                  524 	subb	a,r3
   2939 50 D6               525 	jnc	00124$
                            526 ;	SRC/eeprom.c:141: return 1; //EEPROM failed to respond
   293B D3                  527 	setb	c
   293C 80 50               528 	sjmp	00135$
   293E                     529 00126$:
                            530 ;	SRC/eeprom.c:145: if( TransmitBlock(EEPROM_ADDRESS, address + initialRemainder + (i<<3), buf + initialRemainder + (i<<3), finalRemainder) )
   293E 8D 02               531 	mov	ar2,r5
   2940 E4                  532 	clr	a
   2941 C4                  533 	swap	a
   2942 03                  534 	rr	a
   2943 54 F8               535 	anl	a,#0xf8
   2945 CA                  536 	xch	a,r2
   2946 C4                  537 	swap	a
   2947 03                  538 	rr	a
   2948 CA                  539 	xch	a,r2
   2949 6A                  540 	xrl	a,r2
   294A CA                  541 	xch	a,r2
   294B 54 F8               542 	anl	a,#0xf8
   294D CA                  543 	xch	a,r2
   294E 6A                  544 	xrl	a,r2
   294F FB                  545 	mov	r3,a
   2950 EA                  546 	mov	a,r2
   2951 2E                  547 	add	a,r6
   2952 FE                  548 	mov	r6,a
   2953 EB                  549 	mov	a,r3
   2954 3F                  550 	addc	a,r7
   2955 FF                  551 	mov	r7,a
   2956 A8 1E               552 	mov	r0,_bp
   2958 08                  553 	inc	r0
   2959 E5 1E               554 	mov	a,_bp
   295B 24 04               555 	add	a,#0x04
   295D F9                  556 	mov	r1,a
   295E E7                  557 	mov	a,@r1
   295F 26                  558 	add	a,@r0
   2960 FA                  559 	mov	r2,a
   2961 ED                  560 	mov	a,r5
   2962 C4                  561 	swap	a
   2963 03                  562 	rr	a
   2964 54 F8               563 	anl	a,#0xf8
   2966 2A                  564 	add	a,r2
   2967 FA                  565 	mov	r2,a
   2968 A8 1E               566 	mov	r0,_bp
   296A 08                  567 	inc	r0
   296B 08                  568 	inc	r0
   296C 08                  569 	inc	r0
   296D E6                  570 	mov	a,@r0
   296E C0 E0               571 	push	acc
   2970 C0 06               572 	push	ar6
   2972 C0 07               573 	push	ar7
   2974 C0 02               574 	push	ar2
   2976 75 82 A2            575 	mov	dpl,#0xA2
   2979 12 2B DE            576 	lcall	_TransmitBlock
   297C 92 D5               577 	mov	F0,c
   297E E5 81               578 	mov	a,sp
   2980 24 FC               579 	add	a,#0xfc
   2982 F5 81               580 	mov	sp,a
   2984 A2 D5               581 	mov	c,F0
   2986 92 08               582 	mov	b0,c
   2988 50 03               583 	jnc	00130$
                            584 ;	SRC/eeprom.c:147: return 1; //Error writing
   298A D3                  585 	setb	c
   298B 80 01               586 	sjmp	00135$
   298D                     587 00130$:
                            588 ;	SRC/eeprom.c:151: return 0;
   298D C3                  589 	clr	c
   298E                     590 00135$:
   298E 85 1E 81            591 	mov	sp,_bp
   2991 D0 1E               592 	pop	_bp
   2993 22                  593 	ret
                            594 ;------------------------------------------------------------
                            595 ;Allocation info for local variables in function 'ReadBlockEEPROM'
                            596 ;------------------------------------------------------------
                            597 ;buf                       Allocated to stack - offset -4
                            598 ;length                    Allocated to stack - offset -5
                            599 ;address                   Allocated to registers r2 
                            600 ;try                       Allocated to registers r3 r4 
                            601 ;------------------------------------------------------------
                            602 ;	SRC/eeprom.c:169: bit ReadBlockEEPROM(unsigned char address, unsigned char xdata *buf, unsigned char length)
                            603 ;	-----------------------------------------
                            604 ;	 function ReadBlockEEPROM
                            605 ;	-----------------------------------------
   2994                     606 _ReadBlockEEPROM:
   2994 C0 1E               607 	push	_bp
   2996 85 81 1E            608 	mov	_bp,sp
   2999 AA 82               609 	mov	r2,dpl
                            610 ;	SRC/eeprom.c:173: if((address + length) > EEPROM_SIZE) return 1;
   299B 8A 03               611 	mov	ar3,r2
   299D 7C 00               612 	mov	r4,#0x00
   299F E5 1E               613 	mov	a,_bp
   29A1 24 FB               614 	add	a,#0xfb
   29A3 F8                  615 	mov	r0,a
   29A4 86 05               616 	mov	ar5,@r0
   29A6 7E 00               617 	mov	r6,#0x00
   29A8 ED                  618 	mov	a,r5
   29A9 2B                  619 	add	a,r3
   29AA FB                  620 	mov	r3,a
   29AB EE                  621 	mov	a,r6
   29AC 3C                  622 	addc	a,r4
   29AD FC                  623 	mov	r4,a
   29AE C3                  624 	clr	c
   29AF 74 80               625 	mov	a,#0x80
   29B1 9B                  626 	subb	a,r3
   29B2 74 80               627 	mov	a,#(0x00 ^ 0x80)
   29B4 8C F0               628 	mov	b,r4
   29B6 63 F0 80            629 	xrl	b,#0x80
   29B9 95 F0               630 	subb	a,b
   29BB 50 03               631 	jnc	00114$
   29BD D3                  632 	setb	c
                            633 ;	SRC/eeprom.c:176: while(!GetAck(EEPROM_ADDRESS))
   29BE 80 57               634 	sjmp	00110$
   29C0                     635 00114$:
   29C0 7B 00               636 	mov	r3,#0x00
   29C2 7C 00               637 	mov	r4,#0x00
   29C4                     638 00105$:
   29C4 75 82 A2            639 	mov	dpl,#0xA2
   29C7 C0 02               640 	push	ar2
   29C9 C0 03               641 	push	ar3
   29CB C0 04               642 	push	ar4
   29CD 12 2A AB            643 	lcall	_GetAck
   29D0 D0 04               644 	pop	ar4
   29D2 D0 03               645 	pop	ar3
   29D4 D0 02               646 	pop	ar2
   29D6 40 11               647 	jc	00107$
                            648 ;	SRC/eeprom.c:178: if(++try > 5000) // >10 мс
   29D8 0B                  649 	inc	r3
   29D9 BB 00 01            650 	cjne	r3,#0x00,00119$
   29DC 0C                  651 	inc	r4
   29DD                     652 00119$:
   29DD C3                  653 	clr	c
   29DE 74 88               654 	mov	a,#0x88
   29E0 9B                  655 	subb	a,r3
   29E1 74 13               656 	mov	a,#0x13
   29E3 9C                  657 	subb	a,r4
   29E4 50 DE               658 	jnc	00105$
                            659 ;	SRC/eeprom.c:179: return 1; //EEPROM failed to respond
   29E6 D3                  660 	setb	c
   29E7 80 2E               661 	sjmp	00110$
   29E9                     662 00107$:
                            663 ;	SRC/eeprom.c:182: if( ReceiveBlock(EEPROM_ADDRESS, address, buf, length) )
   29E9 E5 1E               664 	mov	a,_bp
   29EB 24 FB               665 	add	a,#0xfb
   29ED F8                  666 	mov	r0,a
   29EE E6                  667 	mov	a,@r0
   29EF C0 E0               668 	push	acc
   29F1 E5 1E               669 	mov	a,_bp
   29F3 24 FC               670 	add	a,#0xfc
   29F5 F8                  671 	mov	r0,a
   29F6 E6                  672 	mov	a,@r0
   29F7 C0 E0               673 	push	acc
   29F9 08                  674 	inc	r0
   29FA E6                  675 	mov	a,@r0
   29FB C0 E0               676 	push	acc
   29FD C0 02               677 	push	ar2
   29FF 75 82 A2            678 	mov	dpl,#0xA2
   2A02 12 2A F2            679 	lcall	_ReceiveBlock
   2A05 92 D5               680 	mov	F0,c
   2A07 E5 81               681 	mov	a,sp
   2A09 24 FC               682 	add	a,#0xfc
   2A0B F5 81               683 	mov	sp,a
   2A0D A2 D5               684 	mov	c,F0
   2A0F 92 08               685 	mov	b0,c
   2A11 50 03               686 	jnc	00109$
                            687 ;	SRC/eeprom.c:184: return 1; //Error writing
   2A13 D3                  688 	setb	c
   2A14 80 01               689 	sjmp	00110$
   2A16                     690 00109$:
                            691 ;	SRC/eeprom.c:187: return 0;
   2A16 C3                  692 	clr	c
   2A17                     693 00110$:
   2A17 D0 1E               694 	pop	_bp
   2A19 22                  695 	ret
                            696 	.area CSEG    (CODE)
                            697 	.area CONST   (CODE)
                            698 	.area XINIT   (CODE)
                            699 	.area CABS    (ABS,CODE)
