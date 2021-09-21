                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 12 19:08:23 2018
                              5 ;--------------------------------------------------------
                              6 	.module counter
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _InitCounter
                             13 	.globl _SPR0
                             14 	.globl _SPR1
                             15 	.globl _CPHA
                             16 	.globl _CPOL
                             17 	.globl _SPIM
                             18 	.globl _SPE
                             19 	.globl _WCOL
                             20 	.globl _ISPI
                             21 	.globl _I2CI
                             22 	.globl _I2CTX
                             23 	.globl _I2CRS
                             24 	.globl _I2CM
                             25 	.globl _MDI
                             26 	.globl _MCO
                             27 	.globl _MDE
                             28 	.globl _MDO
                             29 	.globl _CS0
                             30 	.globl _CS1
                             31 	.globl _CS2
                             32 	.globl _CS3
                             33 	.globl _SCONV
                             34 	.globl _CCONV
                             35 	.globl _DMA
                             36 	.globl _ADCI
                             37 	.globl _P
                             38 	.globl _F1
                             39 	.globl _OV
                             40 	.globl _RS0
                             41 	.globl _RS1
                             42 	.globl _F0
                             43 	.globl _AC
                             44 	.globl _CY
                             45 	.globl _CAP2
                             46 	.globl _CNT2
                             47 	.globl _TR2
                             48 	.globl _XEN
                             49 	.globl _TCLK
                             50 	.globl _RCLK
                             51 	.globl _EXF2
                             52 	.globl _TF2
                             53 	.globl _WDE
                             54 	.globl _WDS
                             55 	.globl _WDR2
                             56 	.globl _WDR1
                             57 	.globl _PRE0
                             58 	.globl _PRE1
                             59 	.globl _PRE2
                             60 	.globl _PX0
                             61 	.globl _PT0
                             62 	.globl _PX1
                             63 	.globl _PT1
                             64 	.globl _PS
                             65 	.globl _PT2
                             66 	.globl _PADC
                             67 	.globl _PSI
                             68 	.globl _RXD
                             69 	.globl _TXD
                             70 	.globl _INT0
                             71 	.globl _INT1
                             72 	.globl _T0
                             73 	.globl _T1
                             74 	.globl _WR
                             75 	.globl _RD
                             76 	.globl _EX0
                             77 	.globl _ET0
                             78 	.globl _EX1
                             79 	.globl _ET1
                             80 	.globl _ES
                             81 	.globl _ET2
                             82 	.globl _EADC
                             83 	.globl _EA
                             84 	.globl _RI
                             85 	.globl _TI
                             86 	.globl _RB8
                             87 	.globl _TB8
                             88 	.globl _REN
                             89 	.globl _SM2
                             90 	.globl _SM1
                             91 	.globl _SM0
                             92 	.globl _T2
                             93 	.globl _T2EX
                             94 	.globl _IT0
                             95 	.globl _IE0
                             96 	.globl _IT1
                             97 	.globl _IE1
                             98 	.globl _TR0
                             99 	.globl _TF0
                            100 	.globl _TR1
                            101 	.globl _TF1
                            102 	.globl _DACCON
                            103 	.globl _DAC1H
                            104 	.globl _DAC1L
                            105 	.globl _DAC0H
                            106 	.globl _DAC0L
                            107 	.globl _SPICON
                            108 	.globl _SPIDAT
                            109 	.globl _ADCCON3
                            110 	.globl _ADCGAINH
                            111 	.globl _ADCGAINL
                            112 	.globl _ADCOFSH
                            113 	.globl _ADCOFSL
                            114 	.globl _B
                            115 	.globl _ADCCON1
                            116 	.globl _I2CCON
                            117 	.globl _ACC
                            118 	.globl _PSMCON
                            119 	.globl _ADCDATAH
                            120 	.globl _ADCDATAL
                            121 	.globl _ADCCON2
                            122 	.globl _DMAP
                            123 	.globl _DMAH
                            124 	.globl _DMAL
                            125 	.globl _PSW
                            126 	.globl _TH2
                            127 	.globl _TL2
                            128 	.globl _RCAP2H
                            129 	.globl _RCAP2L
                            130 	.globl _T2CON
                            131 	.globl _EADRL
                            132 	.globl _WDCON
                            133 	.globl _EDATA4
                            134 	.globl _EDATA3
                            135 	.globl _EDATA2
                            136 	.globl _EDATA1
                            137 	.globl _ETIM3
                            138 	.globl _ETIM2
                            139 	.globl _ETIM1
                            140 	.globl _ECON
                            141 	.globl _IP
                            142 	.globl _P3
                            143 	.globl _IE2
                            144 	.globl _IE
                            145 	.globl _P2
                            146 	.globl _I2CADD
                            147 	.globl _I2CDAT
                            148 	.globl _SBUF
                            149 	.globl _SCON
                            150 	.globl _P1
                            151 	.globl _TH1
                            152 	.globl _TH0
                            153 	.globl _TL1
                            154 	.globl _TL0
                            155 	.globl _TMOD
                            156 	.globl _TCON
                            157 	.globl _PCON
                            158 	.globl _DPP
                            159 	.globl _DPH
                            160 	.globl _DPL
                            161 	.globl _SP
                            162 	.globl _P0
                            163 	.globl _INT0_ISR
                            164 ;--------------------------------------------------------
                            165 ; special function registers
                            166 ;--------------------------------------------------------
                            167 	.area RSEG    (DATA)
                    0080    168 _P0	=	0x0080
                    0081    169 _SP	=	0x0081
                    0082    170 _DPL	=	0x0082
                    0083    171 _DPH	=	0x0083
                    0084    172 _DPP	=	0x0084
                    0087    173 _PCON	=	0x0087
                    0088    174 _TCON	=	0x0088
                    0089    175 _TMOD	=	0x0089
                    008A    176 _TL0	=	0x008a
                    008B    177 _TL1	=	0x008b
                    008C    178 _TH0	=	0x008c
                    008D    179 _TH1	=	0x008d
                    0090    180 _P1	=	0x0090
                    0098    181 _SCON	=	0x0098
                    0099    182 _SBUF	=	0x0099
                    009A    183 _I2CDAT	=	0x009a
                    009B    184 _I2CADD	=	0x009b
                    00A0    185 _P2	=	0x00a0
                    00A8    186 _IE	=	0x00a8
                    00A9    187 _IE2	=	0x00a9
                    00B0    188 _P3	=	0x00b0
                    00B8    189 _IP	=	0x00b8
                    00B9    190 _ECON	=	0x00b9
                    00BA    191 _ETIM1	=	0x00ba
                    00BB    192 _ETIM2	=	0x00bb
                    00C4    193 _ETIM3	=	0x00c4
                    00BC    194 _EDATA1	=	0x00bc
                    00BD    195 _EDATA2	=	0x00bd
                    00BE    196 _EDATA3	=	0x00be
                    00BF    197 _EDATA4	=	0x00bf
                    00C0    198 _WDCON	=	0x00c0
                    00C6    199 _EADRL	=	0x00c6
                    00C8    200 _T2CON	=	0x00c8
                    00CA    201 _RCAP2L	=	0x00ca
                    00CB    202 _RCAP2H	=	0x00cb
                    00CC    203 _TL2	=	0x00cc
                    00CD    204 _TH2	=	0x00cd
                    00D0    205 _PSW	=	0x00d0
                    00D2    206 _DMAL	=	0x00d2
                    00D3    207 _DMAH	=	0x00d3
                    00D4    208 _DMAP	=	0x00d4
                    00D8    209 _ADCCON2	=	0x00d8
                    00D9    210 _ADCDATAL	=	0x00d9
                    00DA    211 _ADCDATAH	=	0x00da
                    00DF    212 _PSMCON	=	0x00df
                    00E0    213 _ACC	=	0x00e0
                    00E8    214 _I2CCON	=	0x00e8
                    00EF    215 _ADCCON1	=	0x00ef
                    00F0    216 _B	=	0x00f0
                    00F1    217 _ADCOFSL	=	0x00f1
                    00F2    218 _ADCOFSH	=	0x00f2
                    00F3    219 _ADCGAINL	=	0x00f3
                    00F4    220 _ADCGAINH	=	0x00f4
                    00F5    221 _ADCCON3	=	0x00f5
                    00F7    222 _SPIDAT	=	0x00f7
                    00F8    223 _SPICON	=	0x00f8
                    00F9    224 _DAC0L	=	0x00f9
                    00FA    225 _DAC0H	=	0x00fa
                    00FB    226 _DAC1L	=	0x00fb
                    00FC    227 _DAC1H	=	0x00fc
                    00FD    228 _DACCON	=	0x00fd
                            229 ;--------------------------------------------------------
                            230 ; special function bits
                            231 ;--------------------------------------------------------
                            232 	.area RSEG    (DATA)
                    008F    233 _TF1	=	0x008f
                    008E    234 _TR1	=	0x008e
                    008D    235 _TF0	=	0x008d
                    008C    236 _TR0	=	0x008c
                    008B    237 _IE1	=	0x008b
                    008A    238 _IT1	=	0x008a
                    0089    239 _IE0	=	0x0089
                    0088    240 _IT0	=	0x0088
                    0091    241 _T2EX	=	0x0091
                    0090    242 _T2	=	0x0090
                    009F    243 _SM0	=	0x009f
                    009E    244 _SM1	=	0x009e
                    009D    245 _SM2	=	0x009d
                    009C    246 _REN	=	0x009c
                    009B    247 _TB8	=	0x009b
                    009A    248 _RB8	=	0x009a
                    0099    249 _TI	=	0x0099
                    0098    250 _RI	=	0x0098
                    00AF    251 _EA	=	0x00af
                    00AE    252 _EADC	=	0x00ae
                    00AD    253 _ET2	=	0x00ad
                    00AC    254 _ES	=	0x00ac
                    00AB    255 _ET1	=	0x00ab
                    00AA    256 _EX1	=	0x00aa
                    00A9    257 _ET0	=	0x00a9
                    00A8    258 _EX0	=	0x00a8
                    00B7    259 _RD	=	0x00b7
                    00B6    260 _WR	=	0x00b6
                    00B5    261 _T1	=	0x00b5
                    00B4    262 _T0	=	0x00b4
                    00B3    263 _INT1	=	0x00b3
                    00B2    264 _INT0	=	0x00b2
                    00B1    265 _TXD	=	0x00b1
                    00B0    266 _RXD	=	0x00b0
                    00BF    267 _PSI	=	0x00bf
                    00BE    268 _PADC	=	0x00be
                    00BD    269 _PT2	=	0x00bd
                    00BC    270 _PS	=	0x00bc
                    00BB    271 _PT1	=	0x00bb
                    00BA    272 _PX1	=	0x00ba
                    00B9    273 _PT0	=	0x00b9
                    00B8    274 _PX0	=	0x00b8
                    00C7    275 _PRE2	=	0x00c7
                    00C6    276 _PRE1	=	0x00c6
                    00C5    277 _PRE0	=	0x00c5
                    00C3    278 _WDR1	=	0x00c3
                    00C2    279 _WDR2	=	0x00c2
                    00C1    280 _WDS	=	0x00c1
                    00C0    281 _WDE	=	0x00c0
                    00CF    282 _TF2	=	0x00cf
                    00CE    283 _EXF2	=	0x00ce
                    00CD    284 _RCLK	=	0x00cd
                    00CC    285 _TCLK	=	0x00cc
                    00CB    286 _XEN	=	0x00cb
                    00CA    287 _TR2	=	0x00ca
                    00C9    288 _CNT2	=	0x00c9
                    00C8    289 _CAP2	=	0x00c8
                    00D7    290 _CY	=	0x00d7
                    00D6    291 _AC	=	0x00d6
                    00D5    292 _F0	=	0x00d5
                    00D4    293 _RS1	=	0x00d4
                    00D3    294 _RS0	=	0x00d3
                    00D2    295 _OV	=	0x00d2
                    00D1    296 _F1	=	0x00d1
                    00D0    297 _P	=	0x00d0
                    00DF    298 _ADCI	=	0x00df
                    00DE    299 _DMA	=	0x00de
                    00DD    300 _CCONV	=	0x00dd
                    00DC    301 _SCONV	=	0x00dc
                    00DB    302 _CS3	=	0x00db
                    00DA    303 _CS2	=	0x00da
                    00D9    304 _CS1	=	0x00d9
                    00D8    305 _CS0	=	0x00d8
                    00EF    306 _MDO	=	0x00ef
                    00EE    307 _MDE	=	0x00ee
                    00ED    308 _MCO	=	0x00ed
                    00EC    309 _MDI	=	0x00ec
                    00EB    310 _I2CM	=	0x00eb
                    00EA    311 _I2CRS	=	0x00ea
                    00E9    312 _I2CTX	=	0x00e9
                    00E8    313 _I2CI	=	0x00e8
                    00FF    314 _ISPI	=	0x00ff
                    00FE    315 _WCOL	=	0x00fe
                    00FD    316 _SPE	=	0x00fd
                    00FC    317 _SPIM	=	0x00fc
                    00FB    318 _CPOL	=	0x00fb
                    00FA    319 _CPHA	=	0x00fa
                    00F9    320 _SPR1	=	0x00f9
                    00F8    321 _SPR0	=	0x00f8
                            322 ;--------------------------------------------------------
                            323 ; overlayable register banks
                            324 ;--------------------------------------------------------
                            325 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     326 	.ds 8
                            327 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     328 	.ds 8
                            329 ;--------------------------------------------------------
                            330 ; overlayable bit register bank
                            331 ;--------------------------------------------------------
                            332 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     333 bits:
   0020                     334 	.ds 1
                    8000    335 	b0 = bits[0]
                    8100    336 	b1 = bits[1]
                    8200    337 	b2 = bits[2]
                    8300    338 	b3 = bits[3]
                    8400    339 	b4 = bits[4]
                    8500    340 	b5 = bits[5]
                    8600    341 	b6 = bits[6]
                    8700    342 	b7 = bits[7]
                            343 ;--------------------------------------------------------
                            344 ; internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area DSEG    (DATA)
   001D                     347 _int_counter:
   001D                     348 	.ds 1
                            349 ;--------------------------------------------------------
                            350 ; overlayable items in internal ram 
                            351 ;--------------------------------------------------------
                            352 	.area OSEG    (OVR,DATA)
                            353 ;--------------------------------------------------------
                            354 ; indirectly addressable internal ram data
                            355 ;--------------------------------------------------------
                            356 	.area ISEG    (DATA)
                            357 ;--------------------------------------------------------
                            358 ; absolute internal ram data
                            359 ;--------------------------------------------------------
                            360 	.area IABS    (ABS,DATA)
                            361 	.area IABS    (ABS,DATA)
                            362 ;--------------------------------------------------------
                            363 ; bit data
                            364 ;--------------------------------------------------------
                            365 	.area BSEG    (BIT)
                            366 ;--------------------------------------------------------
                            367 ; paged external ram data
                            368 ;--------------------------------------------------------
                            369 	.area PSEG    (PAG,XDATA)
                            370 ;--------------------------------------------------------
                            371 ; external ram data
                            372 ;--------------------------------------------------------
                            373 	.area XSEG    (XDATA)
                            374 ;--------------------------------------------------------
                            375 ; absolute external ram data
                            376 ;--------------------------------------------------------
                            377 	.area XABS    (ABS,XDATA)
                            378 ;--------------------------------------------------------
                            379 ; external initialized ram data
                            380 ;--------------------------------------------------------
                            381 	.area XISEG   (XDATA)
                            382 	.area HOME    (CODE)
                            383 	.area GSINIT0 (CODE)
                            384 	.area GSINIT1 (CODE)
                            385 	.area GSINIT2 (CODE)
                            386 	.area GSINIT3 (CODE)
                            387 	.area GSINIT4 (CODE)
                            388 	.area GSINIT5 (CODE)
                            389 	.area GSINIT  (CODE)
                            390 	.area GSFINAL (CODE)
                            391 	.area CSEG    (CODE)
                            392 ;--------------------------------------------------------
                            393 ; global & static initialisations
                            394 ;--------------------------------------------------------
                            395 	.area HOME    (CODE)
                            396 	.area GSINIT  (CODE)
                            397 	.area GSFINAL (CODE)
                            398 	.area GSINIT  (CODE)
                            399 ;	SRC/counter.c:12: static unsigned char int_counter = 0;
   217C 75 1D 00            400 	mov	_int_counter,#0x00
                            401 ;--------------------------------------------------------
                            402 ; Home
                            403 ;--------------------------------------------------------
                            404 	.area HOME    (CODE)
                            405 	.area HOME    (CODE)
                            406 ;--------------------------------------------------------
                            407 ; code
                            408 ;--------------------------------------------------------
                            409 	.area CSEG    (CODE)
                            410 ;------------------------------------------------------------
                            411 ;Allocation info for local variables in function 'InitCounter'
                            412 ;------------------------------------------------------------
                            413 ;------------------------------------------------------------
                            414 ;	SRC/counter.c:20: void InitCounter( void ){
                            415 ;	-----------------------------------------
                            416 ;	 function InitCounter
                            417 ;	-----------------------------------------
   24D5                     418 _InitCounter:
                    0002    419 	ar2 = 0x02
                    0003    420 	ar3 = 0x03
                    0004    421 	ar4 = 0x04
                    0005    422 	ar5 = 0x05
                    0006    423 	ar6 = 0x06
                    0007    424 	ar7 = 0x07
                    0000    425 	ar0 = 0x00
                    0001    426 	ar1 = 0x01
                            427 ;	SRC/counter.c:23: SetVector( 0x2003, (void *)INT0_ISR );
   24D5 7A 00               428 	mov	r2,#_INT0_ISR
   24D7 7B 25               429 	mov	r3,#(_INT0_ISR >> 8)
   24D9 7C 80               430 	mov	r4,#0x80
   24DB C0 02               431 	push	ar2
   24DD C0 03               432 	push	ar3
   24DF C0 04               433 	push	ar4
   24E1 90 20 03            434 	mov	dptr,#0x2003
   24E4 12 24 9D            435 	lcall	_SetVector
   24E7 15 81               436 	dec	sp
   24E9 15 81               437 	dec	sp
   24EB 15 81               438 	dec	sp
                            439 ;	SRC/counter.c:25: IT0=0x1; //ќпредел€ем тип запроса прерывани€: по спаду, а не по уровню
   24ED D2 88               440 	setb	_IT0
                            441 ;	SRC/counter.c:27: write_max(ENA, 0b0100000);
   24EF 74 20               442 	mov	a,#0x20
   24F1 C0 E0               443 	push	acc
   24F3 90 00 04            444 	mov	dptr,#0x0004
   24F6 12 21 D8            445 	lcall	_write_max
   24F9 15 81               446 	dec	sp
                            447 ;	SRC/counter.c:29: EX0=1; //–азрешение внешнего прерывани€ 0
   24FB D2 A8               448 	setb	_EX0
                            449 ;	SRC/counter.c:30: EA = 1; //–азрешение всех прерываний
   24FD D2 AF               450 	setb	_EA
   24FF 22                  451 	ret
                            452 ;------------------------------------------------------------
                            453 ;Allocation info for local variables in function 'INT0_ISR'
                            454 ;------------------------------------------------------------
                            455 ;------------------------------------------------------------
                            456 ;	SRC/counter.c:37: void INT0_ISR( void ) __interrupt ( 2 ) __using ( 2 )
                            457 ;	-----------------------------------------
                            458 ;	 function INT0_ISR
                            459 ;	-----------------------------------------
   2500                     460 _INT0_ISR:
                    0012    461 	ar2 = 0x12
                    0013    462 	ar3 = 0x13
                    0014    463 	ar4 = 0x14
                    0015    464 	ar5 = 0x15
                    0016    465 	ar6 = 0x16
                    0017    466 	ar7 = 0x17
                    0010    467 	ar0 = 0x10
                    0011    468 	ar1 = 0x11
   2500 C0 20               469 	push	bits
   2502 C0 E0               470 	push	acc
   2504 C0 F0               471 	push	b
   2506 C0 82               472 	push	dpl
   2508 C0 83               473 	push	dph
   250A C0 02               474 	push	(0+2)
   250C C0 03               475 	push	(0+3)
   250E C0 04               476 	push	(0+4)
   2510 C0 05               477 	push	(0+5)
   2512 C0 06               478 	push	(0+6)
   2514 C0 07               479 	push	(0+7)
   2516 C0 00               480 	push	(0+0)
   2518 C0 01               481 	push	(0+1)
   251A C0 D0               482 	push	psw
   251C 75 D0 10            483 	mov	psw,#0x10
                            484 ;	SRC/counter.c:39: leds( int_counter++ );
   251F 85 1D 82            485 	mov	dpl,_int_counter
   2522 05 1D               486 	inc	_int_counter
   2524 75 D0 00            487 	mov	psw,#0x00
   2527 12 21 C5            488 	lcall	_leds
   252A 75 D0 10            489 	mov	psw,#0x10
   252D D0 D0               490 	pop	psw
   252F D0 01               491 	pop	(0+1)
   2531 D0 00               492 	pop	(0+0)
   2533 D0 07               493 	pop	(0+7)
   2535 D0 06               494 	pop	(0+6)
   2537 D0 05               495 	pop	(0+5)
   2539 D0 04               496 	pop	(0+4)
   253B D0 03               497 	pop	(0+3)
   253D D0 02               498 	pop	(0+2)
   253F D0 83               499 	pop	dph
   2541 D0 82               500 	pop	dpl
   2543 D0 F0               501 	pop	b
   2545 D0 E0               502 	pop	acc
   2547 D0 20               503 	pop	bits
   2549 32                  504 	reti
                            505 	.area CSEG    (CODE)
                            506 	.area CONST   (CODE)
                            507 	.area XINIT   (CODE)
                            508 	.area CABS    (ABS,CODE)
