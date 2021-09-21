                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Jan 24 22:49:04 2019
                              5 ;--------------------------------------------------------
                              6 	.module lab4
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _PrintConLog
                             14 	.globl _DecipherCode
                             15 	.globl _CompareEEPROM
                             16 	.globl _CompareString
                             17 	.globl _PrintTime
                             18 	.globl _dip
                             19 	.globl _LCD_TypeAnimation
                             20 	.globl _PrintString
                             21 	.globl _delay
                             22 	.globl _CheckTimeLimitSec
                             23 	.globl _CheckTimeLimitHsec
                             24 	.globl _getTime
                             25 	.globl _SPR0
                             26 	.globl _SPR1
                             27 	.globl _CPHA
                             28 	.globl _CPOL
                             29 	.globl _SPIM
                             30 	.globl _SPE
                             31 	.globl _WCOL
                             32 	.globl _ISPI
                             33 	.globl _I2CI
                             34 	.globl _I2CTX
                             35 	.globl _I2CRS
                             36 	.globl _I2CM
                             37 	.globl _MDI
                             38 	.globl _MCO
                             39 	.globl _MDE
                             40 	.globl _MDO
                             41 	.globl _CS0
                             42 	.globl _CS1
                             43 	.globl _CS2
                             44 	.globl _CS3
                             45 	.globl _SCONV
                             46 	.globl _CCONV
                             47 	.globl _DMA
                             48 	.globl _ADCI
                             49 	.globl _P
                             50 	.globl _F1
                             51 	.globl _OV
                             52 	.globl _RS0
                             53 	.globl _RS1
                             54 	.globl _F0
                             55 	.globl _AC
                             56 	.globl _CY
                             57 	.globl _CAP2
                             58 	.globl _CNT2
                             59 	.globl _TR2
                             60 	.globl _XEN
                             61 	.globl _TCLK
                             62 	.globl _RCLK
                             63 	.globl _EXF2
                             64 	.globl _TF2
                             65 	.globl _WDE
                             66 	.globl _WDS
                             67 	.globl _WDR2
                             68 	.globl _WDR1
                             69 	.globl _PRE0
                             70 	.globl _PRE1
                             71 	.globl _PRE2
                             72 	.globl _PX0
                             73 	.globl _PT0
                             74 	.globl _PX1
                             75 	.globl _PT1
                             76 	.globl _PS
                             77 	.globl _PT2
                             78 	.globl _PADC
                             79 	.globl _PSI
                             80 	.globl _RXD
                             81 	.globl _TXD
                             82 	.globl _INT0
                             83 	.globl _INT1
                             84 	.globl _T0
                             85 	.globl _T1
                             86 	.globl _WR
                             87 	.globl _RD
                             88 	.globl _EX0
                             89 	.globl _ET0
                             90 	.globl _EX1
                             91 	.globl _ET1
                             92 	.globl _ES
                             93 	.globl _ET2
                             94 	.globl _EADC
                             95 	.globl _EA
                             96 	.globl _RI
                             97 	.globl _TI
                             98 	.globl _RB8
                             99 	.globl _TB8
                            100 	.globl _REN
                            101 	.globl _SM2
                            102 	.globl _SM1
                            103 	.globl _SM0
                            104 	.globl _T2
                            105 	.globl _T2EX
                            106 	.globl _IT0
                            107 	.globl _IE0
                            108 	.globl _IT1
                            109 	.globl _IE1
                            110 	.globl _TR0
                            111 	.globl _TF0
                            112 	.globl _TR1
                            113 	.globl _TF1
                            114 	.globl _DACCON
                            115 	.globl _DAC1H
                            116 	.globl _DAC1L
                            117 	.globl _DAC0H
                            118 	.globl _DAC0L
                            119 	.globl _SPICON
                            120 	.globl _SPIDAT
                            121 	.globl _ADCCON3
                            122 	.globl _ADCGAINH
                            123 	.globl _ADCGAINL
                            124 	.globl _ADCOFSH
                            125 	.globl _ADCOFSL
                            126 	.globl _B
                            127 	.globl _ADCCON1
                            128 	.globl _I2CCON
                            129 	.globl _ACC
                            130 	.globl _PSMCON
                            131 	.globl _ADCDATAH
                            132 	.globl _ADCDATAL
                            133 	.globl _ADCCON2
                            134 	.globl _DMAP
                            135 	.globl _DMAH
                            136 	.globl _DMAL
                            137 	.globl _PSW
                            138 	.globl _TH2
                            139 	.globl _TL2
                            140 	.globl _RCAP2H
                            141 	.globl _RCAP2L
                            142 	.globl _T2CON
                            143 	.globl _EADRL
                            144 	.globl _WDCON
                            145 	.globl _EDATA4
                            146 	.globl _EDATA3
                            147 	.globl _EDATA2
                            148 	.globl _EDATA1
                            149 	.globl _ETIM3
                            150 	.globl _ETIM2
                            151 	.globl _ETIM1
                            152 	.globl _ECON
                            153 	.globl _IP
                            154 	.globl _P3
                            155 	.globl _IE2
                            156 	.globl _IE
                            157 	.globl _P2
                            158 	.globl _I2CADD
                            159 	.globl _I2CDAT
                            160 	.globl _SBUF
                            161 	.globl _SCON
                            162 	.globl _P1
                            163 	.globl _TH1
                            164 	.globl _TH0
                            165 	.globl _TL1
                            166 	.globl _TL0
                            167 	.globl _TMOD
                            168 	.globl _TCON
                            169 	.globl _PCON
                            170 	.globl _DPP
                            171 	.globl _DPH
                            172 	.globl _DPL
                            173 	.globl _SP
                            174 	.globl _P0
                            175 	.globl _xbuffer
                            176 	.globl _user_code
                            177 	.globl _service_code
                            178 	.globl _CurrentTime
                            179 	.globl _StartTime
                            180 	.globl _input
                            181 	.globl _num_log
                            182 	.globl _buffer
                            183 	.globl _message
                            184 	.globl _PrintNumber
                            185 	.globl _log
                            186 ;--------------------------------------------------------
                            187 ; special function registers
                            188 ;--------------------------------------------------------
                            189 	.area RSEG    (DATA)
                    0080    190 _P0	=	0x0080
                    0081    191 _SP	=	0x0081
                    0082    192 _DPL	=	0x0082
                    0083    193 _DPH	=	0x0083
                    0084    194 _DPP	=	0x0084
                    0087    195 _PCON	=	0x0087
                    0088    196 _TCON	=	0x0088
                    0089    197 _TMOD	=	0x0089
                    008A    198 _TL0	=	0x008a
                    008B    199 _TL1	=	0x008b
                    008C    200 _TH0	=	0x008c
                    008D    201 _TH1	=	0x008d
                    0090    202 _P1	=	0x0090
                    0098    203 _SCON	=	0x0098
                    0099    204 _SBUF	=	0x0099
                    009A    205 _I2CDAT	=	0x009a
                    009B    206 _I2CADD	=	0x009b
                    00A0    207 _P2	=	0x00a0
                    00A8    208 _IE	=	0x00a8
                    00A9    209 _IE2	=	0x00a9
                    00B0    210 _P3	=	0x00b0
                    00B8    211 _IP	=	0x00b8
                    00B9    212 _ECON	=	0x00b9
                    00BA    213 _ETIM1	=	0x00ba
                    00BB    214 _ETIM2	=	0x00bb
                    00C4    215 _ETIM3	=	0x00c4
                    00BC    216 _EDATA1	=	0x00bc
                    00BD    217 _EDATA2	=	0x00bd
                    00BE    218 _EDATA3	=	0x00be
                    00BF    219 _EDATA4	=	0x00bf
                    00C0    220 _WDCON	=	0x00c0
                    00C6    221 _EADRL	=	0x00c6
                    00C8    222 _T2CON	=	0x00c8
                    00CA    223 _RCAP2L	=	0x00ca
                    00CB    224 _RCAP2H	=	0x00cb
                    00CC    225 _TL2	=	0x00cc
                    00CD    226 _TH2	=	0x00cd
                    00D0    227 _PSW	=	0x00d0
                    00D2    228 _DMAL	=	0x00d2
                    00D3    229 _DMAH	=	0x00d3
                    00D4    230 _DMAP	=	0x00d4
                    00D8    231 _ADCCON2	=	0x00d8
                    00D9    232 _ADCDATAL	=	0x00d9
                    00DA    233 _ADCDATAH	=	0x00da
                    00DF    234 _PSMCON	=	0x00df
                    00E0    235 _ACC	=	0x00e0
                    00E8    236 _I2CCON	=	0x00e8
                    00EF    237 _ADCCON1	=	0x00ef
                    00F0    238 _B	=	0x00f0
                    00F1    239 _ADCOFSL	=	0x00f1
                    00F2    240 _ADCOFSH	=	0x00f2
                    00F3    241 _ADCGAINL	=	0x00f3
                    00F4    242 _ADCGAINH	=	0x00f4
                    00F5    243 _ADCCON3	=	0x00f5
                    00F7    244 _SPIDAT	=	0x00f7
                    00F8    245 _SPICON	=	0x00f8
                    00F9    246 _DAC0L	=	0x00f9
                    00FA    247 _DAC0H	=	0x00fa
                    00FB    248 _DAC1L	=	0x00fb
                    00FC    249 _DAC1H	=	0x00fc
                    00FD    250 _DACCON	=	0x00fd
                            251 ;--------------------------------------------------------
                            252 ; special function bits
                            253 ;--------------------------------------------------------
                            254 	.area RSEG    (DATA)
                    008F    255 _TF1	=	0x008f
                    008E    256 _TR1	=	0x008e
                    008D    257 _TF0	=	0x008d
                    008C    258 _TR0	=	0x008c
                    008B    259 _IE1	=	0x008b
                    008A    260 _IT1	=	0x008a
                    0089    261 _IE0	=	0x0089
                    0088    262 _IT0	=	0x0088
                    0091    263 _T2EX	=	0x0091
                    0090    264 _T2	=	0x0090
                    009F    265 _SM0	=	0x009f
                    009E    266 _SM1	=	0x009e
                    009D    267 _SM2	=	0x009d
                    009C    268 _REN	=	0x009c
                    009B    269 _TB8	=	0x009b
                    009A    270 _RB8	=	0x009a
                    0099    271 _TI	=	0x0099
                    0098    272 _RI	=	0x0098
                    00AF    273 _EA	=	0x00af
                    00AE    274 _EADC	=	0x00ae
                    00AD    275 _ET2	=	0x00ad
                    00AC    276 _ES	=	0x00ac
                    00AB    277 _ET1	=	0x00ab
                    00AA    278 _EX1	=	0x00aa
                    00A9    279 _ET0	=	0x00a9
                    00A8    280 _EX0	=	0x00a8
                    00B7    281 _RD	=	0x00b7
                    00B6    282 _WR	=	0x00b6
                    00B5    283 _T1	=	0x00b5
                    00B4    284 _T0	=	0x00b4
                    00B3    285 _INT1	=	0x00b3
                    00B2    286 _INT0	=	0x00b2
                    00B1    287 _TXD	=	0x00b1
                    00B0    288 _RXD	=	0x00b0
                    00BF    289 _PSI	=	0x00bf
                    00BE    290 _PADC	=	0x00be
                    00BD    291 _PT2	=	0x00bd
                    00BC    292 _PS	=	0x00bc
                    00BB    293 _PT1	=	0x00bb
                    00BA    294 _PX1	=	0x00ba
                    00B9    295 _PT0	=	0x00b9
                    00B8    296 _PX0	=	0x00b8
                    00C7    297 _PRE2	=	0x00c7
                    00C6    298 _PRE1	=	0x00c6
                    00C5    299 _PRE0	=	0x00c5
                    00C3    300 _WDR1	=	0x00c3
                    00C2    301 _WDR2	=	0x00c2
                    00C1    302 _WDS	=	0x00c1
                    00C0    303 _WDE	=	0x00c0
                    00CF    304 _TF2	=	0x00cf
                    00CE    305 _EXF2	=	0x00ce
                    00CD    306 _RCLK	=	0x00cd
                    00CC    307 _TCLK	=	0x00cc
                    00CB    308 _XEN	=	0x00cb
                    00CA    309 _TR2	=	0x00ca
                    00C9    310 _CNT2	=	0x00c9
                    00C8    311 _CAP2	=	0x00c8
                    00D7    312 _CY	=	0x00d7
                    00D6    313 _AC	=	0x00d6
                    00D5    314 _F0	=	0x00d5
                    00D4    315 _RS1	=	0x00d4
                    00D3    316 _RS0	=	0x00d3
                    00D2    317 _OV	=	0x00d2
                    00D1    318 _F1	=	0x00d1
                    00D0    319 _P	=	0x00d0
                    00DF    320 _ADCI	=	0x00df
                    00DE    321 _DMA	=	0x00de
                    00DD    322 _CCONV	=	0x00dd
                    00DC    323 _SCONV	=	0x00dc
                    00DB    324 _CS3	=	0x00db
                    00DA    325 _CS2	=	0x00da
                    00D9    326 _CS1	=	0x00d9
                    00D8    327 _CS0	=	0x00d8
                    00EF    328 _MDO	=	0x00ef
                    00EE    329 _MDE	=	0x00ee
                    00ED    330 _MCO	=	0x00ed
                    00EC    331 _MDI	=	0x00ec
                    00EB    332 _I2CM	=	0x00eb
                    00EA    333 _I2CRS	=	0x00ea
                    00E9    334 _I2CTX	=	0x00e9
                    00E8    335 _I2CI	=	0x00e8
                    00FF    336 _ISPI	=	0x00ff
                    00FE    337 _WCOL	=	0x00fe
                    00FD    338 _SPE	=	0x00fd
                    00FC    339 _SPIM	=	0x00fc
                    00FB    340 _CPOL	=	0x00fb
                    00FA    341 _CPHA	=	0x00fa
                    00F9    342 _SPR1	=	0x00f9
                    00F8    343 _SPR0	=	0x00f8
                            344 ;--------------------------------------------------------
                            345 ; overlayable register banks
                            346 ;--------------------------------------------------------
                            347 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     348 	.ds 8
                            349 ;--------------------------------------------------------
                            350 ; overlayable bit register bank
                            351 ;--------------------------------------------------------
                            352 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     353 bits:
   0021                     354 	.ds 1
                    8000    355 	b0 = bits[0]
                    8100    356 	b1 = bits[1]
                    8200    357 	b2 = bits[2]
                    8300    358 	b3 = bits[3]
                    8400    359 	b4 = bits[4]
                    8500    360 	b5 = bits[5]
                    8600    361 	b6 = bits[6]
                    8700    362 	b7 = bits[7]
                            363 ;--------------------------------------------------------
                            364 ; internal ram data
                            365 ;--------------------------------------------------------
                            366 	.area DSEG    (DATA)
   001A                     367 _buffer::
   001A                     368 	.ds 3
   001D                     369 _num_log::
   001D                     370 	.ds 1
                            371 ;--------------------------------------------------------
                            372 ; overlayable items in internal ram 
                            373 ;--------------------------------------------------------
                            374 	.area OSEG    (OVR,DATA)
                            375 ;--------------------------------------------------------
                            376 ; Stack segment in internal ram 
                            377 ;--------------------------------------------------------
                            378 	.area	SSEG	(DATA)
   0022                     379 __start__stack:
   0022                     380 	.ds	1
                            381 
                            382 ;--------------------------------------------------------
                            383 ; indirectly addressable internal ram data
                            384 ;--------------------------------------------------------
                            385 	.area ISEG    (DATA)
                            386 ;--------------------------------------------------------
                            387 ; absolute internal ram data
                            388 ;--------------------------------------------------------
                            389 	.area IABS    (ABS,DATA)
                            390 	.area IABS    (ABS,DATA)
                            391 ;--------------------------------------------------------
                            392 ; bit data
                            393 ;--------------------------------------------------------
                            394 	.area BSEG    (BIT)
                            395 ;--------------------------------------------------------
                            396 ; paged external ram data
                            397 ;--------------------------------------------------------
                            398 	.area PSEG    (PAG,XDATA)
                            399 ;--------------------------------------------------------
                            400 ; external ram data
                            401 ;--------------------------------------------------------
                            402 	.area XSEG    (XDATA)
   6000                     403 _input::
   6000                     404 	.ds 4
   6004                     405 _StartTime::
   6004                     406 	.ds 4
   6008                     407 _CurrentTime::
   6008                     408 	.ds 4
   600C                     409 _delay_startTime_1_1:
   600C                     410 	.ds 4
   6010                     411 _delay_currentTime_1_1:
   6010                     412 	.ds 4
   6014                     413 _PrintConLog_getLog_1_1:
   6014                     414 	.ds 5
   6019                     415 _log_newLog_1_1:
   6019                     416 	.ds 5
                            417 ;--------------------------------------------------------
                            418 ; absolute external ram data
                            419 ;--------------------------------------------------------
                            420 	.area XABS    (ABS,XDATA)
                            421 ;--------------------------------------------------------
                            422 ; external initialized ram data
                            423 ;--------------------------------------------------------
                            424 	.area XISEG   (XDATA)
   601E                     425 _service_code::
   601E                     426 	.ds 4
   6022                     427 _user_code::
   6022                     428 	.ds 4
   6026                     429 _xbuffer::
   6026                     430 	.ds 128
                            431 	.area HOME    (CODE)
                            432 	.area GSINIT0 (CODE)
                            433 	.area GSINIT1 (CODE)
                            434 	.area GSINIT2 (CODE)
                            435 	.area GSINIT3 (CODE)
                            436 	.area GSINIT4 (CODE)
                            437 	.area GSINIT5 (CODE)
                            438 	.area GSINIT  (CODE)
                            439 	.area GSFINAL (CODE)
                            440 	.area CSEG    (CODE)
                            441 ;--------------------------------------------------------
                            442 ; interrupt vector 
                            443 ;--------------------------------------------------------
                            444 	.area HOME    (CODE)
   2100                     445 __interrupt_vect:
   2100 02 21 08            446 	ljmp	__sdcc_gsinit_startup
                            447 ;--------------------------------------------------------
                            448 ; global & static initialisations
                            449 ;--------------------------------------------------------
                            450 	.area HOME    (CODE)
                            451 	.area GSINIT  (CODE)
                            452 	.area GSFINAL (CODE)
                            453 	.area GSINIT  (CODE)
                            454 	.globl __sdcc_gsinit_startup
                            455 	.globl __sdcc_program_startup
                            456 	.globl __start__stack
                            457 	.globl __mcs51_genXINIT
                            458 	.globl __mcs51_genXRAMCLEAR
                            459 	.globl __mcs51_genRAMCLEAR
                            460 ;	SRC/lab4.c:90: unsigned char* buffer = xbuffer;
   219B 75 1A 26            461 	mov	_buffer,#_xbuffer
   219E 75 1B 60            462 	mov	(_buffer + 1),#(_xbuffer >> 8)
   21A1 75 1C 00            463 	mov	(_buffer + 2),#0x00
                            464 ;	SRC/lab4.c:91: unsigned char num_log = 0;
   21A4 75 1D 00            465 	mov	_num_log,#0x00
                            466 	.area GSFINAL (CODE)
   21A7 02 21 03            467 	ljmp	__sdcc_program_startup
                            468 ;--------------------------------------------------------
                            469 ; Home
                            470 ;--------------------------------------------------------
                            471 	.area HOME    (CODE)
                            472 	.area HOME    (CODE)
   2103                     473 __sdcc_program_startup:
   2103 12 35 D5            474 	lcall	_main
                            475 ;	return from main will lock up
   2106 80 FE               476 	sjmp .
                            477 ;--------------------------------------------------------
                            478 ; code
                            479 ;--------------------------------------------------------
                            480 	.area CSEG    (CODE)
                            481 ;------------------------------------------------------------
                            482 ;Allocation info for local variables in function 'getTime'
                            483 ;------------------------------------------------------------
                            484 ;time                      Allocated to registers r2 r3 
                            485 ;------------------------------------------------------------
                            486 ;	SRC/lab4.c:109: unsigned char getTime(TIME xdata* time){
                            487 ;	-----------------------------------------
                            488 ;	 function getTime
                            489 ;	-----------------------------------------
   2C4C                     490 _getTime:
                    0002    491 	ar2 = 0x02
                    0003    492 	ar3 = 0x03
                    0004    493 	ar4 = 0x04
                    0005    494 	ar5 = 0x05
                    0006    495 	ar6 = 0x06
                    0007    496 	ar7 = 0x07
                    0000    497 	ar0 = 0x00
                    0001    498 	ar1 = 0x01
                            499 ;	SRC/lab4.c:110: if( GetTime(time) ){
   2C4C 12 25 28            500 	lcall	_GetTime
   2C4F E5 82               501 	mov	a,dpl
   2C51 60 0D               502 	jz	00102$
                            503 ;	SRC/lab4.c:111: message("GetTime failed"); //log(GETTIME_ERR);
   2C53 90 3E 1F            504 	mov	dptr,#__str_0
   2C56 75 F0 80            505 	mov	b,#0x80
   2C59 12 30 C1            506 	lcall	_message
                            507 ;	SRC/lab4.c:112: return 1;
   2C5C 75 82 01            508 	mov	dpl,#0x01
                            509 ;	SRC/lab4.c:114: return 0;
   2C5F 22                  510 	ret
   2C60                     511 00102$:
   2C60 75 82 00            512 	mov	dpl,#0x00
   2C63 22                  513 	ret
                            514 ;------------------------------------------------------------
                            515 ;Allocation info for local variables in function 'CheckTimeLimitHsec'
                            516 ;------------------------------------------------------------
                            517 ;curTime                   Allocated to stack - offset -4
                            518 ;limit                     Allocated to stack - offset -6
                            519 ;startTime                 Allocated to stack - offset 1
                            520 ;sTime                     Allocated to stack - offset 3
                            521 ;cTime                     Allocated to stack - offset 7
                            522 ;sloc0                     Allocated to stack - offset 11
                            523 ;sloc1                     Allocated to stack - offset 15
                            524 ;------------------------------------------------------------
                            525 ;	SRC/lab4.c:117: unsigned char CheckTimeLimitHsec(TIME xdata * startTime, TIME xdata * curTime, int limit){
                            526 ;	-----------------------------------------
                            527 ;	 function CheckTimeLimitHsec
                            528 ;	-----------------------------------------
   2C64                     529 _CheckTimeLimitHsec:
   2C64 C0 1E               530 	push	_bp
   2C66 85 81 1E            531 	mov	_bp,sp
   2C69 C0 82               532 	push	dpl
   2C6B C0 83               533 	push	dph
   2C6D E5 81               534 	mov	a,sp
   2C6F 24 12               535 	add	a,#0x12
   2C71 F5 81               536 	mov	sp,a
                            537 ;	SRC/lab4.c:119: unsigned long long sTime = startTime->hour*360000 + startTime->min*6000 + startTime->sec*100 + startTime->hsec; 
   2C73 A8 1E               538 	mov	r0,_bp
   2C75 08                  539 	inc	r0
   2C76 86 82               540 	mov	dpl,@r0
   2C78 08                  541 	inc	r0
   2C79 86 83               542 	mov	dph,@r0
   2C7B A3                  543 	inc	dptr
   2C7C A3                  544 	inc	dptr
   2C7D A3                  545 	inc	dptr
   2C7E E0                  546 	movx	a,@dptr
   2C7F FC                  547 	mov	r4,a
   2C80 7D 00               548 	mov	r5,#0x00
   2C82 7E 00               549 	mov	r6,#0x00
   2C84 7F 00               550 	mov	r7,#0x00
   2C86 C0 04               551 	push	ar4
   2C88 C0 05               552 	push	ar5
   2C8A C0 06               553 	push	ar6
   2C8C C0 07               554 	push	ar7
   2C8E 90 7E 40            555 	mov	dptr,#0x7E40
   2C91 75 F0 05            556 	mov	b,#0x05
   2C94 E4                  557 	clr	a
   2C95 12 3C BB            558 	lcall	__mullong
   2C98 C0 E0               559 	push	acc
   2C9A E5 1E               560 	mov	a,_bp
   2C9C 24 0B               561 	add	a,#0x0b
   2C9E F8                  562 	mov	r0,a
   2C9F D0 E0               563 	pop	acc
   2CA1 A6 82               564 	mov	@r0,dpl
   2CA3 08                  565 	inc	r0
   2CA4 A6 83               566 	mov	@r0,dph
   2CA6 08                  567 	inc	r0
   2CA7 A6 F0               568 	mov	@r0,b
   2CA9 08                  569 	inc	r0
   2CAA F6                  570 	mov	@r0,a
   2CAB E5 81               571 	mov	a,sp
   2CAD 24 FC               572 	add	a,#0xfc
   2CAF F5 81               573 	mov	sp,a
   2CB1 A8 1E               574 	mov	r0,_bp
   2CB3 08                  575 	inc	r0
   2CB4 86 82               576 	mov	dpl,@r0
   2CB6 08                  577 	inc	r0
   2CB7 86 83               578 	mov	dph,@r0
   2CB9 A3                  579 	inc	dptr
   2CBA A3                  580 	inc	dptr
   2CBB E0                  581 	movx	a,@dptr
   2CBC FA                  582 	mov	r2,a
   2CBD 7B 00               583 	mov	r3,#0x00
   2CBF C0 02               584 	push	ar2
   2CC1 C0 03               585 	push	ar3
   2CC3 90 17 70            586 	mov	dptr,#0x1770
   2CC6 12 3C 7D            587 	lcall	__mulint
   2CC9 AA 82               588 	mov	r2,dpl
   2CCB AB 83               589 	mov	r3,dph
   2CCD 15 81               590 	dec	sp
   2CCF 15 81               591 	dec	sp
   2CD1 EB                  592 	mov	a,r3
   2CD2 33                  593 	rlc	a
   2CD3 95 E0               594 	subb	a,acc
   2CD5 FC                  595 	mov	r4,a
   2CD6 FD                  596 	mov	r5,a
   2CD7 E5 1E               597 	mov	a,_bp
   2CD9 24 0B               598 	add	a,#0x0b
   2CDB F8                  599 	mov	r0,a
   2CDC EA                  600 	mov	a,r2
   2CDD 26                  601 	add	a,@r0
   2CDE F6                  602 	mov	@r0,a
   2CDF EB                  603 	mov	a,r3
   2CE0 08                  604 	inc	r0
   2CE1 36                  605 	addc	a,@r0
   2CE2 F6                  606 	mov	@r0,a
   2CE3 EC                  607 	mov	a,r4
   2CE4 08                  608 	inc	r0
   2CE5 36                  609 	addc	a,@r0
   2CE6 F6                  610 	mov	@r0,a
   2CE7 ED                  611 	mov	a,r5
   2CE8 08                  612 	inc	r0
   2CE9 36                  613 	addc	a,@r0
   2CEA F6                  614 	mov	@r0,a
   2CEB A8 1E               615 	mov	r0,_bp
   2CED 08                  616 	inc	r0
   2CEE 86 82               617 	mov	dpl,@r0
   2CF0 08                  618 	inc	r0
   2CF1 86 83               619 	mov	dph,@r0
   2CF3 A3                  620 	inc	dptr
   2CF4 E0                  621 	movx	a,@dptr
   2CF5 75 F0 64            622 	mov	b,#0x64
   2CF8 A4                  623 	mul	ab
   2CF9 FE                  624 	mov	r6,a
   2CFA E5 F0               625 	mov	a,b
   2CFC FF                  626 	mov	r7,a
   2CFD 33                  627 	rlc	a
   2CFE 95 E0               628 	subb	a,acc
   2D00 FA                  629 	mov	r2,a
   2D01 FB                  630 	mov	r3,a
   2D02 E5 1E               631 	mov	a,_bp
   2D04 24 0B               632 	add	a,#0x0b
   2D06 F8                  633 	mov	r0,a
   2D07 EE                  634 	mov	a,r6
   2D08 26                  635 	add	a,@r0
   2D09 FE                  636 	mov	r6,a
   2D0A EF                  637 	mov	a,r7
   2D0B 08                  638 	inc	r0
   2D0C 36                  639 	addc	a,@r0
   2D0D FF                  640 	mov	r7,a
   2D0E EA                  641 	mov	a,r2
   2D0F 08                  642 	inc	r0
   2D10 36                  643 	addc	a,@r0
   2D11 FA                  644 	mov	r2,a
   2D12 EB                  645 	mov	a,r3
   2D13 08                  646 	inc	r0
   2D14 36                  647 	addc	a,@r0
   2D15 FB                  648 	mov	r3,a
   2D16 A8 1E               649 	mov	r0,_bp
   2D18 08                  650 	inc	r0
   2D19 86 82               651 	mov	dpl,@r0
   2D1B 08                  652 	inc	r0
   2D1C 86 83               653 	mov	dph,@r0
   2D1E E0                  654 	movx	a,@dptr
   2D1F FC                  655 	mov	r4,a
   2D20 7D 00               656 	mov	r5,#0x00
   2D22 E5 1E               657 	mov	a,_bp
   2D24 24 0F               658 	add	a,#0x0f
   2D26 F8                  659 	mov	r0,a
   2D27 A6 04               660 	mov	@r0,ar4
   2D29 08                  661 	inc	r0
   2D2A A6 05               662 	mov	@r0,ar5
   2D2C ED                  663 	mov	a,r5
   2D2D 33                  664 	rlc	a
   2D2E 95 E0               665 	subb	a,acc
   2D30 08                  666 	inc	r0
   2D31 F6                  667 	mov	@r0,a
   2D32 08                  668 	inc	r0
   2D33 F6                  669 	mov	@r0,a
   2D34 E5 1E               670 	mov	a,_bp
   2D36 24 0F               671 	add	a,#0x0f
   2D38 F8                  672 	mov	r0,a
   2D39 A9 1E               673 	mov	r1,_bp
   2D3B 09                  674 	inc	r1
   2D3C 09                  675 	inc	r1
   2D3D 09                  676 	inc	r1
   2D3E E6                  677 	mov	a,@r0
   2D3F 2E                  678 	add	a,r6
   2D40 F7                  679 	mov	@r1,a
   2D41 08                  680 	inc	r0
   2D42 E6                  681 	mov	a,@r0
   2D43 3F                  682 	addc	a,r7
   2D44 09                  683 	inc	r1
   2D45 F7                  684 	mov	@r1,a
   2D46 08                  685 	inc	r0
   2D47 E6                  686 	mov	a,@r0
   2D48 3A                  687 	addc	a,r2
   2D49 09                  688 	inc	r1
   2D4A F7                  689 	mov	@r1,a
   2D4B 08                  690 	inc	r0
   2D4C E6                  691 	mov	a,@r0
   2D4D 3B                  692 	addc	a,r3
   2D4E 09                  693 	inc	r1
   2D4F F7                  694 	mov	@r1,a
                            695 ;	SRC/lab4.c:120: unsigned long long cTime = curTime->hour*360000   + curTime->min*6000   + curTime->sec*100 + startTime->hsec;
   2D50 E5 1E               696 	mov	a,_bp
   2D52 24 FC               697 	add	a,#0xfc
   2D54 F8                  698 	mov	r0,a
   2D55 86 06               699 	mov	ar6,@r0
   2D57 08                  700 	inc	r0
   2D58 86 07               701 	mov	ar7,@r0
   2D5A 8E 82               702 	mov	dpl,r6
   2D5C 8F 83               703 	mov	dph,r7
   2D5E A3                  704 	inc	dptr
   2D5F A3                  705 	inc	dptr
   2D60 A3                  706 	inc	dptr
   2D61 E0                  707 	movx	a,@dptr
   2D62 FA                  708 	mov	r2,a
   2D63 7B 00               709 	mov	r3,#0x00
   2D65 7C 00               710 	mov	r4,#0x00
   2D67 7D 00               711 	mov	r5,#0x00
   2D69 C0 06               712 	push	ar6
   2D6B C0 07               713 	push	ar7
   2D6D C0 02               714 	push	ar2
   2D6F C0 03               715 	push	ar3
   2D71 C0 04               716 	push	ar4
   2D73 C0 05               717 	push	ar5
   2D75 90 7E 40            718 	mov	dptr,#0x7E40
   2D78 75 F0 05            719 	mov	b,#0x05
   2D7B E4                  720 	clr	a
   2D7C 12 3C BB            721 	lcall	__mullong
   2D7F C0 E0               722 	push	acc
   2D81 E5 1E               723 	mov	a,_bp
   2D83 24 0B               724 	add	a,#0x0b
   2D85 F8                  725 	mov	r0,a
   2D86 D0 E0               726 	pop	acc
   2D88 A6 82               727 	mov	@r0,dpl
   2D8A 08                  728 	inc	r0
   2D8B A6 83               729 	mov	@r0,dph
   2D8D 08                  730 	inc	r0
   2D8E A6 F0               731 	mov	@r0,b
   2D90 08                  732 	inc	r0
   2D91 F6                  733 	mov	@r0,a
   2D92 E5 81               734 	mov	a,sp
   2D94 24 FC               735 	add	a,#0xfc
   2D96 F5 81               736 	mov	sp,a
   2D98 D0 07               737 	pop	ar7
   2D9A D0 06               738 	pop	ar6
   2D9C 8E 82               739 	mov	dpl,r6
   2D9E 8F 83               740 	mov	dph,r7
   2DA0 A3                  741 	inc	dptr
   2DA1 A3                  742 	inc	dptr
   2DA2 E0                  743 	movx	a,@dptr
   2DA3 FA                  744 	mov	r2,a
   2DA4 7B 00               745 	mov	r3,#0x00
   2DA6 C0 06               746 	push	ar6
   2DA8 C0 07               747 	push	ar7
   2DAA C0 02               748 	push	ar2
   2DAC C0 03               749 	push	ar3
   2DAE 90 17 70            750 	mov	dptr,#0x1770
   2DB1 12 3C 7D            751 	lcall	__mulint
   2DB4 AA 82               752 	mov	r2,dpl
   2DB6 AB 83               753 	mov	r3,dph
   2DB8 15 81               754 	dec	sp
   2DBA 15 81               755 	dec	sp
   2DBC D0 07               756 	pop	ar7
   2DBE D0 06               757 	pop	ar6
   2DC0 EB                  758 	mov	a,r3
   2DC1 33                  759 	rlc	a
   2DC2 95 E0               760 	subb	a,acc
   2DC4 FC                  761 	mov	r4,a
   2DC5 FD                  762 	mov	r5,a
   2DC6 E5 1E               763 	mov	a,_bp
   2DC8 24 0B               764 	add	a,#0x0b
   2DCA F8                  765 	mov	r0,a
   2DCB EA                  766 	mov	a,r2
   2DCC 26                  767 	add	a,@r0
   2DCD F6                  768 	mov	@r0,a
   2DCE EB                  769 	mov	a,r3
   2DCF 08                  770 	inc	r0
   2DD0 36                  771 	addc	a,@r0
   2DD1 F6                  772 	mov	@r0,a
   2DD2 EC                  773 	mov	a,r4
   2DD3 08                  774 	inc	r0
   2DD4 36                  775 	addc	a,@r0
   2DD5 F6                  776 	mov	@r0,a
   2DD6 ED                  777 	mov	a,r5
   2DD7 08                  778 	inc	r0
   2DD8 36                  779 	addc	a,@r0
   2DD9 F6                  780 	mov	@r0,a
   2DDA 8E 82               781 	mov	dpl,r6
   2DDC 8F 83               782 	mov	dph,r7
   2DDE A3                  783 	inc	dptr
   2DDF E0                  784 	movx	a,@dptr
   2DE0 75 F0 64            785 	mov	b,#0x64
   2DE3 A4                  786 	mul	ab
   2DE4 FE                  787 	mov	r6,a
   2DE5 E5 F0               788 	mov	a,b
   2DE7 FF                  789 	mov	r7,a
   2DE8 33                  790 	rlc	a
   2DE9 95 E0               791 	subb	a,acc
   2DEB FA                  792 	mov	r2,a
   2DEC FB                  793 	mov	r3,a
   2DED E5 1E               794 	mov	a,_bp
   2DEF 24 0B               795 	add	a,#0x0b
   2DF1 F8                  796 	mov	r0,a
   2DF2 EE                  797 	mov	a,r6
   2DF3 26                  798 	add	a,@r0
   2DF4 FE                  799 	mov	r6,a
   2DF5 EF                  800 	mov	a,r7
   2DF6 08                  801 	inc	r0
   2DF7 36                  802 	addc	a,@r0
   2DF8 FF                  803 	mov	r7,a
   2DF9 EA                  804 	mov	a,r2
   2DFA 08                  805 	inc	r0
   2DFB 36                  806 	addc	a,@r0
   2DFC FA                  807 	mov	r2,a
   2DFD EB                  808 	mov	a,r3
   2DFE 08                  809 	inc	r0
   2DFF 36                  810 	addc	a,@r0
   2E00 FB                  811 	mov	r3,a
   2E01 E5 1E               812 	mov	a,_bp
   2E03 24 0F               813 	add	a,#0x0f
   2E05 F8                  814 	mov	r0,a
   2E06 E6                  815 	mov	a,@r0
   2E07 2E                  816 	add	a,r6
   2E08 FE                  817 	mov	r6,a
   2E09 08                  818 	inc	r0
   2E0A E6                  819 	mov	a,@r0
   2E0B 3F                  820 	addc	a,r7
   2E0C FF                  821 	mov	r7,a
   2E0D 08                  822 	inc	r0
   2E0E E6                  823 	mov	a,@r0
   2E0F 3A                  824 	addc	a,r2
   2E10 FA                  825 	mov	r2,a
   2E11 08                  826 	inc	r0
   2E12 E6                  827 	mov	a,@r0
   2E13 3B                  828 	addc	a,r3
   2E14 FB                  829 	mov	r3,a
   2E15 E5 1E               830 	mov	a,_bp
   2E17 24 07               831 	add	a,#0x07
   2E19 F8                  832 	mov	r0,a
   2E1A A6 06               833 	mov	@r0,ar6
   2E1C 08                  834 	inc	r0
   2E1D A6 07               835 	mov	@r0,ar7
   2E1F 08                  836 	inc	r0
   2E20 A6 02               837 	mov	@r0,ar2
   2E22 08                  838 	inc	r0
   2E23 A6 03               839 	mov	@r0,ar3
                            840 ;	SRC/lab4.c:121: return cTime > sTime + limit;
   2E25 E5 1E               841 	mov	a,_bp
   2E27 24 FA               842 	add	a,#0xfa
   2E29 F8                  843 	mov	r0,a
   2E2A 86 04               844 	mov	ar4,@r0
   2E2C 08                  845 	inc	r0
   2E2D 86 05               846 	mov	ar5,@r0
   2E2F E6                  847 	mov	a,@r0
   2E30 33                  848 	rlc	a
   2E31 95 E0               849 	subb	a,acc
   2E33 FA                  850 	mov	r2,a
   2E34 FB                  851 	mov	r3,a
   2E35 A8 1E               852 	mov	r0,_bp
   2E37 08                  853 	inc	r0
   2E38 08                  854 	inc	r0
   2E39 08                  855 	inc	r0
   2E3A EC                  856 	mov	a,r4
   2E3B 26                  857 	add	a,@r0
   2E3C FC                  858 	mov	r4,a
   2E3D ED                  859 	mov	a,r5
   2E3E 08                  860 	inc	r0
   2E3F 36                  861 	addc	a,@r0
   2E40 FD                  862 	mov	r5,a
   2E41 EA                  863 	mov	a,r2
   2E42 08                  864 	inc	r0
   2E43 36                  865 	addc	a,@r0
   2E44 FA                  866 	mov	r2,a
   2E45 EB                  867 	mov	a,r3
   2E46 08                  868 	inc	r0
   2E47 36                  869 	addc	a,@r0
   2E48 FB                  870 	mov	r3,a
   2E49 E5 1E               871 	mov	a,_bp
   2E4B 24 07               872 	add	a,#0x07
   2E4D F8                  873 	mov	r0,a
   2E4E C3                  874 	clr	c
   2E4F EC                  875 	mov	a,r4
   2E50 96                  876 	subb	a,@r0
   2E51 ED                  877 	mov	a,r5
   2E52 08                  878 	inc	r0
   2E53 96                  879 	subb	a,@r0
   2E54 EA                  880 	mov	a,r2
   2E55 08                  881 	inc	r0
   2E56 96                  882 	subb	a,@r0
   2E57 EB                  883 	mov	a,r3
   2E58 08                  884 	inc	r0
   2E59 96                  885 	subb	a,@r0
   2E5A E4                  886 	clr	a
   2E5B 33                  887 	rlc	a
   2E5C F5 82               888 	mov	dpl,a
   2E5E 85 1E 81            889 	mov	sp,_bp
   2E61 D0 1E               890 	pop	_bp
   2E63 22                  891 	ret
                            892 ;------------------------------------------------------------
                            893 ;Allocation info for local variables in function 'CheckTimeLimitSec'
                            894 ;------------------------------------------------------------
                            895 ;curTime                   Allocated to stack - offset -4
                            896 ;limit                     Allocated to stack - offset -6
                            897 ;startTime                 Allocated to registers r2 r3 
                            898 ;------------------------------------------------------------
                            899 ;	SRC/lab4.c:123: unsigned char CheckTimeLimitSec(TIME xdata * startTime, TIME xdata * curTime, int limit){
                            900 ;	-----------------------------------------
                            901 ;	 function CheckTimeLimitSec
                            902 ;	-----------------------------------------
   2E64                     903 _CheckTimeLimitSec:
   2E64 C0 1E               904 	push	_bp
   2E66 85 81 1E            905 	mov	_bp,sp
   2E69 AA 82               906 	mov	r2,dpl
   2E6B AB 83               907 	mov	r3,dph
                            908 ;	SRC/lab4.c:124: return CheckTimeLimitHsec(startTime, curTime, limit*100);
   2E6D C0 02               909 	push	ar2
   2E6F C0 03               910 	push	ar3
   2E71 E5 1E               911 	mov	a,_bp
   2E73 24 FA               912 	add	a,#0xfa
   2E75 F8                  913 	mov	r0,a
   2E76 E6                  914 	mov	a,@r0
   2E77 C0 E0               915 	push	acc
   2E79 08                  916 	inc	r0
   2E7A E6                  917 	mov	a,@r0
   2E7B C0 E0               918 	push	acc
   2E7D 90 00 64            919 	mov	dptr,#0x0064
   2E80 12 3C 7D            920 	lcall	__mulint
   2E83 AC 82               921 	mov	r4,dpl
   2E85 AD 83               922 	mov	r5,dph
   2E87 15 81               923 	dec	sp
   2E89 15 81               924 	dec	sp
   2E8B D0 03               925 	pop	ar3
   2E8D D0 02               926 	pop	ar2
   2E8F C0 04               927 	push	ar4
   2E91 C0 05               928 	push	ar5
   2E93 E5 1E               929 	mov	a,_bp
   2E95 24 FC               930 	add	a,#0xfc
   2E97 F8                  931 	mov	r0,a
   2E98 E6                  932 	mov	a,@r0
   2E99 C0 E0               933 	push	acc
   2E9B 08                  934 	inc	r0
   2E9C E6                  935 	mov	a,@r0
   2E9D C0 E0               936 	push	acc
   2E9F 8A 82               937 	mov	dpl,r2
   2EA1 8B 83               938 	mov	dph,r3
   2EA3 12 2C 64            939 	lcall	_CheckTimeLimitHsec
   2EA6 E5 81               940 	mov	a,sp
   2EA8 24 FC               941 	add	a,#0xfc
   2EAA F5 81               942 	mov	sp,a
   2EAC D0 1E               943 	pop	_bp
   2EAE 22                  944 	ret
                            945 ;------------------------------------------------------------
                            946 ;Allocation info for local variables in function 'delay'
                            947 ;------------------------------------------------------------
                            948 ;hsec                      Allocated to registers r2 r3 
                            949 ;startTime                 Allocated with name '_delay_startTime_1_1'
                            950 ;currentTime               Allocated with name '_delay_currentTime_1_1'
                            951 ;------------------------------------------------------------
                            952 ;	SRC/lab4.c:126: void delay(int hsec){
                            953 ;	-----------------------------------------
                            954 ;	 function delay
                            955 ;	-----------------------------------------
   2EAF                     956 _delay:
   2EAF AA 82               957 	mov	r2,dpl
   2EB1 AB 83               958 	mov	r3,dph
                            959 ;	SRC/lab4.c:130: getTime( &startTime );
   2EB3 90 60 0C            960 	mov	dptr,#_delay_startTime_1_1
   2EB6 C0 02               961 	push	ar2
   2EB8 C0 03               962 	push	ar3
   2EBA 12 2C 4C            963 	lcall	_getTime
   2EBD D0 03               964 	pop	ar3
   2EBF D0 02               965 	pop	ar2
                            966 ;	SRC/lab4.c:131: do{ getTime( &currentTime ); }
   2EC1                     967 00101$:
   2EC1 90 60 10            968 	mov	dptr,#_delay_currentTime_1_1
   2EC4 C0 02               969 	push	ar2
   2EC6 C0 03               970 	push	ar3
   2EC8 12 2C 4C            971 	lcall	_getTime
   2ECB D0 03               972 	pop	ar3
   2ECD D0 02               973 	pop	ar2
                            974 ;	SRC/lab4.c:132: while( !CheckTimeLimitHsec( &startTime, &currentTime, hsec ) );
   2ECF C0 02               975 	push	ar2
   2ED1 C0 03               976 	push	ar3
   2ED3 C0 02               977 	push	ar2
   2ED5 C0 03               978 	push	ar3
   2ED7 74 10               979 	mov	a,#_delay_currentTime_1_1
   2ED9 C0 E0               980 	push	acc
   2EDB 74 60               981 	mov	a,#(_delay_currentTime_1_1 >> 8)
   2EDD C0 E0               982 	push	acc
   2EDF 90 60 0C            983 	mov	dptr,#_delay_startTime_1_1
   2EE2 12 2C 64            984 	lcall	_CheckTimeLimitHsec
   2EE5 AC 82               985 	mov	r4,dpl
   2EE7 E5 81               986 	mov	a,sp
   2EE9 24 FC               987 	add	a,#0xfc
   2EEB F5 81               988 	mov	sp,a
   2EED D0 03               989 	pop	ar3
   2EEF D0 02               990 	pop	ar2
   2EF1 EC                  991 	mov	a,r4
   2EF2 60 CD               992 	jz	00101$
   2EF4 22                  993 	ret
                            994 ;------------------------------------------------------------
                            995 ;Allocation info for local variables in function 'PrintString'
                            996 ;------------------------------------------------------------
                            997 ;s                         Allocated to stack - offset 1
                            998 ;i                         Allocated to registers r5 r6 
                            999 ;isEnd                     Allocated to registers b0 
                           1000 ;------------------------------------------------------------
                           1001 ;	SRC/lab4.c:135: void PrintString(char* s){
                           1002 ;	-----------------------------------------
                           1003 ;	 function PrintString
                           1004 ;	-----------------------------------------
   2EF5                    1005 _PrintString:
   2EF5 C0 1E              1006 	push	_bp
   2EF7 85 81 1E           1007 	mov	_bp,sp
   2EFA C0 82              1008 	push	dpl
   2EFC C0 83              1009 	push	dph
   2EFE C0 F0              1010 	push	b
                           1011 ;	SRC/lab4.c:137: bit isEnd = 0;
   2F00 C2 08              1012 	clr	b0
                           1013 ;	SRC/lab4.c:138: for(i=0; i<16; i++){
   2F02 7D 00              1014 	mov	r5,#0x00
   2F04 7E 00              1015 	mov	r6,#0x00
   2F06                    1016 00106$:
   2F06 C3                 1017 	clr	c
   2F07 ED                 1018 	mov	a,r5
   2F08 94 10              1019 	subb	a,#0x10
   2F0A EE                 1020 	mov	a,r6
   2F0B 64 80              1021 	xrl	a,#0x80
   2F0D 94 80              1022 	subb	a,#0x80
   2F0F 50 5F              1023 	jnc	00110$
                           1024 ;	SRC/lab4.c:139: if(s[i]==0){isEnd=1;}
   2F11 A8 1E              1025 	mov	r0,_bp
   2F13 08                 1026 	inc	r0
   2F14 ED                 1027 	mov	a,r5
   2F15 26                 1028 	add	a,@r0
   2F16 FF                 1029 	mov	r7,a
   2F17 EE                 1030 	mov	a,r6
   2F18 08                 1031 	inc	r0
   2F19 36                 1032 	addc	a,@r0
   2F1A FA                 1033 	mov	r2,a
   2F1B 08                 1034 	inc	r0
   2F1C 86 03              1035 	mov	ar3,@r0
   2F1E 8F 82              1036 	mov	dpl,r7
   2F20 8A 83              1037 	mov	dph,r2
   2F22 8B F0              1038 	mov	b,r3
   2F24 12 3C 9F           1039 	lcall	__gptrget
   2F27 70 02              1040 	jnz	00102$
   2F29 D2 08              1041 	setb	b0
   2F2B                    1042 00102$:
                           1043 ;	SRC/lab4.c:140: if(isEnd) LCD_Putch(' '); else LCD_Putch(s[i]);
   2F2B 30 08 14           1044 	jnb	b0,00104$
   2F2E 75 82 20           1045 	mov	dpl,#0x20
   2F31 C0 05              1046 	push	ar5
   2F33 C0 06              1047 	push	ar6
   2F35 C0 21              1048 	push	bits
   2F37 12 23 13           1049 	lcall	_LCD_Putch
   2F3A D0 21              1050 	pop	bits
   2F3C D0 06              1051 	pop	ar6
   2F3E D0 05              1052 	pop	ar5
   2F40 80 27              1053 	sjmp	00108$
   2F42                    1054 00104$:
   2F42 A8 1E              1055 	mov	r0,_bp
   2F44 08                 1056 	inc	r0
   2F45 ED                 1057 	mov	a,r5
   2F46 26                 1058 	add	a,@r0
   2F47 FA                 1059 	mov	r2,a
   2F48 EE                 1060 	mov	a,r6
   2F49 08                 1061 	inc	r0
   2F4A 36                 1062 	addc	a,@r0
   2F4B FB                 1063 	mov	r3,a
   2F4C 08                 1064 	inc	r0
   2F4D 86 04              1065 	mov	ar4,@r0
   2F4F 8A 82              1066 	mov	dpl,r2
   2F51 8B 83              1067 	mov	dph,r3
   2F53 8C F0              1068 	mov	b,r4
   2F55 12 3C 9F           1069 	lcall	__gptrget
   2F58 F5 82              1070 	mov	dpl,a
   2F5A C0 05              1071 	push	ar5
   2F5C C0 06              1072 	push	ar6
   2F5E C0 21              1073 	push	bits
   2F60 12 23 13           1074 	lcall	_LCD_Putch
   2F63 D0 21              1075 	pop	bits
   2F65 D0 06              1076 	pop	ar6
   2F67 D0 05              1077 	pop	ar5
   2F69                    1078 00108$:
                           1079 ;	SRC/lab4.c:138: for(i=0; i<16; i++){
   2F69 0D                 1080 	inc	r5
   2F6A BD 00 99           1081 	cjne	r5,#0x00,00106$
   2F6D 0E                 1082 	inc	r6
   2F6E 80 96              1083 	sjmp	00106$
   2F70                    1084 00110$:
   2F70 85 1E 81           1085 	mov	sp,_bp
   2F73 D0 1E              1086 	pop	_bp
   2F75 22                 1087 	ret
                           1088 ;------------------------------------------------------------
                           1089 ;Allocation info for local variables in function 'LCD_TypeAnimation'
                           1090 ;------------------------------------------------------------
                           1091 ;s                         Allocated to stack - offset 1
                           1092 ;ptr                       Allocated to registers r5 r6 r7 
                           1093 ;i                         Allocated to stack - offset 7
                           1094 ;isEnd                     Allocated to stack - offset 9
                           1095 ;length                    Allocated to registers 
                           1096 ;y                         Allocated to registers b0 
                           1097 ;------------------------------------------------------------
                           1098 ;	SRC/lab4.c:155: void LCD_TypeAnimation(char* s){
                           1099 ;	-----------------------------------------
                           1100 ;	 function LCD_TypeAnimation
                           1101 ;	-----------------------------------------
   2F76                    1102 _LCD_TypeAnimation:
   2F76 C0 1E              1103 	push	_bp
   2F78 85 81 1E           1104 	mov	_bp,sp
   2F7B C0 82              1105 	push	dpl
   2F7D C0 83              1106 	push	dph
   2F7F C0 F0              1107 	push	b
                           1108 ;	SRC/lab4.c:161: bit y = LCD_GetY();
   2F81 12 23 DC           1109 	lcall	_LCD_GetY
   2F84 92 08              1110 	mov	b0,c
                           1111 ;	SRC/lab4.c:165: LCD_Type("                ");
   2F86 90 3E 2E           1112 	mov	dptr,#__str_1
   2F89 75 F0 80           1113 	mov	b,#0x80
   2F8C C0 21              1114 	push	bits
   2F8E 12 23 84           1115 	lcall	_LCD_Type
   2F91 D0 21              1116 	pop	bits
                           1117 ;	SRC/lab4.c:166: LCD_GotoXY(0,y);
   2F93 A2 08              1118 	mov	c,b0
   2F95 92 F0              1119 	mov	b[0],c
   2F97 C0 21              1120 	push	bits
   2F99 85 F0 21           1121 	mov	bits,b
   2F9C 75 82 00           1122 	mov	dpl,#0x00
   2F9F 12 23 4D           1123 	lcall	_LCD_GotoXY
   2FA2 D0 21              1124 	pop	bits
                           1125 ;	SRC/lab4.c:167: PrintString(ptr++);
   2FA4 A8 1E              1126 	mov	r0,_bp
   2FA6 08                 1127 	inc	r0
   2FA7 74 01              1128 	mov	a,#0x01
   2FA9 26                 1129 	add	a,@r0
   2FAA FD                 1130 	mov	r5,a
   2FAB E4                 1131 	clr	a
   2FAC 08                 1132 	inc	r0
   2FAD 36                 1133 	addc	a,@r0
   2FAE FE                 1134 	mov	r6,a
   2FAF 08                 1135 	inc	r0
   2FB0 86 07              1136 	mov	ar7,@r0
   2FB2 A8 1E              1137 	mov	r0,_bp
   2FB4 08                 1138 	inc	r0
   2FB5 86 82              1139 	mov	dpl,@r0
   2FB7 08                 1140 	inc	r0
   2FB8 86 83              1141 	mov	dph,@r0
   2FBA 08                 1142 	inc	r0
   2FBB 86 F0              1143 	mov	b,@r0
   2FBD C0 05              1144 	push	ar5
   2FBF C0 06              1145 	push	ar6
   2FC1 C0 07              1146 	push	ar7
   2FC3 C0 21              1147 	push	bits
   2FC5 12 2E F5           1148 	lcall	_PrintString
   2FC8 D0 21              1149 	pop	bits
                           1150 ;	SRC/lab4.c:168: getTime( &StartTime );
   2FCA 90 60 04           1151 	mov	dptr,#_StartTime
   2FCD C0 21              1152 	push	bits
   2FCF 12 2C 4C           1153 	lcall	_getTime
   2FD2 D0 21              1154 	pop	bits
   2FD4 D0 07              1155 	pop	ar7
   2FD6 D0 06              1156 	pop	ar6
   2FD8 D0 05              1157 	pop	ar5
                           1158 ;	SRC/lab4.c:170: while( ! ScanKBOnce(&input[0]) ){
   2FDA                    1159 00106$:
   2FDA 90 60 00           1160 	mov	dptr,#_input
   2FDD 75 F0 00           1161 	mov	b,#0x00
   2FE0 C0 05              1162 	push	ar5
   2FE2 C0 06              1163 	push	ar6
   2FE4 C0 07              1164 	push	ar7
   2FE6 C0 21              1165 	push	bits
   2FE8 12 23 DF           1166 	lcall	_ScanKBOnce
   2FEB D0 21              1167 	pop	bits
   2FED D0 07              1168 	pop	ar7
   2FEF D0 06              1169 	pop	ar6
   2FF1 D0 05              1170 	pop	ar5
   2FF3 50 03              1171 	jnc	00115$
   2FF5 02 30 BB           1172 	ljmp	00109$
   2FF8                    1173 00115$:
                           1174 ;	SRC/lab4.c:172: getTime( &CurrentTime );
   2FF8 90 60 08           1175 	mov	dptr,#_CurrentTime
   2FFB C0 05              1176 	push	ar5
   2FFD C0 06              1177 	push	ar6
   2FFF C0 07              1178 	push	ar7
   3001 C0 21              1179 	push	bits
   3003 12 2C 4C           1180 	lcall	_getTime
   3006 D0 21              1181 	pop	bits
                           1182 ;	SRC/lab4.c:173: if(CheckTimeLimitHsec( &StartTime, &CurrentTime, ANIMATION_DELAY_TIME )){
   3008 C0 21              1183 	push	bits
   300A 74 28              1184 	mov	a,#0x28
   300C C0 E0              1185 	push	acc
   300E E4                 1186 	clr	a
   300F C0 E0              1187 	push	acc
   3011 74 08              1188 	mov	a,#_CurrentTime
   3013 C0 E0              1189 	push	acc
   3015 74 60              1190 	mov	a,#(_CurrentTime >> 8)
   3017 C0 E0              1191 	push	acc
   3019 90 60 04           1192 	mov	dptr,#_StartTime
   301C 12 2C 64           1193 	lcall	_CheckTimeLimitHsec
   301F AA 82              1194 	mov	r2,dpl
   3021 E5 81              1195 	mov	a,sp
   3023 24 FC              1196 	add	a,#0xfc
   3025 F5 81              1197 	mov	sp,a
   3027 D0 21              1198 	pop	bits
   3029 D0 07              1199 	pop	ar7
   302B D0 06              1200 	pop	ar6
   302D D0 05              1201 	pop	ar5
   302F EA                 1202 	mov	a,r2
   3030 60 A8              1203 	jz	00106$
                           1204 ;	SRC/lab4.c:174: getTime( &StartTime );
   3032 90 60 04           1205 	mov	dptr,#_StartTime
   3035 C0 05              1206 	push	ar5
   3037 C0 06              1207 	push	ar6
   3039 C0 07              1208 	push	ar7
   303B C0 21              1209 	push	bits
   303D 12 2C 4C           1210 	lcall	_getTime
   3040 D0 21              1211 	pop	bits
   3042 D0 07              1212 	pop	ar7
   3044 D0 06              1213 	pop	ar6
   3046 D0 05              1214 	pop	ar5
                           1215 ;	SRC/lab4.c:175: if(ptr[15]){
   3048 74 0F              1216 	mov	a,#0x0F
   304A 2D                 1217 	add	a,r5
   304B FA                 1218 	mov	r2,a
   304C E4                 1219 	clr	a
   304D 3E                 1220 	addc	a,r6
   304E FB                 1221 	mov	r3,a
   304F 8F 04              1222 	mov	ar4,r7
   3051 8A 82              1223 	mov	dpl,r2
   3053 8B 83              1224 	mov	dph,r3
   3055 8C F0              1225 	mov	b,r4
   3057 12 3C 9F           1226 	lcall	__gptrget
   305A 60 51              1227 	jz	00102$
                           1228 ;	SRC/lab4.c:176: LCD_Type("                ");
   305C 90 3E 2E           1229 	mov	dptr,#__str_1
   305F 75 F0 80           1230 	mov	b,#0x80
   3062 C0 05              1231 	push	ar5
   3064 C0 06              1232 	push	ar6
   3066 C0 07              1233 	push	ar7
   3068 C0 21              1234 	push	bits
   306A 12 23 84           1235 	lcall	_LCD_Type
   306D D0 21              1236 	pop	bits
                           1237 ;	SRC/lab4.c:177: LCD_GotoXY(0,y);
   306F A2 08              1238 	mov	c,b0
   3071 92 F0              1239 	mov	b[0],c
   3073 C0 21              1240 	push	bits
   3075 85 F0 21           1241 	mov	bits,b
   3078 75 82 00           1242 	mov	dpl,#0x00
   307B 12 23 4D           1243 	lcall	_LCD_GotoXY
   307E D0 21              1244 	pop	bits
   3080 D0 07              1245 	pop	ar7
   3082 D0 06              1246 	pop	ar6
   3084 D0 05              1247 	pop	ar5
                           1248 ;	SRC/lab4.c:178: PrintString(ptr++);
   3086 8D 02              1249 	mov	ar2,r5
   3088 8E 03              1250 	mov	ar3,r6
   308A 8F 04              1251 	mov	ar4,r7
   308C 0D                 1252 	inc	r5
   308D BD 00 01           1253 	cjne	r5,#0x00,00118$
   3090 0E                 1254 	inc	r6
   3091                    1255 00118$:
   3091 8A 82              1256 	mov	dpl,r2
   3093 8B 83              1257 	mov	dph,r3
   3095 8C F0              1258 	mov	b,r4
   3097 C0 05              1259 	push	ar5
   3099 C0 06              1260 	push	ar6
   309B C0 07              1261 	push	ar7
   309D C0 21              1262 	push	bits
   309F 12 2E F5           1263 	lcall	_PrintString
   30A2 D0 21              1264 	pop	bits
   30A4 D0 07              1265 	pop	ar7
   30A6 D0 06              1266 	pop	ar6
   30A8 D0 05              1267 	pop	ar5
   30AA 02 2F DA           1268 	ljmp	00106$
   30AD                    1269 00102$:
                           1270 ;	SRC/lab4.c:181: ptr = s;
   30AD A8 1E              1271 	mov	r0,_bp
   30AF 08                 1272 	inc	r0
   30B0 86 05              1273 	mov	ar5,@r0
   30B2 08                 1274 	inc	r0
   30B3 86 06              1275 	mov	ar6,@r0
   30B5 08                 1276 	inc	r0
   30B6 86 07              1277 	mov	ar7,@r0
   30B8 02 2F DA           1278 	ljmp	00106$
   30BB                    1279 00109$:
   30BB 85 1E 81           1280 	mov	sp,_bp
   30BE D0 1E              1281 	pop	_bp
   30C0 22                 1282 	ret
                           1283 ;------------------------------------------------------------
                           1284 ;Allocation info for local variables in function 'message'
                           1285 ;------------------------------------------------------------
                           1286 ;msg                       Allocated to registers r2 r3 r4 
                           1287 ;------------------------------------------------------------
                           1288 ;	SRC/lab4.c:188: void message(unsigned char*  msg){
                           1289 ;	-----------------------------------------
                           1290 ;	 function message
                           1291 ;	-----------------------------------------
   30C1                    1292 _message:
   30C1 AA 82              1293 	mov	r2,dpl
   30C3 AB 83              1294 	mov	r3,dph
   30C5 AC F0              1295 	mov	r4,b
                           1296 ;	SRC/lab4.c:189: LCD_Clear();
   30C7 C0 02              1297 	push	ar2
   30C9 C0 03              1298 	push	ar3
   30CB C0 04              1299 	push	ar4
   30CD 12 22 2F           1300 	lcall	_LCD_Clear
   30D0 D0 04              1301 	pop	ar4
   30D2 D0 03              1302 	pop	ar3
   30D4 D0 02              1303 	pop	ar2
                           1304 ;	SRC/lab4.c:190: LCD_Type(msg); 
   30D6 8A 82              1305 	mov	dpl,r2
   30D8 8B 83              1306 	mov	dph,r3
   30DA 8C F0              1307 	mov	b,r4
   30DC C0 02              1308 	push	ar2
   30DE C0 03              1309 	push	ar3
   30E0 C0 04              1310 	push	ar4
   30E2 12 23 84           1311 	lcall	_LCD_Type
   30E5 D0 04              1312 	pop	ar4
   30E7 D0 03              1313 	pop	ar3
   30E9 D0 02              1314 	pop	ar2
                           1315 ;	SRC/lab4.c:191: Type(msg);
   30EB 8A 82              1316 	mov	dpl,r2
   30ED 8B 83              1317 	mov	dph,r3
   30EF 8C F0              1318 	mov	b,r4
   30F1 12 24 E3           1319 	lcall	_Type
                           1320 ;	SRC/lab4.c:192: Type("\r\n");
   30F4 90 3E 3F           1321 	mov	dptr,#__str_2
   30F7 75 F0 80           1322 	mov	b,#0x80
   30FA 12 24 E3           1323 	lcall	_Type
                           1324 ;	SRC/lab4.c:194: delay(DISPLAY_MESSAGE_DELAY_TIME);
   30FD 90 01 2C           1325 	mov	dptr,#0x012C
   3100 02 2E AF           1326 	ljmp	_delay
                           1327 ;------------------------------------------------------------
                           1328 ;Allocation info for local variables in function 'dip'
                           1329 ;------------------------------------------------------------
                           1330 ;------------------------------------------------------------
                           1331 ;	SRC/lab4.c:198: unsigned char dip(){
                           1332 ;	-----------------------------------------
                           1333 ;	 function dip
                           1334 ;	-----------------------------------------
   3103                    1335 _dip:
                           1336 ;	SRC/lab4.c:199: return ReadMax(EXT_LO);
   3103 90 00 02           1337 	mov	dptr,#0x0002
   3106 02 21 C0           1338 	ljmp	_ReadMax
                           1339 ;------------------------------------------------------------
                           1340 ;Allocation info for local variables in function 'PrintTime'
                           1341 ;------------------------------------------------------------
                           1342 ;buffer                    Allocated to stack - offset -5
                           1343 ;time                      Allocated to stack - offset 1
                           1344 ;i                         Allocated to registers 
                           1345 ;sloc0                     Allocated to stack - offset 5
                           1346 ;sloc1                     Allocated to stack - offset 4
                           1347 ;------------------------------------------------------------
                           1348 ;	SRC/lab4.c:201: unsigned char* PrintTime(TIME* time, unsigned char* buffer){
                           1349 ;	-----------------------------------------
                           1350 ;	 function PrintTime
                           1351 ;	-----------------------------------------
   3109                    1352 _PrintTime:
   3109 C0 1E              1353 	push	_bp
   310B 85 81 1E           1354 	mov	_bp,sp
   310E C0 82              1355 	push	dpl
   3110 C0 83              1356 	push	dph
   3112 C0 F0              1357 	push	b
   3114 05 81              1358 	inc	sp
   3116 05 81              1359 	inc	sp
   3118 05 81              1360 	inc	sp
                           1361 ;	SRC/lab4.c:204: buffer[i++] = (time->hour / 10 % 10) + '0';
   311A E5 1E              1362 	mov	a,_bp
   311C 24 FB              1363 	add	a,#0xfb
   311E F8                 1364 	mov	r0,a
   311F 86 05              1365 	mov	ar5,@r0
   3121 08                 1366 	inc	r0
   3122 86 06              1367 	mov	ar6,@r0
   3124 08                 1368 	inc	r0
   3125 86 07              1369 	mov	ar7,@r0
   3127 A8 1E              1370 	mov	r0,_bp
   3129 08                 1371 	inc	r0
   312A 74 03              1372 	mov	a,#0x03
   312C 26                 1373 	add	a,@r0
   312D FA                 1374 	mov	r2,a
   312E E4                 1375 	clr	a
   312F 08                 1376 	inc	r0
   3130 36                 1377 	addc	a,@r0
   3131 FB                 1378 	mov	r3,a
   3132 08                 1379 	inc	r0
   3133 86 04              1380 	mov	ar4,@r0
   3135 8A 82              1381 	mov	dpl,r2
   3137 8B 83              1382 	mov	dph,r3
   3139 8C F0              1383 	mov	b,r4
   313B 12 3C 9F           1384 	lcall	__gptrget
   313E FA                 1385 	mov	r2,a
   313F 75 F0 0A           1386 	mov	b,#0x0A
   3142 84                 1387 	div	ab
   3143 75 F0 0A           1388 	mov	b,#0x0A
   3146 84                 1389 	div	ab
   3147 E5 F0              1390 	mov	a,b
   3149 24 30              1391 	add	a,#0x30
   314B 8D 82              1392 	mov	dpl,r5
   314D 8E 83              1393 	mov	dph,r6
   314F 8F F0              1394 	mov	b,r7
   3151 12 3C 64           1395 	lcall	__gptrput
                           1396 ;	SRC/lab4.c:205: buffer[i++] = (time->hour % 10) + '0';
   3154 E5 1E              1397 	mov	a,_bp
   3156 24 04              1398 	add	a,#0x04
   3158 F8                 1399 	mov	r0,a
   3159 74 01              1400 	mov	a,#0x01
   315B 2D                 1401 	add	a,r5
   315C F6                 1402 	mov	@r0,a
   315D E4                 1403 	clr	a
   315E 3E                 1404 	addc	a,r6
   315F 08                 1405 	inc	r0
   3160 F6                 1406 	mov	@r0,a
   3161 08                 1407 	inc	r0
   3162 A6 07              1408 	mov	@r0,ar7
   3164 75 F0 0A           1409 	mov	b,#0x0A
   3167 EA                 1410 	mov	a,r2
   3168 84                 1411 	div	ab
   3169 E5 F0              1412 	mov	a,b
   316B 24 30              1413 	add	a,#0x30
   316D FA                 1414 	mov	r2,a
   316E E5 1E              1415 	mov	a,_bp
   3170 24 04              1416 	add	a,#0x04
   3172 F8                 1417 	mov	r0,a
   3173 86 82              1418 	mov	dpl,@r0
   3175 08                 1419 	inc	r0
   3176 86 83              1420 	mov	dph,@r0
   3178 08                 1421 	inc	r0
   3179 86 F0              1422 	mov	b,@r0
   317B EA                 1423 	mov	a,r2
   317C 12 3C 64           1424 	lcall	__gptrput
                           1425 ;	SRC/lab4.c:206: buffer[i++] = ':';
   317F 74 02              1426 	mov	a,#0x02
   3181 2D                 1427 	add	a,r5
   3182 FA                 1428 	mov	r2,a
   3183 E4                 1429 	clr	a
   3184 3E                 1430 	addc	a,r6
   3185 FB                 1431 	mov	r3,a
   3186 8F 04              1432 	mov	ar4,r7
   3188 8A 82              1433 	mov	dpl,r2
   318A 8B 83              1434 	mov	dph,r3
   318C 8C F0              1435 	mov	b,r4
   318E 74 3A              1436 	mov	a,#0x3A
   3190 12 3C 64           1437 	lcall	__gptrput
                           1438 ;	SRC/lab4.c:209: buffer[i++] = (time->min / 10 % 10) + '0';
   3193 E5 1E              1439 	mov	a,_bp
   3195 24 04              1440 	add	a,#0x04
   3197 F8                 1441 	mov	r0,a
   3198 74 03              1442 	mov	a,#0x03
   319A 2D                 1443 	add	a,r5
   319B F6                 1444 	mov	@r0,a
   319C E4                 1445 	clr	a
   319D 3E                 1446 	addc	a,r6
   319E 08                 1447 	inc	r0
   319F F6                 1448 	mov	@r0,a
   31A0 08                 1449 	inc	r0
   31A1 A6 07              1450 	mov	@r0,ar7
   31A3 A8 1E              1451 	mov	r0,_bp
   31A5 08                 1452 	inc	r0
   31A6 74 02              1453 	mov	a,#0x02
   31A8 26                 1454 	add	a,@r0
   31A9 FA                 1455 	mov	r2,a
   31AA E4                 1456 	clr	a
   31AB 08                 1457 	inc	r0
   31AC 36                 1458 	addc	a,@r0
   31AD FB                 1459 	mov	r3,a
   31AE 08                 1460 	inc	r0
   31AF 86 04              1461 	mov	ar4,@r0
   31B1 8A 82              1462 	mov	dpl,r2
   31B3 8B 83              1463 	mov	dph,r3
   31B5 8C F0              1464 	mov	b,r4
   31B7 12 3C 9F           1465 	lcall	__gptrget
   31BA FA                 1466 	mov	r2,a
   31BB 75 F0 0A           1467 	mov	b,#0x0A
   31BE 84                 1468 	div	ab
   31BF 75 F0 0A           1469 	mov	b,#0x0A
   31C2 84                 1470 	div	ab
   31C3 E5 F0              1471 	mov	a,b
   31C5 24 30              1472 	add	a,#0x30
   31C7 FB                 1473 	mov	r3,a
   31C8 E5 1E              1474 	mov	a,_bp
   31CA 24 04              1475 	add	a,#0x04
   31CC F8                 1476 	mov	r0,a
   31CD 86 82              1477 	mov	dpl,@r0
   31CF 08                 1478 	inc	r0
   31D0 86 83              1479 	mov	dph,@r0
   31D2 08                 1480 	inc	r0
   31D3 86 F0              1481 	mov	b,@r0
   31D5 EB                 1482 	mov	a,r3
   31D6 12 3C 64           1483 	lcall	__gptrput
                           1484 ;	SRC/lab4.c:210: buffer[i++] = (time->min % 10) + '0';
   31D9 E5 1E              1485 	mov	a,_bp
   31DB 24 04              1486 	add	a,#0x04
   31DD F8                 1487 	mov	r0,a
   31DE 74 04              1488 	mov	a,#0x04
   31E0 2D                 1489 	add	a,r5
   31E1 F6                 1490 	mov	@r0,a
   31E2 E4                 1491 	clr	a
   31E3 3E                 1492 	addc	a,r6
   31E4 08                 1493 	inc	r0
   31E5 F6                 1494 	mov	@r0,a
   31E6 08                 1495 	inc	r0
   31E7 A6 07              1496 	mov	@r0,ar7
   31E9 75 F0 0A           1497 	mov	b,#0x0A
   31EC EA                 1498 	mov	a,r2
   31ED 84                 1499 	div	ab
   31EE E5 F0              1500 	mov	a,b
   31F0 24 30              1501 	add	a,#0x30
   31F2 FA                 1502 	mov	r2,a
   31F3 E5 1E              1503 	mov	a,_bp
   31F5 24 04              1504 	add	a,#0x04
   31F7 F8                 1505 	mov	r0,a
   31F8 86 82              1506 	mov	dpl,@r0
   31FA 08                 1507 	inc	r0
   31FB 86 83              1508 	mov	dph,@r0
   31FD 08                 1509 	inc	r0
   31FE 86 F0              1510 	mov	b,@r0
   3200 EA                 1511 	mov	a,r2
   3201 12 3C 64           1512 	lcall	__gptrput
                           1513 ;	SRC/lab4.c:211: buffer[i++] = ':';
   3204 74 05              1514 	mov	a,#0x05
   3206 2D                 1515 	add	a,r5
   3207 FA                 1516 	mov	r2,a
   3208 E4                 1517 	clr	a
   3209 3E                 1518 	addc	a,r6
   320A FB                 1519 	mov	r3,a
   320B 8F 04              1520 	mov	ar4,r7
   320D 8A 82              1521 	mov	dpl,r2
   320F 8B 83              1522 	mov	dph,r3
   3211 8C F0              1523 	mov	b,r4
   3213 74 3A              1524 	mov	a,#0x3A
   3215 12 3C 64           1525 	lcall	__gptrput
                           1526 ;	SRC/lab4.c:214: buffer[i++] = (time->sec / 10 % 10) + '0';
   3218 E5 1E              1527 	mov	a,_bp
   321A 24 04              1528 	add	a,#0x04
   321C F8                 1529 	mov	r0,a
   321D 74 06              1530 	mov	a,#0x06
   321F 2D                 1531 	add	a,r5
   3220 F6                 1532 	mov	@r0,a
   3221 E4                 1533 	clr	a
   3222 3E                 1534 	addc	a,r6
   3223 08                 1535 	inc	r0
   3224 F6                 1536 	mov	@r0,a
   3225 08                 1537 	inc	r0
   3226 A6 07              1538 	mov	@r0,ar7
   3228 A8 1E              1539 	mov	r0,_bp
   322A 08                 1540 	inc	r0
   322B 74 01              1541 	mov	a,#0x01
   322D 26                 1542 	add	a,@r0
   322E FA                 1543 	mov	r2,a
   322F E4                 1544 	clr	a
   3230 08                 1545 	inc	r0
   3231 36                 1546 	addc	a,@r0
   3232 FB                 1547 	mov	r3,a
   3233 08                 1548 	inc	r0
   3234 86 04              1549 	mov	ar4,@r0
   3236 8A 82              1550 	mov	dpl,r2
   3238 8B 83              1551 	mov	dph,r3
   323A 8C F0              1552 	mov	b,r4
   323C 12 3C 9F           1553 	lcall	__gptrget
   323F FA                 1554 	mov	r2,a
   3240 75 F0 0A           1555 	mov	b,#0x0A
   3243 84                 1556 	div	ab
   3244 75 F0 0A           1557 	mov	b,#0x0A
   3247 84                 1558 	div	ab
   3248 E5 F0              1559 	mov	a,b
   324A 24 30              1560 	add	a,#0x30
   324C FB                 1561 	mov	r3,a
   324D E5 1E              1562 	mov	a,_bp
   324F 24 04              1563 	add	a,#0x04
   3251 F8                 1564 	mov	r0,a
   3252 86 82              1565 	mov	dpl,@r0
   3254 08                 1566 	inc	r0
   3255 86 83              1567 	mov	dph,@r0
   3257 08                 1568 	inc	r0
   3258 86 F0              1569 	mov	b,@r0
   325A EB                 1570 	mov	a,r3
   325B 12 3C 64           1571 	lcall	__gptrput
                           1572 ;	SRC/lab4.c:215: buffer[i++] = (time->sec % 10) + '0';
   325E E5 1E              1573 	mov	a,_bp
   3260 24 04              1574 	add	a,#0x04
   3262 F8                 1575 	mov	r0,a
   3263 74 07              1576 	mov	a,#0x07
   3265 2D                 1577 	add	a,r5
   3266 F6                 1578 	mov	@r0,a
   3267 E4                 1579 	clr	a
   3268 3E                 1580 	addc	a,r6
   3269 08                 1581 	inc	r0
   326A F6                 1582 	mov	@r0,a
   326B 08                 1583 	inc	r0
   326C A6 07              1584 	mov	@r0,ar7
   326E 75 F0 0A           1585 	mov	b,#0x0A
   3271 EA                 1586 	mov	a,r2
   3272 84                 1587 	div	ab
   3273 E5 F0              1588 	mov	a,b
   3275 24 30              1589 	add	a,#0x30
   3277 FA                 1590 	mov	r2,a
   3278 E5 1E              1591 	mov	a,_bp
   327A 24 04              1592 	add	a,#0x04
   327C F8                 1593 	mov	r0,a
   327D 86 82              1594 	mov	dpl,@r0
   327F 08                 1595 	inc	r0
   3280 86 83              1596 	mov	dph,@r0
   3282 08                 1597 	inc	r0
   3283 86 F0              1598 	mov	b,@r0
   3285 EA                 1599 	mov	a,r2
   3286 12 3C 64           1600 	lcall	__gptrput
                           1601 ;	SRC/lab4.c:216: buffer[i] = '\0';
   3289 74 08              1602 	mov	a,#0x08
   328B 2D                 1603 	add	a,r5
   328C FA                 1604 	mov	r2,a
   328D E4                 1605 	clr	a
   328E 3E                 1606 	addc	a,r6
   328F FB                 1607 	mov	r3,a
   3290 8F 04              1608 	mov	ar4,r7
   3292 8A 82              1609 	mov	dpl,r2
   3294 8B 83              1610 	mov	dph,r3
   3296 8C F0              1611 	mov	b,r4
   3298 E4                 1612 	clr	a
   3299 12 3C 64           1613 	lcall	__gptrput
                           1614 ;	SRC/lab4.c:218: return buffer;
   329C 8D 82              1615 	mov	dpl,r5
   329E 8E 83              1616 	mov	dph,r6
   32A0 8F F0              1617 	mov	b,r7
   32A2 85 1E 81           1618 	mov	sp,_bp
   32A5 D0 1E              1619 	pop	_bp
   32A7 22                 1620 	ret
                           1621 ;------------------------------------------------------------
                           1622 ;Allocation info for local variables in function 'CompareString'
                           1623 ;------------------------------------------------------------
                           1624 ;str2                      Allocated to stack - offset -5
                           1625 ;length                    Allocated to stack - offset -6
                           1626 ;str1                      Allocated to stack - offset 1
                           1627 ;i                         Allocated to registers r5 
                           1628 ;------------------------------------------------------------
                           1629 ;	SRC/lab4.c:220: char CompareString(unsigned char* str1, unsigned char* str2, unsigned char length){
                           1630 ;	-----------------------------------------
                           1631 ;	 function CompareString
                           1632 ;	-----------------------------------------
   32A8                    1633 _CompareString:
   32A8 C0 1E              1634 	push	_bp
   32AA 85 81 1E           1635 	mov	_bp,sp
   32AD C0 82              1636 	push	dpl
   32AF C0 83              1637 	push	dph
   32B1 C0 F0              1638 	push	b
                           1639 ;	SRC/lab4.c:222: for(i = 0; i < length; i++)
   32B3 7D 00              1640 	mov	r5,#0x00
   32B5                    1641 00103$:
   32B5 E5 1E              1642 	mov	a,_bp
   32B7 24 FA              1643 	add	a,#0xfa
   32B9 F8                 1644 	mov	r0,a
   32BA C3                 1645 	clr	c
   32BB ED                 1646 	mov	a,r5
   32BC 96                 1647 	subb	a,@r0
   32BD 50 3E              1648 	jnc	00106$
                           1649 ;	SRC/lab4.c:223: if( str1[i] != str2[i] )
   32BF A8 1E              1650 	mov	r0,_bp
   32C1 08                 1651 	inc	r0
   32C2 ED                 1652 	mov	a,r5
   32C3 26                 1653 	add	a,@r0
   32C4 FE                 1654 	mov	r6,a
   32C5 E4                 1655 	clr	a
   32C6 08                 1656 	inc	r0
   32C7 36                 1657 	addc	a,@r0
   32C8 FF                 1658 	mov	r7,a
   32C9 08                 1659 	inc	r0
   32CA 86 02              1660 	mov	ar2,@r0
   32CC 8E 82              1661 	mov	dpl,r6
   32CE 8F 83              1662 	mov	dph,r7
   32D0 8A F0              1663 	mov	b,r2
   32D2 12 3C 9F           1664 	lcall	__gptrget
   32D5 FE                 1665 	mov	r6,a
   32D6 E5 1E              1666 	mov	a,_bp
   32D8 24 FB              1667 	add	a,#0xfb
   32DA F8                 1668 	mov	r0,a
   32DB ED                 1669 	mov	a,r5
   32DC 26                 1670 	add	a,@r0
   32DD FA                 1671 	mov	r2,a
   32DE E4                 1672 	clr	a
   32DF 08                 1673 	inc	r0
   32E0 36                 1674 	addc	a,@r0
   32E1 FB                 1675 	mov	r3,a
   32E2 08                 1676 	inc	r0
   32E3 86 04              1677 	mov	ar4,@r0
   32E5 8A 82              1678 	mov	dpl,r2
   32E7 8B 83              1679 	mov	dph,r3
   32E9 8C F0              1680 	mov	b,r4
   32EB 12 3C 9F           1681 	lcall	__gptrget
   32EE FA                 1682 	mov	r2,a
   32EF EE                 1683 	mov	a,r6
   32F0 B5 02 02           1684 	cjne	a,ar2,00113$
   32F3 80 05              1685 	sjmp	00105$
   32F5                    1686 00113$:
                           1687 ;	SRC/lab4.c:224: return 1;
   32F5 75 82 01           1688 	mov	dpl,#0x01
   32F8 80 06              1689 	sjmp	00107$
   32FA                    1690 00105$:
                           1691 ;	SRC/lab4.c:222: for(i = 0; i < length; i++)
   32FA 0D                 1692 	inc	r5
   32FB 80 B8              1693 	sjmp	00103$
   32FD                    1694 00106$:
                           1695 ;	SRC/lab4.c:225: return 0;
   32FD 75 82 00           1696 	mov	dpl,#0x00
   3300                    1697 00107$:
   3300 85 1E 81           1698 	mov	sp,_bp
   3303 D0 1E              1699 	pop	_bp
   3305 22                 1700 	ret
                           1701 ;------------------------------------------------------------
                           1702 ;Allocation info for local variables in function 'CompareEEPROM'
                           1703 ;------------------------------------------------------------
                           1704 ;compStr                   Allocated to stack - offset -5
                           1705 ;length                    Allocated to stack - offset -6
                           1706 ;address                   Allocated to registers r2 
                           1707 ;i                         Allocated to stack - offset 2
                           1708 ;------------------------------------------------------------
                           1709 ;	SRC/lab4.c:227: char CompareEEPROM(unsigned char address, unsigned char* compStr, unsigned char length){
                           1710 ;	-----------------------------------------
                           1711 ;	 function CompareEEPROM
                           1712 ;	-----------------------------------------
   3306                    1713 _CompareEEPROM:
   3306 C0 1E              1714 	push	_bp
   3308 85 81 1E           1715 	mov	_bp,sp
   330B AA 82              1716 	mov	r2,dpl
                           1717 ;	SRC/lab4.c:229: if( ReadBlockEEPROM(address, xbuffer, length) ){ 
   330D E5 1E              1718 	mov	a,_bp
   330F 24 FA              1719 	add	a,#0xfa
   3311 F8                 1720 	mov	r0,a
   3312 E6                 1721 	mov	a,@r0
   3313 C0 E0              1722 	push	acc
   3315 74 26              1723 	mov	a,#_xbuffer
   3317 C0 E0              1724 	push	acc
   3319 74 60              1725 	mov	a,#(_xbuffer >> 8)
   331B C0 E0              1726 	push	acc
   331D 8A 82              1727 	mov	dpl,r2
   331F 12 29 94           1728 	lcall	_ReadBlockEEPROM
   3322 15 81              1729 	dec	sp
   3324 15 81              1730 	dec	sp
   3326 15 81              1731 	dec	sp
   3328 92 08              1732 	mov	b0,c
   332A 50 14              1733 	jnc	00102$
                           1734 ;	SRC/lab4.c:230: log(READ_EEPROM_ERR);
   332C 75 82 66           1735 	mov	dpl,#0x66
   332F 12 35 78           1736 	lcall	_log
                           1737 ;	SRC/lab4.c:231: message("Read EEEPROM error!");
   3332 90 3E 42           1738 	mov	dptr,#__str_3
   3335 75 F0 80           1739 	mov	b,#0x80
   3338 12 30 C1           1740 	lcall	_message
                           1741 ;	SRC/lab4.c:232: return 2;
   333B 75 82 02           1742 	mov	dpl,#0x02
   333E 80 2A              1743 	sjmp	00104$
   3340                    1744 00102$:
                           1745 ;	SRC/lab4.c:236: return CompareString(buffer, compStr, length);
   3340 E5 1E              1746 	mov	a,_bp
   3342 24 FA              1747 	add	a,#0xfa
   3344 F8                 1748 	mov	r0,a
   3345 E6                 1749 	mov	a,@r0
   3346 C0 E0              1750 	push	acc
   3348 E5 1E              1751 	mov	a,_bp
   334A 24 FB              1752 	add	a,#0xfb
   334C F8                 1753 	mov	r0,a
   334D E6                 1754 	mov	a,@r0
   334E C0 E0              1755 	push	acc
   3350 08                 1756 	inc	r0
   3351 E6                 1757 	mov	a,@r0
   3352 C0 E0              1758 	push	acc
   3354 08                 1759 	inc	r0
   3355 E6                 1760 	mov	a,@r0
   3356 C0 E0              1761 	push	acc
   3358 85 1A 82           1762 	mov	dpl,_buffer
   335B 85 1B 83           1763 	mov	dph,(_buffer + 1)
   335E 85 1C F0           1764 	mov	b,(_buffer + 2)
   3361 12 32 A8           1765 	lcall	_CompareString
   3364 E5 81              1766 	mov	a,sp
   3366 24 FC              1767 	add	a,#0xfc
   3368 F5 81              1768 	mov	sp,a
   336A                    1769 00104$:
   336A D0 1E              1770 	pop	_bp
   336C 22                 1771 	ret
                           1772 ;------------------------------------------------------------
                           1773 ;Allocation info for local variables in function 'PrintNumber'
                           1774 ;------------------------------------------------------------
                           1775 ;num                       Allocated to registers r2 
                           1776 ;i                         Allocated to registers r3 
                           1777 ;------------------------------------------------------------
                           1778 ;	SRC/lab4.c:243: void PrintNumber(unsigned char num){
                           1779 ;	-----------------------------------------
                           1780 ;	 function PrintNumber
                           1781 ;	-----------------------------------------
   336D                    1782 _PrintNumber:
   336D AA 82              1783 	mov	r2,dpl
                           1784 ;	SRC/lab4.c:244: char i = 0;
   336F 7B 00              1785 	mov	r3,#0x00
                           1786 ;	SRC/lab4.c:246: buffer[i] = 								(num / 100 % 10) + '0';
   3371 AC 1A              1787 	mov	r4,_buffer
   3373 AD 1B              1788 	mov	r5,(_buffer + 1)
   3375 AE 1C              1789 	mov	r6,(_buffer + 2)
   3377 75 F0 64           1790 	mov	b,#0x64
   337A EA                 1791 	mov	a,r2
   337B 84                 1792 	div	ab
   337C 75 F0 0A           1793 	mov	b,#0x0A
   337F 84                 1794 	div	ab
   3380 E5 F0              1795 	mov	a,b
   3382 24 30              1796 	add	a,#0x30
   3384 FF                 1797 	mov	r7,a
   3385 8C 82              1798 	mov	dpl,r4
   3387 8D 83              1799 	mov	dph,r5
   3389 8E F0              1800 	mov	b,r6
   338B 12 3C 64           1801 	lcall	__gptrput
                           1802 ;	SRC/lab4.c:247: buffer[buffer[i]=='0' ? i : ++i ] = 		(num / 10 % 10) + '0';
   338E BF 30 04           1803 	cjne	r7,#0x30,00103$
   3391 7C 00              1804 	mov	r4,#0x00
   3393 80 04              1805 	sjmp	00104$
   3395                    1806 00103$:
   3395 7B 01              1807 	mov	r3,#0x01
   3397 7C 01              1808 	mov	r4,#0x01
   3399                    1809 00104$:
   3399 EC                 1810 	mov	a,r4
   339A 25 1A              1811 	add	a,_buffer
   339C FC                 1812 	mov	r4,a
   339D E4                 1813 	clr	a
   339E 35 1B              1814 	addc	a,(_buffer + 1)
   33A0 FD                 1815 	mov	r5,a
   33A1 AE 1C              1816 	mov	r6,(_buffer + 2)
   33A3 75 F0 0A           1817 	mov	b,#0x0A
   33A6 EA                 1818 	mov	a,r2
   33A7 84                 1819 	div	ab
   33A8 75 F0 0A           1820 	mov	b,#0x0A
   33AB 84                 1821 	div	ab
   33AC E5 F0              1822 	mov	a,b
   33AE 24 30              1823 	add	a,#0x30
   33B0 FF                 1824 	mov	r7,a
   33B1 8C 82              1825 	mov	dpl,r4
   33B3 8D 83              1826 	mov	dph,r5
   33B5 8E F0              1827 	mov	b,r6
   33B7 12 3C 64           1828 	lcall	__gptrput
                           1829 ;	SRC/lab4.c:248: buffer[buffer[i]=='0' && i==0 ? i : ++i] = 	(num % 10) + '0';
   33BA EB                 1830 	mov	a,r3
   33BB 25 1A              1831 	add	a,_buffer
   33BD FC                 1832 	mov	r4,a
   33BE E4                 1833 	clr	a
   33BF 35 1B              1834 	addc	a,(_buffer + 1)
   33C1 FD                 1835 	mov	r5,a
   33C2 AE 1C              1836 	mov	r6,(_buffer + 2)
   33C4 8C 82              1837 	mov	dpl,r4
   33C6 8D 83              1838 	mov	dph,r5
   33C8 8E F0              1839 	mov	b,r6
   33CA 12 3C 9F           1840 	lcall	__gptrget
   33CD FC                 1841 	mov	r4,a
   33CE BC 30 09           1842 	cjne	r4,#0x30,00107$
   33D1 EB                 1843 	mov	a,r3
   33D2 B4 01 00           1844 	cjne	a,#0x01,00117$
   33D5                    1845 00117$:
   33D5 E4                 1846 	clr	a
   33D6 33                 1847 	rlc	a
   33D7 FC                 1848 	mov	r4,a
   33D8 70 04              1849 	jnz	00108$
   33DA                    1850 00107$:
   33DA 7C 00              1851 	mov	r4,#0x00
   33DC 80 02              1852 	sjmp	00109$
   33DE                    1853 00108$:
   33DE 7C 01              1854 	mov	r4,#0x01
   33E0                    1855 00109$:
   33E0 EC                 1856 	mov	a,r4
   33E1 60 04              1857 	jz	00105$
   33E3 8B 04              1858 	mov	ar4,r3
   33E5 80 03              1859 	sjmp	00106$
   33E7                    1860 00105$:
   33E7 0B                 1861 	inc	r3
   33E8 8B 04              1862 	mov	ar4,r3
   33EA                    1863 00106$:
   33EA EC                 1864 	mov	a,r4
   33EB 25 1A              1865 	add	a,_buffer
   33ED FC                 1866 	mov	r4,a
   33EE E4                 1867 	clr	a
   33EF 35 1B              1868 	addc	a,(_buffer + 1)
   33F1 FD                 1869 	mov	r5,a
   33F2 AE 1C              1870 	mov	r6,(_buffer + 2)
   33F4 75 F0 0A           1871 	mov	b,#0x0A
   33F7 EA                 1872 	mov	a,r2
   33F8 84                 1873 	div	ab
   33F9 E5 F0              1874 	mov	a,b
   33FB 24 30              1875 	add	a,#0x30
   33FD 8C 82              1876 	mov	dpl,r4
   33FF 8D 83              1877 	mov	dph,r5
   3401 8E F0              1878 	mov	b,r6
   3403 12 3C 64           1879 	lcall	__gptrput
                           1880 ;	SRC/lab4.c:249: buffer[++i] = 								'\0';
   3406 0B                 1881 	inc	r3
   3407 EB                 1882 	mov	a,r3
   3408 25 1A              1883 	add	a,_buffer
   340A FB                 1884 	mov	r3,a
   340B E4                 1885 	clr	a
   340C 35 1B              1886 	addc	a,(_buffer + 1)
   340E FA                 1887 	mov	r2,a
   340F AC 1C              1888 	mov	r4,(_buffer + 2)
   3411 8B 82              1889 	mov	dpl,r3
   3413 8A 83              1890 	mov	dph,r2
   3415 8C F0              1891 	mov	b,r4
   3417 E4                 1892 	clr	a
   3418 02 3C 64           1893 	ljmp	__gptrput
                           1894 ;------------------------------------------------------------
                           1895 ;Allocation info for local variables in function 'DecipherCode'
                           1896 ;------------------------------------------------------------
                           1897 ;msg_code                  Allocated to registers r2 
                           1898 ;------------------------------------------------------------
                           1899 ;	SRC/lab4.c:258: void DecipherCode(unsigned char msg_code){
                           1900 ;	-----------------------------------------
                           1901 ;	 function DecipherCode
                           1902 ;	-----------------------------------------
   341B                    1903 _DecipherCode:
   341B AA 82              1904 	mov	r2,dpl
                           1905 ;	SRC/lab4.c:259: switch(msg_code){
   341D BA 01 02           1906 	cjne	r2,#0x01,00127$
   3420 80 2C              1907 	sjmp	00101$
   3422                    1908 00127$:
   3422 BA 02 02           1909 	cjne	r2,#0x02,00128$
   3425 80 30              1910 	sjmp	00102$
   3427                    1911 00128$:
   3427 BA 04 02           1912 	cjne	r2,#0x04,00129$
   342A 80 4F              1913 	sjmp	00106$
   342C                    1914 00129$:
   342C BA 05 02           1915 	cjne	r2,#0x05,00130$
   342F 80 53              1916 	sjmp	00107$
   3431                    1917 00130$:
   3431 BA 08 03           1918 	cjne	r2,#0x08,00131$
   3434 02 34 96           1919 	ljmp	00109$
   3437                    1920 00131$:
   3437 BA 0A 02           1921 	cjne	r2,#0x0A,00132$
   343A 80 24              1922 	sjmp	00103$
   343C                    1923 00132$:
   343C BA 0B 02           1924 	cjne	r2,#0x0B,00133$
   343F 80 28              1925 	sjmp	00104$
   3441                    1926 00133$:
   3441 BA 14 02           1927 	cjne	r2,#0x14,00134$
   3444 80 2C              1928 	sjmp	00105$
   3446                    1929 00134$:
   3446 BA 15 02           1930 	cjne	r2,#0x15,00135$
   3449 80 42              1931 	sjmp	00108$
   344B                    1932 00135$:
   344B 02 34 9F           1933 	ljmp	00110$
                           1934 ;	SRC/lab4.c:260: case START:
   344E                    1935 00101$:
                           1936 ;	SRC/lab4.c:261: LCD_TypeAnimation("Start");
   344E 90 3E 56           1937 	mov	dptr,#__str_4
   3451 75 F0 80           1938 	mov	b,#0x80
                           1939 ;	SRC/lab4.c:262: break;
   3454 02 2F 76           1940 	ljmp	_LCD_TypeAnimation
                           1941 ;	SRC/lab4.c:263: case INITIALIZATION:
   3457                    1942 00102$:
                           1943 ;	SRC/lab4.c:264: LCD_TypeAnimation("Initialization");
   3457 90 3E 5C           1944 	mov	dptr,#__str_5
   345A 75 F0 80           1945 	mov	b,#0x80
                           1946 ;	SRC/lab4.c:265: break;
   345D 02 2F 76           1947 	ljmp	_LCD_TypeAnimation
                           1948 ;	SRC/lab4.c:266: case SERVICE_LOGIN_SUCCEED:
   3460                    1949 00103$:
                           1950 ;	SRC/lab4.c:267: LCD_TypeAnimation("Service login succeed");
   3460 90 3E 6B           1951 	mov	dptr,#__str_6
   3463 75 F0 80           1952 	mov	b,#0x80
                           1953 ;	SRC/lab4.c:268: break;
   3466 02 2F 76           1954 	ljmp	_LCD_TypeAnimation
                           1955 ;	SRC/lab4.c:269: case SERVICE_MENU_TIMELIMIT_EXCCEEDED:
   3469                    1956 00104$:
                           1957 ;	SRC/lab4.c:270: LCD_TypeAnimation("Time limit in the service menu exceeded!");
   3469 90 3E 81           1958 	mov	dptr,#__str_7
   346C 75 F0 80           1959 	mov	b,#0x80
                           1960 ;	SRC/lab4.c:271: break;
                           1961 ;	SRC/lab4.c:272: case USER_LOGIN_SUCCEED:
   346F 02 2F 76           1962 	ljmp	_LCD_TypeAnimation
   3472                    1963 00105$:
                           1964 ;	SRC/lab4.c:273: LCD_TypeAnimation("User login succeed");
   3472 90 3E AA           1965 	mov	dptr,#__str_8
   3475 75 F0 80           1966 	mov	b,#0x80
                           1967 ;	SRC/lab4.c:274: break;
                           1968 ;	SRC/lab4.c:275: case DOOR_IS_OPEN:
   3478 02 2F 76           1969 	ljmp	_LCD_TypeAnimation
   347B                    1970 00106$:
                           1971 ;	SRC/lab4.c:276: LCD_TypeAnimation("Door is open");
   347B 90 3E BD           1972 	mov	dptr,#__str_9
   347E 75 F0 80           1973 	mov	b,#0x80
                           1974 ;	SRC/lab4.c:277: break;
                           1975 ;	SRC/lab4.c:278: case DOOR_IS_CLOSE:
   3481 02 2F 76           1976 	ljmp	_LCD_TypeAnimation
   3484                    1977 00107$:
                           1978 ;	SRC/lab4.c:279: LCD_TypeAnimation("Door is close");
   3484 90 3E CA           1979 	mov	dptr,#__str_10
   3487 75 F0 80           1980 	mov	b,#0x80
                           1981 ;	SRC/lab4.c:280: break;
                           1982 ;	SRC/lab4.c:281: case INCORRECT_CODE:
   348A 02 2F 76           1983 	ljmp	_LCD_TypeAnimation
   348D                    1984 00108$:
                           1985 ;	SRC/lab4.c:282: LCD_TypeAnimation("Incorrect code");
   348D 90 3E D8           1986 	mov	dptr,#__str_11
   3490 75 F0 80           1987 	mov	b,#0x80
                           1988 ;	SRC/lab4.c:283: break;
                           1989 ;	SRC/lab4.c:284: case INPUT_CANCELED:
   3493 02 2F 76           1990 	ljmp	_LCD_TypeAnimation
   3496                    1991 00109$:
                           1992 ;	SRC/lab4.c:285: LCD_TypeAnimation("Input canceled");
   3496 90 3E E7           1993 	mov	dptr,#__str_12
   3499 75 F0 80           1994 	mov	b,#0x80
                           1995 ;	SRC/lab4.c:286: break;
                           1996 ;	SRC/lab4.c:287: default:
   349C 02 2F 76           1997 	ljmp	_LCD_TypeAnimation
   349F                    1998 00110$:
                           1999 ;	SRC/lab4.c:288: PrintNumber(msg_code);
   349F 8A 82              2000 	mov	dpl,r2
   34A1 12 33 6D           2001 	lcall	_PrintNumber
                           2002 ;	SRC/lab4.c:289: LCD_Type(buffer);
   34A4 AA 1A              2003 	mov	r2,_buffer
   34A6 AB 1B              2004 	mov	r3,(_buffer + 1)
   34A8 AC 1C              2005 	mov	r4,(_buffer + 2)
   34AA 8A 82              2006 	mov	dpl,r2
   34AC 8B 83              2007 	mov	dph,r3
   34AE 8C F0              2008 	mov	b,r4
   34B0 12 23 84           2009 	lcall	_LCD_Type
                           2010 ;	SRC/lab4.c:290: while( ! ScanKBOnce(&input[0]) ){}
   34B3                    2011 00111$:
   34B3 90 60 00           2012 	mov	dptr,#_input
   34B6 75 F0 00           2013 	mov	b,#0x00
   34B9 12 23 DF           2014 	lcall	_ScanKBOnce
   34BC 50 F5              2015 	jnc	00111$
                           2016 ;	SRC/lab4.c:292: }
   34BE 22                 2017 	ret
                           2018 ;------------------------------------------------------------
                           2019 ;Allocation info for local variables in function 'PrintConLog'
                           2020 ;------------------------------------------------------------
                           2021 ;i                         Allocated to registers r2 
                           2022 ;getLog                    Allocated with name '_PrintConLog_getLog_1_1'
                           2023 ;------------------------------------------------------------
                           2024 ;	SRC/lab4.c:295: void PrintConLog(unsigned char i){
                           2025 ;	-----------------------------------------
                           2026 ;	 function PrintConLog
                           2027 ;	-----------------------------------------
   34BF                    2028 _PrintConLog:
                           2029 ;	SRC/lab4.c:297: if( ReadBlockEEPROM(LOG_ADDRESS(i), (unsigned char xdata *)&getLog, sizeof(LOG_ENTRY)) ){ 
   34BF E5 82              2030 	mov	a,dpl
   34C1 FA                 2031 	mov	r2,a
   34C2 75 F0 05           2032 	mov	b,#0x05
   34C5 A4                 2033 	mul	ab
   34C6 F5 82              2034 	mov	dpl,a
   34C8 85 F0 83           2035 	mov	dph,b
   34CB C0 02              2036 	push	ar2
   34CD 74 73              2037 	mov	a,#0x73
   34CF C0 E0              2038 	push	acc
   34D1 E4                 2039 	clr	a
   34D2 C0 E0              2040 	push	acc
   34D4 12 3D 2B           2041 	lcall	__modsint
   34D7 AB 82              2042 	mov	r3,dpl
   34D9 15 81              2043 	dec	sp
   34DB 15 81              2044 	dec	sp
   34DD 74 0A              2045 	mov	a,#0x0A
   34DF 2B                 2046 	add	a,r3
   34E0 F5 82              2047 	mov	dpl,a
   34E2 74 05              2048 	mov	a,#0x05
   34E4 C0 E0              2049 	push	acc
   34E6 74 14              2050 	mov	a,#_PrintConLog_getLog_1_1
   34E8 C0 E0              2051 	push	acc
   34EA 74 60              2052 	mov	a,#(_PrintConLog_getLog_1_1 >> 8)
   34EC C0 E0              2053 	push	acc
   34EE 12 29 94           2054 	lcall	_ReadBlockEEPROM
   34F1 15 81              2055 	dec	sp
   34F3 15 81              2056 	dec	sp
   34F5 15 81              2057 	dec	sp
   34F7 D0 02              2058 	pop	ar2
   34F9 92 08              2059 	mov	b0,c
   34FB 50 09              2060 	jnc	00102$
                           2061 ;	SRC/lab4.c:298: message("Read EEEPROM error!");//log(READ_EEPROM_ERR);
   34FD 90 3E 42           2062 	mov	dptr,#__str_3
   3500 75 F0 80           2063 	mov	b,#0x80
   3503 02 30 C1           2064 	ljmp	_message
   3506                    2065 00102$:
                           2066 ;	SRC/lab4.c:302: LCD_Clear();
   3506 C0 02              2067 	push	ar2
   3508 12 22 2F           2068 	lcall	_LCD_Clear
                           2069 ;	SRC/lab4.c:303: LCD_GotoXY(0,0);
   350B C2 F0              2070 	clr	b[0]
   350D 85 F0 21           2071 	mov	bits,b
   3510 75 82 00           2072 	mov	dpl,#0x00
   3513 12 23 4D           2073 	lcall	_LCD_GotoXY
                           2074 ;	SRC/lab4.c:304: LCD_Type("#");
   3516 90 3E F6           2075 	mov	dptr,#__str_13
   3519 75 F0 80           2076 	mov	b,#0x80
   351C 12 23 84           2077 	lcall	_LCD_Type
   351F D0 02              2078 	pop	ar2
                           2079 ;	SRC/lab4.c:305: PrintNumber(i);		
   3521 8A 82              2080 	mov	dpl,r2
   3523 12 33 6D           2081 	lcall	_PrintNumber
                           2082 ;	SRC/lab4.c:306: LCD_Type(buffer);
   3526 AA 1A              2083 	mov	r2,_buffer
   3528 AB 1B              2084 	mov	r3,(_buffer + 1)
   352A AC 1C              2085 	mov	r4,(_buffer + 2)
   352C 8A 82              2086 	mov	dpl,r2
   352E 8B 83              2087 	mov	dph,r3
   3530 8C F0              2088 	mov	b,r4
   3532 12 23 84           2089 	lcall	_LCD_Type
                           2090 ;	SRC/lab4.c:307: LCD_GotoXY(8,0);
   3535 C2 F0              2091 	clr	b[0]
   3537 85 F0 21           2092 	mov	bits,b
   353A 75 82 08           2093 	mov	dpl,#0x08
   353D 12 23 4D           2094 	lcall	_LCD_GotoXY
                           2095 ;	SRC/lab4.c:308: PrintTime((TIME *)&getLog.time, buffer);
   3540 C0 1A              2096 	push	_buffer
   3542 C0 1B              2097 	push	(_buffer + 1)
   3544 C0 1C              2098 	push	(_buffer + 2)
   3546 90 60 14           2099 	mov	dptr,#_PrintConLog_getLog_1_1
   3549 75 F0 00           2100 	mov	b,#0x00
   354C 12 31 09           2101 	lcall	_PrintTime
   354F 15 81              2102 	dec	sp
   3551 15 81              2103 	dec	sp
   3553 15 81              2104 	dec	sp
                           2105 ;	SRC/lab4.c:309: LCD_Type(buffer);
   3555 AA 1A              2106 	mov	r2,_buffer
   3557 AB 1B              2107 	mov	r3,(_buffer + 1)
   3559 AC 1C              2108 	mov	r4,(_buffer + 2)
   355B 8A 82              2109 	mov	dpl,r2
   355D 8B 83              2110 	mov	dph,r3
   355F 8C F0              2111 	mov	b,r4
   3561 12 23 84           2112 	lcall	_LCD_Type
                           2113 ;	SRC/lab4.c:310: LCD_GotoXY(0,1);
   3564 D2 F0              2114 	setb	b[0]
   3566 85 F0 21           2115 	mov	bits,b
   3569 75 82 00           2116 	mov	dpl,#0x00
   356C 12 23 4D           2117 	lcall	_LCD_GotoXY
                           2118 ;	SRC/lab4.c:311: DecipherCode(getLog.msg_code);
   356F 90 60 18           2119 	mov	dptr,#(_PrintConLog_getLog_1_1 + 0x0004)
   3572 E0                 2120 	movx	a,@dptr
   3573 F5 82              2121 	mov	dpl,a
   3575 02 34 1B           2122 	ljmp	_DecipherCode
                           2123 ;------------------------------------------------------------
                           2124 ;Allocation info for local variables in function 'log'
                           2125 ;------------------------------------------------------------
                           2126 ;msg_code                  Allocated to registers r2 
                           2127 ;newLog                    Allocated with name '_log_newLog_1_1'
                           2128 ;------------------------------------------------------------
                           2129 ;	SRC/lab4.c:315: unsigned char log(unsigned char msg_code){
                           2130 ;	-----------------------------------------
                           2131 ;	 function log
                           2132 ;	-----------------------------------------
   3578                    2133 _log:
   3578 AA 82              2134 	mov	r2,dpl
                           2135 ;	SRC/lab4.c:336: getTime((TIME xdata *)&newLog.time);
   357A 90 60 19           2136 	mov	dptr,#_log_newLog_1_1
   357D C0 02              2137 	push	ar2
   357F 12 2C 4C           2138 	lcall	_getTime
   3582 D0 02              2139 	pop	ar2
                           2140 ;	SRC/lab4.c:337: newLog.msg_code = msg_code;
   3584 90 60 1D           2141 	mov	dptr,#(_log_newLog_1_1 + 0x0004)
   3587 EA                 2142 	mov	a,r2
   3588 F0                 2143 	movx	@dptr,a
                           2144 ;	SRC/lab4.c:339: if( WriteBlockEEPROM(LOG_ADDRESS(num_log), (unsigned char xdata *)&newLog, sizeof(LOG_ENTRY)) ){	
   3589 E5 1D              2145 	mov	a,_num_log
   358B 75 F0 05           2146 	mov	b,#0x05
   358E A4                 2147 	mul	ab
   358F F5 82              2148 	mov	dpl,a
   3591 85 F0 83           2149 	mov	dph,b
   3594 74 73              2150 	mov	a,#0x73
   3596 C0 E0              2151 	push	acc
   3598 E4                 2152 	clr	a
   3599 C0 E0              2153 	push	acc
   359B 12 3D 2B           2154 	lcall	__modsint
   359E AA 82              2155 	mov	r2,dpl
   35A0 15 81              2156 	dec	sp
   35A2 15 81              2157 	dec	sp
   35A4 74 0A              2158 	mov	a,#0x0A
   35A6 2A                 2159 	add	a,r2
   35A7 F5 82              2160 	mov	dpl,a
   35A9 74 05              2161 	mov	a,#0x05
   35AB C0 E0              2162 	push	acc
   35AD 74 19              2163 	mov	a,#_log_newLog_1_1
   35AF C0 E0              2164 	push	acc
   35B1 74 60              2165 	mov	a,#(_log_newLog_1_1 >> 8)
   35B3 C0 E0              2166 	push	acc
   35B5 12 26 D8           2167 	lcall	_WriteBlockEEPROM
   35B8 15 81              2168 	dec	sp
   35BA 15 81              2169 	dec	sp
   35BC 15 81              2170 	dec	sp
   35BE 92 08              2171 	mov	b0,c
   35C0 50 0D              2172 	jnc	00102$
                           2173 ;	SRC/lab4.c:340: message("Write error!"); //log
   35C2 90 3E F8           2174 	mov	dptr,#__str_14
   35C5 75 F0 80           2175 	mov	b,#0x80
   35C8 12 30 C1           2176 	lcall	_message
                           2177 ;	SRC/lab4.c:341: return 1;
   35CB 75 82 01           2178 	mov	dpl,#0x01
   35CE 22                 2179 	ret
   35CF                    2180 00102$:
                           2181 ;	SRC/lab4.c:344: num_log++;  
   35CF 05 1D              2182 	inc	_num_log
                           2183 ;	SRC/lab4.c:346: return 0;
   35D1 75 82 00           2184 	mov	dpl,#0x00
   35D4 22                 2185 	ret
                           2186 ;------------------------------------------------------------
                           2187 ;Allocation info for local variables in function 'main'
                           2188 ;------------------------------------------------------------
                           2189 ;i                         Allocated to registers r4 
                           2190 ;cur_log                   Allocated to registers r2 r3 
                           2191 ;------------------------------------------------------------
                           2192 ;	SRC/lab4.c:352: void main( void ){
                           2193 ;	-----------------------------------------
                           2194 ;	 function main
                           2195 ;	-----------------------------------------
   35D5                    2196 _main:
                           2197 ;	SRC/lab4.c:355: int cur_log = 0;
   35D5 7A 00              2198 	mov	r2,#0x00
   35D7 7B 00              2199 	mov	r3,#0x00
                           2200 ;	SRC/lab4.c:360: log(START);
   35D9 75 82 01           2201 	mov	dpl,#0x01
   35DC C0 02              2202 	push	ar2
   35DE C0 03              2203 	push	ar3
   35E0 12 35 78           2204 	lcall	_log
                           2205 ;	SRC/lab4.c:361: InitSIO(S9600, 0);
   35E3 C2 F0              2206 	clr	b[0]
   35E5 85 F0 21           2207 	mov	bits,b
   35E8 75 82 FD           2208 	mov	dpl,#0xFD
   35EB 12 25 0E           2209 	lcall	_InitSIO
                           2210 ;	SRC/lab4.c:362: Type("Initialization\r\n");
   35EE 90 3F 05           2211 	mov	dptr,#__str_15
   35F1 75 F0 80           2212 	mov	b,#0x80
   35F4 12 24 E3           2213 	lcall	_Type
                           2214 ;	SRC/lab4.c:363: log(INITIALIZATION);
   35F7 75 82 02           2215 	mov	dpl,#0x02
   35FA 12 35 78           2216 	lcall	_log
                           2217 ;	SRC/lab4.c:364: InitLCD(); 
   35FD 12 22 47           2218 	lcall	_InitLCD
                           2219 ;	SRC/lab4.c:366: if( CompareEEPROM(MAGIC_NUMBER_ADDRESS, MAGIC_NUMBER, 2)){//нет магии
   3600 74 02              2220 	mov	a,#0x02
   3602 C0 E0              2221 	push	acc
   3604 74 16              2222 	mov	a,#__str_16
   3606 C0 E0              2223 	push	acc
   3608 74 3F              2224 	mov	a,#(__str_16 >> 8)
   360A C0 E0              2225 	push	acc
   360C 74 80              2226 	mov	a,#0x80
   360E C0 E0              2227 	push	acc
   3610 75 82 00           2228 	mov	dpl,#0x00
   3613 12 33 06           2229 	lcall	_CompareEEPROM
   3616 AC 82              2230 	mov	r4,dpl
   3618 E5 81              2231 	mov	a,sp
   361A 24 FC              2232 	add	a,#0xfc
   361C F5 81              2233 	mov	sp,a
   361E D0 03              2234 	pop	ar3
   3620 D0 02              2235 	pop	ar2
   3622 EC                 2236 	mov	a,r4
   3623 70 03              2237 	jnz	00243$
   3625 02 37 16           2238 	ljmp	00108$
   3628                    2239 00243$:
                           2240 ;	SRC/lab4.c:367: log(NO_MAGIC);
   3628 75 82 06           2241 	mov	dpl,#0x06
   362B C0 02              2242 	push	ar2
   362D C0 03              2243 	push	ar3
   362F 12 35 78           2244 	lcall	_log
                           2245 ;	SRC/lab4.c:368: Type("Magic not found!\r\n");
   3632 90 3F 19           2246 	mov	dptr,#__str_17
   3635 75 F0 80           2247 	mov	b,#0x80
   3638 12 24 E3           2248 	lcall	_Type
   363B D0 03              2249 	pop	ar3
   363D D0 02              2250 	pop	ar2
                           2251 ;	SRC/lab4.c:371: for(i = 0; i < 2;  i++) //Записать магическое число
   363F 7C 00              2252 	mov	r4,#0x00
   3641                    2253 00176$:
   3641 BC 02 00           2254 	cjne	r4,#0x02,00244$
   3644                    2255 00244$:
   3644 50 23              2256 	jnc	00179$
                           2257 ;	SRC/lab4.c:372: buffer[i] = MAGIC_NUMBER[i];
   3646 C0 02              2258 	push	ar2
   3648 C0 03              2259 	push	ar3
   364A EC                 2260 	mov	a,r4
   364B 25 1A              2261 	add	a,_buffer
   364D FD                 2262 	mov	r5,a
   364E E4                 2263 	clr	a
   364F 35 1B              2264 	addc	a,(_buffer + 1)
   3651 FE                 2265 	mov	r6,a
   3652 AF 1C              2266 	mov	r7,(_buffer + 2)
   3654 EC                 2267 	mov	a,r4
   3655 90 3F 16           2268 	mov	dptr,#__str_16
   3658 93                 2269 	movc	a,@a+dptr
   3659 8D 82              2270 	mov	dpl,r5
   365B 8E 83              2271 	mov	dph,r6
   365D 8F F0              2272 	mov	b,r7
   365F 12 3C 64           2273 	lcall	__gptrput
                           2274 ;	SRC/lab4.c:371: for(i = 0; i < 2;  i++) //Записать магическое число
   3662 0C                 2275 	inc	r4
   3663 D0 03              2276 	pop	ar3
   3665 D0 02              2277 	pop	ar2
   3667 80 D8              2278 	sjmp	00176$
   3669                    2279 00179$:
                           2280 ;	SRC/lab4.c:373: for(i = 0; i < 4;  i++) //Записать сервисный код по-умолчанию
   3669 7C 00              2281 	mov	r4,#0x00
   366B                    2282 00180$:
   366B BC 04 00           2283 	cjne	r4,#0x04,00246$
   366E                    2284 00246$:
   366E 50 2E              2285 	jnc	00183$
                           2286 ;	SRC/lab4.c:374: buffer[i+2] = DEFAULT_SERVICE_CODE[i];
   3670 C0 02              2287 	push	ar2
   3672 C0 03              2288 	push	ar3
   3674 8C 05              2289 	mov	ar5,r4
   3676 7E 00              2290 	mov	r6,#0x00
   3678 74 02              2291 	mov	a,#0x02
   367A 2D                 2292 	add	a,r5
   367B FD                 2293 	mov	r5,a
   367C E4                 2294 	clr	a
   367D 3E                 2295 	addc	a,r6
   367E FE                 2296 	mov	r6,a
   367F ED                 2297 	mov	a,r5
   3680 25 1A              2298 	add	a,_buffer
   3682 FD                 2299 	mov	r5,a
   3683 EE                 2300 	mov	a,r6
   3684 35 1B              2301 	addc	a,(_buffer + 1)
   3686 FE                 2302 	mov	r6,a
   3687 AF 1C              2303 	mov	r7,(_buffer + 2)
   3689 EC                 2304 	mov	a,r4
   368A 90 3F 2C           2305 	mov	dptr,#__str_18
   368D 93                 2306 	movc	a,@a+dptr
   368E 8D 82              2307 	mov	dpl,r5
   3690 8E 83              2308 	mov	dph,r6
   3692 8F F0              2309 	mov	b,r7
   3694 12 3C 64           2310 	lcall	__gptrput
                           2311 ;	SRC/lab4.c:373: for(i = 0; i < 4;  i++) //Записать сервисный код по-умолчанию
   3697 0C                 2312 	inc	r4
   3698 D0 03              2313 	pop	ar3
   369A D0 02              2314 	pop	ar2
   369C 80 CD              2315 	sjmp	00180$
   369E                    2316 00183$:
                           2317 ;	SRC/lab4.c:375: for(i = 0; i < 4;  i++) //Записать пользовательский код по-умолчанию
   369E 7C 00              2318 	mov	r4,#0x00
   36A0                    2319 00184$:
   36A0 BC 04 00           2320 	cjne	r4,#0x04,00248$
   36A3                    2321 00248$:
   36A3 50 2E              2322 	jnc	00187$
                           2323 ;	SRC/lab4.c:376: buffer[i+6] = DEFAULT_USER_CODE[i];	
   36A5 C0 02              2324 	push	ar2
   36A7 C0 03              2325 	push	ar3
   36A9 8C 05              2326 	mov	ar5,r4
   36AB 7E 00              2327 	mov	r6,#0x00
   36AD 74 06              2328 	mov	a,#0x06
   36AF 2D                 2329 	add	a,r5
   36B0 FD                 2330 	mov	r5,a
   36B1 E4                 2331 	clr	a
   36B2 3E                 2332 	addc	a,r6
   36B3 FE                 2333 	mov	r6,a
   36B4 ED                 2334 	mov	a,r5
   36B5 25 1A              2335 	add	a,_buffer
   36B7 FD                 2336 	mov	r5,a
   36B8 EE                 2337 	mov	a,r6
   36B9 35 1B              2338 	addc	a,(_buffer + 1)
   36BB FE                 2339 	mov	r6,a
   36BC AF 1C              2340 	mov	r7,(_buffer + 2)
   36BE EC                 2341 	mov	a,r4
   36BF 90 3F 31           2342 	mov	dptr,#__str_19
   36C2 93                 2343 	movc	a,@a+dptr
   36C3 8D 82              2344 	mov	dpl,r5
   36C5 8E 83              2345 	mov	dph,r6
   36C7 8F F0              2346 	mov	b,r7
   36C9 12 3C 64           2347 	lcall	__gptrput
                           2348 ;	SRC/lab4.c:375: for(i = 0; i < 4;  i++) //Записать пользовательский код по-умолчанию
   36CC 0C                 2349 	inc	r4
   36CD D0 03              2350 	pop	ar3
   36CF D0 02              2351 	pop	ar2
   36D1 80 CD              2352 	sjmp	00184$
   36D3                    2353 00187$:
                           2354 ;	SRC/lab4.c:378: if( WriteBlockEEPROM(EEPROM_START_ADDRESS, xbuffer, 2+4+4) ){
   36D3 C0 02              2355 	push	ar2
   36D5 C0 03              2356 	push	ar3
   36D7 74 0A              2357 	mov	a,#0x0A
   36D9 C0 E0              2358 	push	acc
   36DB 74 26              2359 	mov	a,#_xbuffer
   36DD C0 E0              2360 	push	acc
   36DF 74 60              2361 	mov	a,#(_xbuffer >> 8)
   36E1 C0 E0              2362 	push	acc
   36E3 75 82 00           2363 	mov	dpl,#0x00
   36E6 12 26 D8           2364 	lcall	_WriteBlockEEPROM
   36E9 15 81              2365 	dec	sp
   36EB 15 81              2366 	dec	sp
   36ED 15 81              2367 	dec	sp
   36EF D0 03              2368 	pop	ar3
   36F1 D0 02              2369 	pop	ar2
   36F3 92 08              2370 	mov	b0,c
   36F5 40 03              2371 	jc	00250$
   36F7 02 37 89           2372 	ljmp	00174$
   36FA                    2373 00250$:
                           2374 ;	SRC/lab4.c:381: LCD_Type("Write error!"); 
   36FA 90 3E F8           2375 	mov	dptr,#__str_14
   36FD 75 F0 80           2376 	mov	b,#0x80
   3700 C0 02              2377 	push	ar2
   3702 C0 03              2378 	push	ar3
   3704 12 23 84           2379 	lcall	_LCD_Type
                           2380 ;	SRC/lab4.c:382: Type("Failure during setting default service code\r\n");
   3707 90 3F 36           2381 	mov	dptr,#__str_20
   370A 75 F0 80           2382 	mov	b,#0x80
   370D 12 24 E3           2383 	lcall	_Type
   3710 D0 03              2384 	pop	ar3
   3712 D0 02              2385 	pop	ar2
   3714 80 73              2386 	sjmp	00174$
   3716                    2387 00108$:
                           2388 ;	SRC/lab4.c:390: Type("Magic found!\r\n");
   3716 90 3F 64           2389 	mov	dptr,#__str_21
   3719 75 F0 80           2390 	mov	b,#0x80
   371C C0 02              2391 	push	ar2
   371E C0 03              2392 	push	ar3
   3720 12 24 E3           2393 	lcall	_Type
                           2394 ;	SRC/lab4.c:391: if( ReadBlockEEPROM(SERVICE_CODE_ADDRESS, service_code, 4) ) //Чтение сервисного кода
   3723 74 04              2395 	mov	a,#0x04
   3725 C0 E0              2396 	push	acc
   3727 74 1E              2397 	mov	a,#_service_code
   3729 C0 E0              2398 	push	acc
   372B 74 60              2399 	mov	a,#(_service_code >> 8)
   372D C0 E0              2400 	push	acc
   372F 75 82 02           2401 	mov	dpl,#0x02
   3732 12 29 94           2402 	lcall	_ReadBlockEEPROM
   3735 15 81              2403 	dec	sp
   3737 15 81              2404 	dec	sp
   3739 15 81              2405 	dec	sp
   373B D0 03              2406 	pop	ar3
   373D D0 02              2407 	pop	ar2
   373F 92 08              2408 	mov	b0,c
   3741 50 11              2409 	jnc	00104$
                           2410 ;	SRC/lab4.c:392: message("Read EEEPROM error!");
   3743 90 3E 42           2411 	mov	dptr,#__str_3
   3746 75 F0 80           2412 	mov	b,#0x80
   3749 C0 02              2413 	push	ar2
   374B C0 03              2414 	push	ar3
   374D 12 30 C1           2415 	lcall	_message
   3750 D0 03              2416 	pop	ar3
   3752 D0 02              2417 	pop	ar2
   3754                    2418 00104$:
                           2419 ;	SRC/lab4.c:393: if( ReadBlockEEPROM(USER_CODE_ADDRESS, user_code, 4) )//Чтение пользовательского кода
   3754 C0 02              2420 	push	ar2
   3756 C0 03              2421 	push	ar3
   3758 74 04              2422 	mov	a,#0x04
   375A C0 E0              2423 	push	acc
   375C 74 22              2424 	mov	a,#_user_code
   375E C0 E0              2425 	push	acc
   3760 74 60              2426 	mov	a,#(_user_code >> 8)
   3762 C0 E0              2427 	push	acc
   3764 75 82 06           2428 	mov	dpl,#0x06
   3767 12 29 94           2429 	lcall	_ReadBlockEEPROM
   376A 15 81              2430 	dec	sp
   376C 15 81              2431 	dec	sp
   376E 15 81              2432 	dec	sp
   3770 D0 03              2433 	pop	ar3
   3772 D0 02              2434 	pop	ar2
   3774 92 08              2435 	mov	b0,c
   3776 50 11              2436 	jnc	00174$
                           2437 ;	SRC/lab4.c:394: message("Read EEEPROM error!");
   3778 90 3E 42           2438 	mov	dptr,#__str_3
   377B 75 F0 80           2439 	mov	b,#0x80
   377E C0 02              2440 	push	ar2
   3780 C0 03              2441 	push	ar3
   3782 12 30 C1           2442 	lcall	_message
   3785 D0 03              2443 	pop	ar3
   3787 D0 02              2444 	pop	ar2
                           2445 ;	SRC/lab4.c:398: while(1){ //основной цикл
   3789                    2446 00174$:
                           2447 ;	SRC/lab4.c:399: WriteMax(LEDLINE, 0);
   3789 C0 02              2448 	push	ar2
   378B C0 03              2449 	push	ar3
   378D E4                 2450 	clr	a
   378E C0 E0              2451 	push	acc
   3790 90 00 07           2452 	mov	dptr,#0x0007
   3793 12 21 AA           2453 	lcall	_WriteMax
   3796 15 81              2454 	dec	sp
                           2455 ;	SRC/lab4.c:400: LCD_Clear();
   3798 12 22 2F           2456 	lcall	_LCD_Clear
                           2457 ;	SRC/lab4.c:402: LCD_Type("    Password:   "); //предложение ввода
   379B 90 3F 73           2458 	mov	dptr,#__str_22
   379E 75 F0 80           2459 	mov	b,#0x80
   37A1 12 23 84           2460 	lcall	_LCD_Type
   37A4 D0 03              2461 	pop	ar3
   37A6 D0 02              2462 	pop	ar2
                           2463 ;	SRC/lab4.c:404: for(i=0; i<4; i++){
   37A8 7C 00              2464 	mov	r4,#0x00
   37AA                    2465 00188$:
   37AA BC 04 00           2466 	cjne	r4,#0x04,00253$
   37AD                    2467 00253$:
   37AD 40 03              2468 	jc	00254$
   37AF 02 38 92           2469 	ljmp	00191$
   37B2                    2470 00254$:
                           2471 ;	SRC/lab4.c:405: while( ! ScanKBOnce(&input[i]) ){
   37B2                    2472 00118$:
   37B2 EC                 2473 	mov	a,r4
   37B3 24 00              2474 	add	a,#_input
   37B5 FD                 2475 	mov	r5,a
   37B6 E4                 2476 	clr	a
   37B7 34 60              2477 	addc	a,#(_input >> 8)
   37B9 FE                 2478 	mov	r6,a
   37BA 7F 00              2479 	mov	r7,#0x00
   37BC 8D 82              2480 	mov	dpl,r5
   37BE 8E 83              2481 	mov	dph,r6
   37C0 8F F0              2482 	mov	b,r7
   37C2 C0 02              2483 	push	ar2
   37C4 C0 03              2484 	push	ar3
   37C6 C0 04              2485 	push	ar4
   37C8 12 23 DF           2486 	lcall	_ScanKBOnce
   37CB D0 04              2487 	pop	ar4
   37CD D0 03              2488 	pop	ar3
   37CF D0 02              2489 	pop	ar2
   37D1 40 5A              2490 	jc	00120$
                           2491 ;	SRC/lab4.c:407: if( i>0 && !getTime(&CurrentTime) ){
   37D3 EC                 2492 	mov	a,r4
   37D4 60 DC              2493 	jz	00118$
   37D6 90 60 08           2494 	mov	dptr,#_CurrentTime
   37D9 C0 02              2495 	push	ar2
   37DB C0 03              2496 	push	ar3
   37DD C0 04              2497 	push	ar4
   37DF 12 2C 4C           2498 	lcall	_getTime
   37E2 E5 82              2499 	mov	a,dpl
   37E4 D0 04              2500 	pop	ar4
   37E6 D0 03              2501 	pop	ar3
   37E8 D0 02              2502 	pop	ar2
   37EA 70 C6              2503 	jnz	00118$
                           2504 ;	SRC/lab4.c:414: if( CheckTimeLimitSec(&StartTime, &CurrentTime, INPUT_CODE_TIME_LIMIT) ){
   37EC C0 02              2505 	push	ar2
   37EE C0 03              2506 	push	ar3
   37F0 C0 04              2507 	push	ar4
   37F2 74 DC              2508 	mov	a,#0xDC
   37F4 C0 E0              2509 	push	acc
   37F6 74 05              2510 	mov	a,#0x05
   37F8 C0 E0              2511 	push	acc
   37FA 74 08              2512 	mov	a,#_CurrentTime
   37FC C0 E0              2513 	push	acc
   37FE 74 60              2514 	mov	a,#(_CurrentTime >> 8)
   3800 C0 E0              2515 	push	acc
   3802 90 60 04           2516 	mov	dptr,#_StartTime
   3805 12 2E 64           2517 	lcall	_CheckTimeLimitSec
   3808 AD 82              2518 	mov	r5,dpl
   380A E5 81              2519 	mov	a,sp
   380C 24 FC              2520 	add	a,#0xfc
   380E F5 81              2521 	mov	sp,a
   3810 D0 04              2522 	pop	ar4
   3812 D0 03              2523 	pop	ar3
   3814 D0 02              2524 	pop	ar2
   3816 ED                 2525 	mov	a,r5
   3817 60 99              2526 	jz	00118$
                           2527 ;	SRC/lab4.c:415: message("Input code time limit exceeded!"); //log("Input code time limit exceeded!");
   3819 90 3F 84           2528 	mov	dptr,#__str_23
   381C 75 F0 80           2529 	mov	b,#0x80
   381F C0 02              2530 	push	ar2
   3821 C0 03              2531 	push	ar3
   3823 12 30 C1           2532 	lcall	_message
   3826 D0 03              2533 	pop	ar3
   3828 D0 02              2534 	pop	ar2
                           2535 ;	SRC/lab4.c:416: goto wait;
   382A 02 37 89           2536 	ljmp	00174$
   382D                    2537 00120$:
                           2538 ;	SRC/lab4.c:421: if(i==0) getTime(&StartTime); //начало отсчета
   382D EC                 2539 	mov	a,r4
   382E 70 12              2540 	jnz	00122$
   3830 90 60 04           2541 	mov	dptr,#_StartTime
   3833 C0 02              2542 	push	ar2
   3835 C0 03              2543 	push	ar3
   3837 C0 04              2544 	push	ar4
   3839 12 2C 4C           2545 	lcall	_getTime
   383C D0 04              2546 	pop	ar4
   383E D0 03              2547 	pop	ar3
   3840 D0 02              2548 	pop	ar2
   3842                    2549 00122$:
                           2550 ;	SRC/lab4.c:422: if(input[i]=='C'){
   3842 EC                 2551 	mov	a,r4
   3843 24 00              2552 	add	a,#_input
   3845 F5 82              2553 	mov	dpl,a
   3847 E4                 2554 	clr	a
   3848 34 60              2555 	addc	a,#(_input >> 8)
   384A F5 83              2556 	mov	dph,a
   384C E0                 2557 	movx	a,@dptr
   384D FD                 2558 	mov	r5,a
   384E BD 43 11           2559 	cjne	r5,#0x43,00126$
                           2560 ;	SRC/lab4.c:423: log(INPUT_CANCELED);
   3851 75 82 08           2561 	mov	dpl,#0x08
   3854 C0 02              2562 	push	ar2
   3856 C0 03              2563 	push	ar3
   3858 12 35 78           2564 	lcall	_log
   385B D0 03              2565 	pop	ar3
   385D D0 02              2566 	pop	ar2
                           2567 ;	SRC/lab4.c:424: goto wait;
   385F 02 37 89           2568 	ljmp	00174$
                           2569 ;	SRC/lab4.c:429: LCD_Putch(input[i]);
   3862                    2570 00126$:
                           2571 ;	SRC/lab4.c:431: WriteMax(LEDLINE, POW2((i+1)*2) - 1);
   3862 EC                 2572 	mov	a,r4
   3863 04                 2573 	inc	a
   3864 FD                 2574 	mov	r5,a
   3865 25 E0              2575 	add	a,acc
   3867 FE                 2576 	mov	r6,a
   3868 8E F0              2577 	mov	b,r6
   386A 05 F0              2578 	inc	b
   386C 74 01              2579 	mov	a,#0x01
   386E 80 02              2580 	sjmp	00264$
   3870                    2581 00262$:
   3870 25 E0              2582 	add	a,acc
   3872                    2583 00264$:
   3872 D5 F0 FB           2584 	djnz	b,00262$
   3875 14                 2585 	dec	a
   3876 FE                 2586 	mov	r6,a
   3877 C0 02              2587 	push	ar2
   3879 C0 03              2588 	push	ar3
   387B C0 05              2589 	push	ar5
   387D C0 06              2590 	push	ar6
   387F 90 00 07           2591 	mov	dptr,#0x0007
   3882 12 21 AA           2592 	lcall	_WriteMax
   3885 15 81              2593 	dec	sp
   3887 D0 05              2594 	pop	ar5
   3889 D0 03              2595 	pop	ar3
   388B D0 02              2596 	pop	ar2
                           2597 ;	SRC/lab4.c:404: for(i=0; i<4; i++){
   388D 8D 04              2598 	mov	ar4,r5
   388F 02 37 AA           2599 	ljmp	00188$
   3892                    2600 00191$:
                           2601 ;	SRC/lab4.c:434: delay(20);
   3892 90 00 14           2602 	mov	dptr,#0x0014
   3895 C0 02              2603 	push	ar2
   3897 C0 03              2604 	push	ar3
   3899 12 2E AF           2605 	lcall	_delay
                           2606 ;	SRC/lab4.c:435: WriteMax(LEDLINE, 0);//убираем светодиоды
   389C E4                 2607 	clr	a
   389D C0 E0              2608 	push	acc
   389F 90 00 07           2609 	mov	dptr,#0x0007
   38A2 12 21 AA           2610 	lcall	_WriteMax
   38A5 15 81              2611 	dec	sp
                           2612 ;	SRC/lab4.c:440: if(CompareString(service_code, input, 4))
   38A7 74 04              2613 	mov	a,#0x04
   38A9 C0 E0              2614 	push	acc
   38AB 74 00              2615 	mov	a,#_input
   38AD C0 E0              2616 	push	acc
   38AF 74 60              2617 	mov	a,#(_input >> 8)
   38B1 C0 E0              2618 	push	acc
   38B3 E4                 2619 	clr	a
   38B4 C0 E0              2620 	push	acc
   38B6 90 60 1E           2621 	mov	dptr,#_service_code
   38B9 75 F0 00           2622 	mov	b,#0x00
   38BC 12 32 A8           2623 	lcall	_CompareString
   38BF AD 82              2624 	mov	r5,dpl
   38C1 E5 81              2625 	mov	a,sp
   38C3 24 FC              2626 	add	a,#0xfc
   38C5 F5 81              2627 	mov	sp,a
   38C7 D0 03              2628 	pop	ar3
   38C9 D0 02              2629 	pop	ar2
   38CB ED                 2630 	mov	a,r5
   38CC 60 14              2631 	jz	00168$
                           2632 ;	SRC/lab4.c:441: Type("Not a service code\r\n");
   38CE 90 3F A4           2633 	mov	dptr,#__str_24
   38D1 75 F0 80           2634 	mov	b,#0x80
   38D4 C0 02              2635 	push	ar2
   38D6 C0 03              2636 	push	ar3
   38D8 12 24 E3           2637 	lcall	_Type
   38DB D0 03              2638 	pop	ar3
   38DD D0 02              2639 	pop	ar2
   38DF 02 3B E1           2640 	ljmp	00169$
   38E2                    2641 00168$:
                           2642 ;	SRC/lab4.c:443: log(SERVICE_LOGIN_SUCCEED);
   38E2 75 82 0A           2643 	mov	dpl,#0x0A
   38E5 C0 02              2644 	push	ar2
   38E7 C0 03              2645 	push	ar3
   38E9 12 35 78           2646 	lcall	_log
                           2647 ;	SRC/lab4.c:445: LCD_Clear();
   38EC 12 22 2F           2648 	lcall	_LCD_Clear
                           2649 ;	SRC/lab4.c:446: LCD_Type("  Service Menu: "); 
   38EF 90 3F B9           2650 	mov	dptr,#__str_25
   38F2 75 F0 80           2651 	mov	b,#0x80
   38F5 12 23 84           2652 	lcall	_LCD_Type
                           2653 ;	SRC/lab4.c:449: delay(1);
   38F8 90 00 01           2654 	mov	dptr,#0x0001
   38FB 12 2E AF           2655 	lcall	_delay
                           2656 ;	SRC/lab4.c:450: LCD_Clear();
   38FE 12 22 2F           2657 	lcall	_LCD_Clear
                           2658 ;	SRC/lab4.c:451: LCD_Type("2 - View logs");
   3901 90 3F CA           2659 	mov	dptr,#__str_26
   3904 75 F0 80           2660 	mov	b,#0x80
   3907 12 23 84           2661 	lcall	_LCD_Type
                           2662 ;	SRC/lab4.c:452: LCD_GotoXY(0,1);
   390A D2 F0              2663 	setb	b[0]
   390C 85 F0 21           2664 	mov	bits,b
   390F 75 82 00           2665 	mov	dpl,#0x00
   3912 12 23 4D           2666 	lcall	_LCD_GotoXY
                           2667 ;	SRC/lab4.c:453: LCD_Type("5 - Change code");			
   3915 90 3F D8           2668 	mov	dptr,#__str_27
   3918 75 F0 80           2669 	mov	b,#0x80
   391B 12 23 84           2670 	lcall	_LCD_Type
                           2671 ;	SRC/lab4.c:455: getTime(&StartTime);
   391E 90 60 04           2672 	mov	dptr,#_StartTime
   3921 12 2C 4C           2673 	lcall	_getTime
   3924 D0 03              2674 	pop	ar3
   3926 D0 02              2675 	pop	ar2
                           2676 ;	SRC/lab4.c:456: while( ! ScanKBOnce(&input[0]) ){
   3928                    2677 00129$:
   3928 90 60 00           2678 	mov	dptr,#_input
   392B 75 F0 00           2679 	mov	b,#0x00
   392E C0 02              2680 	push	ar2
   3930 C0 03              2681 	push	ar3
   3932 12 23 DF           2682 	lcall	_ScanKBOnce
   3935 D0 03              2683 	pop	ar3
   3937 D0 02              2684 	pop	ar2
   3939 40 52              2685 	jc	00131$
                           2686 ;	SRC/lab4.c:458: getTime(&CurrentTime);
   393B 90 60 08           2687 	mov	dptr,#_CurrentTime
   393E C0 02              2688 	push	ar2
   3940 C0 03              2689 	push	ar3
   3942 12 2C 4C           2690 	lcall	_getTime
                           2691 ;	SRC/lab4.c:460: if( CheckTimeLimitSec(&StartTime, &CurrentTime, SERVICE_MENU_TIME_LIMIT) ){
   3945 74 70              2692 	mov	a,#0x70
   3947 C0 E0              2693 	push	acc
   3949 74 17              2694 	mov	a,#0x17
   394B C0 E0              2695 	push	acc
   394D 74 08              2696 	mov	a,#_CurrentTime
   394F C0 E0              2697 	push	acc
   3951 74 60              2698 	mov	a,#(_CurrentTime >> 8)
   3953 C0 E0              2699 	push	acc
   3955 90 60 04           2700 	mov	dptr,#_StartTime
   3958 12 2E 64           2701 	lcall	_CheckTimeLimitSec
   395B AD 82              2702 	mov	r5,dpl
   395D E5 81              2703 	mov	a,sp
   395F 24 FC              2704 	add	a,#0xfc
   3961 F5 81              2705 	mov	sp,a
   3963 D0 03              2706 	pop	ar3
   3965 D0 02              2707 	pop	ar2
   3967 ED                 2708 	mov	a,r5
   3968 60 BE              2709 	jz	00129$
                           2710 ;	SRC/lab4.c:461: LCD_Type("Leaving the service menu");
   396A 90 3F E8           2711 	mov	dptr,#__str_28
   396D 75 F0 80           2712 	mov	b,#0x80
   3970 C0 02              2713 	push	ar2
   3972 C0 03              2714 	push	ar3
   3974 12 23 84           2715 	lcall	_LCD_Type
                           2716 ;	SRC/lab4.c:462: Type("Time limit in the service menu exceeded!\r\n");
   3977 90 40 01           2717 	mov	dptr,#__str_29
   397A 75 F0 80           2718 	mov	b,#0x80
   397D 12 24 E3           2719 	lcall	_Type
                           2720 ;	SRC/lab4.c:463: log(SERVICE_MENU_TIMELIMIT_EXCCEEDED);
   3980 75 82 0B           2721 	mov	dpl,#0x0B
   3983 12 35 78           2722 	lcall	_log
   3986 D0 03              2723 	pop	ar3
   3988 D0 02              2724 	pop	ar2
                           2725 ;	SRC/lab4.c:464: goto wait;
   398A 02 37 89           2726 	ljmp	00174$
   398D                    2727 00131$:
                           2728 ;	SRC/lab4.c:467: switch(input[0] - '0'){
   398D 90 60 00           2729 	mov	dptr,#_input
   3990 E0                 2730 	movx	a,@dptr
   3991 FD                 2731 	mov	r5,a
   3992 7F 00              2732 	mov	r7,#0x00
   3994 24 D0              2733 	add	a,#0xd0
   3996 FE                 2734 	mov	r6,a
   3997 EF                 2735 	mov	a,r7
   3998 34 FF              2736 	addc	a,#0xff
   399A FF                 2737 	mov	r7,a
   399B BE 02 06           2738 	cjne	r6,#0x02,00268$
   399E BF 00 03           2739 	cjne	r7,#0x00,00268$
   39A1 02 3B 2D           2740 	ljmp	00236$
   39A4                    2741 00268$:
   39A4 BE 05 05           2742 	cjne	r6,#0x05,00269$
   39A7 BF 00 02           2743 	cjne	r7,#0x00,00269$
   39AA 80 03              2744 	sjmp	00270$
   39AC                    2745 00269$:
   39AC 02 3B C8           2746 	ljmp	00163$
   39AF                    2747 00270$:
                           2748 ;	SRC/lab4.c:469: LCD_Clear();
   39AF C0 02              2749 	push	ar2
   39B1 C0 03              2750 	push	ar3
   39B3 12 22 2F           2751 	lcall	_LCD_Clear
                           2752 ;	SRC/lab4.c:470: LCD_GotoXY(0,0);
   39B6 C2 F0              2753 	clr	b[0]
   39B8 85 F0 21           2754 	mov	bits,b
   39BB 75 82 00           2755 	mov	dpl,#0x00
   39BE 12 23 4D           2756 	lcall	_LCD_GotoXY
                           2757 ;	SRC/lab4.c:471: LCD_Type(" Enter new code "); 
   39C1 90 40 2C           2758 	mov	dptr,#__str_30
   39C4 75 F0 80           2759 	mov	b,#0x80
   39C7 12 23 84           2760 	lcall	_LCD_Type
   39CA D0 03              2761 	pop	ar3
   39CC D0 02              2762 	pop	ar2
                           2763 ;	SRC/lab4.c:472: for(i=0; i<4; i++){
   39CE 7C 00              2764 	mov	r4,#0x00
   39D0                    2765 00192$:
   39D0 BC 04 00           2766 	cjne	r4,#0x04,00271$
   39D3                    2767 00271$:
   39D3 50 7B              2768 	jnc	00195$
                           2769 ;	SRC/lab4.c:473: while( ! ScanKBOnce(&input[i]) ){}
   39D5                    2770 00133$:
   39D5 C0 02              2771 	push	ar2
   39D7 C0 03              2772 	push	ar3
   39D9 EC                 2773 	mov	a,r4
   39DA 24 00              2774 	add	a,#_input
   39DC FE                 2775 	mov	r6,a
   39DD E4                 2776 	clr	a
   39DE 34 60              2777 	addc	a,#(_input >> 8)
   39E0 FF                 2778 	mov	r7,a
   39E1 7A 00              2779 	mov	r2,#0x00
   39E3 8E 82              2780 	mov	dpl,r6
   39E5 8F 83              2781 	mov	dph,r7
   39E7 8A F0              2782 	mov	b,r2
   39E9 C0 02              2783 	push	ar2
   39EB C0 03              2784 	push	ar3
   39ED C0 04              2785 	push	ar4
   39EF 12 23 DF           2786 	lcall	_ScanKBOnce
   39F2 D0 04              2787 	pop	ar4
   39F4 D0 03              2788 	pop	ar3
   39F6 D0 02              2789 	pop	ar2
   39F8 E4                 2790 	clr	a
   39F9 33                 2791 	rlc	a
   39FA D0 03              2792 	pop	ar3
   39FC D0 02              2793 	pop	ar2
   39FE 60 D5              2794 	jz	00133$
                           2795 ;	SRC/lab4.c:478: if(input[i]=='C'){
   3A00 EC                 2796 	mov	a,r4
   3A01 24 00              2797 	add	a,#_input
   3A03 F5 82              2798 	mov	dpl,a
   3A05 E4                 2799 	clr	a
   3A06 34 60              2800 	addc	a,#(_input >> 8)
   3A08 F5 83              2801 	mov	dph,a
   3A0A E0                 2802 	movx	a,@dptr
   3A0B FE                 2803 	mov	r6,a
   3A0C BE 43 11           2804 	cjne	r6,#0x43,00139$
                           2805 ;	SRC/lab4.c:479: log(INPUT_CANCELED);
   3A0F 75 82 08           2806 	mov	dpl,#0x08
   3A12 C0 02              2807 	push	ar2
   3A14 C0 03              2808 	push	ar3
   3A16 12 35 78           2809 	lcall	_log
   3A19 D0 03              2810 	pop	ar3
   3A1B D0 02              2811 	pop	ar2
                           2812 ;	SRC/lab4.c:480: goto wait;
   3A1D 02 37 89           2813 	ljmp	00174$
   3A20                    2814 00139$:
                           2815 ;	SRC/lab4.c:482: WriteMax(LEDLINE, POW2((i+1)*2) - 1);
   3A20 EC                 2816 	mov	a,r4
   3A21 04                 2817 	inc	a
   3A22 FE                 2818 	mov	r6,a
   3A23 25 E0              2819 	add	a,acc
   3A25 FF                 2820 	mov	r7,a
   3A26 8F F0              2821 	mov	b,r7
   3A28 05 F0              2822 	inc	b
   3A2A 74 01              2823 	mov	a,#0x01
   3A2C 80 02              2824 	sjmp	00278$
   3A2E                    2825 00276$:
   3A2E 25 E0              2826 	add	a,acc
   3A30                    2827 00278$:
   3A30 D5 F0 FB           2828 	djnz	b,00276$
   3A33 14                 2829 	dec	a
   3A34 FF                 2830 	mov	r7,a
   3A35 C0 02              2831 	push	ar2
   3A37 C0 03              2832 	push	ar3
   3A39 C0 06              2833 	push	ar6
   3A3B C0 07              2834 	push	ar7
   3A3D 90 00 07           2835 	mov	dptr,#0x0007
   3A40 12 21 AA           2836 	lcall	_WriteMax
   3A43 15 81              2837 	dec	sp
   3A45 D0 06              2838 	pop	ar6
   3A47 D0 03              2839 	pop	ar3
   3A49 D0 02              2840 	pop	ar2
                           2841 ;	SRC/lab4.c:472: for(i=0; i<4; i++){
   3A4B 8E 04              2842 	mov	ar4,r6
   3A4D 02 39 D0           2843 	ljmp	00192$
   3A50                    2844 00195$:
                           2845 ;	SRC/lab4.c:484: delay(30);
   3A50 90 00 1E           2846 	mov	dptr,#0x001E
   3A53 C0 02              2847 	push	ar2
   3A55 C0 03              2848 	push	ar3
   3A57 12 2E AF           2849 	lcall	_delay
                           2850 ;	SRC/lab4.c:485: WriteMax(LEDLINE, 0);
   3A5A E4                 2851 	clr	a
   3A5B C0 E0              2852 	push	acc
   3A5D 90 00 07           2853 	mov	dptr,#0x0007
   3A60 12 21 AA           2854 	lcall	_WriteMax
   3A63 15 81              2855 	dec	sp
                           2856 ;	SRC/lab4.c:487: if( WriteBlockEEPROM(USER_CODE_ADDRESS, input, 4 )){
   3A65 74 04              2857 	mov	a,#0x04
   3A67 C0 E0              2858 	push	acc
   3A69 74 00              2859 	mov	a,#_input
   3A6B C0 E0              2860 	push	acc
   3A6D 74 60              2861 	mov	a,#(_input >> 8)
   3A6F C0 E0              2862 	push	acc
   3A71 75 82 06           2863 	mov	dpl,#0x06
   3A74 12 26 D8           2864 	lcall	_WriteBlockEEPROM
   3A77 15 81              2865 	dec	sp
   3A79 15 81              2866 	dec	sp
   3A7B 15 81              2867 	dec	sp
   3A7D D0 03              2868 	pop	ar3
   3A7F D0 02              2869 	pop	ar2
   3A81 92 08              2870 	mov	b0,c
   3A83 50 1A              2871 	jnc	00141$
                           2872 ;	SRC/lab4.c:488: message("WriteBlockEEPROM error");
   3A85 90 40 3D           2873 	mov	dptr,#__str_31
   3A88 75 F0 80           2874 	mov	b,#0x80
   3A8B C0 02              2875 	push	ar2
   3A8D C0 03              2876 	push	ar3
   3A8F 12 30 C1           2877 	lcall	_message
                           2878 ;	SRC/lab4.c:489: Type("Failure during setting new user code\r\n");
   3A92 90 40 54           2879 	mov	dptr,#__str_32
   3A95 75 F0 80           2880 	mov	b,#0x80
   3A98 12 24 E3           2881 	lcall	_Type
   3A9B D0 03              2882 	pop	ar3
   3A9D D0 02              2883 	pop	ar2
   3A9F                    2884 00141$:
                           2885 ;	SRC/lab4.c:491: if( ReadBlockEEPROM(USER_CODE_ADDRESS, user_code, 4 )){
   3A9F C0 02              2886 	push	ar2
   3AA1 C0 03              2887 	push	ar3
   3AA3 74 04              2888 	mov	a,#0x04
   3AA5 C0 E0              2889 	push	acc
   3AA7 74 22              2890 	mov	a,#_user_code
   3AA9 C0 E0              2891 	push	acc
   3AAB 74 60              2892 	mov	a,#(_user_code >> 8)
   3AAD C0 E0              2893 	push	acc
   3AAF 75 82 06           2894 	mov	dpl,#0x06
   3AB2 12 29 94           2895 	lcall	_ReadBlockEEPROM
   3AB5 15 81              2896 	dec	sp
   3AB7 15 81              2897 	dec	sp
   3AB9 15 81              2898 	dec	sp
   3ABB D0 03              2899 	pop	ar3
   3ABD D0 02              2900 	pop	ar2
   3ABF 92 08              2901 	mov	b0,c
   3AC1 50 1A              2902 	jnc	00143$
                           2903 ;	SRC/lab4.c:492: message("ReadBlockEEPROM error");
   3AC3 90 40 7B           2904 	mov	dptr,#__str_33
   3AC6 75 F0 80           2905 	mov	b,#0x80
   3AC9 C0 02              2906 	push	ar2
   3ACB C0 03              2907 	push	ar3
   3ACD 12 30 C1           2908 	lcall	_message
                           2909 ;	SRC/lab4.c:493: Type("Failure during setting new user code\r\n");
   3AD0 90 40 54           2910 	mov	dptr,#__str_32
   3AD3 75 F0 80           2911 	mov	b,#0x80
   3AD6 12 24 E3           2912 	lcall	_Type
   3AD9 D0 03              2913 	pop	ar3
   3ADB D0 02              2914 	pop	ar2
   3ADD                    2915 00143$:
                           2916 ;	SRC/lab4.c:495: if(CompareString(user_code, input, 4)){
   3ADD C0 02              2917 	push	ar2
   3ADF C0 03              2918 	push	ar3
   3AE1 74 04              2919 	mov	a,#0x04
   3AE3 C0 E0              2920 	push	acc
   3AE5 74 00              2921 	mov	a,#_input
   3AE7 C0 E0              2922 	push	acc
   3AE9 74 60              2923 	mov	a,#(_input >> 8)
   3AEB C0 E0              2924 	push	acc
   3AED E4                 2925 	clr	a
   3AEE C0 E0              2926 	push	acc
   3AF0 90 60 22           2927 	mov	dptr,#_user_code
   3AF3 75 F0 00           2928 	mov	b,#0x00
   3AF6 12 32 A8           2929 	lcall	_CompareString
   3AF9 AC 82              2930 	mov	r4,dpl
   3AFB E5 81              2931 	mov	a,sp
   3AFD 24 FC              2932 	add	a,#0xfc
   3AFF F5 81              2933 	mov	sp,a
   3B01 D0 03              2934 	pop	ar3
   3B03 D0 02              2935 	pop	ar2
   3B05 EC                 2936 	mov	a,r4
   3B06 60 11              2937 	jz	00145$
                           2938 ;	SRC/lab4.c:497: message("CompareString error");
   3B08 90 40 91           2939 	mov	dptr,#__str_34
   3B0B 75 F0 80           2940 	mov	b,#0x80
   3B0E C0 02              2941 	push	ar2
   3B10 C0 03              2942 	push	ar3
   3B12 12 30 C1           2943 	lcall	_message
   3B15 D0 03              2944 	pop	ar3
   3B17 D0 02              2945 	pop	ar2
   3B19                    2946 00145$:
                           2947 ;	SRC/lab4.c:499: message("User code successfully changed");
   3B19 90 40 A5           2948 	mov	dptr,#__str_35
   3B1C 75 F0 80           2949 	mov	b,#0x80
   3B1F C0 02              2950 	push	ar2
   3B21 C0 03              2951 	push	ar3
   3B23 12 30 C1           2952 	lcall	_message
   3B26 D0 03              2953 	pop	ar3
   3B28 D0 02              2954 	pop	ar2
                           2955 ;	SRC/lab4.c:500: break;
   3B2A 02 37 89           2956 	ljmp	00174$
                           2957 ;	SRC/lab4.c:502: do {
   3B2D                    2958 00236$:
   3B2D                    2959 00160$:
                           2960 ;	SRC/lab4.c:503: if(cur_log>=0 && cur_log<num_log) //не совсем так
   3B2D EB                 2961 	mov	a,r3
   3B2E 20 E7 20           2962 	jb	acc.7,00148$
   3B31 AC 1D              2963 	mov	r4,_num_log
   3B33 7E 00              2964 	mov	r6,#0x00
   3B35 C3                 2965 	clr	c
   3B36 EA                 2966 	mov	a,r2
   3B37 9C                 2967 	subb	a,r4
   3B38 EB                 2968 	mov	a,r3
   3B39 64 80              2969 	xrl	a,#0x80
   3B3B 8E F0              2970 	mov	b,r6
   3B3D 63 F0 80           2971 	xrl	b,#0x80
   3B40 95 F0              2972 	subb	a,b
   3B42 50 0D              2973 	jnc	00148$
                           2974 ;	SRC/lab4.c:504: PrintConLog(cur_log);				
   3B44 8A 82              2975 	mov	dpl,r2
   3B46 C0 02              2976 	push	ar2
   3B48 C0 03              2977 	push	ar3
   3B4A 12 34 BF           2978 	lcall	_PrintConLog
   3B4D D0 03              2979 	pop	ar3
   3B4F D0 02              2980 	pop	ar2
   3B51                    2981 00148$:
                           2982 ;	SRC/lab4.c:507: if(input[0]=='A')
   3B51 90 60 00           2983 	mov	dptr,#_input
   3B54 E0                 2984 	movx	a,@dptr
   3B55 FC                 2985 	mov	r4,a
   3B56 BC 41 25           2986 	cjne	r4,#0x41,00154$
                           2987 ;	SRC/lab4.c:508: if(cur_log==0) 			{LCD_Clear(); LCD_Type("Reached the start of the list."); delay(100);}
   3B59 EA                 2988 	mov	a,r2
   3B5A 4B                 2989 	orl	a,r3
   3B5B 70 1C              2990 	jnz	00151$
   3B5D C0 02              2991 	push	ar2
   3B5F C0 03              2992 	push	ar3
   3B61 12 22 2F           2993 	lcall	_LCD_Clear
   3B64 90 40 C4           2994 	mov	dptr,#__str_36
   3B67 75 F0 80           2995 	mov	b,#0x80
   3B6A 12 23 84           2996 	lcall	_LCD_Type
   3B6D 90 00 64           2997 	mov	dptr,#0x0064
   3B70 12 2E AF           2998 	lcall	_delay
   3B73 D0 03              2999 	pop	ar3
   3B75 D0 02              3000 	pop	ar2
   3B77 80 05              3001 	sjmp	00154$
   3B79                    3002 00151$:
                           3003 ;	SRC/lab4.c:509: else cur_log--;	
   3B79 1A                 3004 	dec	r2
   3B7A BA FF 01           3005 	cjne	r2,#0xff,00287$
   3B7D 1B                 3006 	dec	r3
   3B7E                    3007 00287$:
   3B7E                    3008 00154$:
                           3009 ;	SRC/lab4.c:510: if(input[0]=='D')
   3B7E 90 60 00           3010 	mov	dptr,#_input
   3B81 E0                 3011 	movx	a,@dptr
   3B82 FC                 3012 	mov	r4,a
   3B83 BC 44 32           3013 	cjne	r4,#0x44,00161$
                           3014 ;	SRC/lab4.c:511: if(cur_log==num_log-1)  {LCD_Clear(); LCD_Type("Reached the end of the list."); delay(100); }
   3B86 AC 1D              3015 	mov	r4,_num_log
   3B88 7E 00              3016 	mov	r6,#0x00
   3B8A 1C                 3017 	dec	r4
   3B8B BC FF 01           3018 	cjne	r4,#0xff,00290$
   3B8E 1E                 3019 	dec	r6
   3B8F                    3020 00290$:
   3B8F EA                 3021 	mov	a,r2
   3B90 B5 04 20           3022 	cjne	a,ar4,00156$
   3B93 EB                 3023 	mov	a,r3
   3B94 B5 06 1C           3024 	cjne	a,ar6,00156$
   3B97 C0 02              3025 	push	ar2
   3B99 C0 03              3026 	push	ar3
   3B9B 12 22 2F           3027 	lcall	_LCD_Clear
   3B9E 90 40 E3           3028 	mov	dptr,#__str_37
   3BA1 75 F0 80           3029 	mov	b,#0x80
   3BA4 12 23 84           3030 	lcall	_LCD_Type
   3BA7 90 00 64           3031 	mov	dptr,#0x0064
   3BAA 12 2E AF           3032 	lcall	_delay
   3BAD D0 03              3033 	pop	ar3
   3BAF D0 02              3034 	pop	ar2
   3BB1 80 05              3035 	sjmp	00161$
   3BB3                    3036 00156$:
                           3037 ;	SRC/lab4.c:512: else cur_log++;								
   3BB3 0A                 3038 	inc	r2
   3BB4 BA 00 01           3039 	cjne	r2,#0x00,00293$
   3BB7 0B                 3040 	inc	r3
   3BB8                    3041 00293$:
   3BB8                    3042 00161$:
                           3043 ;	SRC/lab4.c:513: }while(input[0]!='C');
   3BB8 90 60 00           3044 	mov	dptr,#_input
   3BBB E0                 3045 	movx	a,@dptr
   3BBC FC                 3046 	mov	r4,a
   3BBD BC 43 02           3047 	cjne	r4,#0x43,00294$
   3BC0 80 03              3048 	sjmp	00295$
   3BC2                    3049 00294$:
   3BC2 02 3B 2D           3050 	ljmp	00160$
   3BC5                    3051 00295$:
                           3052 ;	SRC/lab4.c:514: break;
   3BC5 02 37 89           3053 	ljmp	00174$
                           3054 ;	SRC/lab4.c:515: default:
   3BC8                    3055 00163$:
                           3056 ;	SRC/lab4.c:516: if(input[0]=='C'){
   3BC8 BD 43 02           3057 	cjne	r5,#0x43,00296$
   3BCB 80 03              3058 	sjmp	00297$
   3BCD                    3059 00296$:
   3BCD 02 37 89           3060 	ljmp	00174$
   3BD0                    3061 00297$:
                           3062 ;	SRC/lab4.c:517: log(INPUT_CANCELED);
   3BD0 75 82 08           3063 	mov	dpl,#0x08
   3BD3 C0 02              3064 	push	ar2
   3BD5 C0 03              3065 	push	ar3
   3BD7 12 35 78           3066 	lcall	_log
   3BDA D0 03              3067 	pop	ar3
   3BDC D0 02              3068 	pop	ar2
                           3069 ;	SRC/lab4.c:518: goto wait;
   3BDE 02 37 89           3070 	ljmp	00174$
                           3071 ;	SRC/lab4.c:522: goto wait;
   3BE1                    3072 00169$:
                           3073 ;	SRC/lab4.c:527: if(CompareString(user_code, input, 4)){
   3BE1 C0 02              3074 	push	ar2
   3BE3 C0 03              3075 	push	ar3
   3BE5 74 04              3076 	mov	a,#0x04
   3BE7 C0 E0              3077 	push	acc
   3BE9 74 00              3078 	mov	a,#_input
   3BEB C0 E0              3079 	push	acc
   3BED 74 60              3080 	mov	a,#(_input >> 8)
   3BEF C0 E0              3081 	push	acc
   3BF1 E4                 3082 	clr	a
   3BF2 C0 E0              3083 	push	acc
   3BF4 90 60 22           3084 	mov	dptr,#_user_code
   3BF7 75 F0 00           3085 	mov	b,#0x00
   3BFA 12 32 A8           3086 	lcall	_CompareString
   3BFD AC 82              3087 	mov	r4,dpl
   3BFF E5 81              3088 	mov	a,sp
   3C01 24 FC              3089 	add	a,#0xfc
   3C03 F5 81              3090 	mov	sp,a
   3C05 D0 03              3091 	pop	ar3
   3C07 D0 02              3092 	pop	ar2
   3C09 EC                 3093 	mov	a,r4
   3C0A 60 1A              3094 	jz	00171$
                           3095 ;	SRC/lab4.c:528: message(" Incorrect code ");
   3C0C 90 41 00           3096 	mov	dptr,#__str_38
   3C0F 75 F0 80           3097 	mov	b,#0x80
   3C12 C0 02              3098 	push	ar2
   3C14 C0 03              3099 	push	ar3
   3C16 12 30 C1           3100 	lcall	_message
                           3101 ;	SRC/lab4.c:529: log(INCORRECT_CODE);
   3C19 75 82 15           3102 	mov	dpl,#0x15
   3C1C 12 35 78           3103 	lcall	_log
   3C1F D0 03              3104 	pop	ar3
   3C21 D0 02              3105 	pop	ar2
   3C23 02 37 89           3106 	ljmp	00174$
   3C26                    3107 00171$:
                           3108 ;	SRC/lab4.c:533: WriteMax(LEDLINE, 0xAA);
   3C26 C0 02              3109 	push	ar2
   3C28 C0 03              3110 	push	ar3
   3C2A 74 AA              3111 	mov	a,#0xAA
   3C2C C0 E0              3112 	push	acc
   3C2E 90 00 07           3113 	mov	dptr,#0x0007
   3C31 12 21 AA           3114 	lcall	_WriteMax
   3C34 15 81              3115 	dec	sp
                           3116 ;	SRC/lab4.c:535: LCD_Clear();
   3C36 12 22 2F           3117 	lcall	_LCD_Clear
                           3118 ;	SRC/lab4.c:536: LCD_Type("  Door is open! ");
   3C39 90 41 11           3119 	mov	dptr,#__str_39
   3C3C 75 F0 80           3120 	mov	b,#0x80
   3C3F 12 23 84           3121 	lcall	_LCD_Type
                           3122 ;	SRC/lab4.c:537: LCD_Type("   Come on in!  ");
   3C42 90 41 22           3123 	mov	dptr,#__str_40
   3C45 75 F0 80           3124 	mov	b,#0x80
   3C48 12 23 84           3125 	lcall	_LCD_Type
                           3126 ;	SRC/lab4.c:538: log(DOOR_IS_OPEN);
   3C4B 75 82 04           3127 	mov	dpl,#0x04
   3C4E 12 35 78           3128 	lcall	_log
                           3129 ;	SRC/lab4.c:540: delay(DOOR_OPEN_TIME_LIMIT);
   3C51 90 01 F4           3130 	mov	dptr,#0x01F4
   3C54 12 2E AF           3131 	lcall	_delay
                           3132 ;	SRC/lab4.c:541: log(DOOR_IS_CLOSE);
   3C57 75 82 05           3133 	mov	dpl,#0x05
   3C5A 12 35 78           3134 	lcall	_log
   3C5D D0 03              3135 	pop	ar3
   3C5F D0 02              3136 	pop	ar2
   3C61 02 37 89           3137 	ljmp	00174$
                           3138 	.area CSEG    (CODE)
                           3139 	.area CONST   (CODE)
   3E1F                    3140 __str_0:
   3E1F 47 65 74 54 69 6D  3141 	.ascii "GetTime failed"
        65 20 66 61 69 6C
        65 64
   3E2D 00                 3142 	.db 0x00
   3E2E                    3143 __str_1:
   3E2E 20 20 20 20 20 20  3144 	.ascii "                "
        20 20 20 20 20 20
        20 20 20 20
   3E3E 00                 3145 	.db 0x00
   3E3F                    3146 __str_2:
   3E3F 0D                 3147 	.db 0x0D
   3E40 0A                 3148 	.db 0x0A
   3E41 00                 3149 	.db 0x00
   3E42                    3150 __str_3:
   3E42 52 65 61 64 20 45  3151 	.ascii "Read EEEPROM error!"
        45 45 50 52 4F 4D
        20 65 72 72 6F 72
        21
   3E55 00                 3152 	.db 0x00
   3E56                    3153 __str_4:
   3E56 53 74 61 72 74     3154 	.ascii "Start"
   3E5B 00                 3155 	.db 0x00
   3E5C                    3156 __str_5:
   3E5C 49 6E 69 74 69 61  3157 	.ascii "Initialization"
        6C 69 7A 61 74 69
        6F 6E
   3E6A 00                 3158 	.db 0x00
   3E6B                    3159 __str_6:
   3E6B 53 65 72 76 69 63  3160 	.ascii "Service login succeed"
        65 20 6C 6F 67 69
        6E 20 73 75 63 63
        65 65 64
   3E80 00                 3161 	.db 0x00
   3E81                    3162 __str_7:
   3E81 54 69 6D 65 20 6C  3163 	.ascii "Time limit in the service menu exceeded!"
        69 6D 69 74 20 69
        6E 20 74 68 65 20
        73 65 72 76 69 63
        65 20 6D 65 6E 75
        20 65 78 63 65 65
        64 65 64 21
   3EA9 00                 3164 	.db 0x00
   3EAA                    3165 __str_8:
   3EAA 55 73 65 72 20 6C  3166 	.ascii "User login succeed"
        6F 67 69 6E 20 73
        75 63 63 65 65 64
   3EBC 00                 3167 	.db 0x00
   3EBD                    3168 __str_9:
   3EBD 44 6F 6F 72 20 69  3169 	.ascii "Door is open"
        73 20 6F 70 65 6E
   3EC9 00                 3170 	.db 0x00
   3ECA                    3171 __str_10:
   3ECA 44 6F 6F 72 20 69  3172 	.ascii "Door is close"
        73 20 63 6C 6F 73
        65
   3ED7 00                 3173 	.db 0x00
   3ED8                    3174 __str_11:
   3ED8 49 6E 63 6F 72 72  3175 	.ascii "Incorrect code"
        65 63 74 20 63 6F
        64 65
   3EE6 00                 3176 	.db 0x00
   3EE7                    3177 __str_12:
   3EE7 49 6E 70 75 74 20  3178 	.ascii "Input canceled"
        63 61 6E 63 65 6C
        65 64
   3EF5 00                 3179 	.db 0x00
   3EF6                    3180 __str_13:
   3EF6 23                 3181 	.ascii "#"
   3EF7 00                 3182 	.db 0x00
   3EF8                    3183 __str_14:
   3EF8 57 72 69 74 65 20  3184 	.ascii "Write error!"
        65 72 72 6F 72 21
   3F04 00                 3185 	.db 0x00
   3F05                    3186 __str_15:
   3F05 49 6E 69 74 69 61  3187 	.ascii "Initialization"
        6C 69 7A 61 74 69
        6F 6E
   3F13 0D                 3188 	.db 0x0D
   3F14 0A                 3189 	.db 0x0A
   3F15 00                 3190 	.db 0x00
   3F16                    3191 __str_16:
   3F16 42 53              3192 	.ascii "BS"
   3F18 00                 3193 	.db 0x00
   3F19                    3194 __str_17:
   3F19 4D 61 67 69 63 20  3195 	.ascii "Magic not found!"
        6E 6F 74 20 66 6F
        75 6E 64 21
   3F29 0D                 3196 	.db 0x0D
   3F2A 0A                 3197 	.db 0x0A
   3F2B 00                 3198 	.db 0x00
   3F2C                    3199 __str_18:
   3F2C 38 38 38 38        3200 	.ascii "8888"
   3F30 00                 3201 	.db 0x00
   3F31                    3202 __str_19:
   3F31 35 35 35 35        3203 	.ascii "5555"
   3F35 00                 3204 	.db 0x00
   3F36                    3205 __str_20:
   3F36 46 61 69 6C 75 72  3206 	.ascii "Failure during setting default service code"
        65 20 64 75 72 69
        6E 67 20 73 65 74
        74 69 6E 67 20 64
        65 66 61 75 6C 74
        20 73 65 72 76 69
        63 65 20 63 6F 64
        65
   3F61 0D                 3207 	.db 0x0D
   3F62 0A                 3208 	.db 0x0A
   3F63 00                 3209 	.db 0x00
   3F64                    3210 __str_21:
   3F64 4D 61 67 69 63 20  3211 	.ascii "Magic found!"
        66 6F 75 6E 64 21
   3F70 0D                 3212 	.db 0x0D
   3F71 0A                 3213 	.db 0x0A
   3F72 00                 3214 	.db 0x00
   3F73                    3215 __str_22:
   3F73 20 20 20 20 50 61  3216 	.ascii "    Password:   "
        73 73 77 6F 72 64
        3A 20 20 20
   3F83 00                 3217 	.db 0x00
   3F84                    3218 __str_23:
   3F84 49 6E 70 75 74 20  3219 	.ascii "Input code time limit exceeded!"
        63 6F 64 65 20 74
        69 6D 65 20 6C 69
        6D 69 74 20 65 78
        63 65 65 64 65 64
        21
   3FA3 00                 3220 	.db 0x00
   3FA4                    3221 __str_24:
   3FA4 4E 6F 74 20 61 20  3222 	.ascii "Not a service code"
        73 65 72 76 69 63
        65 20 63 6F 64 65
   3FB6 0D                 3223 	.db 0x0D
   3FB7 0A                 3224 	.db 0x0A
   3FB8 00                 3225 	.db 0x00
   3FB9                    3226 __str_25:
   3FB9 20 20 53 65 72 76  3227 	.ascii "  Service Menu: "
        69 63 65 20 4D 65
        6E 75 3A 20
   3FC9 00                 3228 	.db 0x00
   3FCA                    3229 __str_26:
   3FCA 32 20 2D 20 56 69  3230 	.ascii "2 - View logs"
        65 77 20 6C 6F 67
        73
   3FD7 00                 3231 	.db 0x00
   3FD8                    3232 __str_27:
   3FD8 35 20 2D 20 43 68  3233 	.ascii "5 - Change code"
        61 6E 67 65 20 63
        6F 64 65
   3FE7 00                 3234 	.db 0x00
   3FE8                    3235 __str_28:
   3FE8 4C 65 61 76 69 6E  3236 	.ascii "Leaving the service menu"
        67 20 74 68 65 20
        73 65 72 76 69 63
        65 20 6D 65 6E 75
   4000 00                 3237 	.db 0x00
   4001                    3238 __str_29:
   4001 54 69 6D 65 20 6C  3239 	.ascii "Time limit in the service menu exceeded!"
        69 6D 69 74 20 69
        6E 20 74 68 65 20
        73 65 72 76 69 63
        65 20 6D 65 6E 75
        20 65 78 63 65 65
        64 65 64 21
   4029 0D                 3240 	.db 0x0D
   402A 0A                 3241 	.db 0x0A
   402B 00                 3242 	.db 0x00
   402C                    3243 __str_30:
   402C 20 45 6E 74 65 72  3244 	.ascii " Enter new code "
        20 6E 65 77 20 63
        6F 64 65 20
   403C 00                 3245 	.db 0x00
   403D                    3246 __str_31:
   403D 57 72 69 74 65 42  3247 	.ascii "WriteBlockEEPROM error"
        6C 6F 63 6B 45 45
        50 52 4F 4D 20 65
        72 72 6F 72
   4053 00                 3248 	.db 0x00
   4054                    3249 __str_32:
   4054 46 61 69 6C 75 72  3250 	.ascii "Failure during setting new user code"
        65 20 64 75 72 69
        6E 67 20 73 65 74
        74 69 6E 67 20 6E
        65 77 20 75 73 65
        72 20 63 6F 64 65
   4078 0D                 3251 	.db 0x0D
   4079 0A                 3252 	.db 0x0A
   407A 00                 3253 	.db 0x00
   407B                    3254 __str_33:
   407B 52 65 61 64 42 6C  3255 	.ascii "ReadBlockEEPROM error"
        6F 63 6B 45 45 50
        52 4F 4D 20 65 72
        72 6F 72
   4090 00                 3256 	.db 0x00
   4091                    3257 __str_34:
   4091 43 6F 6D 70 61 72  3258 	.ascii "CompareString error"
        65 53 74 72 69 6E
        67 20 65 72 72 6F
        72
   40A4 00                 3259 	.db 0x00
   40A5                    3260 __str_35:
   40A5 55 73 65 72 20 63  3261 	.ascii "User code successfully changed"
        6F 64 65 20 73 75
        63 63 65 73 73 66
        75 6C 6C 79 20 63
        68 61 6E 67 65 64
   40C3 00                 3262 	.db 0x00
   40C4                    3263 __str_36:
   40C4 52 65 61 63 68 65  3264 	.ascii "Reached the start of the list."
        64 20 74 68 65 20
        73 74 61 72 74 20
        6F 66 20 74 68 65
        20 6C 69 73 74 2E
   40E2 00                 3265 	.db 0x00
   40E3                    3266 __str_37:
   40E3 52 65 61 63 68 65  3267 	.ascii "Reached the end of the list."
        64 20 74 68 65 20
        65 6E 64 20 6F 66
        20 74 68 65 20 6C
        69 73 74 2E
   40FF 00                 3268 	.db 0x00
   4100                    3269 __str_38:
   4100 20 49 6E 63 6F 72  3270 	.ascii " Incorrect code "
        72 65 63 74 20 63
        6F 64 65 20
   4110 00                 3271 	.db 0x00
   4111                    3272 __str_39:
   4111 20 20 44 6F 6F 72  3273 	.ascii "  Door is open! "
        20 69 73 20 6F 70
        65 6E 21 20
   4121 00                 3274 	.db 0x00
   4122                    3275 __str_40:
   4122 20 20 20 43 6F 6D  3276 	.ascii "   Come on in!  "
        65 20 6F 6E 20 69
        6E 21 20 20
   4132 00                 3277 	.db 0x00
                           3278 	.area XINIT   (CODE)
   4133                    3279 __xinit__service_code:
   4133 38 38 38 38        3280 	.ascii "8888"
   4137                    3281 __xinit__user_code:
   4137 35 35 35 35        3282 	.ascii "5555"
   413B                    3283 __xinit__xbuffer:
   413B 30                 3284 	.db #0x30
   413C 00                 3285 	.db 0x00
   413D 00                 3286 	.db 0x00
   413E 00                 3287 	.db 0x00
   413F 00                 3288 	.db 0x00
   4140 00                 3289 	.db 0x00
   4141 00                 3290 	.db 0x00
   4142 00                 3291 	.db 0x00
   4143 00                 3292 	.db 0x00
   4144 00                 3293 	.db 0x00
   4145 00                 3294 	.db 0x00
   4146 00                 3295 	.db 0x00
   4147 00                 3296 	.db 0x00
   4148 00                 3297 	.db 0x00
   4149 00                 3298 	.db 0x00
   414A 00                 3299 	.db 0x00
   414B 00                 3300 	.db 0x00
   414C 00                 3301 	.db 0x00
   414D 00                 3302 	.db 0x00
   414E 00                 3303 	.db 0x00
   414F 00                 3304 	.db 0x00
   4150 00                 3305 	.db 0x00
   4151 00                 3306 	.db 0x00
   4152 00                 3307 	.db 0x00
   4153 00                 3308 	.db 0x00
   4154 00                 3309 	.db 0x00
   4155 00                 3310 	.db 0x00
   4156 00                 3311 	.db 0x00
   4157 00                 3312 	.db 0x00
   4158 00                 3313 	.db 0x00
   4159 00                 3314 	.db 0x00
   415A 00                 3315 	.db 0x00
   415B 00                 3316 	.db 0x00
   415C 00                 3317 	.db 0x00
   415D 00                 3318 	.db 0x00
   415E 00                 3319 	.db 0x00
   415F 00                 3320 	.db 0x00
   4160 00                 3321 	.db 0x00
   4161 00                 3322 	.db 0x00
   4162 00                 3323 	.db 0x00
   4163 00                 3324 	.db 0x00
   4164 00                 3325 	.db 0x00
   4165 00                 3326 	.db 0x00
   4166 00                 3327 	.db 0x00
   4167 00                 3328 	.db 0x00
   4168 00                 3329 	.db 0x00
   4169 00                 3330 	.db 0x00
   416A 00                 3331 	.db 0x00
   416B 00                 3332 	.db 0x00
   416C 00                 3333 	.db 0x00
   416D 00                 3334 	.db 0x00
   416E 00                 3335 	.db 0x00
   416F 00                 3336 	.db 0x00
   4170 00                 3337 	.db 0x00
   4171 00                 3338 	.db 0x00
   4172 00                 3339 	.db 0x00
   4173 00                 3340 	.db 0x00
   4174 00                 3341 	.db 0x00
   4175 00                 3342 	.db 0x00
   4176 00                 3343 	.db 0x00
   4177 00                 3344 	.db 0x00
   4178 00                 3345 	.db 0x00
   4179 00                 3346 	.db 0x00
   417A 00                 3347 	.db 0x00
   417B 00                 3348 	.db 0x00
   417C 00                 3349 	.db 0x00
   417D 00                 3350 	.db 0x00
   417E 00                 3351 	.db 0x00
   417F 00                 3352 	.db 0x00
   4180 00                 3353 	.db 0x00
   4181 00                 3354 	.db 0x00
   4182 00                 3355 	.db 0x00
   4183 00                 3356 	.db 0x00
   4184 00                 3357 	.db 0x00
   4185 00                 3358 	.db 0x00
   4186 00                 3359 	.db 0x00
   4187 00                 3360 	.db 0x00
   4188 00                 3361 	.db 0x00
   4189 00                 3362 	.db 0x00
   418A 00                 3363 	.db 0x00
   418B 00                 3364 	.db 0x00
   418C 00                 3365 	.db 0x00
   418D 00                 3366 	.db 0x00
   418E 00                 3367 	.db 0x00
   418F 00                 3368 	.db 0x00
   4190 00                 3369 	.db 0x00
   4191 00                 3370 	.db 0x00
   4192 00                 3371 	.db 0x00
   4193 00                 3372 	.db 0x00
   4194 00                 3373 	.db 0x00
   4195 00                 3374 	.db 0x00
   4196 00                 3375 	.db 0x00
   4197 00                 3376 	.db 0x00
   4198 00                 3377 	.db 0x00
   4199 00                 3378 	.db 0x00
   419A 00                 3379 	.db 0x00
   419B 00                 3380 	.db 0x00
   419C 00                 3381 	.db 0x00
   419D 00                 3382 	.db 0x00
   419E 00                 3383 	.db 0x00
   419F 00                 3384 	.db 0x00
   41A0 00                 3385 	.db 0x00
   41A1 00                 3386 	.db 0x00
   41A2 00                 3387 	.db 0x00
   41A3 00                 3388 	.db 0x00
   41A4 00                 3389 	.db 0x00
   41A5 00                 3390 	.db 0x00
   41A6 00                 3391 	.db 0x00
   41A7 00                 3392 	.db 0x00
   41A8 00                 3393 	.db 0x00
   41A9 00                 3394 	.db 0x00
   41AA 00                 3395 	.db 0x00
   41AB 00                 3396 	.db 0x00
   41AC 00                 3397 	.db 0x00
   41AD 00                 3398 	.db 0x00
   41AE 00                 3399 	.db 0x00
   41AF 00                 3400 	.db 0x00
   41B0 00                 3401 	.db 0x00
   41B1 00                 3402 	.db 0x00
   41B2 00                 3403 	.db 0x00
   41B3 00                 3404 	.db 0x00
   41B4 00                 3405 	.db 0x00
   41B5 00                 3406 	.db 0x00
   41B6 00                 3407 	.db 0x00
   41B7 00                 3408 	.db 0x00
   41B8 00                 3409 	.db 0x00
   41B9 00                 3410 	.db 0x00
   41BA 00                 3411 	.db 0x00
                           3412 	.area CABS    (ABS,CODE)
