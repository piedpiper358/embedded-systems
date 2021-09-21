                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Jan 13 00:32:53 2019
                              5 ;--------------------------------------------------------
                              6 	.module sio
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SetVector
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
                            163 	.globl _isTransmitting
                            164 	.globl _init_sio
                            165 	.globl _rsiostat
                            166 	.globl _wsio
                            167 	.globl _rsio
                            168 	.globl _type
                            169 ;--------------------------------------------------------
                            170 ; special function registers
                            171 ;--------------------------------------------------------
                            172 	.area RSEG    (DATA)
                    0080    173 _P0	=	0x0080
                    0081    174 _SP	=	0x0081
                    0082    175 _DPL	=	0x0082
                    0083    176 _DPH	=	0x0083
                    0084    177 _DPP	=	0x0084
                    0087    178 _PCON	=	0x0087
                    0088    179 _TCON	=	0x0088
                    0089    180 _TMOD	=	0x0089
                    008A    181 _TL0	=	0x008a
                    008B    182 _TL1	=	0x008b
                    008C    183 _TH0	=	0x008c
                    008D    184 _TH1	=	0x008d
                    0090    185 _P1	=	0x0090
                    0098    186 _SCON	=	0x0098
                    0099    187 _SBUF	=	0x0099
                    009A    188 _I2CDAT	=	0x009a
                    009B    189 _I2CADD	=	0x009b
                    00A0    190 _P2	=	0x00a0
                    00A8    191 _IE	=	0x00a8
                    00A9    192 _IE2	=	0x00a9
                    00B0    193 _P3	=	0x00b0
                    00B8    194 _IP	=	0x00b8
                    00B9    195 _ECON	=	0x00b9
                    00BA    196 _ETIM1	=	0x00ba
                    00BB    197 _ETIM2	=	0x00bb
                    00C4    198 _ETIM3	=	0x00c4
                    00BC    199 _EDATA1	=	0x00bc
                    00BD    200 _EDATA2	=	0x00bd
                    00BE    201 _EDATA3	=	0x00be
                    00BF    202 _EDATA4	=	0x00bf
                    00C0    203 _WDCON	=	0x00c0
                    00C6    204 _EADRL	=	0x00c6
                    00C8    205 _T2CON	=	0x00c8
                    00CA    206 _RCAP2L	=	0x00ca
                    00CB    207 _RCAP2H	=	0x00cb
                    00CC    208 _TL2	=	0x00cc
                    00CD    209 _TH2	=	0x00cd
                    00D0    210 _PSW	=	0x00d0
                    00D2    211 _DMAL	=	0x00d2
                    00D3    212 _DMAH	=	0x00d3
                    00D4    213 _DMAP	=	0x00d4
                    00D8    214 _ADCCON2	=	0x00d8
                    00D9    215 _ADCDATAL	=	0x00d9
                    00DA    216 _ADCDATAH	=	0x00da
                    00DF    217 _PSMCON	=	0x00df
                    00E0    218 _ACC	=	0x00e0
                    00E8    219 _I2CCON	=	0x00e8
                    00EF    220 _ADCCON1	=	0x00ef
                    00F0    221 _B	=	0x00f0
                    00F1    222 _ADCOFSL	=	0x00f1
                    00F2    223 _ADCOFSH	=	0x00f2
                    00F3    224 _ADCGAINL	=	0x00f3
                    00F4    225 _ADCGAINH	=	0x00f4
                    00F5    226 _ADCCON3	=	0x00f5
                    00F7    227 _SPIDAT	=	0x00f7
                    00F8    228 _SPICON	=	0x00f8
                    00F9    229 _DAC0L	=	0x00f9
                    00FA    230 _DAC0H	=	0x00fa
                    00FB    231 _DAC1L	=	0x00fb
                    00FC    232 _DAC1H	=	0x00fc
                    00FD    233 _DACCON	=	0x00fd
                            234 ;--------------------------------------------------------
                            235 ; special function bits
                            236 ;--------------------------------------------------------
                            237 	.area RSEG    (DATA)
                    008F    238 _TF1	=	0x008f
                    008E    239 _TR1	=	0x008e
                    008D    240 _TF0	=	0x008d
                    008C    241 _TR0	=	0x008c
                    008B    242 _IE1	=	0x008b
                    008A    243 _IT1	=	0x008a
                    0089    244 _IE0	=	0x0089
                    0088    245 _IT0	=	0x0088
                    0091    246 _T2EX	=	0x0091
                    0090    247 _T2	=	0x0090
                    009F    248 _SM0	=	0x009f
                    009E    249 _SM1	=	0x009e
                    009D    250 _SM2	=	0x009d
                    009C    251 _REN	=	0x009c
                    009B    252 _TB8	=	0x009b
                    009A    253 _RB8	=	0x009a
                    0099    254 _TI	=	0x0099
                    0098    255 _RI	=	0x0098
                    00AF    256 _EA	=	0x00af
                    00AE    257 _EADC	=	0x00ae
                    00AD    258 _ET2	=	0x00ad
                    00AC    259 _ES	=	0x00ac
                    00AB    260 _ET1	=	0x00ab
                    00AA    261 _EX1	=	0x00aa
                    00A9    262 _ET0	=	0x00a9
                    00A8    263 _EX0	=	0x00a8
                    00B7    264 _RD	=	0x00b7
                    00B6    265 _WR	=	0x00b6
                    00B5    266 _T1	=	0x00b5
                    00B4    267 _T0	=	0x00b4
                    00B3    268 _INT1	=	0x00b3
                    00B2    269 _INT0	=	0x00b2
                    00B1    270 _TXD	=	0x00b1
                    00B0    271 _RXD	=	0x00b0
                    00BF    272 _PSI	=	0x00bf
                    00BE    273 _PADC	=	0x00be
                    00BD    274 _PT2	=	0x00bd
                    00BC    275 _PS	=	0x00bc
                    00BB    276 _PT1	=	0x00bb
                    00BA    277 _PX1	=	0x00ba
                    00B9    278 _PT0	=	0x00b9
                    00B8    279 _PX0	=	0x00b8
                    00C7    280 _PRE2	=	0x00c7
                    00C6    281 _PRE1	=	0x00c6
                    00C5    282 _PRE0	=	0x00c5
                    00C3    283 _WDR1	=	0x00c3
                    00C2    284 _WDR2	=	0x00c2
                    00C1    285 _WDS	=	0x00c1
                    00C0    286 _WDE	=	0x00c0
                    00CF    287 _TF2	=	0x00cf
                    00CE    288 _EXF2	=	0x00ce
                    00CD    289 _RCLK	=	0x00cd
                    00CC    290 _TCLK	=	0x00cc
                    00CB    291 _XEN	=	0x00cb
                    00CA    292 _TR2	=	0x00ca
                    00C9    293 _CNT2	=	0x00c9
                    00C8    294 _CAP2	=	0x00c8
                    00D7    295 _CY	=	0x00d7
                    00D6    296 _AC	=	0x00d6
                    00D5    297 _F0	=	0x00d5
                    00D4    298 _RS1	=	0x00d4
                    00D3    299 _RS0	=	0x00d3
                    00D2    300 _OV	=	0x00d2
                    00D1    301 _F1	=	0x00d1
                    00D0    302 _P	=	0x00d0
                    00DF    303 _ADCI	=	0x00df
                    00DE    304 _DMA	=	0x00de
                    00DD    305 _CCONV	=	0x00dd
                    00DC    306 _SCONV	=	0x00dc
                    00DB    307 _CS3	=	0x00db
                    00DA    308 _CS2	=	0x00da
                    00D9    309 _CS1	=	0x00d9
                    00D8    310 _CS0	=	0x00d8
                    00EF    311 _MDO	=	0x00ef
                    00EE    312 _MDE	=	0x00ee
                    00ED    313 _MCO	=	0x00ed
                    00EC    314 _MDI	=	0x00ec
                    00EB    315 _I2CM	=	0x00eb
                    00EA    316 _I2CRS	=	0x00ea
                    00E9    317 _I2CTX	=	0x00e9
                    00E8    318 _I2CI	=	0x00e8
                    00FF    319 _ISPI	=	0x00ff
                    00FE    320 _WCOL	=	0x00fe
                    00FD    321 _SPE	=	0x00fd
                    00FC    322 _SPIM	=	0x00fc
                    00FB    323 _CPOL	=	0x00fb
                    00FA    324 _CPHA	=	0x00fa
                    00F9    325 _SPR1	=	0x00f9
                    00F8    326 _SPR0	=	0x00f8
                            327 ;--------------------------------------------------------
                            328 ; overlayable register banks
                            329 ;--------------------------------------------------------
                            330 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     331 	.ds 8
                            332 ;--------------------------------------------------------
                            333 ; internal ram data
                            334 ;--------------------------------------------------------
                            335 	.area DSEG    (DATA)
   0015                     336 _isTransmitting::
   0015                     337 	.ds 1
                            338 ;--------------------------------------------------------
                            339 ; overlayable items in internal ram 
                            340 ;--------------------------------------------------------
                            341 	.area OSEG    (OVR,DATA)
                            342 ;--------------------------------------------------------
                            343 ; indirectly addressable internal ram data
                            344 ;--------------------------------------------------------
                            345 	.area ISEG    (DATA)
                            346 ;--------------------------------------------------------
                            347 ; absolute internal ram data
                            348 ;--------------------------------------------------------
                            349 	.area IABS    (ABS,DATA)
                            350 	.area IABS    (ABS,DATA)
                            351 ;--------------------------------------------------------
                            352 ; bit data
                            353 ;--------------------------------------------------------
                            354 	.area BSEG    (BIT)
                            355 ;--------------------------------------------------------
                            356 ; paged external ram data
                            357 ;--------------------------------------------------------
                            358 	.area PSEG    (PAG,XDATA)
                            359 ;--------------------------------------------------------
                            360 ; external ram data
                            361 ;--------------------------------------------------------
                            362 	.area XSEG    (XDATA)
                            363 ;--------------------------------------------------------
                            364 ; absolute external ram data
                            365 ;--------------------------------------------------------
                            366 	.area XABS    (ABS,XDATA)
                            367 ;--------------------------------------------------------
                            368 ; external initialized ram data
                            369 ;--------------------------------------------------------
                            370 	.area XISEG   (XDATA)
                            371 	.area HOME    (CODE)
                            372 	.area GSINIT0 (CODE)
                            373 	.area GSINIT1 (CODE)
                            374 	.area GSINIT2 (CODE)
                            375 	.area GSINIT3 (CODE)
                            376 	.area GSINIT4 (CODE)
                            377 	.area GSINIT5 (CODE)
                            378 	.area GSINIT  (CODE)
                            379 	.area GSFINAL (CODE)
                            380 	.area CSEG    (CODE)
                            381 ;--------------------------------------------------------
                            382 ; global & static initialisations
                            383 ;--------------------------------------------------------
                            384 	.area HOME    (CODE)
                            385 	.area GSINIT  (CODE)
                            386 	.area GSFINAL (CODE)
                            387 	.area GSINIT  (CODE)
                            388 ;	SRC/sio.c:126: volatile /*static*/ char isTransmitting = 0;
   2188 75 15 00            389 	mov	_isTransmitting,#0x00
                            390 ;--------------------------------------------------------
                            391 ; Home
                            392 ;--------------------------------------------------------
                            393 	.area HOME    (CODE)
                            394 	.area HOME    (CODE)
                            395 ;--------------------------------------------------------
                            396 ; code
                            397 ;--------------------------------------------------------
                            398 	.area CSEG    (CODE)
                            399 ;------------------------------------------------------------
                            400 ;Allocation info for local variables in function 'SetVector'
                            401 ;------------------------------------------------------------
                            402 ;Vector                    Allocated to stack - offset -5
                            403 ;Address                   Allocated to registers r2 r3 
                            404 ;TmpVector                 Allocated to registers r2 r3 
                            405 ;------------------------------------------------------------
                            406 ;	SRC/sio.c:67: void SetVector(unsigned char xdata * Address, void * Vector)
                            407 ;	-----------------------------------------
                            408 ;	 function SetVector
                            409 ;	-----------------------------------------
   2635                     410 _SetVector:
                    0002    411 	ar2 = 0x02
                    0003    412 	ar3 = 0x03
                    0004    413 	ar4 = 0x04
                    0005    414 	ar5 = 0x05
                    0006    415 	ar6 = 0x06
                    0007    416 	ar7 = 0x07
                    0000    417 	ar0 = 0x00
                    0001    418 	ar1 = 0x01
   2635 C0 1A               419 	push	_bp
   2637 85 81 1A            420 	mov	_bp,sp
                            421 ;	SRC/sio.c:72: *Address = 0x02;
   263A AA 82               422 	mov	r2,dpl
   263C AB 83               423 	mov  r3,dph
   263E 74 02               424 	mov	a,#0x02
   2640 F0                  425 	movx	@dptr,a
                            426 ;	SRC/sio.c:74: TmpVector = (unsigned char xdata *) (Address + 1);
   2641 0A                  427 	inc	r2
   2642 BA 00 01            428 	cjne	r2,#0x00,00103$
   2645 0B                  429 	inc	r3
   2646                     430 00103$:
                            431 ;	SRC/sio.c:75: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
   2646 E5 1A               432 	mov	a,_bp
   2648 24 FB               433 	add	a,#0xfb
   264A F8                  434 	mov	r0,a
   264B 86 04               435 	mov	ar4,@r0
   264D 08                  436 	inc	r0
   264E 86 05               437 	mov	ar5,@r0
   2650 8D 04               438 	mov	ar4,r5
   2652 8A 82               439 	mov	dpl,r2
   2654 8B 83               440 	mov	dph,r3
   2656 EC                  441 	mov	a,r4
   2657 F0                  442 	movx	@dptr,a
   2658 A3                  443 	inc	dptr
   2659 AA 82               444 	mov	r2,dpl
   265B AB 83               445 	mov	r3,dph
                            446 ;	SRC/sio.c:76: ++TmpVector;
                            447 ;	SRC/sio.c:77: *TmpVector = (unsigned char) Vector;
   265D E5 1A               448 	mov	a,_bp
   265F 24 FB               449 	add	a,#0xfb
   2661 F8                  450 	mov	r0,a
   2662 86 04               451 	mov	ar4,@r0
   2664 8A 82               452 	mov	dpl,r2
   2666 8B 83               453 	mov	dph,r3
   2668 EC                  454 	mov	a,r4
   2669 F0                  455 	movx	@dptr,a
   266A D0 1A               456 	pop	_bp
   266C 22                  457 	ret
                            458 ;------------------------------------------------------------
                            459 ;Allocation info for local variables in function 'init_sio'
                            460 ;------------------------------------------------------------
                            461 ;speed                     Allocated to registers 
                            462 ;------------------------------------------------------------
                            463 ;	SRC/sio.c:96: void init_sio( unsigned char speed )
                            464 ;	-----------------------------------------
                            465 ;	 function init_sio
                            466 ;	-----------------------------------------
   266D                     467 _init_sio:
   266D 85 82 8D            468 	mov	_TH1,dpl
                            469 ;	SRC/sio.c:100: TMOD = TMOD & ~(T1_GATE | T1_CT | T1_M0 ) | T1_M1; //Таймер 1 будет работать в режиме autoreload
   2670 AA 89               470 	mov	r2,_TMOD
   2672 74 2F               471 	mov	a,#0x2F
   2674 5A                  472 	anl	a,r2
   2675 F5 F0               473 	mov	b,a
   2677 74 20               474 	mov	a,#0x20
   2679 45 F0               475 	orl	a,b
   267B F5 89               476 	mov	_TMOD,a
                            477 ;	SRC/sio.c:101: TCON     |=  0x40; //Запуск таймера 1
   267D 43 88 40            478 	orl	_TCON,#0x40
                            479 ;	SRC/sio.c:103: SCON      =  0x50; //Настройки последовательного канала
   2680 75 98 50            480 	mov	_SCON,#0x50
                            481 ;	SRC/sio.c:106: ES=0;	//Запрещение прерываний от приемопередатчика
   2683 C2 AC               482 	clr	_ES
                            483 ;	SRC/sio.c:107: EA=1;	//1 – разрешены прерывания от всех источников
   2685 D2 AF               484 	setb	_EA
   2687 22                  485 	ret
                            486 ;------------------------------------------------------------
                            487 ;Allocation info for local variables in function 'rsiostat'
                            488 ;------------------------------------------------------------
                            489 ;------------------------------------------------------------
                            490 ;	SRC/sio.c:281: unsigned char rsiostat(void)  
                            491 ;	-----------------------------------------
                            492 ;	 function rsiostat
                            493 ;	-----------------------------------------
   2688                     494 _rsiostat:
                            495 ;	SRC/sio.c:283: return RI;
   2688 A2 98               496 	mov	c,_RI
   268A E4                  497 	clr	a
   268B 33                  498 	rlc	a
   268C F5 82               499 	mov	dpl,a
   268E 22                  500 	ret
                            501 ;------------------------------------------------------------
                            502 ;Allocation info for local variables in function 'wsio'
                            503 ;------------------------------------------------------------
                            504 ;c                         Allocated to registers 
                            505 ;------------------------------------------------------------
                            506 ;	SRC/sio.c:297: void wsio( unsigned char c )
                            507 ;	-----------------------------------------
                            508 ;	 function wsio
                            509 ;	-----------------------------------------
   268F                     510 _wsio:
   268F 85 82 99            511 	mov	_SBUF,dpl
                            512 ;	SRC/sio.c:300: TI   = 0;
   2692 C2 99               513 	clr	_TI
                            514 ;	SRC/sio.c:301: while( !TI );
   2694                     515 00101$:
   2694 30 99 FD            516 	jnb	_TI,00101$
   2697 22                  517 	ret
                            518 ;------------------------------------------------------------
                            519 ;Allocation info for local variables in function 'rsio'
                            520 ;------------------------------------------------------------
                            521 ;------------------------------------------------------------
                            522 ;	SRC/sio.c:313: unsigned char rsio(void)
                            523 ;	-----------------------------------------
                            524 ;	 function rsio
                            525 ;	-----------------------------------------
   2698                     526 _rsio:
                            527 ;	SRC/sio.c:315: while( !RI );
   2698                     528 00101$:
                            529 ;	SRC/sio.c:316: RI = 0;
   2698 10 98 02            530 	jbc	_RI,00108$
   269B 80 FB               531 	sjmp	00101$
   269D                     532 00108$:
                            533 ;	SRC/sio.c:317: return SBUF;
   269D 85 99 82            534 	mov	dpl,_SBUF
   26A0 22                  535 	ret
                            536 ;------------------------------------------------------------
                            537 ;Allocation info for local variables in function 'type'
                            538 ;------------------------------------------------------------
                            539 ;str                       Allocated to registers r2 r3 r4 
                            540 ;------------------------------------------------------------
                            541 ;	SRC/sio.c:330: void type(char * str)
                            542 ;	-----------------------------------------
                            543 ;	 function type
                            544 ;	-----------------------------------------
   26A1                     545 _type:
   26A1 AA 82               546 	mov	r2,dpl
   26A3 AB 83               547 	mov	r3,dph
   26A5 AC F0               548 	mov	r4,b
                            549 ;	SRC/sio.c:332: ES=0;
   26A7 C2 AC               550 	clr	_ES
                            551 ;	SRC/sio.c:335: while( *str ) wsio( *str++ );
   26A9                     552 00101$:
   26A9 8A 82               553 	mov	dpl,r2
   26AB 8B 83               554 	mov	dph,r3
   26AD 8C F0               555 	mov	b,r4
   26AF 12 2A 50            556 	lcall	__gptrget
   26B2 FD                  557 	mov	r5,a
   26B3 60 18               558 	jz	00104$
   26B5 0A                  559 	inc	r2
   26B6 BA 00 01            560 	cjne	r2,#0x00,00110$
   26B9 0B                  561 	inc	r3
   26BA                     562 00110$:
   26BA 8D 82               563 	mov	dpl,r5
   26BC C0 02               564 	push	ar2
   26BE C0 03               565 	push	ar3
   26C0 C0 04               566 	push	ar4
   26C2 12 26 8F            567 	lcall	_wsio
   26C5 D0 04               568 	pop	ar4
   26C7 D0 03               569 	pop	ar3
   26C9 D0 02               570 	pop	ar2
   26CB 80 DC               571 	sjmp	00101$
   26CD                     572 00104$:
   26CD 22                  573 	ret
                            574 	.area CSEG    (CODE)
                            575 	.area CONST   (CODE)
                            576 	.area XINIT   (CODE)
                            577 	.area CABS    (ABS,CODE)
