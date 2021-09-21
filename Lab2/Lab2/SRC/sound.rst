                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Nov 29 14:32:32 2018
                              5 ;--------------------------------------------------------
                              6 	.module sound
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _InitSoundTimer
                             13 	.globl _SetVolume
                             14 	.globl _SetFrequency
                             15 	.globl _SetDurationAndWait
                             16 	.globl _SetDuration
                             17 	.globl _SPR0
                             18 	.globl _SPR1
                             19 	.globl _CPHA
                             20 	.globl _CPOL
                             21 	.globl _SPIM
                             22 	.globl _SPE
                             23 	.globl _WCOL
                             24 	.globl _ISPI
                             25 	.globl _I2CI
                             26 	.globl _I2CTX
                             27 	.globl _I2CRS
                             28 	.globl _I2CM
                             29 	.globl _MDI
                             30 	.globl _MCO
                             31 	.globl _MDE
                             32 	.globl _MDO
                             33 	.globl _CS0
                             34 	.globl _CS1
                             35 	.globl _CS2
                             36 	.globl _CS3
                             37 	.globl _SCONV
                             38 	.globl _CCONV
                             39 	.globl _DMA
                             40 	.globl _ADCI
                             41 	.globl _P
                             42 	.globl _F1
                             43 	.globl _OV
                             44 	.globl _RS0
                             45 	.globl _RS1
                             46 	.globl _F0
                             47 	.globl _AC
                             48 	.globl _CY
                             49 	.globl _CAP2
                             50 	.globl _CNT2
                             51 	.globl _TR2
                             52 	.globl _XEN
                             53 	.globl _TCLK
                             54 	.globl _RCLK
                             55 	.globl _EXF2
                             56 	.globl _TF2
                             57 	.globl _WDE
                             58 	.globl _WDS
                             59 	.globl _WDR2
                             60 	.globl _WDR1
                             61 	.globl _PRE0
                             62 	.globl _PRE1
                             63 	.globl _PRE2
                             64 	.globl _PX0
                             65 	.globl _PT0
                             66 	.globl _PX1
                             67 	.globl _PT1
                             68 	.globl _PS
                             69 	.globl _PT2
                             70 	.globl _PADC
                             71 	.globl _PSI
                             72 	.globl _RXD
                             73 	.globl _TXD
                             74 	.globl _INT0
                             75 	.globl _INT1
                             76 	.globl _T0
                             77 	.globl _T1
                             78 	.globl _WR
                             79 	.globl _RD
                             80 	.globl _EX0
                             81 	.globl _ET0
                             82 	.globl _EX1
                             83 	.globl _ET1
                             84 	.globl _ES
                             85 	.globl _ET2
                             86 	.globl _EADC
                             87 	.globl _EA
                             88 	.globl _RI
                             89 	.globl _TI
                             90 	.globl _RB8
                             91 	.globl _TB8
                             92 	.globl _REN
                             93 	.globl _SM2
                             94 	.globl _SM1
                             95 	.globl _SM0
                             96 	.globl _T2
                             97 	.globl _T2EX
                             98 	.globl _IT0
                             99 	.globl _IE0
                            100 	.globl _IT1
                            101 	.globl _IE1
                            102 	.globl _TR0
                            103 	.globl _TF0
                            104 	.globl _TR1
                            105 	.globl _TF1
                            106 	.globl _DACCON
                            107 	.globl _DAC1H
                            108 	.globl _DAC1L
                            109 	.globl _DAC0H
                            110 	.globl _DAC0L
                            111 	.globl _SPICON
                            112 	.globl _SPIDAT
                            113 	.globl _ADCCON3
                            114 	.globl _ADCGAINH
                            115 	.globl _ADCGAINL
                            116 	.globl _ADCOFSH
                            117 	.globl _ADCOFSL
                            118 	.globl _B
                            119 	.globl _ADCCON1
                            120 	.globl _I2CCON
                            121 	.globl _ACC
                            122 	.globl _PSMCON
                            123 	.globl _ADCDATAH
                            124 	.globl _ADCDATAL
                            125 	.globl _ADCCON2
                            126 	.globl _DMAP
                            127 	.globl _DMAH
                            128 	.globl _DMAL
                            129 	.globl _PSW
                            130 	.globl _TH2
                            131 	.globl _TL2
                            132 	.globl _RCAP2H
                            133 	.globl _RCAP2L
                            134 	.globl _T2CON
                            135 	.globl _EADRL
                            136 	.globl _WDCON
                            137 	.globl _EDATA4
                            138 	.globl _EDATA3
                            139 	.globl _EDATA2
                            140 	.globl _EDATA1
                            141 	.globl _ETIM3
                            142 	.globl _ETIM2
                            143 	.globl _ETIM1
                            144 	.globl _ECON
                            145 	.globl _IP
                            146 	.globl _P3
                            147 	.globl _IE2
                            148 	.globl _IE
                            149 	.globl _P2
                            150 	.globl _I2CADD
                            151 	.globl _I2CDAT
                            152 	.globl _SBUF
                            153 	.globl _SCON
                            154 	.globl _P1
                            155 	.globl _TH1
                            156 	.globl _TH0
                            157 	.globl _TL1
                            158 	.globl _TL0
                            159 	.globl _TMOD
                            160 	.globl _TCON
                            161 	.globl _PCON
                            162 	.globl _DPP
                            163 	.globl _DPH
                            164 	.globl _DPL
                            165 	.globl _SP
                            166 	.globl _P0
                            167 	.globl _SOUND_ISR
                            168 	.globl ___SetVolume
                            169 	.globl ___SetFrequency
                            170 ;--------------------------------------------------------
                            171 ; special function registers
                            172 ;--------------------------------------------------------
                            173 	.area RSEG    (DATA)
                    0080    174 _P0	=	0x0080
                    0081    175 _SP	=	0x0081
                    0082    176 _DPL	=	0x0082
                    0083    177 _DPH	=	0x0083
                    0084    178 _DPP	=	0x0084
                    0087    179 _PCON	=	0x0087
                    0088    180 _TCON	=	0x0088
                    0089    181 _TMOD	=	0x0089
                    008A    182 _TL0	=	0x008a
                    008B    183 _TL1	=	0x008b
                    008C    184 _TH0	=	0x008c
                    008D    185 _TH1	=	0x008d
                    0090    186 _P1	=	0x0090
                    0098    187 _SCON	=	0x0098
                    0099    188 _SBUF	=	0x0099
                    009A    189 _I2CDAT	=	0x009a
                    009B    190 _I2CADD	=	0x009b
                    00A0    191 _P2	=	0x00a0
                    00A8    192 _IE	=	0x00a8
                    00A9    193 _IE2	=	0x00a9
                    00B0    194 _P3	=	0x00b0
                    00B8    195 _IP	=	0x00b8
                    00B9    196 _ECON	=	0x00b9
                    00BA    197 _ETIM1	=	0x00ba
                    00BB    198 _ETIM2	=	0x00bb
                    00C4    199 _ETIM3	=	0x00c4
                    00BC    200 _EDATA1	=	0x00bc
                    00BD    201 _EDATA2	=	0x00bd
                    00BE    202 _EDATA3	=	0x00be
                    00BF    203 _EDATA4	=	0x00bf
                    00C0    204 _WDCON	=	0x00c0
                    00C6    205 _EADRL	=	0x00c6
                    00C8    206 _T2CON	=	0x00c8
                    00CA    207 _RCAP2L	=	0x00ca
                    00CB    208 _RCAP2H	=	0x00cb
                    00CC    209 _TL2	=	0x00cc
                    00CD    210 _TH2	=	0x00cd
                    00D0    211 _PSW	=	0x00d0
                    00D2    212 _DMAL	=	0x00d2
                    00D3    213 _DMAH	=	0x00d3
                    00D4    214 _DMAP	=	0x00d4
                    00D8    215 _ADCCON2	=	0x00d8
                    00D9    216 _ADCDATAL	=	0x00d9
                    00DA    217 _ADCDATAH	=	0x00da
                    00DF    218 _PSMCON	=	0x00df
                    00E0    219 _ACC	=	0x00e0
                    00E8    220 _I2CCON	=	0x00e8
                    00EF    221 _ADCCON1	=	0x00ef
                    00F0    222 _B	=	0x00f0
                    00F1    223 _ADCOFSL	=	0x00f1
                    00F2    224 _ADCOFSH	=	0x00f2
                    00F3    225 _ADCGAINL	=	0x00f3
                    00F4    226 _ADCGAINH	=	0x00f4
                    00F5    227 _ADCCON3	=	0x00f5
                    00F7    228 _SPIDAT	=	0x00f7
                    00F8    229 _SPICON	=	0x00f8
                    00F9    230 _DAC0L	=	0x00f9
                    00FA    231 _DAC0H	=	0x00fa
                    00FB    232 _DAC1L	=	0x00fb
                    00FC    233 _DAC1H	=	0x00fc
                    00FD    234 _DACCON	=	0x00fd
                            235 ;--------------------------------------------------------
                            236 ; special function bits
                            237 ;--------------------------------------------------------
                            238 	.area RSEG    (DATA)
                    008F    239 _TF1	=	0x008f
                    008E    240 _TR1	=	0x008e
                    008D    241 _TF0	=	0x008d
                    008C    242 _TR0	=	0x008c
                    008B    243 _IE1	=	0x008b
                    008A    244 _IT1	=	0x008a
                    0089    245 _IE0	=	0x0089
                    0088    246 _IT0	=	0x0088
                    0091    247 _T2EX	=	0x0091
                    0090    248 _T2	=	0x0090
                    009F    249 _SM0	=	0x009f
                    009E    250 _SM1	=	0x009e
                    009D    251 _SM2	=	0x009d
                    009C    252 _REN	=	0x009c
                    009B    253 _TB8	=	0x009b
                    009A    254 _RB8	=	0x009a
                    0099    255 _TI	=	0x0099
                    0098    256 _RI	=	0x0098
                    00AF    257 _EA	=	0x00af
                    00AE    258 _EADC	=	0x00ae
                    00AD    259 _ET2	=	0x00ad
                    00AC    260 _ES	=	0x00ac
                    00AB    261 _ET1	=	0x00ab
                    00AA    262 _EX1	=	0x00aa
                    00A9    263 _ET0	=	0x00a9
                    00A8    264 _EX0	=	0x00a8
                    00B7    265 _RD	=	0x00b7
                    00B6    266 _WR	=	0x00b6
                    00B5    267 _T1	=	0x00b5
                    00B4    268 _T0	=	0x00b4
                    00B3    269 _INT1	=	0x00b3
                    00B2    270 _INT0	=	0x00b2
                    00B1    271 _TXD	=	0x00b1
                    00B0    272 _RXD	=	0x00b0
                    00BF    273 _PSI	=	0x00bf
                    00BE    274 _PADC	=	0x00be
                    00BD    275 _PT2	=	0x00bd
                    00BC    276 _PS	=	0x00bc
                    00BB    277 _PT1	=	0x00bb
                    00BA    278 _PX1	=	0x00ba
                    00B9    279 _PT0	=	0x00b9
                    00B8    280 _PX0	=	0x00b8
                    00C7    281 _PRE2	=	0x00c7
                    00C6    282 _PRE1	=	0x00c6
                    00C5    283 _PRE0	=	0x00c5
                    00C3    284 _WDR1	=	0x00c3
                    00C2    285 _WDR2	=	0x00c2
                    00C1    286 _WDS	=	0x00c1
                    00C0    287 _WDE	=	0x00c0
                    00CF    288 _TF2	=	0x00cf
                    00CE    289 _EXF2	=	0x00ce
                    00CD    290 _RCLK	=	0x00cd
                    00CC    291 _TCLK	=	0x00cc
                    00CB    292 _XEN	=	0x00cb
                    00CA    293 _TR2	=	0x00ca
                    00C9    294 _CNT2	=	0x00c9
                    00C8    295 _CAP2	=	0x00c8
                    00D7    296 _CY	=	0x00d7
                    00D6    297 _AC	=	0x00d6
                    00D5    298 _F0	=	0x00d5
                    00D4    299 _RS1	=	0x00d4
                    00D3    300 _RS0	=	0x00d3
                    00D2    301 _OV	=	0x00d2
                    00D1    302 _F1	=	0x00d1
                    00D0    303 _P	=	0x00d0
                    00DF    304 _ADCI	=	0x00df
                    00DE    305 _DMA	=	0x00de
                    00DD    306 _CCONV	=	0x00dd
                    00DC    307 _SCONV	=	0x00dc
                    00DB    308 _CS3	=	0x00db
                    00DA    309 _CS2	=	0x00da
                    00D9    310 _CS1	=	0x00d9
                    00D8    311 _CS0	=	0x00d8
                    00EF    312 _MDO	=	0x00ef
                    00EE    313 _MDE	=	0x00ee
                    00ED    314 _MCO	=	0x00ed
                    00EC    315 _MDI	=	0x00ec
                    00EB    316 _I2CM	=	0x00eb
                    00EA    317 _I2CRS	=	0x00ea
                    00E9    318 _I2CTX	=	0x00e9
                    00E8    319 _I2CI	=	0x00e8
                    00FF    320 _ISPI	=	0x00ff
                    00FE    321 _WCOL	=	0x00fe
                    00FD    322 _SPE	=	0x00fd
                    00FC    323 _SPIM	=	0x00fc
                    00FB    324 _CPOL	=	0x00fb
                    00FA    325 _CPHA	=	0x00fa
                    00F9    326 _SPR1	=	0x00f9
                    00F8    327 _SPR0	=	0x00f8
                            328 ;--------------------------------------------------------
                            329 ; overlayable register banks
                            330 ;--------------------------------------------------------
                            331 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     332 	.ds 8
                            333 ;--------------------------------------------------------
                            334 ; overlayable bit register bank
                            335 ;--------------------------------------------------------
                            336 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     337 bits:
   0020                     338 	.ds 1
                    8000    339 	b0 = bits[0]
                    8100    340 	b1 = bits[1]
                    8200    341 	b2 = bits[2]
                    8300    342 	b3 = bits[3]
                    8400    343 	b4 = bits[4]
                    8500    344 	b5 = bits[5]
                    8600    345 	b6 = bits[6]
                    8700    346 	b7 = bits[7]
                            347 ;--------------------------------------------------------
                            348 ; internal ram data
                            349 ;--------------------------------------------------------
                            350 	.area DSEG    (DATA)
   0021                     351 _start_time_stamp:
   0021                     352 	.ds 4
   0025                     353 _duration:
   0025                     354 	.ds 4
   0029                     355 _volume:
   0029                     356 	.ds 1
   002A                     357 _frequency:
   002A                     358 	.ds 2
   002C                     359 _on_off:
   002C                     360 	.ds 1
   002D                     361 _current_ena:
   002D                     362 	.ds 1
   002E                     363 _note_period:
   002E                     364 	.ds 2
                            365 ;--------------------------------------------------------
                            366 ; overlayable items in internal ram 
                            367 ;--------------------------------------------------------
                            368 	.area OSEG    (OVR,DATA)
                            369 ;--------------------------------------------------------
                            370 ; indirectly addressable internal ram data
                            371 ;--------------------------------------------------------
                            372 	.area ISEG    (DATA)
                            373 ;--------------------------------------------------------
                            374 ; absolute internal ram data
                            375 ;--------------------------------------------------------
                            376 	.area IABS    (ABS,DATA)
                            377 	.area IABS    (ABS,DATA)
                            378 ;--------------------------------------------------------
                            379 ; bit data
                            380 ;--------------------------------------------------------
                            381 	.area BSEG    (BIT)
                            382 ;--------------------------------------------------------
                            383 ; paged external ram data
                            384 ;--------------------------------------------------------
                            385 	.area PSEG    (PAG,XDATA)
                            386 ;--------------------------------------------------------
                            387 ; external ram data
                            388 ;--------------------------------------------------------
                            389 	.area XSEG    (XDATA)
                            390 ;--------------------------------------------------------
                            391 ; absolute external ram data
                            392 ;--------------------------------------------------------
                            393 	.area XABS    (ABS,XDATA)
                            394 ;--------------------------------------------------------
                            395 ; external initialized ram data
                            396 ;--------------------------------------------------------
                            397 	.area XISEG   (XDATA)
                            398 	.area HOME    (CODE)
                            399 	.area GSINIT0 (CODE)
                            400 	.area GSINIT1 (CODE)
                            401 	.area GSINIT2 (CODE)
                            402 	.area GSINIT3 (CODE)
                            403 	.area GSINIT4 (CODE)
                            404 	.area GSINIT5 (CODE)
                            405 	.area GSINIT  (CODE)
                            406 	.area GSFINAL (CODE)
                            407 	.area CSEG    (CODE)
                            408 ;--------------------------------------------------------
                            409 ; global & static initialisations
                            410 ;--------------------------------------------------------
                            411 	.area HOME    (CODE)
                            412 	.area GSINIT  (CODE)
                            413 	.area GSFINAL (CODE)
                            414 	.area GSINIT  (CODE)
                            415 ;	SRC/sound.c:28: static uint8_t volume = 7; //значение по умолчанию
   2164 75 29 07            416 	mov	_volume,#0x07
                            417 ;	SRC/sound.c:30: static unsigned char on_off = ON;
   2167 75 2C 01            418 	mov	_on_off,#0x01
                            419 ;	SRC/sound.c:31: static uint8_t current_ena = 0x1C; //0b0100000;
   216A 75 2D 1C            420 	mov	_current_ena,#0x1C
                            421 ;	SRC/sound.c:39: static uint8_t note_period[2] = { 0xff, 0xff };
   216D 75 2E FF            422 	mov	_note_period,#0xFF
   2170 75 2F FF            423 	mov	(_note_period + 0x0001),#0xFF
                            424 ;--------------------------------------------------------
                            425 ; Home
                            426 ;--------------------------------------------------------
                            427 	.area HOME    (CODE)
                            428 	.area HOME    (CODE)
                            429 ;--------------------------------------------------------
                            430 ; code
                            431 ;--------------------------------------------------------
                            432 	.area CSEG    (CODE)
                            433 ;------------------------------------------------------------
                            434 ;Allocation info for local variables in function 'SetDuration'
                            435 ;------------------------------------------------------------
                            436 ;d                         Allocated to registers 
                            437 ;------------------------------------------------------------
                            438 ;	SRC/sound.c:43: void SetDuration(unsigned long d){
                            439 ;	-----------------------------------------
                            440 ;	 function SetDuration
                            441 ;	-----------------------------------------
   2224                     442 _SetDuration:
                    0002    443 	ar2 = 0x02
                    0003    444 	ar3 = 0x03
                    0004    445 	ar4 = 0x04
                    0005    446 	ar5 = 0x05
                    0006    447 	ar6 = 0x06
                    0007    448 	ar7 = 0x07
                    0000    449 	ar0 = 0x00
                    0001    450 	ar1 = 0x01
   2224 85 82 25            451 	mov	_duration,dpl
   2227 85 83 26            452 	mov	(_duration + 1),dph
   222A 85 F0 27            453 	mov	(_duration + 2),b
   222D F5 28               454 	mov	(_duration + 3),a
                            455 ;	SRC/sound.c:45: __SetFrequency(); //Настройка таймера на заданную частоту
   222F 12 23 C2            456 	lcall	___SetFrequency
                            457 ;	SRC/sound.c:46: __SetVolume(ON); //Включение звукоизлучателя
   2232 75 82 01            458 	mov	dpl,#0x01
   2235 12 23 90            459 	lcall	___SetVolume
                            460 ;	SRC/sound.c:47: TR=0x1; //Включение таймера 0
   2238 D2 8C               461 	setb	_TR0
                            462 ;	SRC/sound.c:48: start_time_stamp = GetMsCounter();
   223A 12 24 21            463 	lcall	_GetMsCounter
   223D 85 82 21            464 	mov	_start_time_stamp,dpl
   2240 85 83 22            465 	mov	(_start_time_stamp + 1),dph
   2243 85 F0 23            466 	mov	(_start_time_stamp + 2),b
   2246 F5 24               467 	mov	(_start_time_stamp + 3),a
   2248 22                  468 	ret
                            469 ;------------------------------------------------------------
                            470 ;Allocation info for local variables in function 'SetDurationAndWait'
                            471 ;------------------------------------------------------------
                            472 ;d                         Allocated to registers r2 r3 r4 r5 
                            473 ;------------------------------------------------------------
                            474 ;	SRC/sound.c:53: void SetDurationAndWait(unsigned long d){
                            475 ;	-----------------------------------------
                            476 ;	 function SetDurationAndWait
                            477 ;	-----------------------------------------
   2249                     478 _SetDurationAndWait:
   2249 AA 82               479 	mov	r2,dpl
   224B AB 83               480 	mov	r3,dph
   224D AC F0               481 	mov	r4,b
   224F FD                  482 	mov	r5,a
                            483 ;	SRC/sound.c:54: duration = d;
   2250 8A 25               484 	mov	_duration,r2
   2252 8B 26               485 	mov	(_duration + 1),r3
   2254 8C 27               486 	mov	(_duration + 2),r4
   2256 8D 28               487 	mov	(_duration + 3),r5
                            488 ;	SRC/sound.c:55: __SetFrequency(); //Настройка таймера на заданную частоту
   2258 C0 02               489 	push	ar2
   225A C0 03               490 	push	ar3
   225C C0 04               491 	push	ar4
   225E C0 05               492 	push	ar5
   2260 12 23 C2            493 	lcall	___SetFrequency
                            494 ;	SRC/sound.c:56: __SetVolume(ON); //Включение звукоизлучателя
   2263 75 82 01            495 	mov	dpl,#0x01
   2266 12 23 90            496 	lcall	___SetVolume
                            497 ;	SRC/sound.c:57: TR=0x1; //Включение таймера 0
   2269 D2 8C               498 	setb	_TR0
                            499 ;	SRC/sound.c:58: start_time_stamp = GetMsCounter();
   226B 12 24 21            500 	lcall	_GetMsCounter
   226E 85 82 21            501 	mov	_start_time_stamp,dpl
   2271 85 83 22            502 	mov	(_start_time_stamp + 1),dph
   2274 85 F0 23            503 	mov	(_start_time_stamp + 2),b
   2277 F5 24               504 	mov	(_start_time_stamp + 3),a
   2279 D0 05               505 	pop	ar5
   227B D0 04               506 	pop	ar4
   227D D0 03               507 	pop	ar3
   227F D0 02               508 	pop	ar2
                            509 ;	SRC/sound.c:60: DelayMs(d);
   2281 8A 82               510 	mov	dpl,r2
   2283 8B 83               511 	mov	dph,r3
   2285 8C F0               512 	mov	b,r4
   2287 ED                  513 	mov	a,r5
   2288 12 24 6A            514 	lcall	_DelayMs
                            515 ;	SRC/sound.c:61: __SetVolume(OFF);
   228B 75 82 00            516 	mov	dpl,#0x00
   228E 12 23 90            517 	lcall	___SetVolume
                            518 ;	SRC/sound.c:62: TR=0x0;
   2291 C2 8C               519 	clr	_TR0
   2293 22                  520 	ret
                            521 ;------------------------------------------------------------
                            522 ;Allocation info for local variables in function 'SetFrequency'
                            523 ;------------------------------------------------------------
                            524 ;f                         Allocated to registers r2 r3 
                            525 ;delay                     Allocated to registers r4 r5 
                            526 ;------------------------------------------------------------
                            527 ;	SRC/sound.c:66: void SetFrequency(uint16_t f){
                            528 ;	-----------------------------------------
                            529 ;	 function SetFrequency
                            530 ;	-----------------------------------------
   2294                     531 _SetFrequency:
   2294 AA 82               532 	mov	r2,dpl
   2296 AB 83               533 	mov	r3,dph
                            534 ;	SRC/sound.c:68: uint16_t delay = TIMER_FREQ / (2 * f);
   2298 8A 04               535 	mov	ar4,r2
   229A EB                  536 	mov	a,r3
   229B CC                  537 	xch	a,r4
   229C 25 E0               538 	add	a,acc
   229E CC                  539 	xch	a,r4
   229F 33                  540 	rlc	a
   22A0 FD                  541 	mov	r5,a
   22A1 7E 00               542 	mov	r6,#0x00
   22A3 7F 00               543 	mov	r7,#0x00
   22A5 C0 02               544 	push	ar2
   22A7 C0 03               545 	push	ar3
   22A9 C0 04               546 	push	ar4
   22AB C0 05               547 	push	ar5
   22AD C0 06               548 	push	ar6
   22AF C0 07               549 	push	ar7
   22B1 90 10 00            550 	mov	dptr,#0x1000
   22B4 75 F0 0E            551 	mov	b,#0x0E
   22B7 E4                  552 	clr	a
   22B8 12 25 B6            553 	lcall	__divslong
   22BB AC 82               554 	mov	r4,dpl
   22BD AD 83               555 	mov	r5,dph
   22BF E5 81               556 	mov	a,sp
   22C1 24 FC               557 	add	a,#0xfc
   22C3 F5 81               558 	mov	sp,a
   22C5 D0 03               559 	pop	ar3
   22C7 D0 02               560 	pop	ar2
                            561 ;	SRC/sound.c:70: note_period[1] = 0xFF - (delay>>8) & 0xFF; //Перезагрузка регистров
   22C9 8D 06               562 	mov	ar6,r5
   22CB 74 FF               563 	mov	a,#0xFF
   22CD C3                  564 	clr	c
   22CE 9E                  565 	subb	a,r6
   22CF F5 2F               566 	mov	(_note_period + 0x0001),a
                            567 ;	SRC/sound.c:71: note_period[0] = 0xFF - delay & 0xFF; 
   22D1 74 FF               568 	mov	a,#0xFF
   22D3 C3                  569 	clr	c
   22D4 9C                  570 	subb	a,r4
   22D5 F5 2E               571 	mov	_note_period,a
                            572 ;	SRC/sound.c:75: frequency = f;
   22D7 8A 2A               573 	mov	_frequency,r2
   22D9 8B 2B               574 	mov	(_frequency + 1),r3
   22DB 22                  575 	ret
                            576 ;------------------------------------------------------------
                            577 ;Allocation info for local variables in function 'SetVolume'
                            578 ;------------------------------------------------------------
                            579 ;v                         Allocated to registers r2 
                            580 ;------------------------------------------------------------
                            581 ;	SRC/sound.c:84: void SetVolume(unsigned char v){
                            582 ;	-----------------------------------------
                            583 ;	 function SetVolume
                            584 ;	-----------------------------------------
   22DC                     585 _SetVolume:
                            586 ;	SRC/sound.c:85: volume = v > 7 ? 7 : v;
   22DC E5 82               587 	mov	a,dpl
   22DE FA                  588 	mov	r2,a
   22DF 24 F8               589 	add	a,#0xff - 0x07
   22E1 50 04               590 	jnc	00103$
   22E3 7B 07               591 	mov	r3,#0x07
   22E5 80 02               592 	sjmp	00104$
   22E7                     593 00103$:
   22E7 8A 03               594 	mov	ar3,r2
   22E9                     595 00104$:
   22E9 8B 29               596 	mov	_volume,r3
   22EB 22                  597 	ret
                            598 ;------------------------------------------------------------
                            599 ;Allocation info for local variables in function 'InitSoundTimer'
                            600 ;------------------------------------------------------------
                            601 ;------------------------------------------------------------
                            602 ;	SRC/sound.c:91: void InitSoundTimer( void ){
                            603 ;	-----------------------------------------
                            604 ;	 function InitSoundTimer
                            605 ;	-----------------------------------------
   22EC                     606 _InitSoundTimer:
                            607 ;	SRC/sound.c:93: InitSysTimer(); 
   22EC 12 23 C9            608 	lcall	_InitSysTimer
                            609 ;	SRC/sound.c:95: TR=0x0; //Выключение таймера 1
   22EF C2 8C               610 	clr	_TR0
                            611 ;	SRC/sound.c:98: TMOD = TMOD & ~(GATE | CT | M1) | M0;
   22F1 AA 89               612 	mov	r2,_TMOD
   22F3 74 F1               613 	mov	a,#0xF1
   22F5 5A                  614 	anl	a,r2
   22F6 F5 F0               615 	mov	b,a
   22F8 74 01               616 	mov	a,#0x01
   22FA 45 F0               617 	orl	a,b
   22FC F5 89               618 	mov	_TMOD,a
                            619 ;	SRC/sound.c:101: SetVector( vec, (void *)SOUND_ISR );
   22FE 7A 1D               620 	mov	r2,#_SOUND_ISR
   2300 7B 23               621 	mov	r3,#(_SOUND_ISR >> 8)
   2302 7C 80               622 	mov	r4,#0x80
   2304 C0 02               623 	push	ar2
   2306 C0 03               624 	push	ar3
   2308 C0 04               625 	push	ar4
   230A 90 20 0B            626 	mov	dptr,#0x200B
   230D 12 24 C7            627 	lcall	_SetVector
   2310 15 81               628 	dec	sp
   2312 15 81               629 	dec	sp
   2314 15 81               630 	dec	sp
                            631 ;	SRC/sound.c:103: ET = 1; //Разрешение прерываний от таймера
   2316 D2 A9               632 	setb	_ET0
                            633 ;	SRC/sound.c:104: EA = 1; //Разрешение всех прерываний
   2318 D2 AF               634 	setb	_EA
                            635 ;	SRC/sound.c:107: TR=0x1;
   231A D2 8C               636 	setb	_TR0
   231C 22                  637 	ret
                            638 ;------------------------------------------------------------
                            639 ;Allocation info for local variables in function 'SOUND_ISR'
                            640 ;------------------------------------------------------------
                            641 ;------------------------------------------------------------
                            642 ;	SRC/sound.c:115: void SOUND_ISR( void ) __interrupt ( __TIMER_NUMBER__ ) __using ( __TIMER_NUMBER__ )
                            643 ;	-----------------------------------------
                            644 ;	 function SOUND_ISR
                            645 ;	-----------------------------------------
   231D                     646 _SOUND_ISR:
   231D C0 20               647 	push	bits
   231F C0 E0               648 	push	acc
   2321 C0 F0               649 	push	b
   2323 C0 82               650 	push	dpl
   2325 C0 83               651 	push	dph
   2327 C0 02               652 	push	(0+2)
   2329 C0 03               653 	push	(0+3)
   232B C0 04               654 	push	(0+4)
   232D C0 05               655 	push	(0+5)
   232F C0 06               656 	push	(0+6)
   2331 C0 07               657 	push	(0+7)
   2333 C0 00               658 	push	(0+0)
   2335 C0 01               659 	push	(0+1)
   2337 C0 D0               660 	push	psw
   2339 75 D0 00            661 	mov	psw,#0x00
                            662 ;	SRC/sound.c:120: if(DTimeMs(start_time_stamp) < duration){	
   233C 85 21 82            663 	mov	dpl,_start_time_stamp
   233F 85 22 83            664 	mov	dph,(_start_time_stamp + 1)
   2342 85 23 F0            665 	mov	b,(_start_time_stamp + 2)
   2345 E5 24               666 	mov	a,(_start_time_stamp + 3)
   2347 12 24 35            667 	lcall	_DTimeMs
   234A AA 82               668 	mov	r2,dpl
   234C AB 83               669 	mov	r3,dph
   234E AC F0               670 	mov	r4,b
   2350 FD                  671 	mov	r5,a
   2351 C3                  672 	clr	c
   2352 EA                  673 	mov	a,r2
   2353 95 25               674 	subb	a,_duration
   2355 EB                  675 	mov	a,r3
   2356 95 26               676 	subb	a,(_duration + 1)
   2358 EC                  677 	mov	a,r4
   2359 95 27               678 	subb	a,(_duration + 2)
   235B ED                  679 	mov	a,r5
   235C 95 28               680 	subb	a,(_duration + 3)
   235E 50 0B               681 	jnc	00102$
                            682 ;	SRC/sound.c:121: __SetFrequency();
   2360 12 23 C2            683 	lcall	___SetFrequency
                            684 ;	SRC/sound.c:122: __SetVolume(on_off);
   2363 85 2C 82            685 	mov	dpl,_on_off
   2366 12 23 90            686 	lcall	___SetVolume
   2369 80 08               687 	sjmp	00104$
   236B                     688 00102$:
                            689 ;	SRC/sound.c:125: __SetVolume(OFF);
   236B 75 82 00            690 	mov	dpl,#0x00
   236E 12 23 90            691 	lcall	___SetVolume
                            692 ;	SRC/sound.c:126: TR=0x0;
   2371 C2 8C               693 	clr	_TR0
   2373                     694 00104$:
   2373 D0 D0               695 	pop	psw
   2375 D0 01               696 	pop	(0+1)
   2377 D0 00               697 	pop	(0+0)
   2379 D0 07               698 	pop	(0+7)
   237B D0 06               699 	pop	(0+6)
   237D D0 05               700 	pop	(0+5)
   237F D0 04               701 	pop	(0+4)
   2381 D0 03               702 	pop	(0+3)
   2383 D0 02               703 	pop	(0+2)
   2385 D0 83               704 	pop	dph
   2387 D0 82               705 	pop	dpl
   2389 D0 F0               706 	pop	b
   238B D0 E0               707 	pop	acc
   238D D0 20               708 	pop	bits
   238F 32                  709 	reti
                            710 ;------------------------------------------------------------
                            711 ;Allocation info for local variables in function '__SetVolume'
                            712 ;------------------------------------------------------------
                            713 ;__on_off                  Allocated to registers r2 
                            714 ;------------------------------------------------------------
                            715 ;	SRC/sound.c:132: void __SetVolume(unsigned char __on_off){
                            716 ;	-----------------------------------------
                            717 ;	 function __SetVolume
                            718 ;	-----------------------------------------
   2390                     719 ___SetVolume:
                            720 ;	SRC/sound.c:134: write_max(ENA, __on_off ? 0b0100000 | (volume>7 ? 7: volume) << 2 : 0b0100000); //0b001XXX00
   2390 E5 82               721 	mov	a,dpl
   2392 FA                  722 	mov	r2,a
   2393 60 16               723 	jz	00103$
   2395 E5 29               724 	mov	a,_volume
   2397 24 F8               725 	add	a,#0xff - 0x07
   2399 50 04               726 	jnc	00105$
   239B 7B 07               727 	mov	r3,#0x07
   239D 80 02               728 	sjmp	00106$
   239F                     729 00105$:
   239F AB 29               730 	mov	r3,_volume
   23A1                     731 00106$:
   23A1 EB                  732 	mov	a,r3
   23A2 2B                  733 	add	a,r3
   23A3 25 E0               734 	add	a,acc
   23A5 FB                  735 	mov	r3,a
   23A6 43 03 20            736 	orl	ar3,#0x20
   23A9 80 02               737 	sjmp	00104$
   23AB                     738 00103$:
   23AB 7B 20               739 	mov	r3,#0x20
   23AD                     740 00104$:
   23AD C0 02               741 	push	ar2
   23AF C0 03               742 	push	ar3
   23B1 90 00 04            743 	mov	dptr,#0x0004
   23B4 12 22 02            744 	lcall	_write_max
   23B7 15 81               745 	dec	sp
   23B9 D0 02               746 	pop	ar2
                            747 ;	SRC/sound.c:135: on_off = ++__on_off % 2;
   23BB 0A                  748 	inc	r2
   23BC 74 01               749 	mov	a,#0x01
   23BE 5A                  750 	anl	a,r2
   23BF F5 2C               751 	mov	_on_off,a
   23C1 22                  752 	ret
                            753 ;------------------------------------------------------------
                            754 ;Allocation info for local variables in function '__SetFrequency'
                            755 ;------------------------------------------------------------
                            756 ;------------------------------------------------------------
                            757 ;	SRC/sound.c:145: void __SetFrequency(){
                            758 ;	-----------------------------------------
                            759 ;	 function __SetFrequency
                            760 ;	-----------------------------------------
   23C2                     761 ___SetFrequency:
                            762 ;	SRC/sound.c:146: TL = note_period[0]; //Перезагрузка регистров
   23C2 85 2E 8A            763 	mov	_TL0,_note_period
                            764 ;	SRC/sound.c:147: TH = note_period[1];
   23C5 85 2F 8C            765 	mov	_TH0,(_note_period + 0x0001)
   23C8 22                  766 	ret
                            767 	.area CSEG    (CODE)
                            768 	.area CONST   (CODE)
                            769 	.area XINIT   (CODE)
                            770 	.area CABS    (ABS,CODE)
