                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Tue Dec 11 01:28:41 2018
                              5 ;--------------------------------------------------------
                              6 	.module lab3
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _toupper_rus_cp866
                             14 	.globl _SIO_ISR
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
                            165 	.globl _FIFO
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
   0009                     333 _FIFO::
   0009                     334 	.ds 6
                            335 ;--------------------------------------------------------
                            336 ; overlayable items in internal ram 
                            337 ;--------------------------------------------------------
                            338 	.area OSEG    (OVR,DATA)
                            339 ;--------------------------------------------------------
                            340 ; Stack segment in internal ram 
                            341 ;--------------------------------------------------------
                            342 	.area	SSEG	(DATA)
   0014                     343 __start__stack:
   0014                     344 	.ds	1
                            345 
                            346 ;--------------------------------------------------------
                            347 ; indirectly addressable internal ram data
                            348 ;--------------------------------------------------------
                            349 	.area ISEG    (DATA)
                            350 ;--------------------------------------------------------
                            351 ; absolute internal ram data
                            352 ;--------------------------------------------------------
                            353 	.area IABS    (ABS,DATA)
                            354 	.area IABS    (ABS,DATA)
                            355 ;--------------------------------------------------------
                            356 ; bit data
                            357 ;--------------------------------------------------------
                            358 	.area BSEG    (BIT)
                            359 ;--------------------------------------------------------
                            360 ; paged external ram data
                            361 ;--------------------------------------------------------
                            362 	.area PSEG    (PAG,XDATA)
                            363 ;--------------------------------------------------------
                            364 ; external ram data
                            365 ;--------------------------------------------------------
                            366 	.area XSEG    (XDATA)
                            367 ;--------------------------------------------------------
                            368 ; absolute external ram data
                            369 ;--------------------------------------------------------
                            370 	.area XABS    (ABS,XDATA)
                            371 ;--------------------------------------------------------
                            372 ; external initialized ram data
                            373 ;--------------------------------------------------------
                            374 	.area XISEG   (XDATA)
                            375 	.area HOME    (CODE)
                            376 	.area GSINIT0 (CODE)
                            377 	.area GSINIT1 (CODE)
                            378 	.area GSINIT2 (CODE)
                            379 	.area GSINIT3 (CODE)
                            380 	.area GSINIT4 (CODE)
                            381 	.area GSINIT5 (CODE)
                            382 	.area GSINIT  (CODE)
                            383 	.area GSFINAL (CODE)
                            384 	.area CSEG    (CODE)
                            385 ;--------------------------------------------------------
                            386 ; interrupt vector 
                            387 ;--------------------------------------------------------
                            388 	.area HOME    (CODE)
   2100                     389 __interrupt_vect:
   2100 02 21 2B            390 	ljmp	__sdcc_gsinit_startup
   2103 32                  391 	reti
   2104                     392 	.ds	7
   210B 32                  393 	reti
   210C                     394 	.ds	7
   2113 32                  395 	reti
   2114                     396 	.ds	7
   211B 32                  397 	reti
   211C                     398 	.ds	7
   2123 02 22 F6            399 	ljmp	_SIO_ISR
                            400 ;--------------------------------------------------------
                            401 ; global & static initialisations
                            402 ;--------------------------------------------------------
                            403 	.area HOME    (CODE)
                            404 	.area GSINIT  (CODE)
                            405 	.area GSFINAL (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.globl __sdcc_gsinit_startup
                            408 	.globl __sdcc_program_startup
                            409 	.globl __start__stack
                            410 	.globl __mcs51_genXINIT
                            411 	.globl __mcs51_genXRAMCLEAR
                            412 	.globl __mcs51_genRAMCLEAR
                            413 ;	SRC/lab3.c:9: TQueue FIFO = {NULL, NULL};
   2187 75 09 00            414 	mov	_FIFO,#0x00
   218A 75 0A 00            415 	mov	(_FIFO + 1),#0x00
   218D 75 0B 00            416 	mov	(_FIFO + 2),#0x00
   2190 75 0C 00            417 	mov	(_FIFO + 0x0003),#0x00
   2193 75 0D 00            418 	mov	((_FIFO + 0x0003) + 1),#0x00
   2196 75 0E 00            419 	mov	((_FIFO + 0x0003) + 2),#0x00
                            420 	.area GSFINAL (CODE)
   219E 02 21 26            421 	ljmp	__sdcc_program_startup
                            422 ;--------------------------------------------------------
                            423 ; Home
                            424 ;--------------------------------------------------------
                            425 	.area HOME    (CODE)
                            426 	.area HOME    (CODE)
   2126                     427 __sdcc_program_startup:
   2126 12 23 64            428 	lcall	_main
                            429 ;	return from main will lock up
   2129 80 FE               430 	sjmp .
                            431 ;--------------------------------------------------------
                            432 ; code
                            433 ;--------------------------------------------------------
                            434 	.area CSEG    (CODE)
                            435 ;------------------------------------------------------------
                            436 ;Allocation info for local variables in function 'SIO_ISR'
                            437 ;------------------------------------------------------------
                            438 ;------------------------------------------------------------
                            439 ;	SRC/lab3.c:16: void SIO_ISR( void ) __interrupt ( 4 ){
                            440 ;	-----------------------------------------
                            441 ;	 function SIO_ISR
                            442 ;	-----------------------------------------
   22F6                     443 _SIO_ISR:
                    0002    444 	ar2 = 0x02
                    0003    445 	ar3 = 0x03
                    0004    446 	ar4 = 0x04
                    0005    447 	ar5 = 0x05
                    0006    448 	ar6 = 0x06
                    0007    449 	ar7 = 0x07
                    0000    450 	ar0 = 0x00
                    0001    451 	ar1 = 0x01
   22F6 C0 D0               452 	push	psw
   22F8 75 D0 00            453 	mov	psw,#0x00
                            454 ;	SRC/lab3.c:17: if(TI){
   22FB A2 99               455 	mov	c,_TI
                            456 ;	SRC/lab3.c:21: if(RI){
   22FD A2 98               457 	mov	c,_RI
   22FF D0 D0               458 	pop	psw
   2301 32                  459 	reti
                            460 ;	eliminated unneeded push/pop dpl
                            461 ;	eliminated unneeded push/pop dph
                            462 ;	eliminated unneeded push/pop b
                            463 ;	eliminated unneeded push/pop acc
                            464 ;------------------------------------------------------------
                            465 ;Allocation info for local variables in function 'toupper_rus_cp866'
                            466 ;------------------------------------------------------------
                            467 ;c                         Allocated to registers r2 r3 
                            468 ;------------------------------------------------------------
                            469 ;	SRC/lab3.c:30: int toupper_rus_cp866(int c){
                            470 ;	-----------------------------------------
                            471 ;	 function toupper_rus_cp866
                            472 ;	-----------------------------------------
   2302                     473 _toupper_rus_cp866:
   2302 AA 82               474 	mov	r2,dpl
   2304 AB 83               475 	mov	r3,dph
                            476 ;	SRC/lab3.c:31: if(c>='а' && c<='п')
   2306 C3                  477 	clr	c
   2307 EA                  478 	mov	a,r2
   2308 94 A0               479 	subb	a,#0xA0
   230A EB                  480 	mov	a,r3
   230B 64 80               481 	xrl	a,#0x80
   230D 94 80               482 	subb	a,#0x80
   230F 40 19               483 	jc	00102$
   2311 74 AF               484 	mov	a,#0xAF
   2313 9A                  485 	subb	a,r2
   2314 74 80               486 	mov	a,#(0x00 ^ 0x80)
   2316 8B F0               487 	mov	b,r3
   2318 63 F0 80            488 	xrl	b,#0x80
   231B 95 F0               489 	subb	a,b
   231D 40 0B               490 	jc	00102$
                            491 ;	SRC/lab3.c:32: return c-0x20;
   231F EA                  492 	mov	a,r2
   2320 24 E0               493 	add	a,#0xe0
   2322 F5 82               494 	mov	dpl,a
   2324 EB                  495 	mov	a,r3
   2325 34 FF               496 	addc	a,#0xff
   2327 F5 83               497 	mov	dph,a
   2329 22                  498 	ret
   232A                     499 00102$:
                            500 ;	SRC/lab3.c:33: if(c>='р' && c<='я')
   232A C3                  501 	clr	c
   232B EA                  502 	mov	a,r2
   232C 94 E0               503 	subb	a,#0xE0
   232E EB                  504 	mov	a,r3
   232F 64 80               505 	xrl	a,#0x80
   2331 94 80               506 	subb	a,#0x80
   2333 40 19               507 	jc	00105$
   2335 74 EF               508 	mov	a,#0xEF
   2337 9A                  509 	subb	a,r2
   2338 74 80               510 	mov	a,#(0x00 ^ 0x80)
   233A 8B F0               511 	mov	b,r3
   233C 63 F0 80            512 	xrl	b,#0x80
   233F 95 F0               513 	subb	a,b
   2341 40 0B               514 	jc	00105$
                            515 ;	SRC/lab3.c:34: return c-0x50;
   2343 EA                  516 	mov	a,r2
   2344 24 B0               517 	add	a,#0xb0
   2346 F5 82               518 	mov	dpl,a
   2348 EB                  519 	mov	a,r3
   2349 34 FF               520 	addc	a,#0xff
   234B F5 83               521 	mov	dph,a
   234D 22                  522 	ret
   234E                     523 00105$:
                            524 ;	SRC/lab3.c:35: if(c=='ё')
   234E BA F1 0E            525 	cjne	r2,#0xF1,00108$
   2351 BB 00 0B            526 	cjne	r3,#0x00,00108$
                            527 ;	SRC/lab3.c:36: return c-0x01;
   2354 EA                  528 	mov	a,r2
   2355 24 FF               529 	add	a,#0xff
   2357 F5 82               530 	mov	dpl,a
   2359 EB                  531 	mov	a,r3
   235A 34 FF               532 	addc	a,#0xff
   235C F5 83               533 	mov	dph,a
   235E 22                  534 	ret
   235F                     535 00108$:
                            536 ;	SRC/lab3.c:37: return c;
   235F 8A 82               537 	mov	dpl,r2
   2361 8B 83               538 	mov	dph,r3
   2363 22                  539 	ret
                            540 ;------------------------------------------------------------
                            541 ;Allocation info for local variables in function 'main'
                            542 ;------------------------------------------------------------
                            543 ;c                         Allocated to registers r2 
                            544 ;------------------------------------------------------------
                            545 ;	SRC/lab3.c:41: void main( void ){
                            546 ;	-----------------------------------------
                            547 ;	 function main
                            548 ;	-----------------------------------------
   2364                     549 _main:
                            550 ;	SRC/lab3.c:44: init_sio( S1200 );
   2364 75 82 E8            551 	mov	dpl,#0xE8
   2367 12 21 A1            552 	lcall	_init_sio
                            553 ;	SRC/lab3.c:47: type("Тест драйвера SIO для стенда SDK-1.1\r\n");
   236A 90 2A 81            554 	mov	dptr,#__str_0
   236D 75 F0 80            555 	mov	b,#0x80
   2370 12 22 53            556 	lcall	_type
                            557 ;	SRC/lab3.c:48: type("Нажимайте кнопки для тестирования... \r\n");
   2373 90 2A A8            558 	mov	dptr,#__str_1
   2376 75 F0 80            559 	mov	b,#0x80
   2379 12 22 53            560 	lcall	_type
                            561 ;	SRC/lab3.c:52: type("\r\nFIFO: ");
   237C 90 2A D0            562 	mov	dptr,#__str_2
   237F 75 F0 80            563 	mov	b,#0x80
   2382 12 22 53            564 	lcall	_type
                            565 ;	SRC/lab3.c:53: Print(&FIFO);
   2385 90 00 09            566 	mov	dptr,#_FIFO
   2388 75 F0 40            567 	mov	b,#0x40
   238B 12 26 88            568 	lcall	_Print
                            569 ;	SRC/lab3.c:56: Push(&FIFO, 'a');
   238E 74 61               570 	mov	a,#0x61
   2390 C0 E0               571 	push	acc
   2392 90 00 09            572 	mov	dptr,#_FIFO
   2395 75 F0 40            573 	mov	b,#0x40
   2398 12 24 8A            574 	lcall	_Push
   239B 15 81               575 	dec	sp
                            576 ;	SRC/lab3.c:57: Push(&FIFO, 'b');
   239D 74 62               577 	mov	a,#0x62
   239F C0 E0               578 	push	acc
   23A1 90 00 09            579 	mov	dptr,#_FIFO
   23A4 75 F0 40            580 	mov	b,#0x40
   23A7 12 24 8A            581 	lcall	_Push
   23AA 15 81               582 	dec	sp
                            583 ;	SRC/lab3.c:58: Push(&FIFO, 'c');
   23AC 74 63               584 	mov	a,#0x63
   23AE C0 E0               585 	push	acc
   23B0 90 00 09            586 	mov	dptr,#_FIFO
   23B3 75 F0 40            587 	mov	b,#0x40
   23B6 12 24 8A            588 	lcall	_Push
   23B9 15 81               589 	dec	sp
                            590 ;	SRC/lab3.c:59: Push(&FIFO, 'd');
   23BB 74 64               591 	mov	a,#0x64
   23BD C0 E0               592 	push	acc
   23BF 90 00 09            593 	mov	dptr,#_FIFO
   23C2 75 F0 40            594 	mov	b,#0x40
   23C5 12 24 8A            595 	lcall	_Push
   23C8 15 81               596 	dec	sp
                            597 ;	SRC/lab3.c:60: Push(&FIFO, 'e');
   23CA 74 65               598 	mov	a,#0x65
   23CC C0 E0               599 	push	acc
   23CE 90 00 09            600 	mov	dptr,#_FIFO
   23D1 75 F0 40            601 	mov	b,#0x40
   23D4 12 24 8A            602 	lcall	_Push
   23D7 15 81               603 	dec	sp
                            604 ;	SRC/lab3.c:62: type("\r\nFIFO: ");
   23D9 90 2A D0            605 	mov	dptr,#__str_2
   23DC 75 F0 80            606 	mov	b,#0x80
   23DF 12 22 53            607 	lcall	_type
                            608 ;	SRC/lab3.c:63: Print(&FIFO);
   23E2 90 00 09            609 	mov	dptr,#_FIFO
   23E5 75 F0 40            610 	mov	b,#0x40
   23E8 12 26 88            611 	lcall	_Print
                            612 ;	SRC/lab3.c:65: c = Pop(&FIFO);
   23EB 90 00 09            613 	mov	dptr,#_FIFO
   23EE 75 F0 40            614 	mov	b,#0x40
   23F1 12 25 D4            615 	lcall	_Pop
                            616 ;	SRC/lab3.c:67: type("\r\nFIFO: ");
   23F4 90 2A D0            617 	mov	dptr,#__str_2
   23F7 75 F0 80            618 	mov	b,#0x80
   23FA 12 22 53            619 	lcall	_type
                            620 ;	SRC/lab3.c:68: Print(&FIFO);
   23FD 90 00 09            621 	mov	dptr,#_FIFO
   2400 75 F0 40            622 	mov	b,#0x40
   2403 12 26 88            623 	lcall	_Print
                            624 ;	SRC/lab3.c:70: while( 1 ){
   2406                     625 00114$:
                            626 ;	SRC/lab3.c:71: if( rsiostat() ){
   2406 12 22 3A            627 	lcall	_rsiostat
   2409 E5 82               628 	mov	a,dpl
   240B 60 F9               629 	jz	00114$
                            630 ;	SRC/lab3.c:72: c = rsio();
   240D 12 22 4A            631 	lcall	_rsio
   2410 AA 82               632 	mov	r2,dpl
                            633 ;	SRC/lab3.c:81: if(c>='A' && c<='п' || c>='р' && c<='ё'){
   2412 BA 41 00            634 	cjne	r2,#0x41,00128$
   2415                     635 00128$:
   2415 40 05               636 	jc	00105$
   2417 EA                  637 	mov	a,r2
   2418 24 50               638 	add	a,#0xff - 0xAF
   241A 50 0A               639 	jnc	00101$
   241C                     640 00105$:
   241C BA E0 00            641 	cjne	r2,#0xE0,00131$
   241F                     642 00131$:
   241F 40 16               643 	jc	00102$
   2421 EA                  644 	mov	a,r2
   2422 24 0E               645 	add	a,#0xff - 0xF1
   2424 40 11               646 	jc	00102$
   2426                     647 00101$:
                            648 ;	SRC/lab3.c:85: c=toupper_rus_cp866(c);
   2426 8A 03               649 	mov	ar3,r2
   2428 7C 00               650 	mov	r4,#0x00
   242A 8B 82               651 	mov	dpl,r3
   242C 8C 83               652 	mov	dph,r4
   242E 12 23 02            653 	lcall	_toupper_rus_cp866
   2431 AB 82               654 	mov	r3,dpl
   2433 AC 83               655 	mov	r4,dph
   2435 8B 02               656 	mov	ar2,r3
   2437                     657 00102$:
                            658 ;	SRC/lab3.c:87: if(c>='a' && c<='z' || c>='A' && c<='Z' ){
   2437 BA 61 00            659 	cjne	r2,#0x61,00134$
   243A                     660 00134$:
   243A 40 05               661 	jc	00110$
   243C EA                  662 	mov	a,r2
   243D 24 85               663 	add	a,#0xff - 0x7A
   243F 50 0A               664 	jnc	00106$
   2441                     665 00110$:
   2441 BA 41 00            666 	cjne	r2,#0x41,00137$
   2444                     667 00137$:
   2444 40 1C               668 	jc	00107$
   2446 EA                  669 	mov	a,r2
   2447 24 A5               670 	add	a,#0xff - 0x5A
   2449 40 17               671 	jc	00107$
   244B                     672 00106$:
                            673 ;	SRC/lab3.c:89: c=tolower(c);
   244B 8A 82               674 	mov	dpl,r2
   244D C0 02               675 	push	ar2
   244F 12 29 E0            676 	lcall	_isupper
   2452 E5 82               677 	mov	a,dpl
   2454 D0 02               678 	pop	ar2
   2456 60 06               679 	jz	00118$
   2458 74 20               680 	mov	a,#0x20
   245A 4A                  681 	orl	a,r2
   245B FB                  682 	mov	r3,a
   245C 80 02               683 	sjmp	00119$
   245E                     684 00118$:
   245E 8A 03               685 	mov	ar3,r2
   2460                     686 00119$:
   2460 8B 02               687 	mov	ar2,r3
   2462                     688 00107$:
                            689 ;	SRC/lab3.c:92: wsio( c );
   2462 8A 82               690 	mov	dpl,r2
   2464 C0 02               691 	push	ar2
   2466 12 22 41            692 	lcall	_wsio
   2469 D0 02               693 	pop	ar2
                            694 ;	SRC/lab3.c:93: wsio( c-1 );
   246B EA                  695 	mov	a,r2
   246C 14                  696 	dec	a
   246D F5 82               697 	mov	dpl,a
   246F C0 02               698 	push	ar2
   2471 12 22 41            699 	lcall	_wsio
   2474 D0 02               700 	pop	ar2
                            701 ;	SRC/lab3.c:94: wsio( c-2 );
   2476 EA                  702 	mov	a,r2
   2477 24 FE               703 	add	a,#0xfe
   2479 F5 82               704 	mov	dpl,a
   247B 12 22 41            705 	lcall	_wsio
                            706 ;	SRC/lab3.c:95: type("\r\n");
   247E 90 2A D9            707 	mov	dptr,#__str_3
   2481 75 F0 80            708 	mov	b,#0x80
   2484 12 22 53            709 	lcall	_type
   2487 02 24 06            710 	ljmp	00114$
                            711 	.area CSEG    (CODE)
                            712 	.area CONST   (CODE)
   2A81                     713 __str_0:
   2A81 92                  714 	.db 0x92
   2A82 A5                  715 	.db 0xA5
   2A83 E1                  716 	.db 0xE1
   2A84 E2                  717 	.db 0xE2
   2A85 20                  718 	.ascii " "
   2A86 A4                  719 	.db 0xA4
   2A87 E0                  720 	.db 0xE0
   2A88 A0                  721 	.db 0xA0
   2A89 A9                  722 	.db 0xA9
   2A8A A2                  723 	.db 0xA2
   2A8B A5                  724 	.db 0xA5
   2A8C E0                  725 	.db 0xE0
   2A8D A0                  726 	.db 0xA0
   2A8E 20 53 49 4F 20      727 	.ascii " SIO "
   2A93 A4                  728 	.db 0xA4
   2A94 AB                  729 	.db 0xAB
   2A95 EF                  730 	.db 0xEF
   2A96 20                  731 	.ascii " "
   2A97 E1                  732 	.db 0xE1
   2A98 E2                  733 	.db 0xE2
   2A99 A5                  734 	.db 0xA5
   2A9A AD                  735 	.db 0xAD
   2A9B A4                  736 	.db 0xA4
   2A9C A0                  737 	.db 0xA0
   2A9D 20 53 44 4B 2D 31   738 	.ascii " SDK-1.1"
        2E 31
   2AA5 0D                  739 	.db 0x0D
   2AA6 0A                  740 	.db 0x0A
   2AA7 00                  741 	.db 0x00
   2AA8                     742 __str_1:
   2AA8 8D                  743 	.db 0x8D
   2AA9 A0                  744 	.db 0xA0
   2AAA A6                  745 	.db 0xA6
   2AAB A8                  746 	.db 0xA8
   2AAC AC                  747 	.db 0xAC
   2AAD A0                  748 	.db 0xA0
   2AAE A9                  749 	.db 0xA9
   2AAF E2                  750 	.db 0xE2
   2AB0 A5                  751 	.db 0xA5
   2AB1 20                  752 	.ascii " "
   2AB2 AA                  753 	.db 0xAA
   2AB3 AD                  754 	.db 0xAD
   2AB4 AE                  755 	.db 0xAE
   2AB5 AF                  756 	.db 0xAF
   2AB6 AA                  757 	.db 0xAA
   2AB7 A8                  758 	.db 0xA8
   2AB8 20                  759 	.ascii " "
   2AB9 A4                  760 	.db 0xA4
   2ABA AB                  761 	.db 0xAB
   2ABB EF                  762 	.db 0xEF
   2ABC 20                  763 	.ascii " "
   2ABD E2                  764 	.db 0xE2
   2ABE A5                  765 	.db 0xA5
   2ABF E1                  766 	.db 0xE1
   2AC0 E2                  767 	.db 0xE2
   2AC1 A8                  768 	.db 0xA8
   2AC2 E0                  769 	.db 0xE0
   2AC3 AE                  770 	.db 0xAE
   2AC4 A2                  771 	.db 0xA2
   2AC5 A0                  772 	.db 0xA0
   2AC6 AD                  773 	.db 0xAD
   2AC7 A8                  774 	.db 0xA8
   2AC8 EF                  775 	.db 0xEF
   2AC9 2E 2E 2E 20         776 	.ascii "... "
   2ACD 0D                  777 	.db 0x0D
   2ACE 0A                  778 	.db 0x0A
   2ACF 00                  779 	.db 0x00
   2AD0                     780 __str_2:
   2AD0 0D                  781 	.db 0x0D
   2AD1 0A                  782 	.db 0x0A
   2AD2 46 49 46 4F 3A 20   783 	.ascii "FIFO: "
   2AD8 00                  784 	.db 0x00
   2AD9                     785 __str_3:
   2AD9 0D                  786 	.db 0x0D
   2ADA 0A                  787 	.db 0x0A
   2ADB 00                  788 	.db 0x00
                            789 	.area XINIT   (CODE)
                            790 	.area CABS    (ABS,CODE)
