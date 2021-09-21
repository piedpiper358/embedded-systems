                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 22:14:53 2019
                              5 ;--------------------------------------------------------
                              6 	.module kb
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ScanKBOnce
                             13 	.globl _KBTable
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
                             28 ; internal ram data
                             29 ;--------------------------------------------------------
                             30 	.area DSEG    (DATA)
   0009                      31 _KBTable::
   0009                      32 	.ds 17
                             33 ;--------------------------------------------------------
                             34 ; overlayable items in internal ram 
                             35 ;--------------------------------------------------------
                             36 	.area OSEG    (OVR,DATA)
                             37 ;--------------------------------------------------------
                             38 ; indirectly addressable internal ram data
                             39 ;--------------------------------------------------------
                             40 	.area ISEG    (DATA)
                             41 ;--------------------------------------------------------
                             42 ; absolute internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area IABS    (ABS,DATA)
                             45 	.area IABS    (ABS,DATA)
                             46 ;--------------------------------------------------------
                             47 ; bit data
                             48 ;--------------------------------------------------------
                             49 	.area BSEG    (BIT)
                             50 ;--------------------------------------------------------
                             51 ; paged external ram data
                             52 ;--------------------------------------------------------
                             53 	.area PSEG    (PAG,XDATA)
                             54 ;--------------------------------------------------------
                             55 ; external ram data
                             56 ;--------------------------------------------------------
                             57 	.area XSEG    (XDATA)
                             58 ;--------------------------------------------------------
                             59 ; absolute external ram data
                             60 ;--------------------------------------------------------
                             61 	.area XABS    (ABS,XDATA)
                             62 ;--------------------------------------------------------
                             63 ; external initialized ram data
                             64 ;--------------------------------------------------------
                             65 	.area XISEG   (XDATA)
                             66 	.area HOME    (CODE)
                             67 	.area GSINIT0 (CODE)
                             68 	.area GSINIT1 (CODE)
                             69 	.area GSINIT2 (CODE)
                             70 	.area GSINIT3 (CODE)
                             71 	.area GSINIT4 (CODE)
                             72 	.area GSINIT5 (CODE)
                             73 	.area GSINIT  (CODE)
                             74 	.area GSFINAL (CODE)
                             75 	.area CSEG    (CODE)
                             76 ;--------------------------------------------------------
                             77 ; global & static initialisations
                             78 ;--------------------------------------------------------
                             79 	.area HOME    (CODE)
                             80 	.area GSINIT  (CODE)
                             81 	.area GSFINAL (CODE)
                             82 	.area GSINIT  (CODE)
                             83 ;	SRC/kb.c:40: char KBTable[]="147*2580369#ABCD"; //Таблица символов, соответствующих клавишам
   2168 75 09 31             84 	mov	_KBTable,#0x31
   216B 75 0A 34             85 	mov	(_KBTable + 0x0001),#0x34
   216E 75 0B 37             86 	mov	(_KBTable + 0x0002),#0x37
   2171 75 0C 2A             87 	mov	(_KBTable + 0x0003),#0x2A
   2174 75 0D 32             88 	mov	(_KBTable + 0x0004),#0x32
   2177 75 0E 35             89 	mov	(_KBTable + 0x0005),#0x35
   217A 75 0F 38             90 	mov	(_KBTable + 0x0006),#0x38
   217D 75 10 30             91 	mov	(_KBTable + 0x0007),#0x30
   2180 75 11 33             92 	mov	(_KBTable + 0x0008),#0x33
   2183 75 12 36             93 	mov	(_KBTable + 0x0009),#0x36
   2186 75 13 39             94 	mov	(_KBTable + 0x000a),#0x39
   2189 75 14 23             95 	mov	(_KBTable + 0x000b),#0x23
   218C 75 15 41             96 	mov	(_KBTable + 0x000c),#0x41
   218F 75 16 42             97 	mov	(_KBTable + 0x000d),#0x42
   2192 75 17 43             98 	mov	(_KBTable + 0x000e),#0x43
   2195 75 18 44             99 	mov	(_KBTable + 0x000f),#0x44
   2198 75 19 00            100 	mov	(_KBTable + 0x0010),#0x00
                            101 ;--------------------------------------------------------
                            102 ; Home
                            103 ;--------------------------------------------------------
                            104 	.area HOME    (CODE)
                            105 	.area HOME    (CODE)
                            106 ;--------------------------------------------------------
                            107 ; code
                            108 ;--------------------------------------------------------
                            109 	.area CSEG    (CODE)
                            110 ;------------------------------------------------------------
                            111 ;Allocation info for local variables in function 'ScanKBOnce'
                            112 ;------------------------------------------------------------
                            113 ;ch                        Allocated to stack - offset 1
                            114 ;row                       Allocated to registers r3 
                            115 ;col                       Allocated to registers r7 
                            116 ;rownum                    Allocated to registers r7 
                            117 ;colnum                    Allocated to stack - offset 4
                            118 ;i                         Allocated to registers r6 r2 
                            119 ;------------------------------------------------------------
                            120 ;	SRC/kb.c:67: bit ScanKBOnce(char *ch)
                            121 ;	-----------------------------------------
                            122 ;	 function ScanKBOnce
                            123 ;	-----------------------------------------
   23DF                     124 _ScanKBOnce:
                    0002    125 	ar2 = 0x02
                    0003    126 	ar3 = 0x03
                    0004    127 	ar4 = 0x04
                    0005    128 	ar5 = 0x05
                    0006    129 	ar6 = 0x06
                    0007    130 	ar7 = 0x07
                    0000    131 	ar0 = 0x00
                    0001    132 	ar1 = 0x01
   23DF C0 1E               133 	push	_bp
   23E1 85 81 1E            134 	mov	_bp,sp
   23E4 C0 82               135 	push	dpl
   23E6 C0 83               136 	push	dph
   23E8 C0 F0               137 	push	b
   23EA 05 81               138 	inc	sp
                            139 ;	SRC/kb.c:74: for(colnum = 0; colnum < 4; colnum++)
   23EC 7D 00               140 	mov	r5,#0x00
   23EE E5 1E               141 	mov	a,_bp
   23F0 24 04               142 	add	a,#0x04
   23F2 F8                  143 	mov	r0,a
   23F3 76 00               144 	mov	@r0,#0x00
   23F5                     145 00113$:
   23F5 E5 1E               146 	mov	a,_bp
   23F7 24 04               147 	add	a,#0x04
   23F9 F8                  148 	mov	r0,a
   23FA B6 04 00            149 	cjne	@r0,#0x04,00128$
   23FD                     150 00128$:
   23FD 40 03               151 	jc	00129$
   23FF 02 24 C7            152 	ljmp	00116$
   2402                     153 00129$:
                            154 ;	SRC/kb.c:76: col = 0x1 << colnum; //0001,0010,0100,1000,0001,...
   2402 E5 1E               155 	mov	a,_bp
   2404 24 04               156 	add	a,#0x04
   2406 F8                  157 	mov	r0,a
   2407 86 F0               158 	mov	b,@r0
   2409 05 F0               159 	inc	b
   240B 74 01               160 	mov	a,#0x01
   240D 80 02               161 	sjmp	00132$
   240F                     162 00130$:
   240F 25 E0               163 	add	a,acc
   2411                     164 00132$:
   2411 D5 F0 FB            165 	djnz	b,00130$
                            166 ;	SRC/kb.c:78: WriteMax(KB, ~col); //11111110,11111101,11111011,11110111,11111110,...
   2414 F4                  167 	cpl	a
   2415 FF                  168 	mov	r7,a
   2416 C0 05               169 	push	ar5
   2418 C0 07               170 	push	ar7
   241A 90 00 00            171 	mov	dptr,#0x0000
   241D 12 21 AA            172 	lcall	_WriteMax
   2420 15 81               173 	dec	sp
   2422 D0 05               174 	pop	ar5
                            175 ;	SRC/kb.c:82: for(rownum = 0; rownum < 4; rownum++)
   2424 7F 00               176 	mov	r7,#0x00
   2426 7C 00               177 	mov	r4,#0x00
   2428                     178 00109$:
   2428 BC 04 00            179 	cjne	r4,#0x04,00133$
   242B                     180 00133$:
   242B 40 03               181 	jc	00134$
   242D 02 24 B7            182 	ljmp	00115$
   2430                     183 00134$:
                            184 ;	SRC/kb.c:84: row = ReadMax(KB) & (0x10 << rownum);
   2430 C0 07               185 	push	ar7
   2432 90 00 00            186 	mov	dptr,#0x0000
   2435 C0 04               187 	push	ar4
   2437 C0 05               188 	push	ar5
   2439 12 21 C0            189 	lcall	_ReadMax
   243C AF 82               190 	mov	r7,dpl
   243E D0 05               191 	pop	ar5
   2440 D0 04               192 	pop	ar4
   2442 8C F0               193 	mov	b,r4
   2444 05 F0               194 	inc	b
   2446 74 10               195 	mov	a,#0x10
   2448 80 02               196 	sjmp	00137$
   244A                     197 00135$:
   244A 25 E0               198 	add	a,acc
   244C                     199 00137$:
   244C D5 F0 FB            200 	djnz	b,00135$
   244F FE                  201 	mov	r6,a
   2450 52 07               202 	anl	ar7,a
   2452 8F 03               203 	mov	ar3,r7
                            204 ;	SRC/kb.c:85: if( !row ) //Обнаружено нажатие клавиши:
   2454 D0 07               205 	pop	ar7
   2456 EB                  206 	mov	a,r3
                            207 ;	SRC/kb.c:87: for(i = 0; i<SECOND_SCAN_AFTER; i++)continue;//проверка на дребезг контакта:
   2457 70 58               208 	jnz	00111$
   2459 FE                  209 	mov	r6,a
   245A FA                  210 	mov	r2,a
   245B                     211 00101$:
   245B C3                  212 	clr	c
   245C EE                  213 	mov	a,r6
   245D 94 40               214 	subb	a,#0x40
   245F EA                  215 	mov	a,r2
   2460 94 1F               216 	subb	a,#0x1F
   2462 50 07               217 	jnc	00104$
   2464 0E                  218 	inc	r6
   2465 BE 00 F3            219 	cjne	r6,#0x00,00101$
   2468 0A                  220 	inc	r2
   2469 80 F0               221 	sjmp	00101$
   246B                     222 00104$:
                            223 ;	SRC/kb.c:90: row = ReadMax(KB) & (0x10 << rownum);
   246B 90 00 00            224 	mov	dptr,#0x0000
   246E C0 04               225 	push	ar4
   2470 C0 05               226 	push	ar5
   2472 C0 07               227 	push	ar7
   2474 12 21 C0            228 	lcall	_ReadMax
   2477 AA 82               229 	mov	r2,dpl
   2479 D0 07               230 	pop	ar7
   247B D0 05               231 	pop	ar5
   247D D0 04               232 	pop	ar4
   247F 8C F0               233 	mov	b,r4
   2481 05 F0               234 	inc	b
   2483 74 10               235 	mov	a,#0x10
   2485 80 02               236 	sjmp	00142$
   2487                     237 00140$:
   2487 25 E0               238 	add	a,acc
   2489                     239 00142$:
   2489 D5 F0 FB            240 	djnz	b,00140$
   248C 52 02               241 	anl	ar2,a
   248E 8A 03               242 	mov	ar3,r2
                            243 ;	SRC/kb.c:91: if( !row )
   2490 EB                  244 	mov	a,r3
   2491 70 1E               245 	jnz	00111$
                            246 ;	SRC/kb.c:93: *ch = (KBTable[(colnum<<2) + rownum]);
   2493 ED                  247 	mov	a,r5
   2494 2D                  248 	add	a,r5
   2495 25 E0               249 	add	a,acc
   2497 FA                  250 	mov	r2,a
   2498 EF                  251 	mov	a,r7
   2499 2A                  252 	add	a,r2
   249A 24 09               253 	add	a,#_KBTable
   249C F8                  254 	mov	r0,a
   249D 86 02               255 	mov	ar2,@r0
   249F A8 1E               256 	mov	r0,_bp
   24A1 08                  257 	inc	r0
   24A2 86 82               258 	mov	dpl,@r0
   24A4 08                  259 	inc	r0
   24A5 86 83               260 	mov	dph,@r0
   24A7 08                  261 	inc	r0
   24A8 86 F0               262 	mov	b,@r0
   24AA EA                  263 	mov	a,r2
   24AB 12 3C 64            264 	lcall	__gptrput
                            265 ;	SRC/kb.c:94: return 1; //Стабильное нажатие клавиши
   24AE D3                  266 	setb	c
   24AF 80 17               267 	sjmp	00117$
   24B1                     268 00111$:
                            269 ;	SRC/kb.c:82: for(rownum = 0; rownum < 4; rownum++)
   24B1 0C                  270 	inc	r4
   24B2 8C 07               271 	mov	ar7,r4
   24B4 02 24 28            272 	ljmp	00109$
   24B7                     273 00115$:
                            274 ;	SRC/kb.c:74: for(colnum = 0; colnum < 4; colnum++)
   24B7 E5 1E               275 	mov	a,_bp
   24B9 24 04               276 	add	a,#0x04
   24BB F8                  277 	mov	r0,a
   24BC 06                  278 	inc	@r0
   24BD E5 1E               279 	mov	a,_bp
   24BF 24 04               280 	add	a,#0x04
   24C1 F8                  281 	mov	r0,a
   24C2 86 05               282 	mov	ar5,@r0
   24C4 02 23 F5            283 	ljmp	00113$
   24C7                     284 00116$:
                            285 ;	SRC/kb.c:102: return 0; //Ни одна клавиша не нажата
   24C7 C3                  286 	clr	c
   24C8                     287 00117$:
   24C8 85 1E 81            288 	mov	sp,_bp
   24CB D0 1E               289 	pop	_bp
   24CD 22                  290 	ret
                            291 	.area CSEG    (CODE)
                            292 	.area CONST   (CODE)
                            293 	.area XINIT   (CODE)
                            294 	.area CABS    (ABS,CODE)
