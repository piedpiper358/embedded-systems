                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Tue Dec 11 01:27:12 2018
                              5 ;--------------------------------------------------------
                              6 	.module led
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _leds
                             13 	.globl _led
                             14 	.globl _SPR0
                             15 	.globl _SPR1
                             16 	.globl _CPHA
                             17 	.globl _CPOL
                             18 	.globl _SPIM
                             19 	.globl _SPE
                             20 	.globl _WCOL
                             21 	.globl _ISPI
                             22 	.globl _I2CI
                             23 	.globl _I2CTX
                             24 	.globl _I2CRS
                             25 	.globl _I2CM
                             26 	.globl _MDI
                             27 	.globl _MCO
                             28 	.globl _MDE
                             29 	.globl _MDO
                             30 	.globl _CS0
                             31 	.globl _CS1
                             32 	.globl _CS2
                             33 	.globl _CS3
                             34 	.globl _SCONV
                             35 	.globl _CCONV
                             36 	.globl _DMA
                             37 	.globl _ADCI
                             38 	.globl _P
                             39 	.globl _F1
                             40 	.globl _OV
                             41 	.globl _RS0
                             42 	.globl _RS1
                             43 	.globl _F0
                             44 	.globl _AC
                             45 	.globl _CY
                             46 	.globl _CAP2
                             47 	.globl _CNT2
                             48 	.globl _TR2
                             49 	.globl _XEN
                             50 	.globl _TCLK
                             51 	.globl _RCLK
                             52 	.globl _EXF2
                             53 	.globl _TF2
                             54 	.globl _WDE
                             55 	.globl _WDS
                             56 	.globl _WDR2
                             57 	.globl _WDR1
                             58 	.globl _PRE0
                             59 	.globl _PRE1
                             60 	.globl _PRE2
                             61 	.globl _PX0
                             62 	.globl _PT0
                             63 	.globl _PX1
                             64 	.globl _PT1
                             65 	.globl _PS
                             66 	.globl _PT2
                             67 	.globl _PADC
                             68 	.globl _PSI
                             69 	.globl _RXD
                             70 	.globl _TXD
                             71 	.globl _INT0
                             72 	.globl _INT1
                             73 	.globl _T0
                             74 	.globl _T1
                             75 	.globl _WR
                             76 	.globl _RD
                             77 	.globl _EX0
                             78 	.globl _ET0
                             79 	.globl _EX1
                             80 	.globl _ET1
                             81 	.globl _ES
                             82 	.globl _ET2
                             83 	.globl _EADC
                             84 	.globl _EA
                             85 	.globl _RI
                             86 	.globl _TI
                             87 	.globl _RB8
                             88 	.globl _TB8
                             89 	.globl _REN
                             90 	.globl _SM2
                             91 	.globl _SM1
                             92 	.globl _SM0
                             93 	.globl _T2
                             94 	.globl _T2EX
                             95 	.globl _IT0
                             96 	.globl _IE0
                             97 	.globl _IT1
                             98 	.globl _IE1
                             99 	.globl _TR0
                            100 	.globl _TF0
                            101 	.globl _TR1
                            102 	.globl _TF1
                            103 	.globl _DACCON
                            104 	.globl _DAC1H
                            105 	.globl _DAC1L
                            106 	.globl _DAC0H
                            107 	.globl _DAC0L
                            108 	.globl _SPICON
                            109 	.globl _SPIDAT
                            110 	.globl _ADCCON3
                            111 	.globl _ADCGAINH
                            112 	.globl _ADCGAINL
                            113 	.globl _ADCOFSH
                            114 	.globl _ADCOFSL
                            115 	.globl _B
                            116 	.globl _ADCCON1
                            117 	.globl _I2CCON
                            118 	.globl _ACC
                            119 	.globl _PSMCON
                            120 	.globl _ADCDATAH
                            121 	.globl _ADCDATAL
                            122 	.globl _ADCCON2
                            123 	.globl _DMAP
                            124 	.globl _DMAH
                            125 	.globl _DMAL
                            126 	.globl _PSW
                            127 	.globl _TH2
                            128 	.globl _TL2
                            129 	.globl _RCAP2H
                            130 	.globl _RCAP2L
                            131 	.globl _T2CON
                            132 	.globl _EADRL
                            133 	.globl _WDCON
                            134 	.globl _EDATA4
                            135 	.globl _EDATA3
                            136 	.globl _EDATA2
                            137 	.globl _EDATA1
                            138 	.globl _ETIM3
                            139 	.globl _ETIM2
                            140 	.globl _ETIM1
                            141 	.globl _ECON
                            142 	.globl _IP
                            143 	.globl _P3
                            144 	.globl _IE2
                            145 	.globl _IE
                            146 	.globl _P2
                            147 	.globl _I2CADD
                            148 	.globl _I2CDAT
                            149 	.globl _SBUF
                            150 	.globl _SCON
                            151 	.globl _P1
                            152 	.globl _TH1
                            153 	.globl _TH0
                            154 	.globl _TL1
                            155 	.globl _TL0
                            156 	.globl _TMOD
                            157 	.globl _TCON
                            158 	.globl _PCON
                            159 	.globl _DPP
                            160 	.globl _DPH
                            161 	.globl _DPL
                            162 	.globl _SP
                            163 	.globl _P0
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
   0008                     331 _old_led:
   0008                     332 	.ds 1
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
                            383 ;	SRC/led.c:32: static unsigned char old_led = 0;   // "???????????" ??????? ???????????
   2184 75 08 00            384 	mov	_old_led,#0x00
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
                            395 ;Allocation info for local variables in function 'led'
                            396 ;------------------------------------------------------------
                            397 ;on                        Allocated to stack - offset -3
                            398 ;n                         Allocated to registers r2 
                            399 ;c                         Allocated to registers r3 
                            400 ;mask                      Allocated to registers r2 
                            401 ;------------------------------------------------------------
                            402 ;	SRC/led.c:50: void led( unsigned char n, unsigned char on )
                            403 ;	-----------------------------------------
                            404 ;	 function led
                            405 ;	-----------------------------------------
   227E                     406 _led:
                    0002    407 	ar2 = 0x02
                    0003    408 	ar3 = 0x03
                    0004    409 	ar4 = 0x04
                    0005    410 	ar5 = 0x05
                    0006    411 	ar6 = 0x06
                    0007    412 	ar7 = 0x07
                    0000    413 	ar0 = 0x00
                    0001    414 	ar1 = 0x01
   227E C0 13               415 	push	_bp
   2280 85 81 13            416 	mov	_bp,sp
                            417 ;	SRC/led.c:55: if( n > 7 ) return;
   2283 E5 82               418 	mov	a,dpl
   2285 FA                  419 	mov	r2,a
   2286 24 F8               420 	add	a,#0xff - 0x07
   2288 50 02               421 	jnc	00102$
   228A 80 32               422 	sjmp	00106$
   228C                     423 00102$:
                            424 ;	SRC/led.c:57: c = old_led;
   228C AB 08               425 	mov	r3,_old_led
                            426 ;	SRC/led.c:59: mask <<= n;
   228E 8A F0               427 	mov	b,r2
   2290 05 F0               428 	inc	b
   2292 74 01               429 	mov	a,#0x01
   2294 80 02               430 	sjmp	00113$
   2296                     431 00111$:
   2296 25 E0               432 	add	a,acc
   2298                     433 00113$:
   2298 D5 F0 FB            434 	djnz	b,00111$
   229B FA                  435 	mov	r2,a
                            436 ;	SRC/led.c:61: if( on )
   229C A8 13               437 	mov	r0,_bp
   229E 18                  438 	dec	r0
   229F 18                  439 	dec	r0
   22A0 18                  440 	dec	r0
   22A1 E6                  441 	mov	a,@r0
   22A2 60 05               442 	jz	00104$
                            443 ;	SRC/led.c:62: c |= mask;
   22A4 EA                  444 	mov	a,r2
   22A5 42 03               445 	orl	ar3,a
   22A7 80 05               446 	sjmp	00105$
   22A9                     447 00104$:
                            448 ;	SRC/led.c:64: c &= ~mask;         
   22A9 EA                  449 	mov	a,r2
   22AA F4                  450 	cpl	a
   22AB FA                  451 	mov	r2,a
   22AC 52 03               452 	anl	ar3,a
   22AE                     453 00105$:
                            454 ;	SRC/led.c:66: write_max( SV, c );     
   22AE C0 03               455 	push	ar3
   22B0 C0 03               456 	push	ar3
   22B2 90 00 07            457 	mov	dptr,#0x0007
   22B5 12 22 D4            458 	lcall	_write_max
   22B8 15 81               459 	dec	sp
   22BA D0 03               460 	pop	ar3
                            461 ;	SRC/led.c:68: old_led = c;
   22BC 8B 08               462 	mov	_old_led,r3
   22BE                     463 00106$:
   22BE D0 13               464 	pop	_bp
   22C0 22                  465 	ret
                            466 ;------------------------------------------------------------
                            467 ;Allocation info for local variables in function 'leds'
                            468 ;------------------------------------------------------------
                            469 ;on                        Allocated to registers r2 
                            470 ;------------------------------------------------------------
                            471 ;	SRC/led.c:87: void leds( unsigned char on )
                            472 ;	-----------------------------------------
                            473 ;	 function leds
                            474 ;	-----------------------------------------
   22C1                     475 _leds:
   22C1 AA 82               476 	mov	r2,dpl
                            477 ;	SRC/led.c:90: write_max( SV, on );     
   22C3 C0 02               478 	push	ar2
   22C5 C0 02               479 	push	ar2
   22C7 90 00 07            480 	mov	dptr,#0x0007
   22CA 12 22 D4            481 	lcall	_write_max
   22CD 15 81               482 	dec	sp
   22CF D0 02               483 	pop	ar2
                            484 ;	SRC/led.c:92: old_led = on;
   22D1 8A 08               485 	mov	_old_led,r2
   22D3 22                  486 	ret
                            487 	.area CSEG    (CODE)
                            488 	.area CONST   (CODE)
                            489 	.area XINIT   (CODE)
                            490 	.area CABS    (ABS,CODE)
