                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Nov 29 14:32:35 2018
                              5 ;--------------------------------------------------------
                              6 	.module lab2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
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
                            163 	.globl _notes
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
                            327 ;--------------------------------------------------------
                            328 ; internal ram data
                            329 ;--------------------------------------------------------
                            330 	.area DSEG    (DATA)
   0030                     331 _notes::
   0030                     332 	.ds 14
                            333 ;--------------------------------------------------------
                            334 ; overlayable items in internal ram 
                            335 ;--------------------------------------------------------
                            336 	.area OSEG    (OVR,DATA)
                            337 ;--------------------------------------------------------
                            338 ; Stack segment in internal ram 
                            339 ;--------------------------------------------------------
                            340 	.area	SSEG	(DATA)
   003E                     341 __start__stack:
   003E                     342 	.ds	1
                            343 
                            344 ;--------------------------------------------------------
                            345 ; indirectly addressable internal ram data
                            346 ;--------------------------------------------------------
                            347 	.area ISEG    (DATA)
                            348 ;--------------------------------------------------------
                            349 ; absolute internal ram data
                            350 ;--------------------------------------------------------
                            351 	.area IABS    (ABS,DATA)
                            352 	.area IABS    (ABS,DATA)
                            353 ;--------------------------------------------------------
                            354 ; bit data
                            355 ;--------------------------------------------------------
                            356 	.area BSEG    (BIT)
                            357 ;--------------------------------------------------------
                            358 ; paged external ram data
                            359 ;--------------------------------------------------------
                            360 	.area PSEG    (PAG,XDATA)
                            361 ;--------------------------------------------------------
                            362 ; external ram data
                            363 ;--------------------------------------------------------
                            364 	.area XSEG    (XDATA)
                            365 ;--------------------------------------------------------
                            366 ; absolute external ram data
                            367 ;--------------------------------------------------------
                            368 	.area XABS    (ABS,XDATA)
                            369 ;--------------------------------------------------------
                            370 ; external initialized ram data
                            371 ;--------------------------------------------------------
                            372 	.area XISEG   (XDATA)
                            373 	.area HOME    (CODE)
                            374 	.area GSINIT0 (CODE)
                            375 	.area GSINIT1 (CODE)
                            376 	.area GSINIT2 (CODE)
                            377 	.area GSINIT3 (CODE)
                            378 	.area GSINIT4 (CODE)
                            379 	.area GSINIT5 (CODE)
                            380 	.area GSINIT  (CODE)
                            381 	.area GSFINAL (CODE)
                            382 	.area CSEG    (CODE)
                            383 ;--------------------------------------------------------
                            384 ; interrupt vector 
                            385 ;--------------------------------------------------------
                            386 	.area HOME    (CODE)
   2100                     387 __interrupt_vect:
   2100 02 21 08            388 	ljmp	__sdcc_gsinit_startup
                            389 ;--------------------------------------------------------
                            390 ; global & static initialisations
                            391 ;--------------------------------------------------------
                            392 	.area HOME    (CODE)
                            393 	.area GSINIT  (CODE)
                            394 	.area GSFINAL (CODE)
                            395 	.area GSINIT  (CODE)
                            396 	.globl __sdcc_gsinit_startup
                            397 	.globl __sdcc_program_startup
                            398 	.globl __start__stack
                            399 	.globl __mcs51_genXINIT
                            400 	.globl __mcs51_genXRAMCLEAR
                            401 	.globl __mcs51_genRAMCLEAR
                            402 ;	SRC/lab2.c:12: uint16_t notes[] = {262, 294, 330, 349, 392, 440, 494};
   217F 75 30 06            403 	mov	_notes,#0x06
   2182 75 31 01            404 	mov	(_notes + 1),#0x01
   2185 75 32 26            405 	mov	(_notes + 0x0002),#0x26
   2188 75 33 01            406 	mov	((_notes + 0x0002) + 1),#0x01
   218B 75 34 4A            407 	mov	(_notes + 0x0004),#0x4A
   218E 75 35 01            408 	mov	((_notes + 0x0004) + 1),#0x01
   2191 75 36 5D            409 	mov	(_notes + 0x0006),#0x5D
   2194 75 37 01            410 	mov	((_notes + 0x0006) + 1),#0x01
   2197 75 38 88            411 	mov	(_notes + 0x0008),#0x88
   219A 75 39 01            412 	mov	((_notes + 0x0008) + 1),#0x01
   219D 75 3A B8            413 	mov	(_notes + 0x000a),#0xB8
   21A0 75 3B 01            414 	mov	((_notes + 0x000a) + 1),#0x01
   21A3 75 3C EE            415 	mov	(_notes + 0x000c),#0xEE
   21A6 75 3D 01            416 	mov	((_notes + 0x000c) + 1),#0x01
                            417 	.area GSFINAL (CODE)
   21A9 02 21 03            418 	ljmp	__sdcc_program_startup
                            419 ;--------------------------------------------------------
                            420 ; Home
                            421 ;--------------------------------------------------------
                            422 	.area HOME    (CODE)
                            423 	.area HOME    (CODE)
   2103                     424 __sdcc_program_startup:
   2103 12 25 74            425 	lcall	_main
                            426 ;	return from main will lock up
   2106 80 FE               427 	sjmp .
                            428 ;--------------------------------------------------------
                            429 ; code
                            430 ;--------------------------------------------------------
                            431 	.area CSEG    (CODE)
                            432 ;------------------------------------------------------------
                            433 ;Allocation info for local variables in function 'main'
                            434 ;------------------------------------------------------------
                            435 ;cur_note                  Allocated to registers r2 
                            436 ;------------------------------------------------------------
                            437 ;	SRC/lab2.c:19: void main( void )
                            438 ;	-----------------------------------------
                            439 ;	 function main
                            440 ;	-----------------------------------------
   2574                     441 _main:
                    0002    442 	ar2 = 0x02
                    0003    443 	ar3 = 0x03
                    0004    444 	ar4 = 0x04
                    0005    445 	ar5 = 0x05
                    0006    446 	ar6 = 0x06
                    0007    447 	ar7 = 0x07
                    0000    448 	ar0 = 0x00
                    0001    449 	ar1 = 0x01
                            450 ;	SRC/lab2.c:21: unsigned char cur_note = 0x00;
   2574 7A 00               451 	mov	r2,#0x00
                            452 ;	SRC/lab2.c:25: InitSoundTimer();
   2576 C0 02               453 	push	ar2
   2578 12 22 EC            454 	lcall	_InitSoundTimer
                            455 ;	SRC/lab2.c:26: InitCounter();
   257B 12 24 FF            456 	lcall	_InitCounter
                            457 ;	SRC/lab2.c:27: write_max(IE, 0x10001011 );
   257E AB A8               458 	mov	r3,_IE
   2580 7C 00               459 	mov	r4,#0x00
   2582 74 11               460 	mov	a,#0x11
   2584 C0 E0               461 	push	acc
   2586 8B 82               462 	mov	dpl,r3
   2588 8C 83               463 	mov	dph,r4
   258A 12 22 02            464 	lcall	_write_max
   258D 15 81               465 	dec	sp
   258F D0 02               466 	pop	ar2
                            467 ;	SRC/lab2.c:30: while(1) 
   2591                     468 00102$:
                            469 ;	SRC/lab2.c:32: SetFrequency(notes[cur_note]);
   2591 EA                  470 	mov	a,r2
   2592 2A                  471 	add	a,r2
   2593 24 30               472 	add	a,#_notes
   2595 F8                  473 	mov	r0,a
   2596 86 82               474 	mov	dpl,@r0
   2598 08                  475 	inc	r0
   2599 86 83               476 	mov	dph,@r0
   259B 18                  477 	dec	r0
   259C C0 02               478 	push	ar2
   259E 12 22 94            479 	lcall	_SetFrequency
                            480 ;	SRC/lab2.c:33: SetDurationAndWait(500);
   25A1 90 01 F4            481 	mov	dptr,#0x01F4
   25A4 E4                  482 	clr	a
   25A5 F5 F0               483 	mov	b,a
   25A7 12 22 49            484 	lcall	_SetDurationAndWait
   25AA D0 02               485 	pop	ar2
                            486 ;	SRC/lab2.c:36: cur_note = (++cur_note) % 7;
   25AC 0A                  487 	inc	r2
   25AD 75 F0 07            488 	mov	b,#0x07
   25B0 EA                  489 	mov	a,r2
   25B1 84                  490 	div	ab
   25B2 AA F0               491 	mov	r2,b
   25B4 80 DB               492 	sjmp	00102$
                            493 	.area CSEG    (CODE)
                            494 	.area CONST   (CODE)
                            495 	.area XINIT   (CODE)
                            496 	.area CABS    (ABS,CODE)
