                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 01:04:33 2019
                              5 ;--------------------------------------------------------
                              6 	.module i2c
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _RecvByte
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
                            163 	.globl _GetAck
                            164 	.globl _ReceiveBlock
                            165 	.globl _TransmitBlock
                            166 ;--------------------------------------------------------
                            167 ; special function registers
                            168 ;--------------------------------------------------------
                            169 	.area RSEG    (DATA)
                    0080    170 _P0	=	0x0080
                    0081    171 _SP	=	0x0081
                    0082    172 _DPL	=	0x0082
                    0083    173 _DPH	=	0x0083
                    0084    174 _DPP	=	0x0084
                    0087    175 _PCON	=	0x0087
                    0088    176 _TCON	=	0x0088
                    0089    177 _TMOD	=	0x0089
                    008A    178 _TL0	=	0x008a
                    008B    179 _TL1	=	0x008b
                    008C    180 _TH0	=	0x008c
                    008D    181 _TH1	=	0x008d
                    0090    182 _P1	=	0x0090
                    0098    183 _SCON	=	0x0098
                    0099    184 _SBUF	=	0x0099
                    009A    185 _I2CDAT	=	0x009a
                    009B    186 _I2CADD	=	0x009b
                    00A0    187 _P2	=	0x00a0
                    00A8    188 _IE	=	0x00a8
                    00A9    189 _IE2	=	0x00a9
                    00B0    190 _P3	=	0x00b0
                    00B8    191 _IP	=	0x00b8
                    00B9    192 _ECON	=	0x00b9
                    00BA    193 _ETIM1	=	0x00ba
                    00BB    194 _ETIM2	=	0x00bb
                    00C4    195 _ETIM3	=	0x00c4
                    00BC    196 _EDATA1	=	0x00bc
                    00BD    197 _EDATA2	=	0x00bd
                    00BE    198 _EDATA3	=	0x00be
                    00BF    199 _EDATA4	=	0x00bf
                    00C0    200 _WDCON	=	0x00c0
                    00C6    201 _EADRL	=	0x00c6
                    00C8    202 _T2CON	=	0x00c8
                    00CA    203 _RCAP2L	=	0x00ca
                    00CB    204 _RCAP2H	=	0x00cb
                    00CC    205 _TL2	=	0x00cc
                    00CD    206 _TH2	=	0x00cd
                    00D0    207 _PSW	=	0x00d0
                    00D2    208 _DMAL	=	0x00d2
                    00D3    209 _DMAH	=	0x00d3
                    00D4    210 _DMAP	=	0x00d4
                    00D8    211 _ADCCON2	=	0x00d8
                    00D9    212 _ADCDATAL	=	0x00d9
                    00DA    213 _ADCDATAH	=	0x00da
                    00DF    214 _PSMCON	=	0x00df
                    00E0    215 _ACC	=	0x00e0
                    00E8    216 _I2CCON	=	0x00e8
                    00EF    217 _ADCCON1	=	0x00ef
                    00F0    218 _B	=	0x00f0
                    00F1    219 _ADCOFSL	=	0x00f1
                    00F2    220 _ADCOFSH	=	0x00f2
                    00F3    221 _ADCGAINL	=	0x00f3
                    00F4    222 _ADCGAINH	=	0x00f4
                    00F5    223 _ADCCON3	=	0x00f5
                    00F7    224 _SPIDAT	=	0x00f7
                    00F8    225 _SPICON	=	0x00f8
                    00F9    226 _DAC0L	=	0x00f9
                    00FA    227 _DAC0H	=	0x00fa
                    00FB    228 _DAC1L	=	0x00fb
                    00FC    229 _DAC1H	=	0x00fc
                    00FD    230 _DACCON	=	0x00fd
                            231 ;--------------------------------------------------------
                            232 ; special function bits
                            233 ;--------------------------------------------------------
                            234 	.area RSEG    (DATA)
                    008F    235 _TF1	=	0x008f
                    008E    236 _TR1	=	0x008e
                    008D    237 _TF0	=	0x008d
                    008C    238 _TR0	=	0x008c
                    008B    239 _IE1	=	0x008b
                    008A    240 _IT1	=	0x008a
                    0089    241 _IE0	=	0x0089
                    0088    242 _IT0	=	0x0088
                    0091    243 _T2EX	=	0x0091
                    0090    244 _T2	=	0x0090
                    009F    245 _SM0	=	0x009f
                    009E    246 _SM1	=	0x009e
                    009D    247 _SM2	=	0x009d
                    009C    248 _REN	=	0x009c
                    009B    249 _TB8	=	0x009b
                    009A    250 _RB8	=	0x009a
                    0099    251 _TI	=	0x0099
                    0098    252 _RI	=	0x0098
                    00AF    253 _EA	=	0x00af
                    00AE    254 _EADC	=	0x00ae
                    00AD    255 _ET2	=	0x00ad
                    00AC    256 _ES	=	0x00ac
                    00AB    257 _ET1	=	0x00ab
                    00AA    258 _EX1	=	0x00aa
                    00A9    259 _ET0	=	0x00a9
                    00A8    260 _EX0	=	0x00a8
                    00B7    261 _RD	=	0x00b7
                    00B6    262 _WR	=	0x00b6
                    00B5    263 _T1	=	0x00b5
                    00B4    264 _T0	=	0x00b4
                    00B3    265 _INT1	=	0x00b3
                    00B2    266 _INT0	=	0x00b2
                    00B1    267 _TXD	=	0x00b1
                    00B0    268 _RXD	=	0x00b0
                    00BF    269 _PSI	=	0x00bf
                    00BE    270 _PADC	=	0x00be
                    00BD    271 _PT2	=	0x00bd
                    00BC    272 _PS	=	0x00bc
                    00BB    273 _PT1	=	0x00bb
                    00BA    274 _PX1	=	0x00ba
                    00B9    275 _PT0	=	0x00b9
                    00B8    276 _PX0	=	0x00b8
                    00C7    277 _PRE2	=	0x00c7
                    00C6    278 _PRE1	=	0x00c6
                    00C5    279 _PRE0	=	0x00c5
                    00C3    280 _WDR1	=	0x00c3
                    00C2    281 _WDR2	=	0x00c2
                    00C1    282 _WDS	=	0x00c1
                    00C0    283 _WDE	=	0x00c0
                    00CF    284 _TF2	=	0x00cf
                    00CE    285 _EXF2	=	0x00ce
                    00CD    286 _RCLK	=	0x00cd
                    00CC    287 _TCLK	=	0x00cc
                    00CB    288 _XEN	=	0x00cb
                    00CA    289 _TR2	=	0x00ca
                    00C9    290 _CNT2	=	0x00c9
                    00C8    291 _CAP2	=	0x00c8
                    00D7    292 _CY	=	0x00d7
                    00D6    293 _AC	=	0x00d6
                    00D5    294 _F0	=	0x00d5
                    00D4    295 _RS1	=	0x00d4
                    00D3    296 _RS0	=	0x00d3
                    00D2    297 _OV	=	0x00d2
                    00D1    298 _F1	=	0x00d1
                    00D0    299 _P	=	0x00d0
                    00DF    300 _ADCI	=	0x00df
                    00DE    301 _DMA	=	0x00de
                    00DD    302 _CCONV	=	0x00dd
                    00DC    303 _SCONV	=	0x00dc
                    00DB    304 _CS3	=	0x00db
                    00DA    305 _CS2	=	0x00da
                    00D9    306 _CS1	=	0x00d9
                    00D8    307 _CS0	=	0x00d8
                    00EF    308 _MDO	=	0x00ef
                    00EE    309 _MDE	=	0x00ee
                    00ED    310 _MCO	=	0x00ed
                    00EC    311 _MDI	=	0x00ec
                    00EB    312 _I2CM	=	0x00eb
                    00EA    313 _I2CRS	=	0x00ea
                    00E9    314 _I2CTX	=	0x00e9
                    00E8    315 _I2CI	=	0x00e8
                    00FF    316 _ISPI	=	0x00ff
                    00FE    317 _WCOL	=	0x00fe
                    00FD    318 _SPE	=	0x00fd
                    00FC    319 _SPIM	=	0x00fc
                    00FB    320 _CPOL	=	0x00fb
                    00FA    321 _CPHA	=	0x00fa
                    00F9    322 _SPR1	=	0x00f9
                    00F8    323 _SPR0	=	0x00f8
                            324 ;--------------------------------------------------------
                            325 ; overlayable register banks
                            326 ;--------------------------------------------------------
                            327 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     328 	.ds 8
                            329 ;--------------------------------------------------------
                            330 ; internal ram data
                            331 ;--------------------------------------------------------
                            332 	.area DSEG    (DATA)
                            333 ;--------------------------------------------------------
                            334 ; overlayable items in internal ram 
                            335 ;--------------------------------------------------------
                            336 	.area OSEG    (OVR,DATA)
                            337 ;--------------------------------------------------------
                            338 ; indirectly addressable internal ram data
                            339 ;--------------------------------------------------------
                            340 	.area ISEG    (DATA)
                            341 ;--------------------------------------------------------
                            342 ; absolute internal ram data
                            343 ;--------------------------------------------------------
                            344 	.area IABS    (ABS,DATA)
                            345 	.area IABS    (ABS,DATA)
                            346 ;--------------------------------------------------------
                            347 ; bit data
                            348 ;--------------------------------------------------------
                            349 	.area BSEG    (BIT)
                            350 ;--------------------------------------------------------
                            351 ; paged external ram data
                            352 ;--------------------------------------------------------
                            353 	.area PSEG    (PAG,XDATA)
                            354 ;--------------------------------------------------------
                            355 ; external ram data
                            356 ;--------------------------------------------------------
                            357 	.area XSEG    (XDATA)
                            358 ;--------------------------------------------------------
                            359 ; absolute external ram data
                            360 ;--------------------------------------------------------
                            361 	.area XABS    (ABS,XDATA)
                            362 ;--------------------------------------------------------
                            363 ; external initialized ram data
                            364 ;--------------------------------------------------------
                            365 	.area XISEG   (XDATA)
                            366 	.area HOME    (CODE)
                            367 	.area GSINIT0 (CODE)
                            368 	.area GSINIT1 (CODE)
                            369 	.area GSINIT2 (CODE)
                            370 	.area GSINIT3 (CODE)
                            371 	.area GSINIT4 (CODE)
                            372 	.area GSINIT5 (CODE)
                            373 	.area GSINIT  (CODE)
                            374 	.area GSFINAL (CODE)
                            375 	.area CSEG    (CODE)
                            376 ;--------------------------------------------------------
                            377 ; global & static initialisations
                            378 ;--------------------------------------------------------
                            379 	.area HOME    (CODE)
                            380 	.area GSINIT  (CODE)
                            381 	.area GSFINAL (CODE)
                            382 	.area GSINIT  (CODE)
                            383 ;--------------------------------------------------------
                            384 ; Home
                            385 ;--------------------------------------------------------
                            386 	.area HOME    (CODE)
                            387 	.area HOME    (CODE)
                            388 ;--------------------------------------------------------
                            389 ; code
                            390 ;--------------------------------------------------------
                            391 	.area CSEG    (CODE)
                            392 ;------------------------------------------------------------
                            393 ;Allocation info for local variables in function 'Delay'
                            394 ;------------------------------------------------------------
                            395 ;ch                        Allocated to registers r2 
                            396 ;------------------------------------------------------------
                            397 ;	SRC/i2c.c:49: static void Delay(void)
                            398 ;	-----------------------------------------
                            399 ;	 function Delay
                            400 ;	-----------------------------------------
   2A1A                     401 _Delay:
                    0002    402 	ar2 = 0x02
                    0003    403 	ar3 = 0x03
                    0004    404 	ar4 = 0x04
                    0005    405 	ar5 = 0x05
                    0006    406 	ar6 = 0x06
                    0007    407 	ar7 = 0x07
                    0000    408 	ar0 = 0x00
                    0001    409 	ar1 = 0x01
                            410 ;	SRC/i2c.c:53: while(ch++ < 2);
   2A1A 7A 00               411 	mov	r2,#0x00
   2A1C                     412 00101$:
   2A1C 8A 03               413 	mov	ar3,r2
   2A1E 0A                  414 	inc	r2
   2A1F C3                  415 	clr	c
   2A20 EB                  416 	mov	a,r3
   2A21 64 80               417 	xrl	a,#0x80
   2A23 94 82               418 	subb	a,#0x82
   2A25 40 F5               419 	jc	00101$
   2A27 22                  420 	ret
                            421 ;------------------------------------------------------------
                            422 ;Allocation info for local variables in function 'SendByte'
                            423 ;------------------------------------------------------------
                            424 ;ch                        Allocated to registers r2 
                            425 ;cnt                       Allocated to registers r3 
                            426 ;ack                       Allocated to registers 
                            427 ;------------------------------------------------------------
                            428 ;	SRC/i2c.c:66: static bit SendByte(unsigned char ch)//Returns ack (0 = acknowledged)
                            429 ;	-----------------------------------------
                            430 ;	 function SendByte
                            431 ;	-----------------------------------------
   2A28                     432 _SendByte:
   2A28 AA 82               433 	mov	r2,dpl
                            434 ;	SRC/i2c.c:71: MDE=1;//Output
   2A2A D2 EE               435 	setb	_MDE
                            436 ;	SRC/i2c.c:72: MCO=0;
   2A2C C2 ED               437 	clr	_MCO
                            438 ;	SRC/i2c.c:73: for(cnt=0; cnt<8; cnt++,ch<<=1)
   2A2E 7B 00               439 	mov	r3,#0x00
   2A30                     440 00101$:
   2A30 C3                  441 	clr	c
   2A31 EB                  442 	mov	a,r3
   2A32 64 80               443 	xrl	a,#0x80
   2A34 94 88               444 	subb	a,#0x88
   2A36 50 19               445 	jnc	00104$
                            446 ;	SRC/i2c.c:75: MDO=(ch&0x80)?1:0;
   2A38 EA                  447 	mov	a,r2
   2A39 33                  448 	rlc	a
   2A3A 92 EF               449 	mov	_MDO,c
                            450 ;	SRC/i2c.c:76: MCO=1;
   2A3C D2 ED               451 	setb	_MCO
                            452 ;	SRC/i2c.c:77: Delay();
   2A3E C0 02               453 	push	ar2
   2A40 C0 03               454 	push	ar3
   2A42 12 2A 1A            455 	lcall	_Delay
   2A45 D0 03               456 	pop	ar3
   2A47 D0 02               457 	pop	ar2
                            458 ;	SRC/i2c.c:78: MCO=0;
   2A49 C2 ED               459 	clr	_MCO
                            460 ;	SRC/i2c.c:73: for(cnt=0; cnt<8; cnt++,ch<<=1)
   2A4B 0B                  461 	inc	r3
   2A4C EA                  462 	mov	a,r2
   2A4D 2A                  463 	add	a,r2
   2A4E FA                  464 	mov	r2,a
   2A4F 80 DF               465 	sjmp	00101$
   2A51                     466 00104$:
                            467 ;	SRC/i2c.c:80: MDE=0;//Input
   2A51 C2 EE               468 	clr	_MDE
                            469 ;	SRC/i2c.c:81: MCO=1;
   2A53 D2 ED               470 	setb	_MCO
                            471 ;	SRC/i2c.c:82: Delay();
   2A55 12 2A 1A            472 	lcall	_Delay
                            473 ;	SRC/i2c.c:83: ack=MDI;
   2A58 A2 EC               474 	mov	c,_MDI
                            475 ;	SRC/i2c.c:84: MCO=0;
   2A5A C2 ED               476 	clr	_MCO
                            477 ;	SRC/i2c.c:85: return ack;
   2A5C 22                  478 	ret
                            479 ;------------------------------------------------------------
                            480 ;Allocation info for local variables in function 'Start'
                            481 ;------------------------------------------------------------
                            482 ;------------------------------------------------------------
                            483 ;	SRC/i2c.c:97: static void Start(void)
                            484 ;	-----------------------------------------
                            485 ;	 function Start
                            486 ;	-----------------------------------------
   2A5D                     487 _Start:
                            488 ;	SRC/i2c.c:99: MDE=1;//Output
   2A5D D2 EE               489 	setb	_MDE
                            490 ;	SRC/i2c.c:100: MDO=1;
   2A5F D2 EF               491 	setb	_MDO
                            492 ;	SRC/i2c.c:101: MCO=1;
   2A61 D2 ED               493 	setb	_MCO
                            494 ;	SRC/i2c.c:102: Delay();
   2A63 12 2A 1A            495 	lcall	_Delay
                            496 ;	SRC/i2c.c:103: MDO=0;
   2A66 C2 EF               497 	clr	_MDO
                            498 ;	SRC/i2c.c:104: Delay();
   2A68 12 2A 1A            499 	lcall	_Delay
                            500 ;	SRC/i2c.c:105: MCO=0;
   2A6B C2 ED               501 	clr	_MCO
   2A6D 22                  502 	ret
                            503 ;------------------------------------------------------------
                            504 ;Allocation info for local variables in function 'Stop'
                            505 ;------------------------------------------------------------
                            506 ;------------------------------------------------------------
                            507 ;	SRC/i2c.c:117: static void Stop(void)
                            508 ;	-----------------------------------------
                            509 ;	 function Stop
                            510 ;	-----------------------------------------
   2A6E                     511 _Stop:
                            512 ;	SRC/i2c.c:119: MDE=1;//Output
   2A6E D2 EE               513 	setb	_MDE
                            514 ;	SRC/i2c.c:120: MCO=0;
   2A70 C2 ED               515 	clr	_MCO
                            516 ;	SRC/i2c.c:121: MDO=0;
   2A72 C2 EF               517 	clr	_MDO
                            518 ;	SRC/i2c.c:122: MCO=1;
   2A74 D2 ED               519 	setb	_MCO
                            520 ;	SRC/i2c.c:123: Delay();
   2A76 12 2A 1A            521 	lcall	_Delay
                            522 ;	SRC/i2c.c:124: MDO=1;
   2A79 D2 EF               523 	setb	_MDO
                            524 ;	SRC/i2c.c:125: Delay();
   2A7B 12 2A 1A            525 	lcall	_Delay
                            526 ;	SRC/i2c.c:126: MDE=0;//Input (release line)
   2A7E C2 EE               527 	clr	_MDE
   2A80 22                  528 	ret
                            529 ;------------------------------------------------------------
                            530 ;Allocation info for local variables in function 'Begin'
                            531 ;------------------------------------------------------------
                            532 ;addr                      Allocated to registers r2 
                            533 ;------------------------------------------------------------
                            534 ;	SRC/i2c.c:140: static bit Begin(unsigned char addr)//Returns ack (0 = acknowledged)
                            535 ;	-----------------------------------------
                            536 ;	 function Begin
                            537 ;	-----------------------------------------
   2A81                     538 _Begin:
   2A81 AA 82               539 	mov	r2,dpl
                            540 ;	SRC/i2c.c:142: Start();
   2A83 C0 02               541 	push	ar2
   2A85 12 2A 5D            542 	lcall	_Start
   2A88 D0 02               543 	pop	ar2
                            544 ;	SRC/i2c.c:143: return SendByte(addr);
   2A8A 8A 82               545 	mov	dpl,r2
   2A8C 02 2A 28            546 	ljmp	_SendByte
                            547 ;------------------------------------------------------------
                            548 ;Allocation info for local variables in function 'Ack'
                            549 ;------------------------------------------------------------
                            550 ;------------------------------------------------------------
                            551 ;	SRC/i2c.c:155: static void Ack(void)//Sends ack
                            552 ;	-----------------------------------------
                            553 ;	 function Ack
                            554 ;	-----------------------------------------
   2A8F                     555 _Ack:
                            556 ;	SRC/i2c.c:157: MDE=1; //Output
   2A8F D2 EE               557 	setb	_MDE
                            558 ;	SRC/i2c.c:158: MCO=0;
   2A91 C2 ED               559 	clr	_MCO
                            560 ;	SRC/i2c.c:159: MDO=0;
   2A93 C2 EF               561 	clr	_MDO
                            562 ;	SRC/i2c.c:160: MCO=1;
   2A95 D2 ED               563 	setb	_MCO
                            564 ;	SRC/i2c.c:161: Delay();
   2A97 12 2A 1A            565 	lcall	_Delay
                            566 ;	SRC/i2c.c:162: MCO=0;
   2A9A C2 ED               567 	clr	_MCO
   2A9C 22                  568 	ret
                            569 ;------------------------------------------------------------
                            570 ;Allocation info for local variables in function 'Nack'
                            571 ;------------------------------------------------------------
                            572 ;------------------------------------------------------------
                            573 ;	SRC/i2c.c:174: static void Nack(void)//Sends NAck
                            574 ;	-----------------------------------------
                            575 ;	 function Nack
                            576 ;	-----------------------------------------
   2A9D                     577 _Nack:
                            578 ;	SRC/i2c.c:176: MDE=1;
   2A9D D2 EE               579 	setb	_MDE
                            580 ;	SRC/i2c.c:177: MCO=0;
   2A9F C2 ED               581 	clr	_MCO
                            582 ;	SRC/i2c.c:178: MDO=1;
   2AA1 D2 EF               583 	setb	_MDO
                            584 ;	SRC/i2c.c:179: MCO=1;
   2AA3 D2 ED               585 	setb	_MCO
                            586 ;	SRC/i2c.c:180: Delay();
   2AA5 12 2A 1A            587 	lcall	_Delay
                            588 ;	SRC/i2c.c:181: MCO=0;
   2AA8 C2 ED               589 	clr	_MCO
   2AAA 22                  590 	ret
                            591 ;------------------------------------------------------------
                            592 ;Allocation info for local variables in function 'GetAck'
                            593 ;------------------------------------------------------------
                            594 ;address                   Allocated to registers r2 
                            595 ;------------------------------------------------------------
                            596 ;	SRC/i2c.c:194: bit GetAck(unsigned char address) //Returns 1 if there was an ACK
                            597 ;	-----------------------------------------
                            598 ;	 function GetAck
                            599 ;	-----------------------------------------
   2AAB                     600 _GetAck:
   2AAB AA 82               601 	mov	r2,dpl
                            602 ;	SRC/i2c.c:196: I2CM=1; //I2C Master mode
   2AAD D2 EB               603 	setb	_I2CM
                            604 ;	SRC/i2c.c:197: if( Begin(address&0xFE) ){Stop();return 0;}
   2AAF 74 FE               605 	mov	a,#0xFE
   2AB1 5A                  606 	anl	a,r2
   2AB2 F5 82               607 	mov	dpl,a
   2AB4 12 2A 81            608 	lcall	_Begin
   2AB7 50 05               609 	jnc	00102$
   2AB9 12 2A 6E            610 	lcall	_Stop
   2ABC C3                  611 	clr	c
   2ABD 22                  612 	ret
   2ABE                     613 00102$:
                            614 ;	SRC/i2c.c:198: Stop();
   2ABE 12 2A 6E            615 	lcall	_Stop
                            616 ;	SRC/i2c.c:200: return 1;
   2AC1 D3                  617 	setb	c
   2AC2 22                  618 	ret
                            619 ;------------------------------------------------------------
                            620 ;Allocation info for local variables in function 'RecvByte'
                            621 ;------------------------------------------------------------
                            622 ;cnt                       Allocated to registers r3 
                            623 ;ch                        Allocated to registers r2 
                            624 ;------------------------------------------------------------
                            625 ;	SRC/i2c.c:213: unsigned char RecvByte(void)
                            626 ;	-----------------------------------------
                            627 ;	 function RecvByte
                            628 ;	-----------------------------------------
   2AC3                     629 _RecvByte:
                            630 ;	SRC/i2c.c:216: unsigned char ch=0;
   2AC3 7A 00               631 	mov	r2,#0x00
                            632 ;	SRC/i2c.c:218: MDE=0;//Input
   2AC5 C2 EE               633 	clr	_MDE
                            634 ;	SRC/i2c.c:219: MCO=0;
   2AC7 C2 ED               635 	clr	_MCO
                            636 ;	SRC/i2c.c:220: for(cnt=0; cnt<8; cnt++)
   2AC9 7B 00               637 	mov	r3,#0x00
   2ACB                     638 00101$:
   2ACB C3                  639 	clr	c
   2ACC EB                  640 	mov	a,r3
   2ACD 64 80               641 	xrl	a,#0x80
   2ACF 94 88               642 	subb	a,#0x88
   2AD1 50 1C               643 	jnc	00104$
                            644 ;	SRC/i2c.c:222: ch<<=1;
   2AD3 EA                  645 	mov	a,r2
   2AD4 2A                  646 	add	a,r2
   2AD5 FA                  647 	mov	r2,a
                            648 ;	SRC/i2c.c:223: MCO=1;
   2AD6 D2 ED               649 	setb	_MCO
                            650 ;	SRC/i2c.c:224: Delay();
   2AD8 C0 02               651 	push	ar2
   2ADA C0 03               652 	push	ar3
   2ADC 12 2A 1A            653 	lcall	_Delay
   2ADF D0 03               654 	pop	ar3
   2AE1 D0 02               655 	pop	ar2
                            656 ;	SRC/i2c.c:225: ch|=MDI;
   2AE3 A2 EC               657 	mov	c,_MDI
   2AE5 E4                  658 	clr	a
   2AE6 33                  659 	rlc	a
   2AE7 FC                  660 	mov	r4,a
   2AE8 42 02               661 	orl	ar2,a
                            662 ;	SRC/i2c.c:226: MCO=0;
   2AEA C2 ED               663 	clr	_MCO
                            664 ;	SRC/i2c.c:220: for(cnt=0; cnt<8; cnt++)
   2AEC 0B                  665 	inc	r3
   2AED 80 DC               666 	sjmp	00101$
   2AEF                     667 00104$:
                            668 ;	SRC/i2c.c:228: return ch;
   2AEF 8A 82               669 	mov	dpl,r2
   2AF1 22                  670 	ret
                            671 ;------------------------------------------------------------
                            672 ;Allocation info for local variables in function 'ReceiveBlock'
                            673 ;------------------------------------------------------------
                            674 ;addr                      Allocated to stack - offset -3
                            675 ;block                     Allocated to stack - offset -5
                            676 ;len                       Allocated to stack - offset -6
                            677 ;address                   Allocated to registers r2 
                            678 ;l                         Allocated to registers r6 
                            679 ;ch                        Allocated to registers r7 
                            680 ;------------------------------------------------------------
                            681 ;	SRC/i2c.c:247: bit ReceiveBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len)
                            682 ;	-----------------------------------------
                            683 ;	 function ReceiveBlock
                            684 ;	-----------------------------------------
   2AF2                     685 _ReceiveBlock:
   2AF2 C0 1E               686 	push	_bp
   2AF4 85 81 1E            687 	mov	_bp,sp
   2AF7 AA 82               688 	mov	r2,dpl
                            689 ;	SRC/i2c.c:251: I2CM=1; //I2C Master mode
   2AF9 D2 EB               690 	setb	_I2CM
                            691 ;	SRC/i2c.c:252: address=(address&0xFE); //Write
   2AFB 53 02 FE            692 	anl	ar2,#0xFE
                            693 ;	SRC/i2c.c:254: if(Begin(address)){Stop();return 1;}//Error - No ACK
   2AFE 8A 82               694 	mov	dpl,r2
   2B00 C0 02               695 	push	ar2
   2B02 12 2A 81            696 	lcall	_Begin
   2B05 D0 02               697 	pop	ar2
   2B07 50 07               698 	jnc	00102$
   2B09 12 2A 6E            699 	lcall	_Stop
   2B0C D3                  700 	setb	c
   2B0D 02 2B DB            701 	ljmp	00113$
   2B10                     702 00102$:
                            703 ;	SRC/i2c.c:255: if(SendByte(addr)){Stop();return 1;}
   2B10 A8 1E               704 	mov	r0,_bp
   2B12 18                  705 	dec	r0
   2B13 18                  706 	dec	r0
   2B14 18                  707 	dec	r0
   2B15 86 82               708 	mov	dpl,@r0
   2B17 C0 02               709 	push	ar2
   2B19 12 2A 28            710 	lcall	_SendByte
   2B1C D0 02               711 	pop	ar2
   2B1E 50 07               712 	jnc	00104$
   2B20 12 2A 6E            713 	lcall	_Stop
   2B23 D3                  714 	setb	c
   2B24 02 2B DB            715 	ljmp	00113$
   2B27                     716 00104$:
                            717 ;	SRC/i2c.c:256: Delay();
   2B27 C0 02               718 	push	ar2
   2B29 12 2A 1A            719 	lcall	_Delay
                            720 ;	SRC/i2c.c:257: Delay();
   2B2C 12 2A 1A            721 	lcall	_Delay
   2B2F D0 02               722 	pop	ar2
                            723 ;	SRC/i2c.c:259: address=(address|1);//Read
   2B31 43 02 01            724 	orl	ar2,#0x01
                            725 ;	SRC/i2c.c:260: if(Begin(address)) {Stop();return 1;}
   2B34 8A 82               726 	mov	dpl,r2
   2B36 12 2A 81            727 	lcall	_Begin
   2B39 50 07               728 	jnc	00106$
   2B3B 12 2A 6E            729 	lcall	_Stop
   2B3E D3                  730 	setb	c
   2B3F 02 2B DB            731 	ljmp	00113$
   2B42                     732 00106$:
                            733 ;	SRC/i2c.c:261: Delay();
   2B42 12 2A 1A            734 	lcall	_Delay
                            735 ;	SRC/i2c.c:263: if(len-1)
   2B45 E5 1E               736 	mov	a,_bp
   2B47 24 FA               737 	add	a,#0xfa
   2B49 F8                  738 	mov	r0,a
   2B4A 86 02               739 	mov	ar2,@r0
   2B4C 7B 00               740 	mov	r3,#0x00
   2B4E EA                  741 	mov	a,r2
   2B4F 24 FF               742 	add	a,#0xff
   2B51 FC                  743 	mov	r4,a
   2B52 EB                  744 	mov	a,r3
   2B53 34 FF               745 	addc	a,#0xff
   2B55 FD                  746 	mov	r5,a
   2B56 4C                  747 	orl	a,r4
   2B57 60 64               748 	jz	00108$
                            749 ;	SRC/i2c.c:265: for(l=0;l<(len-1);l++)
   2B59 1A                  750 	dec	r2
   2B5A BA FF 01            751 	cjne	r2,#0xff,00126$
   2B5D 1B                  752 	dec	r3
   2B5E                     753 00126$:
   2B5E E5 1E               754 	mov	a,_bp
   2B60 24 FB               755 	add	a,#0xfb
   2B62 F8                  756 	mov	r0,a
   2B63 86 04               757 	mov	ar4,@r0
   2B65 08                  758 	inc	r0
   2B66 86 05               759 	mov	ar5,@r0
   2B68 7E 00               760 	mov	r6,#0x00
   2B6A                     761 00109$:
   2B6A C0 04               762 	push	ar4
   2B6C C0 05               763 	push	ar5
   2B6E 8E 07               764 	mov	ar7,r6
   2B70 7C 00               765 	mov	r4,#0x00
   2B72 C3                  766 	clr	c
   2B73 EF                  767 	mov	a,r7
   2B74 9A                  768 	subb	a,r2
   2B75 EC                  769 	mov	a,r4
   2B76 64 80               770 	xrl	a,#0x80
   2B78 8B F0               771 	mov	b,r3
   2B7A 63 F0 80            772 	xrl	b,#0x80
   2B7D 95 F0               773 	subb	a,b
   2B7F D0 05               774 	pop	ar5
   2B81 D0 04               775 	pop	ar4
   2B83 50 2E               776 	jnc	00121$
                            777 ;	SRC/i2c.c:267: ch=RecvByte();
   2B85 C0 02               778 	push	ar2
   2B87 C0 03               779 	push	ar3
   2B89 C0 04               780 	push	ar4
   2B8B C0 05               781 	push	ar5
   2B8D C0 06               782 	push	ar6
   2B8F 12 2A C3            783 	lcall	_RecvByte
   2B92 AF 82               784 	mov	r7,dpl
                            785 ;	SRC/i2c.c:268: Ack();
   2B94 C0 07               786 	push	ar7
   2B96 12 2A 8F            787 	lcall	_Ack
   2B99 D0 07               788 	pop	ar7
   2B9B D0 06               789 	pop	ar6
   2B9D D0 05               790 	pop	ar5
   2B9F D0 04               791 	pop	ar4
   2BA1 D0 03               792 	pop	ar3
   2BA3 D0 02               793 	pop	ar2
                            794 ;	SRC/i2c.c:269: *block++=ch;
   2BA5 8C 82               795 	mov	dpl,r4
   2BA7 8D 83               796 	mov	dph,r5
   2BA9 EF                  797 	mov	a,r7
   2BAA F0                  798 	movx	@dptr,a
   2BAB A3                  799 	inc	dptr
   2BAC AC 82               800 	mov	r4,dpl
   2BAE AD 83               801 	mov	r5,dph
                            802 ;	SRC/i2c.c:265: for(l=0;l<(len-1);l++)
   2BB0 0E                  803 	inc	r6
   2BB1 80 B7               804 	sjmp	00109$
   2BB3                     805 00121$:
   2BB3 E5 1E               806 	mov	a,_bp
   2BB5 24 FB               807 	add	a,#0xfb
   2BB7 F8                  808 	mov	r0,a
   2BB8 A6 04               809 	mov	@r0,ar4
   2BBA 08                  810 	inc	r0
   2BBB A6 05               811 	mov	@r0,ar5
   2BBD                     812 00108$:
                            813 ;	SRC/i2c.c:273: ch=RecvByte();
   2BBD 12 2A C3            814 	lcall	_RecvByte
   2BC0 AA 82               815 	mov	r2,dpl
   2BC2 8A 07               816 	mov	ar7,r2
                            817 ;	SRC/i2c.c:274: Nack();
   2BC4 C0 07               818 	push	ar7
   2BC6 12 2A 9D            819 	lcall	_Nack
   2BC9 D0 07               820 	pop	ar7
                            821 ;	SRC/i2c.c:275: *block=ch;
   2BCB E5 1E               822 	mov	a,_bp
   2BCD 24 FB               823 	add	a,#0xfb
   2BCF F8                  824 	mov	r0,a
   2BD0 86 82               825 	mov	dpl,@r0
   2BD2 08                  826 	inc	r0
   2BD3 86 83               827 	mov	dph,@r0
   2BD5 EF                  828 	mov	a,r7
   2BD6 F0                  829 	movx	@dptr,a
                            830 ;	SRC/i2c.c:276: Stop();
   2BD7 12 2A 6E            831 	lcall	_Stop
                            832 ;	SRC/i2c.c:277: return 0;
   2BDA C3                  833 	clr	c
   2BDB                     834 00113$:
   2BDB D0 1E               835 	pop	_bp
   2BDD 22                  836 	ret
                            837 ;------------------------------------------------------------
                            838 ;Allocation info for local variables in function 'TransmitBlock'
                            839 ;------------------------------------------------------------
                            840 ;addr                      Allocated to stack - offset -3
                            841 ;block                     Allocated to stack - offset -5
                            842 ;len                       Allocated to stack - offset -6
                            843 ;address                   Allocated to registers r2 
                            844 ;ch                        Allocated to registers 
                            845 ;l                         Allocated to registers r2 
                            846 ;------------------------------------------------------------
                            847 ;	SRC/i2c.c:297: bit TransmitBlock(unsigned char address, unsigned char addr, unsigned char xdata * block,unsigned char len)
                            848 ;	-----------------------------------------
                            849 ;	 function TransmitBlock
                            850 ;	-----------------------------------------
   2BDE                     851 _TransmitBlock:
   2BDE C0 1E               852 	push	_bp
   2BE0 85 81 1E            853 	mov	_bp,sp
   2BE3 AA 82               854 	mov	r2,dpl
                            855 ;	SRC/i2c.c:301: I2CM=1; //I2C Master mode
   2BE5 D2 EB               856 	setb	_I2CM
                            857 ;	SRC/i2c.c:302: address=(address&0xFE); //Write
   2BE7 53 02 FE            858 	anl	ar2,#0xFE
                            859 ;	SRC/i2c.c:303: if(Begin(address)) {Stop();return 1;}//Error - no Ack
   2BEA 8A 82               860 	mov	dpl,r2
   2BEC 12 2A 81            861 	lcall	_Begin
   2BEF 50 06               862 	jnc	00102$
   2BF1 12 2A 6E            863 	lcall	_Stop
   2BF4 D3                  864 	setb	c
   2BF5 80 52               865 	sjmp	00111$
   2BF7                     866 00102$:
                            867 ;	SRC/i2c.c:304: if(SendByte(addr)) {Stop();return 1;}
   2BF7 A8 1E               868 	mov	r0,_bp
   2BF9 18                  869 	dec	r0
   2BFA 18                  870 	dec	r0
   2BFB 18                  871 	dec	r0
   2BFC 86 82               872 	mov	dpl,@r0
   2BFE 12 2A 28            873 	lcall	_SendByte
   2C01 50 06               874 	jnc	00117$
   2C03 12 2A 6E            875 	lcall	_Stop
   2C06 D3                  876 	setb	c
                            877 ;	SRC/i2c.c:306: for(l=0; l<len; l++,block++)
   2C07 80 40               878 	sjmp	00111$
   2C09                     879 00117$:
   2C09 7A 00               880 	mov	r2,#0x00
   2C0B E5 1E               881 	mov	a,_bp
   2C0D 24 FB               882 	add	a,#0xfb
   2C0F F8                  883 	mov	r0,a
   2C10 86 03               884 	mov	ar3,@r0
   2C12 08                  885 	inc	r0
   2C13 86 04               886 	mov	ar4,@r0
   2C15                     887 00107$:
   2C15 E5 1E               888 	mov	a,_bp
   2C17 24 FA               889 	add	a,#0xfa
   2C19 F8                  890 	mov	r0,a
   2C1A C3                  891 	clr	c
   2C1B EA                  892 	mov	a,r2
   2C1C 96                  893 	subb	a,@r0
   2C1D 50 26               894 	jnc	00110$
                            895 ;	SRC/i2c.c:308: ch=*block;
   2C1F 8B 82               896 	mov	dpl,r3
   2C21 8C 83               897 	mov	dph,r4
   2C23 E0                  898 	movx	a,@dptr
   2C24 F5 82               899 	mov	dpl,a
                            900 ;	SRC/i2c.c:309: if(SendByte(ch)){ Stop(); return 1;}//Not to the end of the block
   2C26 C0 02               901 	push	ar2
   2C28 C0 03               902 	push	ar3
   2C2A C0 04               903 	push	ar4
   2C2C 12 2A 28            904 	lcall	_SendByte
   2C2F D0 04               905 	pop	ar4
   2C31 D0 03               906 	pop	ar3
   2C33 D0 02               907 	pop	ar2
   2C35 50 06               908 	jnc	00109$
   2C37 12 2A 6E            909 	lcall	_Stop
   2C3A D3                  910 	setb	c
   2C3B 80 0C               911 	sjmp	00111$
   2C3D                     912 00109$:
                            913 ;	SRC/i2c.c:306: for(l=0; l<len; l++,block++)
   2C3D 0A                  914 	inc	r2
   2C3E 0B                  915 	inc	r3
   2C3F BB 00 D3            916 	cjne	r3,#0x00,00107$
   2C42 0C                  917 	inc	r4
   2C43 80 D0               918 	sjmp	00107$
   2C45                     919 00110$:
                            920 ;	SRC/i2c.c:311: Stop();
   2C45 12 2A 6E            921 	lcall	_Stop
                            922 ;	SRC/i2c.c:312: return 0;
   2C48 C3                  923 	clr	c
   2C49                     924 00111$:
   2C49 D0 1E               925 	pop	_bp
   2C4B 22                  926 	ret
                            927 	.area CSEG    (CODE)
                            928 	.area CONST   (CODE)
                            929 	.area XINIT   (CODE)
                            930 	.area CABS    (ABS,CODE)
