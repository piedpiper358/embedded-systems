                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Dec 12 23:41:20 2018
                              5 ;--------------------------------------------------------
                              6 	.module lab2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _pauses
                             13 	.globl _notes
                             14 	.globl _main
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
                            165 ;--------------------------------------------------------
                            166 ; special function registers
                            167 ;--------------------------------------------------------
                            168 	.area RSEG    (DATA)
                    0080    169 _P0	=	0x0080
                    0081    170 _SP	=	0x0081
                    0082    171 _DPL	=	0x0082
                    0083    172 _DPH	=	0x0083
                    0084    173 _DPP	=	0x0084
                    0087    174 _PCON	=	0x0087
                    0088    175 _TCON	=	0x0088
                    0089    176 _TMOD	=	0x0089
                    008A    177 _TL0	=	0x008a
                    008B    178 _TL1	=	0x008b
                    008C    179 _TH0	=	0x008c
                    008D    180 _TH1	=	0x008d
                    0090    181 _P1	=	0x0090
                    0098    182 _SCON	=	0x0098
                    0099    183 _SBUF	=	0x0099
                    009A    184 _I2CDAT	=	0x009a
                    009B    185 _I2CADD	=	0x009b
                    00A0    186 _P2	=	0x00a0
                    00A8    187 _IE	=	0x00a8
                    00A9    188 _IE2	=	0x00a9
                    00B0    189 _P3	=	0x00b0
                    00B8    190 _IP	=	0x00b8
                    00B9    191 _ECON	=	0x00b9
                    00BA    192 _ETIM1	=	0x00ba
                    00BB    193 _ETIM2	=	0x00bb
                    00C4    194 _ETIM3	=	0x00c4
                    00BC    195 _EDATA1	=	0x00bc
                    00BD    196 _EDATA2	=	0x00bd
                    00BE    197 _EDATA3	=	0x00be
                    00BF    198 _EDATA4	=	0x00bf
                    00C0    199 _WDCON	=	0x00c0
                    00C6    200 _EADRL	=	0x00c6
                    00C8    201 _T2CON	=	0x00c8
                    00CA    202 _RCAP2L	=	0x00ca
                    00CB    203 _RCAP2H	=	0x00cb
                    00CC    204 _TL2	=	0x00cc
                    00CD    205 _TH2	=	0x00cd
                    00D0    206 _PSW	=	0x00d0
                    00D2    207 _DMAL	=	0x00d2
                    00D3    208 _DMAH	=	0x00d3
                    00D4    209 _DMAP	=	0x00d4
                    00D8    210 _ADCCON2	=	0x00d8
                    00D9    211 _ADCDATAL	=	0x00d9
                    00DA    212 _ADCDATAH	=	0x00da
                    00DF    213 _PSMCON	=	0x00df
                    00E0    214 _ACC	=	0x00e0
                    00E8    215 _I2CCON	=	0x00e8
                    00EF    216 _ADCCON1	=	0x00ef
                    00F0    217 _B	=	0x00f0
                    00F1    218 _ADCOFSL	=	0x00f1
                    00F2    219 _ADCOFSH	=	0x00f2
                    00F3    220 _ADCGAINL	=	0x00f3
                    00F4    221 _ADCGAINH	=	0x00f4
                    00F5    222 _ADCCON3	=	0x00f5
                    00F7    223 _SPIDAT	=	0x00f7
                    00F8    224 _SPICON	=	0x00f8
                    00F9    225 _DAC0L	=	0x00f9
                    00FA    226 _DAC0H	=	0x00fa
                    00FB    227 _DAC1L	=	0x00fb
                    00FC    228 _DAC1H	=	0x00fc
                    00FD    229 _DACCON	=	0x00fd
                            230 ;--------------------------------------------------------
                            231 ; special function bits
                            232 ;--------------------------------------------------------
                            233 	.area RSEG    (DATA)
                    008F    234 _TF1	=	0x008f
                    008E    235 _TR1	=	0x008e
                    008D    236 _TF0	=	0x008d
                    008C    237 _TR0	=	0x008c
                    008B    238 _IE1	=	0x008b
                    008A    239 _IT1	=	0x008a
                    0089    240 _IE0	=	0x0089
                    0088    241 _IT0	=	0x0088
                    0091    242 _T2EX	=	0x0091
                    0090    243 _T2	=	0x0090
                    009F    244 _SM0	=	0x009f
                    009E    245 _SM1	=	0x009e
                    009D    246 _SM2	=	0x009d
                    009C    247 _REN	=	0x009c
                    009B    248 _TB8	=	0x009b
                    009A    249 _RB8	=	0x009a
                    0099    250 _TI	=	0x0099
                    0098    251 _RI	=	0x0098
                    00AF    252 _EA	=	0x00af
                    00AE    253 _EADC	=	0x00ae
                    00AD    254 _ET2	=	0x00ad
                    00AC    255 _ES	=	0x00ac
                    00AB    256 _ET1	=	0x00ab
                    00AA    257 _EX1	=	0x00aa
                    00A9    258 _ET0	=	0x00a9
                    00A8    259 _EX0	=	0x00a8
                    00B7    260 _RD	=	0x00b7
                    00B6    261 _WR	=	0x00b6
                    00B5    262 _T1	=	0x00b5
                    00B4    263 _T0	=	0x00b4
                    00B3    264 _INT1	=	0x00b3
                    00B2    265 _INT0	=	0x00b2
                    00B1    266 _TXD	=	0x00b1
                    00B0    267 _RXD	=	0x00b0
                    00BF    268 _PSI	=	0x00bf
                    00BE    269 _PADC	=	0x00be
                    00BD    270 _PT2	=	0x00bd
                    00BC    271 _PS	=	0x00bc
                    00BB    272 _PT1	=	0x00bb
                    00BA    273 _PX1	=	0x00ba
                    00B9    274 _PT0	=	0x00b9
                    00B8    275 _PX0	=	0x00b8
                    00C7    276 _PRE2	=	0x00c7
                    00C6    277 _PRE1	=	0x00c6
                    00C5    278 _PRE0	=	0x00c5
                    00C3    279 _WDR1	=	0x00c3
                    00C2    280 _WDR2	=	0x00c2
                    00C1    281 _WDS	=	0x00c1
                    00C0    282 _WDE	=	0x00c0
                    00CF    283 _TF2	=	0x00cf
                    00CE    284 _EXF2	=	0x00ce
                    00CD    285 _RCLK	=	0x00cd
                    00CC    286 _TCLK	=	0x00cc
                    00CB    287 _XEN	=	0x00cb
                    00CA    288 _TR2	=	0x00ca
                    00C9    289 _CNT2	=	0x00c9
                    00C8    290 _CAP2	=	0x00c8
                    00D7    291 _CY	=	0x00d7
                    00D6    292 _AC	=	0x00d6
                    00D5    293 _F0	=	0x00d5
                    00D4    294 _RS1	=	0x00d4
                    00D3    295 _RS0	=	0x00d3
                    00D2    296 _OV	=	0x00d2
                    00D1    297 _F1	=	0x00d1
                    00D0    298 _P	=	0x00d0
                    00DF    299 _ADCI	=	0x00df
                    00DE    300 _DMA	=	0x00de
                    00DD    301 _CCONV	=	0x00dd
                    00DC    302 _SCONV	=	0x00dc
                    00DB    303 _CS3	=	0x00db
                    00DA    304 _CS2	=	0x00da
                    00D9    305 _CS1	=	0x00d9
                    00D8    306 _CS0	=	0x00d8
                    00EF    307 _MDO	=	0x00ef
                    00EE    308 _MDE	=	0x00ee
                    00ED    309 _MCO	=	0x00ed
                    00EC    310 _MDI	=	0x00ec
                    00EB    311 _I2CM	=	0x00eb
                    00EA    312 _I2CRS	=	0x00ea
                    00E9    313 _I2CTX	=	0x00e9
                    00E8    314 _I2CI	=	0x00e8
                    00FF    315 _ISPI	=	0x00ff
                    00FE    316 _WCOL	=	0x00fe
                    00FD    317 _SPE	=	0x00fd
                    00FC    318 _SPIM	=	0x00fc
                    00FB    319 _CPOL	=	0x00fb
                    00FA    320 _CPHA	=	0x00fa
                    00F9    321 _SPR1	=	0x00f9
                    00F8    322 _SPR0	=	0x00f8
                            323 ;--------------------------------------------------------
                            324 ; overlayable register banks
                            325 ;--------------------------------------------------------
                            326 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     327 	.ds 8
                            328 ;--------------------------------------------------------
                            329 ; internal ram data
                            330 ;--------------------------------------------------------
                            331 	.area DSEG    (DATA)
                            332 ;--------------------------------------------------------
                            333 ; overlayable items in internal ram 
                            334 ;--------------------------------------------------------
                            335 	.area OSEG    (OVR,DATA)
                            336 ;--------------------------------------------------------
                            337 ; Stack segment in internal ram 
                            338 ;--------------------------------------------------------
                            339 	.area	SSEG	(DATA)
   0030                     340 __start__stack:
   0030                     341 	.ds	1
                            342 
                            343 ;--------------------------------------------------------
                            344 ; indirectly addressable internal ram data
                            345 ;--------------------------------------------------------
                            346 	.area ISEG    (DATA)
                            347 ;--------------------------------------------------------
                            348 ; absolute internal ram data
                            349 ;--------------------------------------------------------
                            350 	.area IABS    (ABS,DATA)
                            351 	.area IABS    (ABS,DATA)
                            352 ;--------------------------------------------------------
                            353 ; bit data
                            354 ;--------------------------------------------------------
                            355 	.area BSEG    (BIT)
                            356 ;--------------------------------------------------------
                            357 ; paged external ram data
                            358 ;--------------------------------------------------------
                            359 	.area PSEG    (PAG,XDATA)
                            360 ;--------------------------------------------------------
                            361 ; external ram data
                            362 ;--------------------------------------------------------
                            363 	.area XSEG    (XDATA)
                            364 ;--------------------------------------------------------
                            365 ; absolute external ram data
                            366 ;--------------------------------------------------------
                            367 	.area XABS    (ABS,XDATA)
                            368 ;--------------------------------------------------------
                            369 ; external initialized ram data
                            370 ;--------------------------------------------------------
                            371 	.area XISEG   (XDATA)
                            372 	.area HOME    (CODE)
                            373 	.area GSINIT0 (CODE)
                            374 	.area GSINIT1 (CODE)
                            375 	.area GSINIT2 (CODE)
                            376 	.area GSINIT3 (CODE)
                            377 	.area GSINIT4 (CODE)
                            378 	.area GSINIT5 (CODE)
                            379 	.area GSINIT  (CODE)
                            380 	.area GSFINAL (CODE)
                            381 	.area CSEG    (CODE)
                            382 ;--------------------------------------------------------
                            383 ; interrupt vector 
                            384 ;--------------------------------------------------------
                            385 	.area HOME    (CODE)
   2100                     386 __interrupt_vect:
   2100 02 21 08            387 	ljmp	__sdcc_gsinit_startup
                            388 ;--------------------------------------------------------
                            389 ; global & static initialisations
                            390 ;--------------------------------------------------------
                            391 	.area HOME    (CODE)
                            392 	.area GSINIT  (CODE)
                            393 	.area GSFINAL (CODE)
                            394 	.area GSINIT  (CODE)
                            395 	.globl __sdcc_gsinit_startup
                            396 	.globl __sdcc_program_startup
                            397 	.globl __start__stack
                            398 	.globl __mcs51_genXINIT
                            399 	.globl __mcs51_genXRAMCLEAR
                            400 	.globl __mcs51_genRAMCLEAR
                            401 	.area GSFINAL (CODE)
   217F 02 21 03            402 	ljmp	__sdcc_program_startup
                            403 ;--------------------------------------------------------
                            404 ; Home
                            405 ;--------------------------------------------------------
                            406 	.area HOME    (CODE)
                            407 	.area HOME    (CODE)
   2103                     408 __sdcc_program_startup:
   2103 12 25 4A            409 	lcall	_main
                            410 ;	return from main will lock up
   2106 80 FE               411 	sjmp .
                            412 ;--------------------------------------------------------
                            413 ; code
                            414 ;--------------------------------------------------------
                            415 	.area CSEG    (CODE)
                            416 ;------------------------------------------------------------
                            417 ;Allocation info for local variables in function 'main'
                            418 ;------------------------------------------------------------
                            419 ;cur_note                  Allocated to registers r2 
                            420 ;------------------------------------------------------------
                            421 ;	SRC/lab2.c:99: void main( void )
                            422 ;	-----------------------------------------
                            423 ;	 function main
                            424 ;	-----------------------------------------
   254A                     425 _main:
                    0002    426 	ar2 = 0x02
                    0003    427 	ar3 = 0x03
                    0004    428 	ar4 = 0x04
                    0005    429 	ar5 = 0x05
                    0006    430 	ar6 = 0x06
                    0007    431 	ar7 = 0x07
                    0000    432 	ar0 = 0x00
                    0001    433 	ar1 = 0x01
                            434 ;	SRC/lab2.c:101: unsigned char cur_note = 0x00;
   254A 7A 00               435 	mov	r2,#0x00
                            436 ;	SRC/lab2.c:105: InitSoundTimer();
   254C C0 02               437 	push	ar2
   254E 12 22 C2            438 	lcall	_InitSoundTimer
                            439 ;	SRC/lab2.c:106: InitCounter();
   2551 12 24 D5            440 	lcall	_InitCounter
                            441 ;	SRC/lab2.c:107: write_max(IE, 0x10001011 );
   2554 AB A8               442 	mov	r3,_IE
   2556 7C 00               443 	mov	r4,#0x00
   2558 74 11               444 	mov	a,#0x11
   255A C0 E0               445 	push	acc
   255C 8B 82               446 	mov	dpl,r3
   255E 8C 83               447 	mov	dph,r4
   2560 12 21 D8            448 	lcall	_write_max
   2563 15 81               449 	dec	sp
   2565 D0 02               450 	pop	ar2
                            451 ;	SRC/lab2.c:110: while(1) 
   2567                     452 00102$:
                            453 ;	SRC/lab2.c:116: SetFrequency(notes[cur_note]);
   2567 EA                  454 	mov	a,r2
   2568 2A                  455 	add	a,r2
   2569 FB                  456 	mov	r3,a
   256A 90 26 57            457 	mov	dptr,#_notes
   256D 93                  458 	movc	a,@a+dptr
   256E CB                  459 	xch	a,r3
   256F A3                  460 	inc	dptr
   2570 93                  461 	movc	a,@a+dptr
   2571 FC                  462 	mov	r4,a
   2572 8B 82               463 	mov	dpl,r3
   2574 8C 83               464 	mov	dph,r4
   2576 C0 02               465 	push	ar2
   2578 12 22 6A            466 	lcall	_SetFrequency
                            467 ;	SRC/lab2.c:117: SetDurationAndWait(500);
   257B 90 01 F4            468 	mov	dptr,#0x01F4
   257E E4                  469 	clr	a
   257F F5 F0               470 	mov	b,a
   2581 12 22 1F            471 	lcall	_SetDurationAndWait
   2584 D0 02               472 	pop	ar2
                            473 ;	SRC/lab2.c:123: cur_note = (++cur_note) % ARRAYSIZE(notes);
   2586 0A                  474 	inc	r2
   2587 75 F0 31            475 	mov	b,#0x31
   258A EA                  476 	mov	a,r2
   258B 84                  477 	div	ab
   258C AA F0               478 	mov	r2,b
   258E 80 D7               479 	sjmp	00102$
                            480 	.area CSEG    (CODE)
                            481 	.area CONST   (CODE)
   2657                     482 _notes:
   2657 4A 01               483 	.byte #0x4A,#0x01
   2659 4A 01               484 	.byte #0x4A,#0x01
   265B 4A 01               485 	.byte #0x4A,#0x01
   265D 4A 01               486 	.byte #0x4A,#0x01
   265F 4A 01               487 	.byte #0x4A,#0x01
   2661 4A 01               488 	.byte #0x4A,#0x01
   2663 4A 01               489 	.byte #0x4A,#0x01
   2665 88 01               490 	.byte #0x88,#0x01
   2667 06 01               491 	.byte #0x06,#0x01
   2669 26 01               492 	.byte #0x26,#0x01
   266B 4A 01               493 	.byte #0x4A,#0x01
   266D 5D 01               494 	.byte #0x5D,#0x01
   266F 5D 01               495 	.byte #0x5D,#0x01
   2671 5D 01               496 	.byte #0x5D,#0x01
   2673 5D 01               497 	.byte #0x5D,#0x01
   2675 5D 01               498 	.byte #0x5D,#0x01
   2677 4A 01               499 	.byte #0x4A,#0x01
   2679 4A 01               500 	.byte #0x4A,#0x01
   267B 4A 01               501 	.byte #0x4A,#0x01
   267D 4A 01               502 	.byte #0x4A,#0x01
   267F 26 01               503 	.byte #0x26,#0x01
   2681 26 01               504 	.byte #0x26,#0x01
   2683 4A 01               505 	.byte #0x4A,#0x01
   2685 26 01               506 	.byte #0x26,#0x01
   2687 88 01               507 	.byte #0x88,#0x01
   2689 4A 01               508 	.byte #0x4A,#0x01
   268B 4A 01               509 	.byte #0x4A,#0x01
   268D 4A 01               510 	.byte #0x4A,#0x01
   268F 4A 01               511 	.byte #0x4A,#0x01
   2691 4A 01               512 	.byte #0x4A,#0x01
   2693 4A 01               513 	.byte #0x4A,#0x01
   2695 4A 01               514 	.byte #0x4A,#0x01
   2697 88 01               515 	.byte #0x88,#0x01
   2699 06 01               516 	.byte #0x06,#0x01
   269B 26 01               517 	.byte #0x26,#0x01
   269D 4A 01               518 	.byte #0x4A,#0x01
   269F 5D 01               519 	.byte #0x5D,#0x01
   26A1 5D 01               520 	.byte #0x5D,#0x01
   26A3 5D 01               521 	.byte #0x5D,#0x01
   26A5 5D 01               522 	.byte #0x5D,#0x01
   26A7 5D 01               523 	.byte #0x5D,#0x01
   26A9 4A 01               524 	.byte #0x4A,#0x01
   26AB 4A 01               525 	.byte #0x4A,#0x01
   26AD 4A 01               526 	.byte #0x4A,#0x01
   26AF 88 01               527 	.byte #0x88,#0x01
   26B1 88 01               528 	.byte #0x88,#0x01
   26B3 5D 01               529 	.byte #0x5D,#0x01
   26B5 26 01               530 	.byte #0x26,#0x01
   26B7 06 01               531 	.byte #0x06,#0x01
   26B9                     532 _pauses:
   26B9 00 00 00 00         533 	.byte #0x00,#0x00,#0x00,#0x00
   26BD 00 00 00 00         534 	.byte #0x00,#0x00,#0x00,#0x00
   26C1 00 00 00 00         535 	.byte #0x00,#0x00,#0x00,#0x00
   26C5 00 00 00 00         536 	.byte #0x00,#0x00,#0x00,#0x00
   26C9 00 00 00 00         537 	.byte #0x00,#0x00,#0x00,#0x00
   26CD 00 00 00 00         538 	.byte #0x00,#0x00,#0x00,#0x00
   26D1 00 00 00 00         539 	.byte #0x00,#0x00,#0x00,#0x00
   26D5 00 00 00 00         540 	.byte #0x00,#0x00,#0x00,#0x00
   26D9 00 00 00 00         541 	.byte #0x00,#0x00,#0x00,#0x00
   26DD 00 00 00 00         542 	.byte #0x00,#0x00,#0x00,#0x00
   26E1 00 00 80 3F         543 	.byte #0x00,#0x00,#0x80,#0x3F
   26E5 00 00 00 00         544 	.byte #0x00,#0x00,#0x00,#0x00
   26E9 00 00 00 00         545 	.byte #0x00,#0x00,#0x00,#0x00
   26ED 00 00 00 00         546 	.byte #0x00,#0x00,#0x00,#0x00
   26F1 00 00 00 00         547 	.byte #0x00,#0x00,#0x00,#0x00
   26F5 00 00 00 00         548 	.byte #0x00,#0x00,#0x00,#0x00
   26F9 00 00 00 00         549 	.byte #0x00,#0x00,#0x00,#0x00
   26FD 00 00 00 00         550 	.byte #0x00,#0x00,#0x00,#0x00
   2701 00 00 00 00         551 	.byte #0x00,#0x00,#0x00,#0x00
   2705 00 00 00 00         552 	.byte #0x00,#0x00,#0x00,#0x00
   2709 00 00 00 00         553 	.byte #0x00,#0x00,#0x00,#0x00
   270D 00 00 00 00         554 	.byte #0x00,#0x00,#0x00,#0x00
   2711 00 00 00 00         555 	.byte #0x00,#0x00,#0x00,#0x00
   2715 00 00 00 00         556 	.byte #0x00,#0x00,#0x00,#0x00
   2719 00 00 00 00         557 	.byte #0x00,#0x00,#0x00,#0x00
   271D 00 00 00 00         558 	.byte #0x00,#0x00,#0x00,#0x00
   2721 00 00 00 00         559 	.byte #0x00,#0x00,#0x00,#0x00
   2725 00 00 00 00         560 	.byte #0x00,#0x00,#0x00,#0x00
   2729 00 00 00 00         561 	.byte #0x00,#0x00,#0x00,#0x00
   272D 00 00 00 00         562 	.byte #0x00,#0x00,#0x00,#0x00
   2731 00 00 00 00         563 	.byte #0x00,#0x00,#0x00,#0x00
   2735 00 00 00 00         564 	.byte #0x00,#0x00,#0x00,#0x00
   2739 00 00 00 00         565 	.byte #0x00,#0x00,#0x00,#0x00
   273D 00 00 00 00         566 	.byte #0x00,#0x00,#0x00,#0x00
   2741 00 00 00 00         567 	.byte #0x00,#0x00,#0x00,#0x00
   2745 00 00 00 00         568 	.byte #0x00,#0x00,#0x00,#0x00
   2749 00 00 00 00         569 	.byte #0x00,#0x00,#0x00,#0x00
   274D 00 00 00 00         570 	.byte #0x00,#0x00,#0x00,#0x00
   2751 00 00 00 00         571 	.byte #0x00,#0x00,#0x00,#0x00
   2755 00 00 00 00         572 	.byte #0x00,#0x00,#0x00,#0x00
   2759 00 00 00 00         573 	.byte #0x00,#0x00,#0x00,#0x00
   275D 00 00 00 00         574 	.byte #0x00,#0x00,#0x00,#0x00
   2761 00 00 00 00         575 	.byte #0x00,#0x00,#0x00,#0x00
   2765 00 00 00 00         576 	.byte #0x00,#0x00,#0x00,#0x00
   2769 00 00 00 00         577 	.byte #0x00,#0x00,#0x00,#0x00
   276D 00 00 00 00         578 	.byte #0x00,#0x00,#0x00,#0x00
   2771 00 00 00 00         579 	.byte #0x00,#0x00,#0x00,#0x00
   2775 00 00 00 00         580 	.byte #0x00,#0x00,#0x00,#0x00
   2779 00 00 00 00         581 	.byte #0x00,#0x00,#0x00,#0x00
                            582 	.area XINIT   (CODE)
                            583 	.area CABS    (ABS,CODE)
