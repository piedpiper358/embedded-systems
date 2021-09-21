                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 01:04:32 2019
                              5 ;--------------------------------------------------------
                              6 	.module sio
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SPR0
                             13 	.globl _SPR1
                             14 	.globl _CPHA
                             15 	.globl _CPOL
                             16 	.globl _SPIM
                             17 	.globl _SPE
                             18 	.globl _WCOL
                             19 	.globl _ISPI
                             20 	.globl _I2CI
                             21 	.globl _I2CTX
                             22 	.globl _I2CRS
                             23 	.globl _I2CM
                             24 	.globl _MDI
                             25 	.globl _MCO
                             26 	.globl _MDE
                             27 	.globl _MDO
                             28 	.globl _CS0
                             29 	.globl _CS1
                             30 	.globl _CS2
                             31 	.globl _CS3
                             32 	.globl _SCONV
                             33 	.globl _CCONV
                             34 	.globl _DMA
                             35 	.globl _ADCI
                             36 	.globl _P
                             37 	.globl _F1
                             38 	.globl _OV
                             39 	.globl _RS0
                             40 	.globl _RS1
                             41 	.globl _F0
                             42 	.globl _AC
                             43 	.globl _CY
                             44 	.globl _CAP2
                             45 	.globl _CNT2
                             46 	.globl _TR2
                             47 	.globl _XEN
                             48 	.globl _TCLK
                             49 	.globl _RCLK
                             50 	.globl _EXF2
                             51 	.globl _TF2
                             52 	.globl _WDE
                             53 	.globl _WDS
                             54 	.globl _WDR2
                             55 	.globl _WDR1
                             56 	.globl _PRE0
                             57 	.globl _PRE1
                             58 	.globl _PRE2
                             59 	.globl _PX0
                             60 	.globl _PT0
                             61 	.globl _PX1
                             62 	.globl _PT1
                             63 	.globl _PS
                             64 	.globl _PT2
                             65 	.globl _PADC
                             66 	.globl _PSI
                             67 	.globl _RXD
                             68 	.globl _TXD
                             69 	.globl _INT0
                             70 	.globl _INT1
                             71 	.globl _T0
                             72 	.globl _T1
                             73 	.globl _WR
                             74 	.globl _RD
                             75 	.globl _EX0
                             76 	.globl _ET0
                             77 	.globl _EX1
                             78 	.globl _ET1
                             79 	.globl _ES
                             80 	.globl _ET2
                             81 	.globl _EADC
                             82 	.globl _EA
                             83 	.globl _RI
                             84 	.globl _TI
                             85 	.globl _RB8
                             86 	.globl _TB8
                             87 	.globl _REN
                             88 	.globl _SM2
                             89 	.globl _SM1
                             90 	.globl _SM0
                             91 	.globl _T2
                             92 	.globl _T2EX
                             93 	.globl _IT0
                             94 	.globl _IE0
                             95 	.globl _IT1
                             96 	.globl _IE1
                             97 	.globl _TR0
                             98 	.globl _TF0
                             99 	.globl _TR1
                            100 	.globl _TF1
                            101 	.globl _DACCON
                            102 	.globl _DAC1H
                            103 	.globl _DAC1L
                            104 	.globl _DAC0H
                            105 	.globl _DAC0L
                            106 	.globl _SPICON
                            107 	.globl _SPIDAT
                            108 	.globl _ADCCON3
                            109 	.globl _ADCGAINH
                            110 	.globl _ADCGAINL
                            111 	.globl _ADCOFSH
                            112 	.globl _ADCOFSL
                            113 	.globl _B
                            114 	.globl _ADCCON1
                            115 	.globl _I2CCON
                            116 	.globl _ACC
                            117 	.globl _PSMCON
                            118 	.globl _ADCDATAH
                            119 	.globl _ADCDATAL
                            120 	.globl _ADCCON2
                            121 	.globl _DMAP
                            122 	.globl _DMAH
                            123 	.globl _DMAL
                            124 	.globl _PSW
                            125 	.globl _TH2
                            126 	.globl _TL2
                            127 	.globl _RCAP2H
                            128 	.globl _RCAP2L
                            129 	.globl _T2CON
                            130 	.globl _EADRL
                            131 	.globl _WDCON
                            132 	.globl _EDATA4
                            133 	.globl _EDATA3
                            134 	.globl _EDATA2
                            135 	.globl _EDATA1
                            136 	.globl _ETIM3
                            137 	.globl _ETIM2
                            138 	.globl _ETIM1
                            139 	.globl _ECON
                            140 	.globl _IP
                            141 	.globl _P3
                            142 	.globl _IE2
                            143 	.globl _IE
                            144 	.globl _P2
                            145 	.globl _I2CADD
                            146 	.globl _I2CDAT
                            147 	.globl _SBUF
                            148 	.globl _SCON
                            149 	.globl _P1
                            150 	.globl _TH1
                            151 	.globl _TH0
                            152 	.globl _TL1
                            153 	.globl _TL0
                            154 	.globl _TMOD
                            155 	.globl _TCON
                            156 	.globl _PCON
                            157 	.globl _DPP
                            158 	.globl _DPH
                            159 	.globl _DPL
                            160 	.globl _SP
                            161 	.globl _P0
                            162 	.globl _RSioStat
                            163 	.globl _WSio
                            164 	.globl _RSio
                            165 	.globl _Type
                            166 	.globl _InitSIO
                            167 ;--------------------------------------------------------
                            168 ; special function registers
                            169 ;--------------------------------------------------------
                            170 	.area RSEG    (DATA)
                    0080    171 _P0	=	0x0080
                    0081    172 _SP	=	0x0081
                    0082    173 _DPL	=	0x0082
                    0083    174 _DPH	=	0x0083
                    0084    175 _DPP	=	0x0084
                    0087    176 _PCON	=	0x0087
                    0088    177 _TCON	=	0x0088
                    0089    178 _TMOD	=	0x0089
                    008A    179 _TL0	=	0x008a
                    008B    180 _TL1	=	0x008b
                    008C    181 _TH0	=	0x008c
                    008D    182 _TH1	=	0x008d
                    0090    183 _P1	=	0x0090
                    0098    184 _SCON	=	0x0098
                    0099    185 _SBUF	=	0x0099
                    009A    186 _I2CDAT	=	0x009a
                    009B    187 _I2CADD	=	0x009b
                    00A0    188 _P2	=	0x00a0
                    00A8    189 _IE	=	0x00a8
                    00A9    190 _IE2	=	0x00a9
                    00B0    191 _P3	=	0x00b0
                    00B8    192 _IP	=	0x00b8
                    00B9    193 _ECON	=	0x00b9
                    00BA    194 _ETIM1	=	0x00ba
                    00BB    195 _ETIM2	=	0x00bb
                    00C4    196 _ETIM3	=	0x00c4
                    00BC    197 _EDATA1	=	0x00bc
                    00BD    198 _EDATA2	=	0x00bd
                    00BE    199 _EDATA3	=	0x00be
                    00BF    200 _EDATA4	=	0x00bf
                    00C0    201 _WDCON	=	0x00c0
                    00C6    202 _EADRL	=	0x00c6
                    00C8    203 _T2CON	=	0x00c8
                    00CA    204 _RCAP2L	=	0x00ca
                    00CB    205 _RCAP2H	=	0x00cb
                    00CC    206 _TL2	=	0x00cc
                    00CD    207 _TH2	=	0x00cd
                    00D0    208 _PSW	=	0x00d0
                    00D2    209 _DMAL	=	0x00d2
                    00D3    210 _DMAH	=	0x00d3
                    00D4    211 _DMAP	=	0x00d4
                    00D8    212 _ADCCON2	=	0x00d8
                    00D9    213 _ADCDATAL	=	0x00d9
                    00DA    214 _ADCDATAH	=	0x00da
                    00DF    215 _PSMCON	=	0x00df
                    00E0    216 _ACC	=	0x00e0
                    00E8    217 _I2CCON	=	0x00e8
                    00EF    218 _ADCCON1	=	0x00ef
                    00F0    219 _B	=	0x00f0
                    00F1    220 _ADCOFSL	=	0x00f1
                    00F2    221 _ADCOFSH	=	0x00f2
                    00F3    222 _ADCGAINL	=	0x00f3
                    00F4    223 _ADCGAINH	=	0x00f4
                    00F5    224 _ADCCON3	=	0x00f5
                    00F7    225 _SPIDAT	=	0x00f7
                    00F8    226 _SPICON	=	0x00f8
                    00F9    227 _DAC0L	=	0x00f9
                    00FA    228 _DAC0H	=	0x00fa
                    00FB    229 _DAC1L	=	0x00fb
                    00FC    230 _DAC1H	=	0x00fc
                    00FD    231 _DACCON	=	0x00fd
                            232 ;--------------------------------------------------------
                            233 ; special function bits
                            234 ;--------------------------------------------------------
                            235 	.area RSEG    (DATA)
                    008F    236 _TF1	=	0x008f
                    008E    237 _TR1	=	0x008e
                    008D    238 _TF0	=	0x008d
                    008C    239 _TR0	=	0x008c
                    008B    240 _IE1	=	0x008b
                    008A    241 _IT1	=	0x008a
                    0089    242 _IE0	=	0x0089
                    0088    243 _IT0	=	0x0088
                    0091    244 _T2EX	=	0x0091
                    0090    245 _T2	=	0x0090
                    009F    246 _SM0	=	0x009f
                    009E    247 _SM1	=	0x009e
                    009D    248 _SM2	=	0x009d
                    009C    249 _REN	=	0x009c
                    009B    250 _TB8	=	0x009b
                    009A    251 _RB8	=	0x009a
                    0099    252 _TI	=	0x0099
                    0098    253 _RI	=	0x0098
                    00AF    254 _EA	=	0x00af
                    00AE    255 _EADC	=	0x00ae
                    00AD    256 _ET2	=	0x00ad
                    00AC    257 _ES	=	0x00ac
                    00AB    258 _ET1	=	0x00ab
                    00AA    259 _EX1	=	0x00aa
                    00A9    260 _ET0	=	0x00a9
                    00A8    261 _EX0	=	0x00a8
                    00B7    262 _RD	=	0x00b7
                    00B6    263 _WR	=	0x00b6
                    00B5    264 _T1	=	0x00b5
                    00B4    265 _T0	=	0x00b4
                    00B3    266 _INT1	=	0x00b3
                    00B2    267 _INT0	=	0x00b2
                    00B1    268 _TXD	=	0x00b1
                    00B0    269 _RXD	=	0x00b0
                    00BF    270 _PSI	=	0x00bf
                    00BE    271 _PADC	=	0x00be
                    00BD    272 _PT2	=	0x00bd
                    00BC    273 _PS	=	0x00bc
                    00BB    274 _PT1	=	0x00bb
                    00BA    275 _PX1	=	0x00ba
                    00B9    276 _PT0	=	0x00b9
                    00B8    277 _PX0	=	0x00b8
                    00C7    278 _PRE2	=	0x00c7
                    00C6    279 _PRE1	=	0x00c6
                    00C5    280 _PRE0	=	0x00c5
                    00C3    281 _WDR1	=	0x00c3
                    00C2    282 _WDR2	=	0x00c2
                    00C1    283 _WDS	=	0x00c1
                    00C0    284 _WDE	=	0x00c0
                    00CF    285 _TF2	=	0x00cf
                    00CE    286 _EXF2	=	0x00ce
                    00CD    287 _RCLK	=	0x00cd
                    00CC    288 _TCLK	=	0x00cc
                    00CB    289 _XEN	=	0x00cb
                    00CA    290 _TR2	=	0x00ca
                    00C9    291 _CNT2	=	0x00c9
                    00C8    292 _CAP2	=	0x00c8
                    00D7    293 _CY	=	0x00d7
                    00D6    294 _AC	=	0x00d6
                    00D5    295 _F0	=	0x00d5
                    00D4    296 _RS1	=	0x00d4
                    00D3    297 _RS0	=	0x00d3
                    00D2    298 _OV	=	0x00d2
                    00D1    299 _F1	=	0x00d1
                    00D0    300 _P	=	0x00d0
                    00DF    301 _ADCI	=	0x00df
                    00DE    302 _DMA	=	0x00de
                    00DD    303 _CCONV	=	0x00dd
                    00DC    304 _SCONV	=	0x00dc
                    00DB    305 _CS3	=	0x00db
                    00DA    306 _CS2	=	0x00da
                    00D9    307 _CS1	=	0x00d9
                    00D8    308 _CS0	=	0x00d8
                    00EF    309 _MDO	=	0x00ef
                    00EE    310 _MDE	=	0x00ee
                    00ED    311 _MCO	=	0x00ed
                    00EC    312 _MDI	=	0x00ec
                    00EB    313 _I2CM	=	0x00eb
                    00EA    314 _I2CRS	=	0x00ea
                    00E9    315 _I2CTX	=	0x00e9
                    00E8    316 _I2CI	=	0x00e8
                    00FF    317 _ISPI	=	0x00ff
                    00FE    318 _WCOL	=	0x00fe
                    00FD    319 _SPE	=	0x00fd
                    00FC    320 _SPIM	=	0x00fc
                    00FB    321 _CPOL	=	0x00fb
                    00FA    322 _CPHA	=	0x00fa
                    00F9    323 _SPR1	=	0x00f9
                    00F8    324 _SPR0	=	0x00f8
                            325 ;--------------------------------------------------------
                            326 ; overlayable register banks
                            327 ;--------------------------------------------------------
                            328 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     329 	.ds 8
                            330 ;--------------------------------------------------------
                            331 ; overlayable bit register bank
                            332 ;--------------------------------------------------------
                            333 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     334 bits:
   0021                     335 	.ds 1
                    8000    336 	b0 = bits[0]
                    8100    337 	b1 = bits[1]
                    8200    338 	b2 = bits[2]
                    8300    339 	b3 = bits[3]
                    8400    340 	b4 = bits[4]
                    8500    341 	b5 = bits[5]
                    8600    342 	b6 = bits[6]
                    8700    343 	b7 = bits[7]
                            344 ;--------------------------------------------------------
                            345 ; internal ram data
                            346 ;--------------------------------------------------------
                            347 	.area DSEG    (DATA)
                            348 ;--------------------------------------------------------
                            349 ; overlayable items in internal ram 
                            350 ;--------------------------------------------------------
                            351 	.area OSEG    (OVR,DATA)
                            352 ;--------------------------------------------------------
                            353 ; indirectly addressable internal ram data
                            354 ;--------------------------------------------------------
                            355 	.area ISEG    (DATA)
                            356 ;--------------------------------------------------------
                            357 ; absolute internal ram data
                            358 ;--------------------------------------------------------
                            359 	.area IABS    (ABS,DATA)
                            360 	.area IABS    (ABS,DATA)
                            361 ;--------------------------------------------------------
                            362 ; bit data
                            363 ;--------------------------------------------------------
                            364 	.area BSEG    (BIT)
                            365 ;--------------------------------------------------------
                            366 ; paged external ram data
                            367 ;--------------------------------------------------------
                            368 	.area PSEG    (PAG,XDATA)
                            369 ;--------------------------------------------------------
                            370 ; external ram data
                            371 ;--------------------------------------------------------
                            372 	.area XSEG    (XDATA)
                            373 ;--------------------------------------------------------
                            374 ; absolute external ram data
                            375 ;--------------------------------------------------------
                            376 	.area XABS    (ABS,XDATA)
                            377 ;--------------------------------------------------------
                            378 ; external initialized ram data
                            379 ;--------------------------------------------------------
                            380 	.area XISEG   (XDATA)
                            381 	.area HOME    (CODE)
                            382 	.area GSINIT0 (CODE)
                            383 	.area GSINIT1 (CODE)
                            384 	.area GSINIT2 (CODE)
                            385 	.area GSINIT3 (CODE)
                            386 	.area GSINIT4 (CODE)
                            387 	.area GSINIT5 (CODE)
                            388 	.area GSINIT  (CODE)
                            389 	.area GSFINAL (CODE)
                            390 	.area CSEG    (CODE)
                            391 ;--------------------------------------------------------
                            392 ; global & static initialisations
                            393 ;--------------------------------------------------------
                            394 	.area HOME    (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.area GSFINAL (CODE)
                            397 	.area GSINIT  (CODE)
                            398 ;--------------------------------------------------------
                            399 ; Home
                            400 ;--------------------------------------------------------
                            401 	.area HOME    (CODE)
                            402 	.area HOME    (CODE)
                            403 ;--------------------------------------------------------
                            404 ; code
                            405 ;--------------------------------------------------------
                            406 	.area CSEG    (CODE)
                            407 ;------------------------------------------------------------
                            408 ;Allocation info for local variables in function 'RSioStat'
                            409 ;------------------------------------------------------------
                            410 ;------------------------------------------------------------
                            411 ;	SRC/sio.c:50: bit RSioStat(void)  
                            412 ;	-----------------------------------------
                            413 ;	 function RSioStat
                            414 ;	-----------------------------------------
   24CE                     415 _RSioStat:
                    0002    416 	ar2 = 0x02
                    0003    417 	ar3 = 0x03
                    0004    418 	ar4 = 0x04
                    0005    419 	ar5 = 0x05
                    0006    420 	ar6 = 0x06
                    0007    421 	ar7 = 0x07
                    0000    422 	ar0 = 0x00
                    0001    423 	ar1 = 0x01
                            424 ;	SRC/sio.c:52: return RI;
   24CE A2 98               425 	mov	c,_RI
   24D0 22                  426 	ret
                            427 ;------------------------------------------------------------
                            428 ;Allocation info for local variables in function 'WSio'
                            429 ;------------------------------------------------------------
                            430 ;Sym                       Allocated to registers 
                            431 ;------------------------------------------------------------
                            432 ;	SRC/sio.c:65: void WSio(unsigned char Sym)
                            433 ;	-----------------------------------------
                            434 ;	 function WSio
                            435 ;	-----------------------------------------
   24D1                     436 _WSio:
   24D1 85 82 99            437 	mov	_SBUF,dpl
                            438 ;	SRC/sio.c:68: TI=0;
   24D4 C2 99               439 	clr	_TI
                            440 ;	SRC/sio.c:69: while(!TI);
   24D6                     441 00101$:
   24D6 30 99 FD            442 	jnb	_TI,00101$
   24D9 22                  443 	ret
                            444 ;------------------------------------------------------------
                            445 ;Allocation info for local variables in function 'RSio'
                            446 ;------------------------------------------------------------
                            447 ;------------------------------------------------------------
                            448 ;	SRC/sio.c:81: unsigned char RSio(void)
                            449 ;	-----------------------------------------
                            450 ;	 function RSio
                            451 ;	-----------------------------------------
   24DA                     452 _RSio:
                            453 ;	SRC/sio.c:83: while(!RI);
   24DA                     454 00101$:
                            455 ;	SRC/sio.c:84: RI=0;
   24DA 10 98 02            456 	jbc	_RI,00108$
   24DD 80 FB               457 	sjmp	00101$
   24DF                     458 00108$:
                            459 ;	SRC/sio.c:85: return SBUF;
   24DF 85 99 82            460 	mov	dpl,_SBUF
   24E2 22                  461 	ret
                            462 ;------------------------------------------------------------
                            463 ;Allocation info for local variables in function 'Type'
                            464 ;------------------------------------------------------------
                            465 ;Str                       Allocated to registers r2 r3 r4 
                            466 ;------------------------------------------------------------
                            467 ;	SRC/sio.c:98: void Type(char * Str)
                            468 ;	-----------------------------------------
                            469 ;	 function Type
                            470 ;	-----------------------------------------
   24E3                     471 _Type:
   24E3 AA 82               472 	mov	r2,dpl
   24E5 AB 83               473 	mov	r3,dph
   24E7 AC F0               474 	mov	r4,b
                            475 ;	SRC/sio.c:100: while(*Str)
   24E9                     476 00101$:
   24E9 8A 82               477 	mov	dpl,r2
   24EB 8B 83               478 	mov	dph,r3
   24ED 8C F0               479 	mov	b,r4
   24EF 12 3C 9F            480 	lcall	__gptrget
   24F2 FD                  481 	mov	r5,a
   24F3 60 18               482 	jz	00104$
                            483 ;	SRC/sio.c:101: WSio(*Str++);
   24F5 0A                  484 	inc	r2
   24F6 BA 00 01            485 	cjne	r2,#0x00,00110$
   24F9 0B                  486 	inc	r3
   24FA                     487 00110$:
   24FA 8D 82               488 	mov	dpl,r5
   24FC C0 02               489 	push	ar2
   24FE C0 03               490 	push	ar3
   2500 C0 04               491 	push	ar4
   2502 12 24 D1            492 	lcall	_WSio
   2505 D0 04               493 	pop	ar4
   2507 D0 03               494 	pop	ar3
   2509 D0 02               495 	pop	ar2
   250B 80 DC               496 	sjmp	00101$
   250D                     497 00104$:
   250D 22                  498 	ret
                            499 ;------------------------------------------------------------
                            500 ;Allocation info for local variables in function 'InitSIO'
                            501 ;------------------------------------------------------------
                            502 ;sdouble                   Allocated to registers b0 
                            503 ;speed                     Allocated to registers 
                            504 ;------------------------------------------------------------
                            505 ;	SRC/sio.c:117: void InitSIO(char speed, bit sdouble)
                            506 ;	-----------------------------------------
                            507 ;	 function InitSIO
                            508 ;	-----------------------------------------
   250E                     509 _InitSIO:
   250E 85 82 8D            510 	mov	_TH1,dpl
                            511 ;	SRC/sio.c:120: TMOD    |= 0x20; //Таймер 1 будет работать в режиме autoreload
   2511 43 89 20            512 	orl	_TMOD,#0x20
                            513 ;	SRC/sio.c:122: if(sdouble)
   2514 30 08 05            514 	jnb	b0,00102$
                            515 ;	SRC/sio.c:123: PCON|=0x80;//Если sdouble==1, то скорость удваивается
   2517 43 87 80            516 	orl	_PCON,#0x80
   251A 80 03               517 	sjmp	00103$
   251C                     518 00102$:
                            519 ;	SRC/sio.c:125: PCON&=~0x80;
   251C 53 87 7F            520 	anl	_PCON,#0x7F
   251F                     521 00103$:
                            522 ;	SRC/sio.c:127: TCON    |= 0x40; //Запуск таймера 1
   251F 43 88 40            523 	orl	_TCON,#0x40
                            524 ;	SRC/sio.c:128: SCON     = 0x50; //Настройки последовательного канала
   2522 75 98 50            525 	mov	_SCON,#0x50
                            526 ;	SRC/sio.c:129: ES       = 0;    //Запрещение прерываний от приемопередатчика
   2525 C2 AC               527 	clr	_ES
   2527 22                  528 	ret
                            529 	.area CSEG    (CODE)
                            530 	.area CONST   (CODE)
                            531 	.area XINIT   (CODE)
                            532 	.area CABS    (ABS,CODE)
