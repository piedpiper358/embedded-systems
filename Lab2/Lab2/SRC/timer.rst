                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Nov 29 14:32:32 2018
                              5 ;--------------------------------------------------------
                              6 	.module timer
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _DelayMs
                             13 	.globl _DTimeMs
                             14 	.globl _GetMsCounter
                             15 	.globl _InitSysTimer
                             16 	.globl _SPR0
                             17 	.globl _SPR1
                             18 	.globl _CPHA
                             19 	.globl _CPOL
                             20 	.globl _SPIM
                             21 	.globl _SPE
                             22 	.globl _WCOL
                             23 	.globl _ISPI
                             24 	.globl _I2CI
                             25 	.globl _I2CTX
                             26 	.globl _I2CRS
                             27 	.globl _I2CM
                             28 	.globl _MDI
                             29 	.globl _MCO
                             30 	.globl _MDE
                             31 	.globl _MDO
                             32 	.globl _CS0
                             33 	.globl _CS1
                             34 	.globl _CS2
                             35 	.globl _CS3
                             36 	.globl _SCONV
                             37 	.globl _CCONV
                             38 	.globl _DMA
                             39 	.globl _ADCI
                             40 	.globl _P
                             41 	.globl _F1
                             42 	.globl _OV
                             43 	.globl _RS0
                             44 	.globl _RS1
                             45 	.globl _F0
                             46 	.globl _AC
                             47 	.globl _CY
                             48 	.globl _CAP2
                             49 	.globl _CNT2
                             50 	.globl _TR2
                             51 	.globl _XEN
                             52 	.globl _TCLK
                             53 	.globl _RCLK
                             54 	.globl _EXF2
                             55 	.globl _TF2
                             56 	.globl _WDE
                             57 	.globl _WDS
                             58 	.globl _WDR2
                             59 	.globl _WDR1
                             60 	.globl _PRE0
                             61 	.globl _PRE1
                             62 	.globl _PRE2
                             63 	.globl _PX0
                             64 	.globl _PT0
                             65 	.globl _PX1
                             66 	.globl _PT1
                             67 	.globl _PS
                             68 	.globl _PT2
                             69 	.globl _PADC
                             70 	.globl _PSI
                             71 	.globl _RXD
                             72 	.globl _TXD
                             73 	.globl _INT0
                             74 	.globl _INT1
                             75 	.globl _T0
                             76 	.globl _T1
                             77 	.globl _WR
                             78 	.globl _RD
                             79 	.globl _EX0
                             80 	.globl _ET0
                             81 	.globl _EX1
                             82 	.globl _ET1
                             83 	.globl _ES
                             84 	.globl _ET2
                             85 	.globl _EADC
                             86 	.globl _EA
                             87 	.globl _RI
                             88 	.globl _TI
                             89 	.globl _RB8
                             90 	.globl _TB8
                             91 	.globl _REN
                             92 	.globl _SM2
                             93 	.globl _SM1
                             94 	.globl _SM0
                             95 	.globl _T2
                             96 	.globl _T2EX
                             97 	.globl _IT0
                             98 	.globl _IE0
                             99 	.globl _IT1
                            100 	.globl _IE1
                            101 	.globl _TR0
                            102 	.globl _TF0
                            103 	.globl _TR1
                            104 	.globl _TF1
                            105 	.globl _DACCON
                            106 	.globl _DAC1H
                            107 	.globl _DAC1L
                            108 	.globl _DAC0H
                            109 	.globl _DAC0L
                            110 	.globl _SPICON
                            111 	.globl _SPIDAT
                            112 	.globl _ADCCON3
                            113 	.globl _ADCGAINH
                            114 	.globl _ADCGAINL
                            115 	.globl _ADCOFSH
                            116 	.globl _ADCOFSL
                            117 	.globl _B
                            118 	.globl _ADCCON1
                            119 	.globl _I2CCON
                            120 	.globl _ACC
                            121 	.globl _PSMCON
                            122 	.globl _ADCDATAH
                            123 	.globl _ADCDATAL
                            124 	.globl _ADCCON2
                            125 	.globl _DMAP
                            126 	.globl _DMAH
                            127 	.globl _DMAL
                            128 	.globl _PSW
                            129 	.globl _TH2
                            130 	.globl _TL2
                            131 	.globl _RCAP2H
                            132 	.globl _RCAP2L
                            133 	.globl _T2CON
                            134 	.globl _EADRL
                            135 	.globl _WDCON
                            136 	.globl _EDATA4
                            137 	.globl _EDATA3
                            138 	.globl _EDATA2
                            139 	.globl _EDATA1
                            140 	.globl _ETIM3
                            141 	.globl _ETIM2
                            142 	.globl _ETIM1
                            143 	.globl _ECON
                            144 	.globl _IP
                            145 	.globl _P3
                            146 	.globl _IE2
                            147 	.globl _IE
                            148 	.globl _P2
                            149 	.globl _I2CADD
                            150 	.globl _I2CDAT
                            151 	.globl _SBUF
                            152 	.globl _SCON
                            153 	.globl _P1
                            154 	.globl _TH1
                            155 	.globl _TH0
                            156 	.globl _TL1
                            157 	.globl _TL0
                            158 	.globl _TMOD
                            159 	.globl _TCON
                            160 	.globl _PCON
                            161 	.globl _DPP
                            162 	.globl _DPH
                            163 	.globl _DPL
                            164 	.globl _SP
                            165 	.globl _P0
                            166 	.globl _SYS_TIMER_ISR
                            167 	.globl _SetVector
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
                            331 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     332 	.ds 8
                            333 ;--------------------------------------------------------
                            334 ; internal ram data
                            335 ;--------------------------------------------------------
                            336 	.area DSEG    (DATA)
   0019                     337 ___systime:
   0019                     338 	.ds 4
                            339 ;--------------------------------------------------------
                            340 ; overlayable items in internal ram 
                            341 ;--------------------------------------------------------
                            342 	.area OSEG    (OVR,DATA)
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
                            383 ; global & static initialisations
                            384 ;--------------------------------------------------------
                            385 	.area HOME    (CODE)
                            386 	.area GSINIT  (CODE)
                            387 	.area GSFINAL (CODE)
                            388 	.area GSINIT  (CODE)
                            389 ;	SRC/timer.c:16: static unsigned long __systime = 0;
   2173 E4                  390 	clr	a
   2174 F5 19               391 	mov	___systime,a
   2176 F5 1A               392 	mov	(___systime + 1),a
   2178 F5 1B               393 	mov	(___systime + 2),a
   217A F5 1C               394 	mov	(___systime + 3),a
                            395 ;--------------------------------------------------------
                            396 ; Home
                            397 ;--------------------------------------------------------
                            398 	.area HOME    (CODE)
                            399 	.area HOME    (CODE)
                            400 ;--------------------------------------------------------
                            401 ; code
                            402 ;--------------------------------------------------------
                            403 	.area CSEG    (CODE)
                            404 ;------------------------------------------------------------
                            405 ;Allocation info for local variables in function 'InitSysTimer'
                            406 ;------------------------------------------------------------
                            407 ;------------------------------------------------------------
                            408 ;	SRC/timer.c:22: void InitSysTimer( void ){
                            409 ;	-----------------------------------------
                            410 ;	 function InitSysTimer
                            411 ;	-----------------------------------------
   23C9                     412 _InitSysTimer:
                    0002    413 	ar2 = 0x02
                    0003    414 	ar3 = 0x03
                    0004    415 	ar4 = 0x04
                    0005    416 	ar5 = 0x05
                    0006    417 	ar6 = 0x06
                    0007    418 	ar7 = 0x07
                    0000    419 	ar0 = 0x00
                    0001    420 	ar1 = 0x01
                            421 ;	SRC/timer.c:24: TR=0x0;
   23C9 C2 8E               422 	clr	_TR1
                            423 ;	SRC/timer.c:35: TMOD = TMOD & ~(GATE | CT | M1) | M0;
   23CB AA 89               424 	mov	r2,_TMOD
   23CD 74 1F               425 	mov	a,#0x1F
   23CF 5A                  426 	anl	a,r2
   23D0 F5 F0               427 	mov	b,a
   23D2 74 10               428 	mov	a,#0x10
   23D4 45 F0               429 	orl	a,b
   23D6 F5 89               430 	mov	_TMOD,a
                            431 ;	SRC/timer.c:38: TH = 0xFC;
   23D8 75 8D FC            432 	mov	_TH1,#0xFC
                            433 ;	SRC/timer.c:39: TL = 0x66; 
   23DB 75 8B 66            434 	mov	_TL1,#0x66
                            435 ;	SRC/timer.c:41: TR=0x1;
   23DE D2 8E               436 	setb	_TR1
                            437 ;	SRC/timer.c:43: SetVector( vec, (void *)SYS_TIMER_ISR );
   23E0 7A FD               438 	mov	r2,#_SYS_TIMER_ISR
   23E2 7B 23               439 	mov	r3,#(_SYS_TIMER_ISR >> 8)
   23E4 7C 80               440 	mov	r4,#0x80
   23E6 C0 02               441 	push	ar2
   23E8 C0 03               442 	push	ar3
   23EA C0 04               443 	push	ar4
   23EC 90 20 1B            444 	mov	dptr,#0x201B
   23EF 12 24 C7            445 	lcall	_SetVector
   23F2 15 81               446 	dec	sp
   23F4 15 81               447 	dec	sp
   23F6 15 81               448 	dec	sp
                            449 ;	SRC/timer.c:45: ET = 1; 
   23F8 D2 AB               450 	setb	_ET1
                            451 ;	SRC/timer.c:47: EA = 1;
   23FA D2 AF               452 	setb	_EA
   23FC 22                  453 	ret
                            454 ;------------------------------------------------------------
                            455 ;Allocation info for local variables in function 'SYS_TIMER_ISR'
                            456 ;------------------------------------------------------------
                            457 ;------------------------------------------------------------
                            458 ;	SRC/timer.c:53: void SYS_TIMER_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ ){
                            459 ;	-----------------------------------------
                            460 ;	 function SYS_TIMER_ISR
                            461 ;	-----------------------------------------
   23FD                     462 _SYS_TIMER_ISR:
                    000A    463 	ar2 = 0x0a
                    000B    464 	ar3 = 0x0b
                    000C    465 	ar4 = 0x0c
                    000D    466 	ar5 = 0x0d
                    000E    467 	ar6 = 0x0e
                    000F    468 	ar7 = 0x0f
                    0008    469 	ar0 = 0x08
                    0009    470 	ar1 = 0x09
   23FD C0 E0               471 	push	acc
   23FF C0 D0               472 	push	psw
   2401 75 D0 08            473 	mov	psw,#0x08
                            474 ;	SRC/timer.c:55: TH = 0xFC; // Инициализация таймера:
   2404 75 8D FC            475 	mov	_TH1,#0xFC
                            476 ;	SRC/timer.c:56: TL = 0x66; // настройка на частоту работы 1000 Гц (чуть больше)
   2407 75 8B 66            477 	mov	_TL1,#0x66
                            478 ;	SRC/timer.c:57: __systime++; // Время в милисекундах
   240A 05 19               479 	inc	___systime
   240C E4                  480 	clr	a
   240D B5 19 0C            481 	cjne	a,___systime,00103$
   2410 05 1A               482 	inc	(___systime + 1)
   2412 B5 1A 07            483 	cjne	a,(___systime + 1),00103$
   2415 05 1B               484 	inc	(___systime + 2)
   2417 B5 1B 02            485 	cjne	a,(___systime + 2),00103$
   241A 05 1C               486 	inc	(___systime + 3)
   241C                     487 00103$:
   241C D0 D0               488 	pop	psw
   241E D0 E0               489 	pop	acc
   2420 32                  490 	reti
                            491 ;	eliminated unneeded push/pop dpl
                            492 ;	eliminated unneeded push/pop dph
                            493 ;	eliminated unneeded push/pop b
                            494 ;------------------------------------------------------------
                            495 ;Allocation info for local variables in function 'GetMsCounter'
                            496 ;------------------------------------------------------------
                            497 ;res                       Allocated to registers r2 r3 r4 r5 
                            498 ;------------------------------------------------------------
                            499 ;	SRC/timer.c:64: unsigned long GetMsCounter( void ){
                            500 ;	-----------------------------------------
                            501 ;	 function GetMsCounter
                            502 ;	-----------------------------------------
   2421                     503 _GetMsCounter:
                    0002    504 	ar2 = 0x02
                    0003    505 	ar3 = 0x03
                    0004    506 	ar4 = 0x04
                    0005    507 	ar5 = 0x05
                    0006    508 	ar6 = 0x06
                    0007    509 	ar7 = 0x07
                    0000    510 	ar0 = 0x00
                    0001    511 	ar1 = 0x01
                            512 ;	SRC/timer.c:66: ET = 0;
   2421 C2 AB               513 	clr	_ET1
                            514 ;	SRC/timer.c:67: res = __systime;
   2423 AA 19               515 	mov	r2,___systime
   2425 AB 1A               516 	mov	r3,(___systime + 1)
   2427 AC 1B               517 	mov	r4,(___systime + 2)
   2429 AD 1C               518 	mov	r5,(___systime + 3)
                            519 ;	SRC/timer.c:68: ET = 1;
   242B D2 AB               520 	setb	_ET1
                            521 ;	SRC/timer.c:69: return res;
   242D 8A 82               522 	mov	dpl,r2
   242F 8B 83               523 	mov	dph,r3
   2431 8C F0               524 	mov	b,r4
   2433 ED                  525 	mov	a,r5
   2434 22                  526 	ret
                            527 ;------------------------------------------------------------
                            528 ;Allocation info for local variables in function 'DTimeMs'
                            529 ;------------------------------------------------------------
                            530 ;t0                        Allocated to stack - offset 1
                            531 ;t1                        Allocated to registers 
                            532 ;------------------------------------------------------------
                            533 ;	SRC/timer.c:80: unsigned long DTimeMs( unsigned long t0 ){
                            534 ;	-----------------------------------------
                            535 ;	 function DTimeMs
                            536 ;	-----------------------------------------
   2435                     537 _DTimeMs:
   2435 C0 1E               538 	push	_bp
   2437 85 81 1E            539 	mov	_bp,sp
   243A C0 82               540 	push	dpl
   243C C0 83               541 	push	dph
   243E C0 F0               542 	push	b
   2440 C0 E0               543 	push	acc
                            544 ;	SRC/timer.c:81: unsigned long t1 = GetMsCounter();
   2442 12 24 21            545 	lcall	_GetMsCounter
   2445 AE 82               546 	mov	r6,dpl
   2447 AF 83               547 	mov	r7,dph
   2449 AA F0               548 	mov	r2,b
   244B FB                  549 	mov	r3,a
                            550 ;	SRC/timer.c:82: return t1 - t0;
   244C A8 1E               551 	mov	r0,_bp
   244E 08                  552 	inc	r0
   244F EE                  553 	mov	a,r6
   2450 C3                  554 	clr	c
   2451 96                  555 	subb	a,@r0
   2452 FE                  556 	mov	r6,a
   2453 EF                  557 	mov	a,r7
   2454 08                  558 	inc	r0
   2455 96                  559 	subb	a,@r0
   2456 FF                  560 	mov	r7,a
   2457 EA                  561 	mov	a,r2
   2458 08                  562 	inc	r0
   2459 96                  563 	subb	a,@r0
   245A FA                  564 	mov	r2,a
   245B EB                  565 	mov	a,r3
   245C 08                  566 	inc	r0
   245D 96                  567 	subb	a,@r0
   245E 8E 82               568 	mov	dpl,r6
   2460 8F 83               569 	mov	dph,r7
   2462 8A F0               570 	mov	b,r2
   2464 85 1E 81            571 	mov	sp,_bp
   2467 D0 1E               572 	pop	_bp
   2469 22                  573 	ret
                            574 ;------------------------------------------------------------
                            575 ;Allocation info for local variables in function 'DelayMs'
                            576 ;------------------------------------------------------------
                            577 ;t                         Allocated to stack - offset 1
                            578 ;t1                        Allocated to stack - offset 5
                            579 ;------------------------------------------------------------
                            580 ;	SRC/timer.c:88: void DelayMs( unsigned long t ){
                            581 ;	-----------------------------------------
                            582 ;	 function DelayMs
                            583 ;	-----------------------------------------
   246A                     584 _DelayMs:
   246A C0 1E               585 	push	_bp
   246C 85 81 1E            586 	mov	_bp,sp
   246F C0 82               587 	push	dpl
   2471 C0 83               588 	push	dph
   2473 C0 F0               589 	push	b
   2475 C0 E0               590 	push	acc
   2477 E5 81               591 	mov	a,sp
   2479 24 08               592 	add	a,#0x08
   247B F5 81               593 	mov	sp,a
                            594 ;	SRC/timer.c:89: unsigned long t1 = ( unsigned long )GetMsCounter();
   247D 12 24 21            595 	lcall	_GetMsCounter
   2480 AA 82               596 	mov	r2,dpl
   2482 AB 83               597 	mov	r3,dph
   2484 AC F0               598 	mov	r4,b
   2486 FD                  599 	mov	r5,a
   2487 E5 1E               600 	mov	a,_bp
   2489 24 05               601 	add	a,#0x05
   248B F8                  602 	mov	r0,a
   248C A6 02               603 	mov	@r0,ar2
   248E 08                  604 	inc	r0
   248F A6 03               605 	mov	@r0,ar3
   2491 08                  606 	inc	r0
   2492 A6 04               607 	mov	@r0,ar4
   2494 08                  608 	inc	r0
   2495 A6 05               609 	mov	@r0,ar5
                            610 ;	SRC/timer.c:90: while ( DTimeMs( t1 ) <= t );
   2497                     611 00101$:
   2497 E5 1E               612 	mov	a,_bp
   2499 24 05               613 	add	a,#0x05
   249B F8                  614 	mov	r0,a
   249C 86 82               615 	mov	dpl,@r0
   249E 08                  616 	inc	r0
   249F 86 83               617 	mov	dph,@r0
   24A1 08                  618 	inc	r0
   24A2 86 F0               619 	mov	b,@r0
   24A4 08                  620 	inc	r0
   24A5 E6                  621 	mov	a,@r0
   24A6 12 24 35            622 	lcall	_DTimeMs
   24A9 AC 82               623 	mov	r4,dpl
   24AB AD 83               624 	mov	r5,dph
   24AD AA F0               625 	mov	r2,b
   24AF FB                  626 	mov	r3,a
   24B0 A8 1E               627 	mov	r0,_bp
   24B2 08                  628 	inc	r0
   24B3 C3                  629 	clr	c
   24B4 E6                  630 	mov	a,@r0
   24B5 9C                  631 	subb	a,r4
   24B6 08                  632 	inc	r0
   24B7 E6                  633 	mov	a,@r0
   24B8 9D                  634 	subb	a,r5
   24B9 08                  635 	inc	r0
   24BA E6                  636 	mov	a,@r0
   24BB 9A                  637 	subb	a,r2
   24BC 08                  638 	inc	r0
   24BD E6                  639 	mov	a,@r0
   24BE 9B                  640 	subb	a,r3
   24BF 50 D6               641 	jnc	00101$
   24C1 85 1E 81            642 	mov	sp,_bp
   24C4 D0 1E               643 	pop	_bp
   24C6 22                  644 	ret
                            645 ;------------------------------------------------------------
                            646 ;Allocation info for local variables in function 'SetVector'
                            647 ;------------------------------------------------------------
                            648 ;Vector                    Allocated to stack - offset -5
                            649 ;Address                   Allocated to registers r2 r3 
                            650 ;TmpVector                 Allocated to registers r2 r3 
                            651 ;------------------------------------------------------------
                            652 ;	SRC/timer.c:104: void SetVector(unsigned char xdata * Address, void * Vector){
                            653 ;	-----------------------------------------
                            654 ;	 function SetVector
                            655 ;	-----------------------------------------
   24C7                     656 _SetVector:
   24C7 C0 1E               657 	push	_bp
   24C9 85 81 1E            658 	mov	_bp,sp
                            659 ;	SRC/timer.c:108: *Address = 0x02;
   24CC AA 82               660 	mov	r2,dpl
   24CE AB 83               661 	mov  r3,dph
   24D0 74 02               662 	mov	a,#0x02
   24D2 F0                  663 	movx	@dptr,a
                            664 ;	SRC/timer.c:110: TmpVector = (unsigned char xdata *) (Address + 1);
   24D3 0A                  665 	inc	r2
   24D4 BA 00 01            666 	cjne	r2,#0x00,00103$
   24D7 0B                  667 	inc	r3
   24D8                     668 00103$:
                            669 ;	SRC/timer.c:111: *TmpVector = (unsigned char) ((unsigned short)Vector >> 8);
   24D8 E5 1E               670 	mov	a,_bp
   24DA 24 FB               671 	add	a,#0xfb
   24DC F8                  672 	mov	r0,a
   24DD 86 04               673 	mov	ar4,@r0
   24DF 08                  674 	inc	r0
   24E0 86 05               675 	mov	ar5,@r0
   24E2 8D 04               676 	mov	ar4,r5
   24E4 8A 82               677 	mov	dpl,r2
   24E6 8B 83               678 	mov	dph,r3
   24E8 EC                  679 	mov	a,r4
   24E9 F0                  680 	movx	@dptr,a
   24EA A3                  681 	inc	dptr
   24EB AA 82               682 	mov	r2,dpl
   24ED AB 83               683 	mov	r3,dph
                            684 ;	SRC/timer.c:112: ++TmpVector;
                            685 ;	SRC/timer.c:113: *TmpVector = (unsigned char) Vector;
   24EF E5 1E               686 	mov	a,_bp
   24F1 24 FB               687 	add	a,#0xfb
   24F3 F8                  688 	mov	r0,a
   24F4 86 04               689 	mov	ar4,@r0
   24F6 8A 82               690 	mov	dpl,r2
   24F8 8B 83               691 	mov	dph,r3
   24FA EC                  692 	mov	a,r4
   24FB F0                  693 	movx	@dptr,a
   24FC D0 1E               694 	pop	_bp
   24FE 22                  695 	ret
                            696 	.area CSEG    (CODE)
                            697 	.area CONST   (CODE)
                            698 	.area XINIT   (CODE)
                            699 	.area CABS    (ABS,CODE)
