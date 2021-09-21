                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Jan 13 00:38:10 2019
                              5 ;--------------------------------------------------------
                              6 	.module lab4
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _error
                             14 	.globl _dip
                             15 	.globl _SPR0
                             16 	.globl _SPR1
                             17 	.globl _CPHA
                             18 	.globl _CPOL
                             19 	.globl _SPIM
                             20 	.globl _SPE
                             21 	.globl _WCOL
                             22 	.globl _ISPI
                             23 	.globl _I2CI
                             24 	.globl _I2CTX
                             25 	.globl _I2CRS
                             26 	.globl _I2CM
                             27 	.globl _MDI
                             28 	.globl _MCO
                             29 	.globl _MDE
                             30 	.globl _MDO
                             31 	.globl _CS0
                             32 	.globl _CS1
                             33 	.globl _CS2
                             34 	.globl _CS3
                             35 	.globl _SCONV
                             36 	.globl _CCONV
                             37 	.globl _DMA
                             38 	.globl _ADCI
                             39 	.globl _P
                             40 	.globl _F1
                             41 	.globl _OV
                             42 	.globl _RS0
                             43 	.globl _RS1
                             44 	.globl _F0
                             45 	.globl _AC
                             46 	.globl _CY
                             47 	.globl _CAP2
                             48 	.globl _CNT2
                             49 	.globl _TR2
                             50 	.globl _XEN
                             51 	.globl _TCLK
                             52 	.globl _RCLK
                             53 	.globl _EXF2
                             54 	.globl _TF2
                             55 	.globl _WDE
                             56 	.globl _WDS
                             57 	.globl _WDR2
                             58 	.globl _WDR1
                             59 	.globl _PRE0
                             60 	.globl _PRE1
                             61 	.globl _PRE2
                             62 	.globl _PX0
                             63 	.globl _PT0
                             64 	.globl _PX1
                             65 	.globl _PT1
                             66 	.globl _PS
                             67 	.globl _PT2
                             68 	.globl _PADC
                             69 	.globl _PSI
                             70 	.globl _RXD
                             71 	.globl _TXD
                             72 	.globl _INT0
                             73 	.globl _INT1
                             74 	.globl _T0
                             75 	.globl _T1
                             76 	.globl _WR
                             77 	.globl _RD
                             78 	.globl _EX0
                             79 	.globl _ET0
                             80 	.globl _EX1
                             81 	.globl _ET1
                             82 	.globl _ES
                             83 	.globl _ET2
                             84 	.globl _EADC
                             85 	.globl _EA
                             86 	.globl _RI
                             87 	.globl _TI
                             88 	.globl _RB8
                             89 	.globl _TB8
                             90 	.globl _REN
                             91 	.globl _SM2
                             92 	.globl _SM1
                             93 	.globl _SM0
                             94 	.globl _T2
                             95 	.globl _T2EX
                             96 	.globl _IT0
                             97 	.globl _IE0
                             98 	.globl _IT1
                             99 	.globl _IE1
                            100 	.globl _TR0
                            101 	.globl _TF0
                            102 	.globl _TR1
                            103 	.globl _TF1
                            104 	.globl _DACCON
                            105 	.globl _DAC1H
                            106 	.globl _DAC1L
                            107 	.globl _DAC0H
                            108 	.globl _DAC0L
                            109 	.globl _SPICON
                            110 	.globl _SPIDAT
                            111 	.globl _ADCCON3
                            112 	.globl _ADCGAINH
                            113 	.globl _ADCGAINL
                            114 	.globl _ADCOFSH
                            115 	.globl _ADCOFSL
                            116 	.globl _B
                            117 	.globl _ADCCON1
                            118 	.globl _I2CCON
                            119 	.globl _ACC
                            120 	.globl _PSMCON
                            121 	.globl _ADCDATAH
                            122 	.globl _ADCDATAL
                            123 	.globl _ADCCON2
                            124 	.globl _DMAP
                            125 	.globl _DMAH
                            126 	.globl _DMAL
                            127 	.globl _PSW
                            128 	.globl _TH2
                            129 	.globl _TL2
                            130 	.globl _RCAP2H
                            131 	.globl _RCAP2L
                            132 	.globl _T2CON
                            133 	.globl _EADRL
                            134 	.globl _WDCON
                            135 	.globl _EDATA4
                            136 	.globl _EDATA3
                            137 	.globl _EDATA2
                            138 	.globl _EDATA1
                            139 	.globl _ETIM3
                            140 	.globl _ETIM2
                            141 	.globl _ETIM1
                            142 	.globl _ECON
                            143 	.globl _IP
                            144 	.globl _P3
                            145 	.globl _IE2
                            146 	.globl _IE
                            147 	.globl _P2
                            148 	.globl _I2CADD
                            149 	.globl _I2CDAT
                            150 	.globl _SBUF
                            151 	.globl _SCON
                            152 	.globl _P1
                            153 	.globl _TH1
                            154 	.globl _TH0
                            155 	.globl _TL1
                            156 	.globl _TL0
                            157 	.globl _TMOD
                            158 	.globl _TCON
                            159 	.globl _PCON
                            160 	.globl _DPP
                            161 	.globl _DPH
                            162 	.globl _DPL
                            163 	.globl _SP
                            164 	.globl _P0
                            165 	.globl _WFIFO
                            166 	.globl _RFIFO
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
                            331 ; internal ram data
                            332 ;--------------------------------------------------------
                            333 	.area DSEG    (DATA)
   0009                     334 _RFIFO::
   0009                     335 	.ds 6
   000F                     336 _WFIFO::
   000F                     337 	.ds 6
                            338 ;--------------------------------------------------------
                            339 ; overlayable items in internal ram 
                            340 ;--------------------------------------------------------
                            341 	.area OSEG    (OVR,DATA)
                            342 ;--------------------------------------------------------
                            343 ; Stack segment in internal ram 
                            344 ;--------------------------------------------------------
                            345 	.area	SSEG	(DATA)
   001B                     346 __start__stack:
   001B                     347 	.ds	1
                            348 
                            349 ;--------------------------------------------------------
                            350 ; indirectly addressable internal ram data
                            351 ;--------------------------------------------------------
                            352 	.area ISEG    (DATA)
                            353 ;--------------------------------------------------------
                            354 ; absolute internal ram data
                            355 ;--------------------------------------------------------
                            356 	.area IABS    (ABS,DATA)
                            357 	.area IABS    (ABS,DATA)
                            358 ;--------------------------------------------------------
                            359 ; bit data
                            360 ;--------------------------------------------------------
                            361 	.area BSEG    (BIT)
                            362 ;--------------------------------------------------------
                            363 ; paged external ram data
                            364 ;--------------------------------------------------------
                            365 	.area PSEG    (PAG,XDATA)
                            366 ;--------------------------------------------------------
                            367 ; external ram data
                            368 ;--------------------------------------------------------
                            369 	.area XSEG    (XDATA)
                            370 ;--------------------------------------------------------
                            371 ; absolute external ram data
                            372 ;--------------------------------------------------------
                            373 	.area XABS    (ABS,XDATA)
                            374 ;--------------------------------------------------------
                            375 ; external initialized ram data
                            376 ;--------------------------------------------------------
                            377 	.area XISEG   (XDATA)
                            378 	.area HOME    (CODE)
                            379 	.area GSINIT0 (CODE)
                            380 	.area GSINIT1 (CODE)
                            381 	.area GSINIT2 (CODE)
                            382 	.area GSINIT3 (CODE)
                            383 	.area GSINIT4 (CODE)
                            384 	.area GSINIT5 (CODE)
                            385 	.area GSINIT  (CODE)
                            386 	.area GSFINAL (CODE)
                            387 	.area CSEG    (CODE)
                            388 ;--------------------------------------------------------
                            389 ; interrupt vector 
                            390 ;--------------------------------------------------------
                            391 	.area HOME    (CODE)
   2100                     392 __interrupt_vect:
   2100 02 21 08            393 	ljmp	__sdcc_gsinit_startup
                            394 ;--------------------------------------------------------
                            395 ; global & static initialisations
                            396 ;--------------------------------------------------------
                            397 	.area HOME    (CODE)
                            398 	.area GSINIT  (CODE)
                            399 	.area GSFINAL (CODE)
                            400 	.area GSINIT  (CODE)
                            401 	.globl __sdcc_gsinit_startup
                            402 	.globl __sdcc_program_startup
                            403 	.globl __start__stack
                            404 	.globl __mcs51_genXINIT
                            405 	.globl __mcs51_genXRAMCLEAR
                            406 	.globl __mcs51_genRAMCLEAR
                            407 ;	SRC/lab4.c:16: TQueue RFIFO = {NULL, NULL};
   2164 75 09 00            408 	mov	_RFIFO,#0x00
   2167 75 0A 00            409 	mov	(_RFIFO + 1),#0x00
   216A 75 0B 00            410 	mov	(_RFIFO + 2),#0x00
   216D 75 0C 00            411 	mov	(_RFIFO + 0x0003),#0x00
   2170 75 0D 00            412 	mov	((_RFIFO + 0x0003) + 1),#0x00
   2173 75 0E 00            413 	mov	((_RFIFO + 0x0003) + 2),#0x00
                            414 ;	SRC/lab4.c:17: TQueue WFIFO = {NULL, NULL};
   2176 75 0F 00            415 	mov	_WFIFO,#0x00
   2179 75 10 00            416 	mov	(_WFIFO + 1),#0x00
   217C 75 11 00            417 	mov	(_WFIFO + 2),#0x00
   217F 75 12 00            418 	mov	(_WFIFO + 0x0003),#0x00
   2182 75 13 00            419 	mov	((_WFIFO + 0x0003) + 1),#0x00
   2185 75 14 00            420 	mov	((_WFIFO + 0x0003) + 2),#0x00
                            421 	.area GSFINAL (CODE)
   2190 02 21 03            422 	ljmp	__sdcc_program_startup
                            423 ;--------------------------------------------------------
                            424 ; Home
                            425 ;--------------------------------------------------------
                            426 	.area HOME    (CODE)
                            427 	.area HOME    (CODE)
   2103                     428 __sdcc_program_startup:
   2103 12 24 4C            429 	lcall	_main
                            430 ;	return from main will lock up
   2106 80 FE               431 	sjmp .
                            432 ;--------------------------------------------------------
                            433 ; code
                            434 ;--------------------------------------------------------
                            435 	.area CSEG    (CODE)
                            436 ;------------------------------------------------------------
                            437 ;Allocation info for local variables in function 'dip'
                            438 ;------------------------------------------------------------
                            439 ;------------------------------------------------------------
                            440 ;	SRC/lab4.c:19: unsigned char dip()
                            441 ;	-----------------------------------------
                            442 ;	 function dip
                            443 ;	-----------------------------------------
   2425                     444 _dip:
                    0002    445 	ar2 = 0x02
                    0003    446 	ar3 = 0x03
                    0004    447 	ar4 = 0x04
                    0005    448 	ar5 = 0x05
                    0006    449 	ar6 = 0x06
                    0007    450 	ar7 = 0x07
                    0000    451 	ar0 = 0x00
                    0001    452 	ar1 = 0x01
                            453 ;	SRC/lab4.c:21: return read_max(EXT_LO);
   2425 90 00 02            454 	mov	dptr,#0x0002
   2428 02 21 A9            455 	ljmp	_read_max
                            456 ;------------------------------------------------------------
                            457 ;Allocation info for local variables in function 'error'
                            458 ;------------------------------------------------------------
                            459 ;str                       Allocated to registers r2 r3 r4 
                            460 ;------------------------------------------------------------
                            461 ;	SRC/lab4.c:159: void error(char * str ){
                            462 ;	-----------------------------------------
                            463 ;	 function error
                            464 ;	-----------------------------------------
   242B                     465 _error:
   242B AA 82               466 	mov	r2,dpl
   242D AB 83               467 	mov	r3,dph
   242F AC F0               468 	mov	r4,b
                            469 ;	SRC/lab4.c:160: leds(0xAA);
   2431 75 82 AA            470 	mov	dpl,#0xAA
   2434 C0 02               471 	push	ar2
   2436 C0 03               472 	push	ar3
   2438 C0 04               473 	push	ar4
   243A 12 21 F8            474 	lcall	_leds
   243D D0 04               475 	pop	ar4
   243F D0 03               476 	pop	ar3
   2441 D0 02               477 	pop	ar2
                            478 ;	SRC/lab4.c:161: type(str);
   2443 8A 82               479 	mov	dpl,r2
   2445 8B 83               480 	mov	dph,r3
   2447 8C F0               481 	mov	b,r4
   2449 02 26 A1            482 	ljmp	_type
                            483 ;------------------------------------------------------------
                            484 ;Allocation info for local variables in function 'main'
                            485 ;------------------------------------------------------------
                            486 ;c                         Allocated to registers r7 
                            487 ;res                       Allocated to stack - offset 1
                            488 ;str                       Allocated to stack - offset 3
                            489 ;dig_count                 Allocated to registers r4 
                            490 ;dip_value                 Allocated to registers r7 
                            491 ;com                       Allocated to registers 
                            492 ;counte                    Allocated to registers 
                            493 ;old_mode                  Allocated to registers r5 r6 
                            494 ;------------------------------------------------------------
                            495 ;	SRC/lab4.c:164: void main( void ){
                            496 ;	-----------------------------------------
                            497 ;	 function main
                            498 ;	-----------------------------------------
   244C                     499 _main:
   244C C0 1A               500 	push	_bp
   244E E5 81               501 	mov	a,sp
   2450 F5 1A               502 	mov	_bp,a
   2452 24 0C               503 	add	a,#0x0c
   2454 F5 81               504 	mov	sp,a
                            505 ;	SRC/lab4.c:166: unsigned int /*long*/ res = 1;
   2456 A8 1A               506 	mov	r0,_bp
   2458 08                  507 	inc	r0
   2459 76 01               508 	mov	@r0,#0x01
   245B E4                  509 	clr	a
   245C 08                  510 	inc	r0
   245D F6                  511 	mov	@r0,a
                            512 ;	SRC/lab4.c:167: unsigned char str[10/*3*/] = {0};
   245E E5 1A               513 	mov	a,_bp
   2460 24 03               514 	add	a,#0x03
   2462 F8                  515 	mov	r0,a
   2463 76 00               516 	mov	@r0,#0x00
   2465 E8                  517 	mov	a,r0
   2466 04                  518 	inc	a
   2467 F9                  519 	mov	r1,a
   2468 77 00               520 	mov	@r1,#0x00
   246A 74 02               521 	mov	a,#0x02
   246C 28                  522 	add	a,r0
   246D F9                  523 	mov	r1,a
   246E 77 00               524 	mov	@r1,#0x00
   2470 74 03               525 	mov	a,#0x03
   2472 28                  526 	add	a,r0
   2473 F9                  527 	mov	r1,a
   2474 77 00               528 	mov	@r1,#0x00
   2476 74 04               529 	mov	a,#0x04
   2478 28                  530 	add	a,r0
   2479 F9                  531 	mov	r1,a
   247A 77 00               532 	mov	@r1,#0x00
   247C 74 05               533 	mov	a,#0x05
   247E 28                  534 	add	a,r0
   247F F9                  535 	mov	r1,a
   2480 77 00               536 	mov	@r1,#0x00
   2482 74 06               537 	mov	a,#0x06
   2484 28                  538 	add	a,r0
   2485 F9                  539 	mov	r1,a
   2486 77 00               540 	mov	@r1,#0x00
   2488 74 07               541 	mov	a,#0x07
   248A 28                  542 	add	a,r0
   248B F9                  543 	mov	r1,a
   248C 77 00               544 	mov	@r1,#0x00
   248E 74 08               545 	mov	a,#0x08
   2490 28                  546 	add	a,r0
   2491 F9                  547 	mov	r1,a
   2492 77 00               548 	mov	@r1,#0x00
   2494 74 09               549 	mov	a,#0x09
   2496 28                  550 	add	a,r0
   2497 F9                  551 	mov	r1,a
   2498 77 00               552 	mov	@r1,#0x00
                            553 ;	SRC/lab4.c:168: unsigned char dig_count = 0;
   249A 7C 00               554 	mov	r4,#0x00
                            555 ;	SRC/lab4.c:173: unsigned int old_mode=0;
   249C 7D 00               556 	mov	r5,#0x00
   249E 7E 00               557 	mov	r6,#0x00
                            558 ;	SRC/lab4.c:175: init_sio( S1200 );
   24A0 75 82 E8            559 	mov	dpl,#0xE8
   24A3 C0 04               560 	push	ar4
   24A5 C0 05               561 	push	ar5
   24A7 C0 06               562 	push	ar6
   24A9 C0 00               563 	push	ar0
   24AB 12 26 6D            564 	lcall	_init_sio
                            565 ;	SRC/lab4.c:176: type("Тест драйвера SIO для стенда SDK-1.1\r\n");
   24AE 90 2A 75            566 	mov	dptr,#__str_1
   24B1 75 F0 80            567 	mov	b,#0x80
   24B4 12 26 A1            568 	lcall	_type
                            569 ;	SRC/lab4.c:177: type("Нажимайте кнопки для тестирования... \r\n");
   24B7 90 2A 9C            570 	mov	dptr,#__str_2
   24BA 75 F0 80            571 	mov	b,#0x80
   24BD 12 26 A1            572 	lcall	_type
   24C0 D0 00               573 	pop	ar0
   24C2 D0 06               574 	pop	ar6
   24C4 D0 05               575 	pop	ar5
   24C6 D0 04               576 	pop	ar4
                            577 ;	SRC/lab4.c:185: while (1)
   24C8                     578 00126$:
                            579 ;	SRC/lab4.c:187: dip_value = dip();
   24C8 C0 04               580 	push	ar4
   24CA C0 05               581 	push	ar5
   24CC C0 06               582 	push	ar6
   24CE C0 00               583 	push	ar0
   24D0 12 24 25            584 	lcall	_dip
   24D3 AF 82               585 	mov	r7,dpl
   24D5 D0 00               586 	pop	ar0
   24D7 D0 06               587 	pop	ar6
   24D9 D0 05               588 	pop	ar5
   24DB D0 04               589 	pop	ar4
                            590 ;	SRC/lab4.c:189: if (dip_value == 0x01) {
   24DD BF 01 02            591 	cjne	r7,#0x01,00141$
   24E0 80 E6               592 	sjmp	00126$
   24E2                     593 00141$:
                            594 ;	SRC/lab4.c:208: else if(dip_value == 0x00){
   24E2 EF                  595 	mov	a,r7
   24E3 70 E3               596 	jnz	00126$
                            597 ;	SRC/lab4.c:209: if(old_mode==0){
   24E5 ED                  598 	mov	a,r5
   24E6 4E                  599 	orl	a,r6
   24E7 70 06               600 	jnz	00102$
                            601 ;	SRC/lab4.c:210: ES=0;
   24E9 C2 AC               602 	clr	_ES
                            603 ;	SRC/lab4.c:212: old_mode=1;
   24EB 7D 01               604 	mov	r5,#0x01
   24ED 7E 00               605 	mov	r6,#0x00
   24EF                     606 00102$:
                            607 ;	SRC/lab4.c:232: leds(0x00); //убираем сигнал ошибки
   24EF 75 82 00            608 	mov	dpl,#0x00
   24F2 C0 04               609 	push	ar4
   24F4 C0 05               610 	push	ar5
   24F6 C0 06               611 	push	ar6
   24F8 C0 00               612 	push	ar0
   24FA 12 21 F8            613 	lcall	_leds
                            614 ;	SRC/lab4.c:234: c=rsio();
   24FD 12 26 98            615 	lcall	_rsio
   2500 AF 82               616 	mov	r7,dpl
   2502 D0 00               617 	pop	ar0
                            618 ;	SRC/lab4.c:235: wsio(c);
   2504 8F 82               619 	mov	dpl,r7
   2506 C0 07               620 	push	ar7
   2508 C0 00               621 	push	ar0
   250A 12 26 8F            622 	lcall	_wsio
   250D D0 00               623 	pop	ar0
   250F D0 07               624 	pop	ar7
                            625 ;	SRC/lab4.c:246: if(isdigit(c)){
   2511 8F 82               626 	mov	dpl,r7
   2513 C0 07               627 	push	ar7
   2515 C0 00               628 	push	ar0
   2517 12 27 56            629 	lcall	_isdigit
   251A E5 82               630 	mov	a,dpl
   251C D0 00               631 	pop	ar0
   251E D0 07               632 	pop	ar7
   2520 D0 06               633 	pop	ar6
   2522 D0 05               634 	pop	ar5
   2524 D0 04               635 	pop	ar4
   2526 60 30               636 	jz	00118$
                            637 ;	SRC/lab4.c:247: if(dig_count>=2){
   2528 BC 02 00            638 	cjne	r4,#0x02,00145$
   252B                     639 00145$:
   252B 40 1D               640 	jc	00104$
                            641 ;	SRC/lab4.c:248: error("\r\nТрех- или более значное число\r\n");
   252D 90 2A C4            642 	mov	dptr,#__str_3
   2530 75 F0 80            643 	mov	b,#0x80
   2533 C0 04               644 	push	ar4
   2535 C0 05               645 	push	ar5
   2537 C0 06               646 	push	ar6
   2539 C0 07               647 	push	ar7
   253B C0 00               648 	push	ar0
   253D 12 24 2B            649 	lcall	_error
   2540 D0 00               650 	pop	ar0
   2542 D0 07               651 	pop	ar7
   2544 D0 06               652 	pop	ar6
   2546 D0 05               653 	pop	ar5
   2548 D0 04               654 	pop	ar4
   254A                     655 00104$:
                            656 ;	SRC/lab4.c:250: str[dig_count]=c;
   254A EC                  657 	mov	a,r4
   254B 28                  658 	add	a,r0
   254C F9                  659 	mov	r1,a
   254D A7 07               660 	mov	@r1,ar7
                            661 ;	SRC/lab4.c:251: dig_count++;
   254F 0C                  662 	inc	r4
                            663 ;	SRC/lab4.c:252: str[dig_count]='\0';
   2550 EC                  664 	mov	a,r4
   2551 28                  665 	add	a,r0
   2552 F9                  666 	mov	r1,a
   2553 77 00               667 	mov	@r1,#0x00
   2555 02 24 C8            668 	ljmp	00126$
   2558                     669 00118$:
                            670 ;	SRC/lab4.c:255: else if(c=='*'){
   2558 BF 2A 6A            671 	cjne	r7,#0x2A,00115$
                            672 ;	SRC/lab4.c:256: if(dig_count==0){
   255B EC                  673 	mov	a,r4
   255C 70 1C               674 	jnz	00106$
                            675 ;	SRC/lab4.c:257: error("\r\nВы не ввели число\r\n");
   255E 90 2A E6            676 	mov	dptr,#__str_4
   2561 75 F0 80            677 	mov	b,#0x80
   2564 C0 04               678 	push	ar4
   2566 C0 05               679 	push	ar5
   2568 C0 06               680 	push	ar6
   256A C0 00               681 	push	ar0
   256C 12 24 2B            682 	lcall	_error
   256F D0 00               683 	pop	ar0
   2571 D0 06               684 	pop	ar6
   2573 D0 05               685 	pop	ar5
   2575 D0 04               686 	pop	ar4
   2577 02 24 C8            687 	ljmp	00126$
   257A                     688 00106$:
                            689 ;	SRC/lab4.c:260: res *= atoi(str);
   257A C0 05               690 	push	ar5
   257C C0 06               691 	push	ar6
   257E 88 05               692 	mov	ar5,r0
   2580 7E 00               693 	mov	r6,#0x00
   2582 7A 40               694 	mov	r2,#0x40
   2584 8D 82               695 	mov	dpl,r5
   2586 8E 83               696 	mov	dph,r6
   2588 8A F0               697 	mov	b,r2
   258A C0 05               698 	push	ar5
   258C C0 06               699 	push	ar6
   258E C0 00               700 	push	ar0
   2590 12 27 6A            701 	lcall	_atoi
   2593 AA 82               702 	mov	r2,dpl
   2595 AB 83               703 	mov	r3,dph
   2597 C0 02               704 	push	ar2
   2599 C0 03               705 	push	ar3
   259B A9 1A               706 	mov	r1,_bp
   259D 09                  707 	inc	r1
   259E 87 82               708 	mov	dpl,@r1
   25A0 09                  709 	inc	r1
   25A1 87 83               710 	mov	dph,@r1
   25A3 12 28 97            711 	lcall	__mulint
   25A6 AA 82               712 	mov	r2,dpl
   25A8 AB 83               713 	mov	r3,dph
   25AA 15 81               714 	dec	sp
   25AC 15 81               715 	dec	sp
   25AE D0 00               716 	pop	ar0
   25B0 D0 06               717 	pop	ar6
   25B2 D0 05               718 	pop	ar5
   25B4 A9 1A               719 	mov	r1,_bp
   25B6 09                  720 	inc	r1
   25B7 A7 02               721 	mov	@r1,ar2
   25B9 09                  722 	inc	r1
   25BA A7 03               723 	mov	@r1,ar3
                            724 ;	SRC/lab4.c:261: dig_count=0;
   25BC 7C 00               725 	mov	r4,#0x00
   25BE D0 06               726 	pop	ar6
   25C0 D0 05               727 	pop	ar5
   25C2 02 24 C8            728 	ljmp	00126$
   25C5                     729 00115$:
                            730 ;	SRC/lab4.c:264: else if(c=='='){
   25C5 BF 3D 39            731 	cjne	r7,#0x3D,00112$
                            732 ;	SRC/lab4.c:265: res *= atoi(str);					
   25C8 C0 05               733 	push	ar5
   25CA C0 06               734 	push	ar6
   25CC 88 02               735 	mov	ar2,r0
   25CE 7B 00               736 	mov	r3,#0x00
   25D0 7D 40               737 	mov	r5,#0x40
   25D2 8A 82               738 	mov	dpl,r2
   25D4 8B 83               739 	mov	dph,r3
   25D6 8D F0               740 	mov	b,r5
   25D8 C0 05               741 	push	ar5
   25DA C0 06               742 	push	ar6
   25DC C0 00               743 	push	ar0
   25DE 12 27 6A            744 	lcall	_atoi
                            745 ;	SRC/lab4.c:267: type("\r\n");
   25E1 90 2A FC            746 	mov	dptr,#__str_5
   25E4 75 F0 80            747 	mov	b,#0x80
   25E7 12 26 A1            748 	lcall	_type
   25EA D0 00               749 	pop	ar0
   25EC D0 06               750 	pop	ar6
   25EE D0 05               751 	pop	ar5
                            752 ;	SRC/lab4.c:269: res = 1;
   25F0 A9 1A               753 	mov	r1,_bp
   25F2 09                  754 	inc	r1
   25F3 77 01               755 	mov	@r1,#0x01
   25F5 E4                  756 	clr	a
   25F6 09                  757 	inc	r1
   25F7 F7                  758 	mov	@r1,a
                            759 ;	SRC/lab4.c:270: dig_count=0;
   25F8 7C 00               760 	mov	r4,#0x00
   25FA D0 06               761 	pop	ar6
   25FC D0 05               762 	pop	ar5
   25FE 02 24 C8            763 	ljmp	00126$
   2601                     764 00112$:
                            765 ;	SRC/lab4.c:273: if(c!=' ' && c!='\t'){
   2601 BF 20 03            766 	cjne	r7,#0x20,00152$
   2604 02 24 C8            767 	ljmp	00126$
   2607                     768 00152$:
   2607 BF 09 03            769 	cjne	r7,#0x09,00153$
   260A 02 24 C8            770 	ljmp	00126$
   260D                     771 00153$:
                            772 ;	SRC/lab4.c:275: error("\r\nИнвалидный символ\r\n");
   260D 90 2A FF            773 	mov	dptr,#__str_6
   2610 75 F0 80            774 	mov	b,#0x80
   2613 C0 05               775 	push	ar5
   2615 C0 06               776 	push	ar6
   2617 C0 00               777 	push	ar0
   2619 12 24 2B            778 	lcall	_error
   261C D0 00               779 	pop	ar0
   261E D0 06               780 	pop	ar6
   2620 D0 05               781 	pop	ar5
                            782 ;	SRC/lab4.c:276: res = 1;
   2622 A9 1A               783 	mov	r1,_bp
   2624 09                  784 	inc	r1
   2625 77 01               785 	mov	@r1,#0x01
   2627 E4                  786 	clr	a
   2628 09                  787 	inc	r1
   2629 F7                  788 	mov	@r1,a
                            789 ;	SRC/lab4.c:277: dig_count=0;
   262A 7C 00               790 	mov	r4,#0x00
   262C 02 24 C8            791 	ljmp	00126$
   262F 85 1A 81            792 	mov	sp,_bp
   2632 D0 1A               793 	pop	_bp
   2634 22                  794 	ret
                            795 	.area CSEG    (CODE)
                            796 	.area CONST   (CODE)
   2A70                     797 __str_0:
   2A70 32 2A 35 3D         798 	.ascii "2*5="
   2A74 00                  799 	.db 0x00
   2A75                     800 __str_1:
   2A75 92                  801 	.db 0x92
   2A76 A5                  802 	.db 0xA5
   2A77 E1                  803 	.db 0xE1
   2A78 E2                  804 	.db 0xE2
   2A79 20                  805 	.ascii " "
   2A7A A4                  806 	.db 0xA4
   2A7B E0                  807 	.db 0xE0
   2A7C A0                  808 	.db 0xA0
   2A7D A9                  809 	.db 0xA9
   2A7E A2                  810 	.db 0xA2
   2A7F A5                  811 	.db 0xA5
   2A80 E0                  812 	.db 0xE0
   2A81 A0                  813 	.db 0xA0
   2A82 20 53 49 4F 20      814 	.ascii " SIO "
   2A87 A4                  815 	.db 0xA4
   2A88 AB                  816 	.db 0xAB
   2A89 EF                  817 	.db 0xEF
   2A8A 20                  818 	.ascii " "
   2A8B E1                  819 	.db 0xE1
   2A8C E2                  820 	.db 0xE2
   2A8D A5                  821 	.db 0xA5
   2A8E AD                  822 	.db 0xAD
   2A8F A4                  823 	.db 0xA4
   2A90 A0                  824 	.db 0xA0
   2A91 20 53 44 4B 2D 31   825 	.ascii " SDK-1.1"
        2E 31
   2A99 0D                  826 	.db 0x0D
   2A9A 0A                  827 	.db 0x0A
   2A9B 00                  828 	.db 0x00
   2A9C                     829 __str_2:
   2A9C 8D                  830 	.db 0x8D
   2A9D A0                  831 	.db 0xA0
   2A9E A6                  832 	.db 0xA6
   2A9F A8                  833 	.db 0xA8
   2AA0 AC                  834 	.db 0xAC
   2AA1 A0                  835 	.db 0xA0
   2AA2 A9                  836 	.db 0xA9
   2AA3 E2                  837 	.db 0xE2
   2AA4 A5                  838 	.db 0xA5
   2AA5 20                  839 	.ascii " "
   2AA6 AA                  840 	.db 0xAA
   2AA7 AD                  841 	.db 0xAD
   2AA8 AE                  842 	.db 0xAE
   2AA9 AF                  843 	.db 0xAF
   2AAA AA                  844 	.db 0xAA
   2AAB A8                  845 	.db 0xA8
   2AAC 20                  846 	.ascii " "
   2AAD A4                  847 	.db 0xA4
   2AAE AB                  848 	.db 0xAB
   2AAF EF                  849 	.db 0xEF
   2AB0 20                  850 	.ascii " "
   2AB1 E2                  851 	.db 0xE2
   2AB2 A5                  852 	.db 0xA5
   2AB3 E1                  853 	.db 0xE1
   2AB4 E2                  854 	.db 0xE2
   2AB5 A8                  855 	.db 0xA8
   2AB6 E0                  856 	.db 0xE0
   2AB7 AE                  857 	.db 0xAE
   2AB8 A2                  858 	.db 0xA2
   2AB9 A0                  859 	.db 0xA0
   2ABA AD                  860 	.db 0xAD
   2ABB A8                  861 	.db 0xA8
   2ABC EF                  862 	.db 0xEF
   2ABD 2E 2E 2E 20         863 	.ascii "... "
   2AC1 0D                  864 	.db 0x0D
   2AC2 0A                  865 	.db 0x0A
   2AC3 00                  866 	.db 0x00
   2AC4                     867 __str_3:
   2AC4 0D                  868 	.db 0x0D
   2AC5 0A                  869 	.db 0x0A
   2AC6 92                  870 	.db 0x92
   2AC7 E0                  871 	.db 0xE0
   2AC8 A5                  872 	.db 0xA5
   2AC9 E5                  873 	.db 0xE5
   2ACA 2D 20               874 	.ascii "- "
   2ACC A8                  875 	.db 0xA8
   2ACD AB                  876 	.db 0xAB
   2ACE A8                  877 	.db 0xA8
   2ACF 20                  878 	.ascii " "
   2AD0 A1                  879 	.db 0xA1
   2AD1 AE                  880 	.db 0xAE
   2AD2 AB                  881 	.db 0xAB
   2AD3 A5                  882 	.db 0xA5
   2AD4 A5                  883 	.db 0xA5
   2AD5 20                  884 	.ascii " "
   2AD6 A7                  885 	.db 0xA7
   2AD7 AD                  886 	.db 0xAD
   2AD8 A0                  887 	.db 0xA0
   2AD9 E7                  888 	.db 0xE7
   2ADA AD                  889 	.db 0xAD
   2ADB AE                  890 	.db 0xAE
   2ADC A5                  891 	.db 0xA5
   2ADD 20                  892 	.ascii " "
   2ADE E7                  893 	.db 0xE7
   2ADF A8                  894 	.db 0xA8
   2AE0 E1                  895 	.db 0xE1
   2AE1 AB                  896 	.db 0xAB
   2AE2 AE                  897 	.db 0xAE
   2AE3 0D                  898 	.db 0x0D
   2AE4 0A                  899 	.db 0x0A
   2AE5 00                  900 	.db 0x00
   2AE6                     901 __str_4:
   2AE6 0D                  902 	.db 0x0D
   2AE7 0A                  903 	.db 0x0A
   2AE8 82                  904 	.db 0x82
   2AE9 EB                  905 	.db 0xEB
   2AEA 20                  906 	.ascii " "
   2AEB AD                  907 	.db 0xAD
   2AEC A5                  908 	.db 0xA5
   2AED 20                  909 	.ascii " "
   2AEE A2                  910 	.db 0xA2
   2AEF A2                  911 	.db 0xA2
   2AF0 A5                  912 	.db 0xA5
   2AF1 AB                  913 	.db 0xAB
   2AF2 A8                  914 	.db 0xA8
   2AF3 20                  915 	.ascii " "
   2AF4 E7                  916 	.db 0xE7
   2AF5 A8                  917 	.db 0xA8
   2AF6 E1                  918 	.db 0xE1
   2AF7 AB                  919 	.db 0xAB
   2AF8 AE                  920 	.db 0xAE
   2AF9 0D                  921 	.db 0x0D
   2AFA 0A                  922 	.db 0x0A
   2AFB 00                  923 	.db 0x00
   2AFC                     924 __str_5:
   2AFC 0D                  925 	.db 0x0D
   2AFD 0A                  926 	.db 0x0A
   2AFE 00                  927 	.db 0x00
   2AFF                     928 __str_6:
   2AFF 0D                  929 	.db 0x0D
   2B00 0A                  930 	.db 0x0A
   2B01 88                  931 	.db 0x88
   2B02 AD                  932 	.db 0xAD
   2B03 A2                  933 	.db 0xA2
   2B04 A0                  934 	.db 0xA0
   2B05 AB                  935 	.db 0xAB
   2B06 A8                  936 	.db 0xA8
   2B07 A4                  937 	.db 0xA4
   2B08 AD                  938 	.db 0xAD
   2B09 EB                  939 	.db 0xEB
   2B0A A9                  940 	.db 0xA9
   2B0B 20                  941 	.ascii " "
   2B0C E1                  942 	.db 0xE1
   2B0D A8                  943 	.db 0xA8
   2B0E AC                  944 	.db 0xAC
   2B0F A2                  945 	.db 0xA2
   2B10 AE                  946 	.db 0xAE
   2B11 AB                  947 	.db 0xAB
   2B12 0D                  948 	.db 0x0D
   2B13 0A                  949 	.db 0x0A
   2B14 00                  950 	.db 0x00
                            951 	.area XINIT   (CODE)
                            952 	.area CABS    (ABS,CODE)
