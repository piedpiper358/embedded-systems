                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Tue Dec 11 01:27:12 2018
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
                            162 	.globl _init_sio
                            163 	.globl _init_sio2
                            164 	.globl _rsiostat
                            165 	.globl _wsio
                            166 	.globl _rsio
                            167 	.globl _type
                            168 ;--------------------------------------------------------
                            169 ; special function registers
                            170 ;--------------------------------------------------------
                            171 	.area RSEG    (DATA)
                    0080    172 _P0	=	0x0080
                    0081    173 _SP	=	0x0081
                    0082    174 _DPL	=	0x0082
                    0083    175 _DPH	=	0x0083
                    0084    176 _DPP	=	0x0084
                    0087    177 _PCON	=	0x0087
                    0088    178 _TCON	=	0x0088
                    0089    179 _TMOD	=	0x0089
                    008A    180 _TL0	=	0x008a
                    008B    181 _TL1	=	0x008b
                    008C    182 _TH0	=	0x008c
                    008D    183 _TH1	=	0x008d
                    0090    184 _P1	=	0x0090
                    0098    185 _SCON	=	0x0098
                    0099    186 _SBUF	=	0x0099
                    009A    187 _I2CDAT	=	0x009a
                    009B    188 _I2CADD	=	0x009b
                    00A0    189 _P2	=	0x00a0
                    00A8    190 _IE	=	0x00a8
                    00A9    191 _IE2	=	0x00a9
                    00B0    192 _P3	=	0x00b0
                    00B8    193 _IP	=	0x00b8
                    00B9    194 _ECON	=	0x00b9
                    00BA    195 _ETIM1	=	0x00ba
                    00BB    196 _ETIM2	=	0x00bb
                    00C4    197 _ETIM3	=	0x00c4
                    00BC    198 _EDATA1	=	0x00bc
                    00BD    199 _EDATA2	=	0x00bd
                    00BE    200 _EDATA3	=	0x00be
                    00BF    201 _EDATA4	=	0x00bf
                    00C0    202 _WDCON	=	0x00c0
                    00C6    203 _EADRL	=	0x00c6
                    00C8    204 _T2CON	=	0x00c8
                    00CA    205 _RCAP2L	=	0x00ca
                    00CB    206 _RCAP2H	=	0x00cb
                    00CC    207 _TL2	=	0x00cc
                    00CD    208 _TH2	=	0x00cd
                    00D0    209 _PSW	=	0x00d0
                    00D2    210 _DMAL	=	0x00d2
                    00D3    211 _DMAH	=	0x00d3
                    00D4    212 _DMAP	=	0x00d4
                    00D8    213 _ADCCON2	=	0x00d8
                    00D9    214 _ADCDATAL	=	0x00d9
                    00DA    215 _ADCDATAH	=	0x00da
                    00DF    216 _PSMCON	=	0x00df
                    00E0    217 _ACC	=	0x00e0
                    00E8    218 _I2CCON	=	0x00e8
                    00EF    219 _ADCCON1	=	0x00ef
                    00F0    220 _B	=	0x00f0
                    00F1    221 _ADCOFSL	=	0x00f1
                    00F2    222 _ADCOFSH	=	0x00f2
                    00F3    223 _ADCGAINL	=	0x00f3
                    00F4    224 _ADCGAINH	=	0x00f4
                    00F5    225 _ADCCON3	=	0x00f5
                    00F7    226 _SPIDAT	=	0x00f7
                    00F8    227 _SPICON	=	0x00f8
                    00F9    228 _DAC0L	=	0x00f9
                    00FA    229 _DAC0H	=	0x00fa
                    00FB    230 _DAC1L	=	0x00fb
                    00FC    231 _DAC1H	=	0x00fc
                    00FD    232 _DACCON	=	0x00fd
                            233 ;--------------------------------------------------------
                            234 ; special function bits
                            235 ;--------------------------------------------------------
                            236 	.area RSEG    (DATA)
                    008F    237 _TF1	=	0x008f
                    008E    238 _TR1	=	0x008e
                    008D    239 _TF0	=	0x008d
                    008C    240 _TR0	=	0x008c
                    008B    241 _IE1	=	0x008b
                    008A    242 _IT1	=	0x008a
                    0089    243 _IE0	=	0x0089
                    0088    244 _IT0	=	0x0088
                    0091    245 _T2EX	=	0x0091
                    0090    246 _T2	=	0x0090
                    009F    247 _SM0	=	0x009f
                    009E    248 _SM1	=	0x009e
                    009D    249 _SM2	=	0x009d
                    009C    250 _REN	=	0x009c
                    009B    251 _TB8	=	0x009b
                    009A    252 _RB8	=	0x009a
                    0099    253 _TI	=	0x0099
                    0098    254 _RI	=	0x0098
                    00AF    255 _EA	=	0x00af
                    00AE    256 _EADC	=	0x00ae
                    00AD    257 _ET2	=	0x00ad
                    00AC    258 _ES	=	0x00ac
                    00AB    259 _ET1	=	0x00ab
                    00AA    260 _EX1	=	0x00aa
                    00A9    261 _ET0	=	0x00a9
                    00A8    262 _EX0	=	0x00a8
                    00B7    263 _RD	=	0x00b7
                    00B6    264 _WR	=	0x00b6
                    00B5    265 _T1	=	0x00b5
                    00B4    266 _T0	=	0x00b4
                    00B3    267 _INT1	=	0x00b3
                    00B2    268 _INT0	=	0x00b2
                    00B1    269 _TXD	=	0x00b1
                    00B0    270 _RXD	=	0x00b0
                    00BF    271 _PSI	=	0x00bf
                    00BE    272 _PADC	=	0x00be
                    00BD    273 _PT2	=	0x00bd
                    00BC    274 _PS	=	0x00bc
                    00BB    275 _PT1	=	0x00bb
                    00BA    276 _PX1	=	0x00ba
                    00B9    277 _PT0	=	0x00b9
                    00B8    278 _PX0	=	0x00b8
                    00C7    279 _PRE2	=	0x00c7
                    00C6    280 _PRE1	=	0x00c6
                    00C5    281 _PRE0	=	0x00c5
                    00C3    282 _WDR1	=	0x00c3
                    00C2    283 _WDR2	=	0x00c2
                    00C1    284 _WDS	=	0x00c1
                    00C0    285 _WDE	=	0x00c0
                    00CF    286 _TF2	=	0x00cf
                    00CE    287 _EXF2	=	0x00ce
                    00CD    288 _RCLK	=	0x00cd
                    00CC    289 _TCLK	=	0x00cc
                    00CB    290 _XEN	=	0x00cb
                    00CA    291 _TR2	=	0x00ca
                    00C9    292 _CNT2	=	0x00c9
                    00C8    293 _CAP2	=	0x00c8
                    00D7    294 _CY	=	0x00d7
                    00D6    295 _AC	=	0x00d6
                    00D5    296 _F0	=	0x00d5
                    00D4    297 _RS1	=	0x00d4
                    00D3    298 _RS0	=	0x00d3
                    00D2    299 _OV	=	0x00d2
                    00D1    300 _F1	=	0x00d1
                    00D0    301 _P	=	0x00d0
                    00DF    302 _ADCI	=	0x00df
                    00DE    303 _DMA	=	0x00de
                    00DD    304 _CCONV	=	0x00dd
                    00DC    305 _SCONV	=	0x00dc
                    00DB    306 _CS3	=	0x00db
                    00DA    307 _CS2	=	0x00da
                    00D9    308 _CS1	=	0x00d9
                    00D8    309 _CS0	=	0x00d8
                    00EF    310 _MDO	=	0x00ef
                    00EE    311 _MDE	=	0x00ee
                    00ED    312 _MCO	=	0x00ed
                    00EC    313 _MDI	=	0x00ec
                    00EB    314 _I2CM	=	0x00eb
                    00EA    315 _I2CRS	=	0x00ea
                    00E9    316 _I2CTX	=	0x00e9
                    00E8    317 _I2CI	=	0x00e8
                    00FF    318 _ISPI	=	0x00ff
                    00FE    319 _WCOL	=	0x00fe
                    00FD    320 _SPE	=	0x00fd
                    00FC    321 _SPIM	=	0x00fc
                    00FB    322 _CPOL	=	0x00fb
                    00FA    323 _CPHA	=	0x00fa
                    00F9    324 _SPR1	=	0x00f9
                    00F8    325 _SPR0	=	0x00f8
                            326 ;--------------------------------------------------------
                            327 ; overlayable register banks
                            328 ;--------------------------------------------------------
                            329 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     330 	.ds 8
                            331 ;--------------------------------------------------------
                            332 ; internal ram data
                            333 ;--------------------------------------------------------
                            334 	.area DSEG    (DATA)
                            335 ;--------------------------------------------------------
                            336 ; overlayable items in internal ram 
                            337 ;--------------------------------------------------------
                            338 	.area OSEG    (OVR,DATA)
                            339 ;--------------------------------------------------------
                            340 ; indirectly addressable internal ram data
                            341 ;--------------------------------------------------------
                            342 	.area ISEG    (DATA)
                            343 ;--------------------------------------------------------
                            344 ; absolute internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area IABS    (ABS,DATA)
                            347 	.area IABS    (ABS,DATA)
                            348 ;--------------------------------------------------------
                            349 ; bit data
                            350 ;--------------------------------------------------------
                            351 	.area BSEG    (BIT)
                            352 ;--------------------------------------------------------
                            353 ; paged external ram data
                            354 ;--------------------------------------------------------
                            355 	.area PSEG    (PAG,XDATA)
                            356 ;--------------------------------------------------------
                            357 ; external ram data
                            358 ;--------------------------------------------------------
                            359 	.area XSEG    (XDATA)
                            360 ;--------------------------------------------------------
                            361 ; absolute external ram data
                            362 ;--------------------------------------------------------
                            363 	.area XABS    (ABS,XDATA)
                            364 ;--------------------------------------------------------
                            365 ; external initialized ram data
                            366 ;--------------------------------------------------------
                            367 	.area XISEG   (XDATA)
                            368 	.area HOME    (CODE)
                            369 	.area GSINIT0 (CODE)
                            370 	.area GSINIT1 (CODE)
                            371 	.area GSINIT2 (CODE)
                            372 	.area GSINIT3 (CODE)
                            373 	.area GSINIT4 (CODE)
                            374 	.area GSINIT5 (CODE)
                            375 	.area GSINIT  (CODE)
                            376 	.area GSFINAL (CODE)
                            377 	.area CSEG    (CODE)
                            378 ;--------------------------------------------------------
                            379 ; global & static initialisations
                            380 ;--------------------------------------------------------
                            381 	.area HOME    (CODE)
                            382 	.area GSINIT  (CODE)
                            383 	.area GSFINAL (CODE)
                            384 	.area GSINIT  (CODE)
                            385 ;--------------------------------------------------------
                            386 ; Home
                            387 ;--------------------------------------------------------
                            388 	.area HOME    (CODE)
                            389 	.area HOME    (CODE)
                            390 ;--------------------------------------------------------
                            391 ; code
                            392 ;--------------------------------------------------------
                            393 	.area CSEG    (CODE)
                            394 ;------------------------------------------------------------
                            395 ;Allocation info for local variables in function 'init_sio'
                            396 ;------------------------------------------------------------
                            397 ;speed                     Allocated to registers 
                            398 ;------------------------------------------------------------
                            399 ;	SRC/sio.c:46: void init_sio( unsigned char speed )
                            400 ;	-----------------------------------------
                            401 ;	 function init_sio
                            402 ;	-----------------------------------------
   21A1                     403 _init_sio:
                    0002    404 	ar2 = 0x02
                    0003    405 	ar3 = 0x03
                    0004    406 	ar4 = 0x04
                    0005    407 	ar5 = 0x05
                    0006    408 	ar6 = 0x06
                    0007    409 	ar7 = 0x07
                    0000    410 	ar0 = 0x00
                    0001    411 	ar1 = 0x01
   21A1 85 82 8D            412 	mov	_TH1,dpl
                            413 ;	SRC/sio.c:51: TMOD = TMOD & ~(T1_GATE | T1_CT | T1_M0 /*0*/) | T1_M1; //?????? 1 ????? ???????? ? ?????? autoreload
   21A4 AA 89               414 	mov	r2,_TMOD
   21A6 74 2F               415 	mov	a,#0x2F
   21A8 5A                  416 	anl	a,r2
   21A9 F5 F0               417 	mov	b,a
   21AB 74 20               418 	mov	a,#0x20
   21AD 45 F0               419 	orl	a,b
   21AF F5 89               420 	mov	_TMOD,a
                            421 ;	SRC/sio.c:53: TCON     |=  0x40; //?????? ??????? 1
   21B1 43 88 40            422 	orl	_TCON,#0x40
                            423 ;	SRC/sio.c:55: SCON      =  0x50; //????????? ????????????????? ??????
   21B4 75 98 50            424 	mov	_SCON,#0x50
                            425 ;	SRC/sio.c:56: ES        =  0;    //?????????? ?????????? ?? ?????????????????
   21B7 C2 AC               426 	clr	_ES
   21B9 22                  427 	ret
                            428 ;------------------------------------------------------------
                            429 ;Allocation info for local variables in function 'init_sio2'
                            430 ;------------------------------------------------------------
                            431 ;baud                      Allocated to registers r2 r3 
                            432 ;------------------------------------------------------------
                            433 ;	SRC/sio.c:60: void init_sio2( unsigned int baud )
                            434 ;	-----------------------------------------
                            435 ;	 function init_sio2
                            436 ;	-----------------------------------------
   21BA                     437 _init_sio2:
   21BA AA 82               438 	mov	r2,dpl
   21BC AB 83               439 	mov	r3,dph
                            440 ;	SRC/sio.c:62: if(baud>9600){
   21BE C3                  441 	clr	c
   21BF 74 80               442 	mov	a,#0x80
   21C1 9A                  443 	subb	a,r2
   21C2 74 25               444 	mov	a,#0x25
   21C4 9B                  445 	subb	a,r3
   21C5 50 31               446 	jnc	00102$
                            447 ;	SRC/sio.c:65: PCON |= SMOD;
   21C7 43 87 80            448 	orl	_PCON,#0x80
                            449 ;	SRC/sio.c:66: TH1 = 0x100 - CPU_FREQ*2/32/12/baud;
   21CA 8A 04               450 	mov	ar4,r2
   21CC 8B 05               451 	mov	ar5,r3
   21CE 7E 00               452 	mov	r6,#0x00
   21D0 7F 00               453 	mov	r7,#0x00
   21D2 C0 04               454 	push	ar4
   21D4 C0 05               455 	push	ar5
   21D6 C0 06               456 	push	ar6
   21D8 C0 07               457 	push	ar7
   21DA 90 E1 00            458 	mov	dptr,#0xE100
   21DD E4                  459 	clr	a
   21DE F5 F0               460 	mov	b,a
   21E0 12 29 8A            461 	lcall	__divslong
   21E3 AC 82               462 	mov	r4,dpl
   21E5 E5 81               463 	mov	a,sp
   21E7 24 FC               464 	add	a,#0xfc
   21E9 F5 81               465 	mov	sp,a
   21EB C3                  466 	clr	c
   21EC E4                  467 	clr	a
   21ED 9C                  468 	subb	a,r4
   21EE FC                  469 	mov	r4,a
   21EF 8C 8D               470 	mov	_TH1,r4
                            471 ;	SRC/sio.c:67: leds(0x100 - CPU_FREQ*2/32/12/baud);
   21F1 8C 82               472 	mov	dpl,r4
   21F3 12 22 C1            473 	lcall	_leds
   21F6 80 2D               474 	sjmp	00103$
   21F8                     475 00102$:
                            476 ;	SRC/sio.c:70: PCON &= ~SMOD;
   21F8 53 87 7F            477 	anl	_PCON,#0x7F
                            478 ;	SRC/sio.c:71: TH1 = 0x100 - CPU_FREQ/32/12/baud;
   21FB 7C 00               479 	mov	r4,#0x00
   21FD 7D 00               480 	mov	r5,#0x00
   21FF C0 02               481 	push	ar2
   2201 C0 03               482 	push	ar3
   2203 C0 04               483 	push	ar4
   2205 C0 05               484 	push	ar5
   2207 90 70 80            485 	mov	dptr,#0x7080
   220A E4                  486 	clr	a
   220B F5 F0               487 	mov	b,a
   220D 12 29 8A            488 	lcall	__divslong
   2210 AA 82               489 	mov	r2,dpl
   2212 AB 83               490 	mov	r3,dph
   2214 AC F0               491 	mov	r4,b
   2216 FD                  492 	mov	r5,a
   2217 E5 81               493 	mov	a,sp
   2219 24 FC               494 	add	a,#0xfc
   221B F5 81               495 	mov	sp,a
   221D C3                  496 	clr	c
   221E E4                  497 	clr	a
   221F 9A                  498 	subb	a,r2
   2220 FA                  499 	mov	r2,a
   2221 8A 8D               500 	mov	_TH1,r2
                            501 ;	SRC/sio.c:73: TH1 = 0x100 - TIMER_FREQ/32/baud;
   2223 8A 8D               502 	mov	_TH1,r2
   2225                     503 00103$:
                            504 ;	SRC/sio.c:80: TMOD = TMOD & ~(T1_GATE | T1_CT | T1_M0 /*0*/) | T1_M1; //?????? 1 ????? ???????? ? ?????? autoreload
   2225 AA 89               505 	mov	r2,_TMOD
   2227 74 2F               506 	mov	a,#0x2F
   2229 5A                  507 	anl	a,r2
   222A F5 F0               508 	mov	b,a
   222C 74 20               509 	mov	a,#0x20
   222E 45 F0               510 	orl	a,b
   2230 F5 89               511 	mov	_TMOD,a
                            512 ;	SRC/sio.c:83: TR1=0x1;
   2232 D2 8E               513 	setb	_TR1
                            514 ;	SRC/sio.c:84: SCON      =  0x50; //????????? ????????????????? ??????
   2234 75 98 50            515 	mov	_SCON,#0x50
                            516 ;	SRC/sio.c:85: ES        =  0;    //?????????? ?????????? ?? ?????????????????
   2237 C2 AC               517 	clr	_ES
   2239 22                  518 	ret
                            519 ;------------------------------------------------------------
                            520 ;Allocation info for local variables in function 'rsiostat'
                            521 ;------------------------------------------------------------
                            522 ;------------------------------------------------------------
                            523 ;	SRC/sio.c:100: unsigned char rsiostat(void)  
                            524 ;	-----------------------------------------
                            525 ;	 function rsiostat
                            526 ;	-----------------------------------------
   223A                     527 _rsiostat:
                            528 ;	SRC/sio.c:102: return RI;
   223A A2 98               529 	mov	c,_RI
   223C E4                  530 	clr	a
   223D 33                  531 	rlc	a
   223E F5 82               532 	mov	dpl,a
   2240 22                  533 	ret
                            534 ;------------------------------------------------------------
                            535 ;Allocation info for local variables in function 'wsio'
                            536 ;------------------------------------------------------------
                            537 ;c                         Allocated to registers 
                            538 ;------------------------------------------------------------
                            539 ;	SRC/sio.c:115: void wsio( unsigned char c )
                            540 ;	-----------------------------------------
                            541 ;	 function wsio
                            542 ;	-----------------------------------------
   2241                     543 _wsio:
   2241 85 82 99            544 	mov	_SBUF,dpl
                            545 ;	SRC/sio.c:118: TI   = 0;
   2244 C2 99               546 	clr	_TI
                            547 ;	SRC/sio.c:119: while( !TI );
   2246                     548 00101$:
   2246 30 99 FD            549 	jnb	_TI,00101$
   2249 22                  550 	ret
                            551 ;------------------------------------------------------------
                            552 ;Allocation info for local variables in function 'rsio'
                            553 ;------------------------------------------------------------
                            554 ;------------------------------------------------------------
                            555 ;	SRC/sio.c:131: unsigned char rsio(void)
                            556 ;	-----------------------------------------
                            557 ;	 function rsio
                            558 ;	-----------------------------------------
   224A                     559 _rsio:
                            560 ;	SRC/sio.c:133: while( !RI );
   224A                     561 00101$:
                            562 ;	SRC/sio.c:134: RI = 0;
   224A 10 98 02            563 	jbc	_RI,00108$
   224D 80 FB               564 	sjmp	00101$
   224F                     565 00108$:
                            566 ;	SRC/sio.c:135: return SBUF;
   224F 85 99 82            567 	mov	dpl,_SBUF
   2252 22                  568 	ret
                            569 ;------------------------------------------------------------
                            570 ;Allocation info for local variables in function 'type'
                            571 ;------------------------------------------------------------
                            572 ;str                       Allocated to registers r2 r3 r4 
                            573 ;------------------------------------------------------------
                            574 ;	SRC/sio.c:148: void type(char * str)
                            575 ;	-----------------------------------------
                            576 ;	 function type
                            577 ;	-----------------------------------------
   2253                     578 _type:
   2253 AA 82               579 	mov	r2,dpl
   2255 AB 83               580 	mov	r3,dph
   2257 AC F0               581 	mov	r4,b
                            582 ;	SRC/sio.c:150: while( *str ) wsio( *str++ );
   2259                     583 00101$:
   2259 8A 82               584 	mov	dpl,r2
   225B 8B 83               585 	mov	dph,r3
   225D 8C F0               586 	mov	b,r4
   225F 12 2A 61            587 	lcall	__gptrget
   2262 FD                  588 	mov	r5,a
   2263 60 18               589 	jz	00104$
   2265 0A                  590 	inc	r2
   2266 BA 00 01            591 	cjne	r2,#0x00,00110$
   2269 0B                  592 	inc	r3
   226A                     593 00110$:
   226A 8D 82               594 	mov	dpl,r5
   226C C0 02               595 	push	ar2
   226E C0 03               596 	push	ar3
   2270 C0 04               597 	push	ar4
   2272 12 22 41            598 	lcall	_wsio
   2275 D0 04               599 	pop	ar4
   2277 D0 03               600 	pop	ar3
   2279 D0 02               601 	pop	ar2
   227B 80 DC               602 	sjmp	00101$
   227D                     603 00104$:
   227D 22                  604 	ret
                            605 	.area CSEG    (CODE)
                            606 	.area CONST   (CODE)
                            607 	.area XINIT   (CODE)
                            608 	.area CABS    (ABS,CODE)
