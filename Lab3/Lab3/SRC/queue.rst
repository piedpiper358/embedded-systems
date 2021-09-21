                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Tue Dec 11 01:29:27 2018
                              5 ;--------------------------------------------------------
                              6 	.module queue
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Push
                             13 	.globl _Pop
                             14 	.globl _Print
                             15 	.globl _isEmpty
                             16 ;--------------------------------------------------------
                             17 ; special function registers
                             18 ;--------------------------------------------------------
                             19 	.area RSEG    (DATA)
                             20 ;--------------------------------------------------------
                             21 ; special function bits
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                             24 ;--------------------------------------------------------
                             25 ; overlayable register banks
                             26 ;--------------------------------------------------------
                             27 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      28 	.ds 8
                             29 ;--------------------------------------------------------
                             30 ; internal ram data
                             31 ;--------------------------------------------------------
                             32 	.area DSEG    (DATA)
                             33 ;--------------------------------------------------------
                             34 ; overlayable items in internal ram 
                             35 ;--------------------------------------------------------
                             36 	.area OSEG    (OVR,DATA)
                             37 ;--------------------------------------------------------
                             38 ; indirectly addressable internal ram data
                             39 ;--------------------------------------------------------
                             40 	.area ISEG    (DATA)
                             41 ;--------------------------------------------------------
                             42 ; absolute internal ram data
                             43 ;--------------------------------------------------------
                             44 	.area IABS    (ABS,DATA)
                             45 	.area IABS    (ABS,DATA)
                             46 ;--------------------------------------------------------
                             47 ; bit data
                             48 ;--------------------------------------------------------
                             49 	.area BSEG    (BIT)
                             50 ;--------------------------------------------------------
                             51 ; paged external ram data
                             52 ;--------------------------------------------------------
                             53 	.area PSEG    (PAG,XDATA)
                             54 ;--------------------------------------------------------
                             55 ; external ram data
                             56 ;--------------------------------------------------------
                             57 	.area XSEG    (XDATA)
                             58 ;--------------------------------------------------------
                             59 ; absolute external ram data
                             60 ;--------------------------------------------------------
                             61 	.area XABS    (ABS,XDATA)
                             62 ;--------------------------------------------------------
                             63 ; external initialized ram data
                             64 ;--------------------------------------------------------
                             65 	.area XISEG   (XDATA)
                             66 	.area HOME    (CODE)
                             67 	.area GSINIT0 (CODE)
                             68 	.area GSINIT1 (CODE)
                             69 	.area GSINIT2 (CODE)
                             70 	.area GSINIT3 (CODE)
                             71 	.area GSINIT4 (CODE)
                             72 	.area GSINIT5 (CODE)
                             73 	.area GSINIT  (CODE)
                             74 	.area GSFINAL (CODE)
                             75 	.area CSEG    (CODE)
                             76 ;--------------------------------------------------------
                             77 ; global & static initialisations
                             78 ;--------------------------------------------------------
                             79 	.area HOME    (CODE)
                             80 	.area GSINIT  (CODE)
                             81 	.area GSFINAL (CODE)
                             82 	.area GSINIT  (CODE)
                             83 ;--------------------------------------------------------
                             84 ; Home
                             85 ;--------------------------------------------------------
                             86 	.area HOME    (CODE)
                             87 	.area HOME    (CODE)
                             88 ;--------------------------------------------------------
                             89 ; code
                             90 ;--------------------------------------------------------
                             91 	.area CSEG    (CODE)
                             92 ;------------------------------------------------------------
                             93 ;Allocation info for local variables in function 'Push'
                             94 ;------------------------------------------------------------
                             95 ;value                     Allocated to stack - offset -3
                             96 ;queue                     Allocated to stack - offset 1
                             97 ;node                      Allocated to stack - offset 4
                             98 ;sloc0                     Allocated to stack - offset 7
                             99 ;------------------------------------------------------------
                            100 ;	SRC/queue.c:11: TQueue* Push(TQueue* queue, char value)
                            101 ;	-----------------------------------------
                            102 ;	 function Push
                            103 ;	-----------------------------------------
   248A                     104 _Push:
                    0002    105 	ar2 = 0x02
                    0003    106 	ar3 = 0x03
                    0004    107 	ar4 = 0x04
                    0005    108 	ar5 = 0x05
                    0006    109 	ar6 = 0x06
                    0007    110 	ar7 = 0x07
                    0000    111 	ar0 = 0x00
                    0001    112 	ar1 = 0x01
   248A C0 13               113 	push	_bp
   248C 85 81 13            114 	mov	_bp,sp
   248F C0 82               115 	push	dpl
   2491 C0 83               116 	push	dph
   2493 C0 F0               117 	push	b
   2495 05 81               118 	inc	sp
   2497 05 81               119 	inc	sp
   2499 05 81               120 	inc	sp
                            121 ;	SRC/queue.c:14: TNode* node = malloc(sizeof(TNode));
   249B 90 00 04            122 	mov	dptr,#0x0004
   249E 12 28 4E            123 	lcall	_malloc
   24A1 AD 82               124 	mov	r5,dpl
   24A3 AE 83               125 	mov	r6,dph
   24A5 E5 13               126 	mov	a,_bp
   24A7 24 04               127 	add	a,#0x04
   24A9 F8                  128 	mov	r0,a
   24AA A6 05               129 	mov	@r0,ar5
   24AC 08                  130 	inc	r0
   24AD A6 06               131 	mov	@r0,ar6
   24AF 08                  132 	inc	r0
   24B0 76 00               133 	mov	@r0,#0x00
                            134 ;	SRC/queue.c:16: node->value = value;
   24B2 E5 13               135 	mov	a,_bp
   24B4 24 04               136 	add	a,#0x04
   24B6 F8                  137 	mov	r0,a
   24B7 86 82               138 	mov	dpl,@r0
   24B9 08                  139 	inc	r0
   24BA 86 83               140 	mov	dph,@r0
   24BC 08                  141 	inc	r0
   24BD 86 F0               142 	mov	b,@r0
   24BF A9 13               143 	mov	r1,_bp
   24C1 19                  144 	dec	r1
   24C2 19                  145 	dec	r1
   24C3 19                  146 	dec	r1
   24C4 E7                  147 	mov	a,@r1
   24C5 12 27 DA            148 	lcall	__gptrput
                            149 ;	SRC/queue.c:19: node->next = NULL;
   24C8 E5 13               150 	mov	a,_bp
   24CA 24 04               151 	add	a,#0x04
   24CC F8                  152 	mov	r0,a
   24CD 74 01               153 	mov	a,#0x01
   24CF 26                  154 	add	a,@r0
   24D0 FA                  155 	mov	r2,a
   24D1 E4                  156 	clr	a
   24D2 08                  157 	inc	r0
   24D3 36                  158 	addc	a,@r0
   24D4 FB                  159 	mov	r3,a
   24D5 08                  160 	inc	r0
   24D6 86 04               161 	mov	ar4,@r0
   24D8 8A 82               162 	mov	dpl,r2
   24DA 8B 83               163 	mov	dph,r3
   24DC 8C F0               164 	mov	b,r4
   24DE E4                  165 	clr	a
   24DF 12 27 DA            166 	lcall	__gptrput
   24E2 A3                  167 	inc	dptr
   24E3 E4                  168 	clr	a
   24E4 12 27 DA            169 	lcall	__gptrput
   24E7 A3                  170 	inc	dptr
   24E8 E4                  171 	clr	a
   24E9 12 27 DA            172 	lcall	__gptrput
                            173 ;	SRC/queue.c:22: if (queue->head!=NULL && queue->tail!=NULL)
   24EC A8 13               174 	mov	r0,_bp
   24EE 08                  175 	inc	r0
   24EF 86 82               176 	mov	dpl,@r0
   24F1 08                  177 	inc	r0
   24F2 86 83               178 	mov	dph,@r0
   24F4 08                  179 	inc	r0
   24F5 86 F0               180 	mov	b,@r0
   24F7 12 2A 61            181 	lcall	__gptrget
   24FA FA                  182 	mov	r2,a
   24FB A3                  183 	inc	dptr
   24FC 12 2A 61            184 	lcall	__gptrget
   24FF FB                  185 	mov	r3,a
   2500 A3                  186 	inc	dptr
   2501 12 2A 61            187 	lcall	__gptrget
   2504 FC                  188 	mov	r4,a
   2505 BA 00 08            189 	cjne	r2,#0x00,00109$
   2508 BB 00 05            190 	cjne	r3,#0x00,00109$
   250B BC 00 02            191 	cjne	r4,#0x00,00109$
   250E 80 6A               192 	sjmp	00102$
   2510                     193 00109$:
   2510 A8 13               194 	mov	r0,_bp
   2512 08                  195 	inc	r0
   2513 74 03               196 	mov	a,#0x03
   2515 26                  197 	add	a,@r0
   2516 FA                  198 	mov	r2,a
   2517 E4                  199 	clr	a
   2518 08                  200 	inc	r0
   2519 36                  201 	addc	a,@r0
   251A FB                  202 	mov	r3,a
   251B 08                  203 	inc	r0
   251C 86 04               204 	mov	ar4,@r0
   251E 8A 82               205 	mov	dpl,r2
   2520 8B 83               206 	mov	dph,r3
   2522 8C F0               207 	mov	b,r4
   2524 12 2A 61            208 	lcall	__gptrget
   2527 FD                  209 	mov	r5,a
   2528 A3                  210 	inc	dptr
   2529 12 2A 61            211 	lcall	__gptrget
   252C FE                  212 	mov	r6,a
   252D A3                  213 	inc	dptr
   252E 12 2A 61            214 	lcall	__gptrget
   2531 FF                  215 	mov	r7,a
   2532 BD 00 08            216 	cjne	r5,#0x00,00110$
   2535 BE 00 05            217 	cjne	r6,#0x00,00110$
   2538 BF 00 02            218 	cjne	r7,#0x00,00110$
   253B 80 3D               219 	sjmp	00102$
   253D                     220 00110$:
                            221 ;	SRC/queue.c:26: queue->tail->next = node;
   253D 0D                  222 	inc	r5
   253E BD 00 01            223 	cjne	r5,#0x00,00111$
   2541 0E                  224 	inc	r6
   2542                     225 00111$:
   2542 8D 82               226 	mov	dpl,r5
   2544 8E 83               227 	mov	dph,r6
   2546 8F F0               228 	mov	b,r7
   2548 E5 13               229 	mov	a,_bp
   254A 24 04               230 	add	a,#0x04
   254C F8                  231 	mov	r0,a
   254D E6                  232 	mov	a,@r0
   254E 12 27 DA            233 	lcall	__gptrput
   2551 A3                  234 	inc	dptr
   2552 08                  235 	inc	r0
   2553 E6                  236 	mov	a,@r0
   2554 12 27 DA            237 	lcall	__gptrput
   2557 A3                  238 	inc	dptr
   2558 08                  239 	inc	r0
   2559 E6                  240 	mov	a,@r0
   255A 12 27 DA            241 	lcall	__gptrput
                            242 ;	SRC/queue.c:28: queue->tail = node;
   255D 8A 82               243 	mov	dpl,r2
   255F 8B 83               244 	mov	dph,r3
   2561 8C F0               245 	mov	b,r4
   2563 E5 13               246 	mov	a,_bp
   2565 24 04               247 	add	a,#0x04
   2567 F8                  248 	mov	r0,a
   2568 E6                  249 	mov	a,@r0
   2569 12 27 DA            250 	lcall	__gptrput
   256C A3                  251 	inc	dptr
   256D 08                  252 	inc	r0
   256E E6                  253 	mov	a,@r0
   256F 12 27 DA            254 	lcall	__gptrput
   2572 A3                  255 	inc	dptr
   2573 08                  256 	inc	r0
   2574 E6                  257 	mov	a,@r0
   2575 12 27 DA            258 	lcall	__gptrput
   2578 80 49               259 	sjmp	00103$
   257A                     260 00102$:
                            261 ;	SRC/queue.c:34: queue->head = queue->tail = node;
   257A A8 13               262 	mov	r0,_bp
   257C 08                  263 	inc	r0
   257D 74 03               264 	mov	a,#0x03
   257F 26                  265 	add	a,@r0
   2580 FA                  266 	mov	r2,a
   2581 E4                  267 	clr	a
   2582 08                  268 	inc	r0
   2583 36                  269 	addc	a,@r0
   2584 FB                  270 	mov	r3,a
   2585 08                  271 	inc	r0
   2586 86 04               272 	mov	ar4,@r0
   2588 8A 82               273 	mov	dpl,r2
   258A 8B 83               274 	mov	dph,r3
   258C 8C F0               275 	mov	b,r4
   258E E5 13               276 	mov	a,_bp
   2590 24 04               277 	add	a,#0x04
   2592 F8                  278 	mov	r0,a
   2593 E6                  279 	mov	a,@r0
   2594 12 27 DA            280 	lcall	__gptrput
   2597 A3                  281 	inc	dptr
   2598 08                  282 	inc	r0
   2599 E6                  283 	mov	a,@r0
   259A 12 27 DA            284 	lcall	__gptrput
   259D A3                  285 	inc	dptr
   259E 08                  286 	inc	r0
   259F E6                  287 	mov	a,@r0
   25A0 12 27 DA            288 	lcall	__gptrput
   25A3 A8 13               289 	mov	r0,_bp
   25A5 08                  290 	inc	r0
   25A6 86 82               291 	mov	dpl,@r0
   25A8 08                  292 	inc	r0
   25A9 86 83               293 	mov	dph,@r0
   25AB 08                  294 	inc	r0
   25AC 86 F0               295 	mov	b,@r0
   25AE E5 13               296 	mov	a,_bp
   25B0 24 04               297 	add	a,#0x04
   25B2 F9                  298 	mov	r1,a
   25B3 E7                  299 	mov	a,@r1
   25B4 12 27 DA            300 	lcall	__gptrput
   25B7 A3                  301 	inc	dptr
   25B8 09                  302 	inc	r1
   25B9 E7                  303 	mov	a,@r1
   25BA 12 27 DA            304 	lcall	__gptrput
   25BD A3                  305 	inc	dptr
   25BE 09                  306 	inc	r1
   25BF E7                  307 	mov	a,@r1
   25C0 12 27 DA            308 	lcall	__gptrput
   25C3                     309 00103$:
                            310 ;	SRC/queue.c:37: return queue;
   25C3 A8 13               311 	mov	r0,_bp
   25C5 08                  312 	inc	r0
   25C6 86 82               313 	mov	dpl,@r0
   25C8 08                  314 	inc	r0
   25C9 86 83               315 	mov	dph,@r0
   25CB 08                  316 	inc	r0
   25CC 86 F0               317 	mov	b,@r0
   25CE 85 13 81            318 	mov	sp,_bp
   25D1 D0 13               319 	pop	_bp
   25D3 22                  320 	ret
                            321 ;------------------------------------------------------------
                            322 ;Allocation info for local variables in function 'Pop'
                            323 ;------------------------------------------------------------
                            324 ;queue                     Allocated to stack - offset 1
                            325 ;value                     Allocated to stack - offset 7
                            326 ;node                      Allocated to stack - offset 4
                            327 ;sloc0                     Allocated to stack - offset 8
                            328 ;sloc1                     Allocated to stack - offset 7
                            329 ;------------------------------------------------------------
                            330 ;	SRC/queue.c:41: char Pop(TQueue* queue)
                            331 ;	-----------------------------------------
                            332 ;	 function Pop
                            333 ;	-----------------------------------------
   25D4                     334 _Pop:
   25D4 C0 13               335 	push	_bp
   25D6 85 81 13            336 	mov	_bp,sp
   25D9 C0 82               337 	push	dpl
   25DB C0 83               338 	push	dph
   25DD C0 F0               339 	push	b
   25DF E5 81               340 	mov	a,sp
   25E1 24 07               341 	add	a,#0x07
   25E3 F5 81               342 	mov	sp,a
                            343 ;	SRC/queue.c:43: unsigned char value = 0;
   25E5 E5 13               344 	mov	a,_bp
   25E7 24 07               345 	add	a,#0x07
   25E9 F8                  346 	mov	r0,a
   25EA 76 00               347 	mov	@r0,#0x00
                            348 ;	SRC/queue.c:47: if (queue->head)
   25EC A8 13               349 	mov	r0,_bp
   25EE 08                  350 	inc	r0
   25EF 86 82               351 	mov	dpl,@r0
   25F1 08                  352 	inc	r0
   25F2 86 83               353 	mov	dph,@r0
   25F4 08                  354 	inc	r0
   25F5 86 F0               355 	mov	b,@r0
   25F7 12 2A 61            356 	lcall	__gptrget
   25FA FA                  357 	mov	r2,a
   25FB A3                  358 	inc	dptr
   25FC 12 2A 61            359 	lcall	__gptrget
   25FF FB                  360 	mov	r3,a
   2600 A3                  361 	inc	dptr
   2601 12 2A 61            362 	lcall	__gptrget
   2604 FC                  363 	mov	r4,a
   2605 EA                  364 	mov	a,r2
   2606 4B                  365 	orl	a,r3
   2607 4C                  366 	orl	a,r4
   2608 60 71               367 	jz	00102$
                            368 ;	SRC/queue.c:50: node = queue->head;
   260A E5 13               369 	mov	a,_bp
   260C 24 04               370 	add	a,#0x04
   260E F8                  371 	mov	r0,a
   260F A6 02               372 	mov	@r0,ar2
   2611 08                  373 	inc	r0
   2612 A6 03               374 	mov	@r0,ar3
   2614 08                  375 	inc	r0
   2615 A6 04               376 	mov	@r0,ar4
   2617 E5 13               377 	mov	a,_bp
   2619 24 04               378 	add	a,#0x04
   261B F8                  379 	mov	r0,a
   261C 86 03               380 	mov	ar3,@r0
   261E 08                  381 	inc	r0
   261F 86 04               382 	mov	ar4,@r0
   2621 08                  383 	inc	r0
   2622 86 02               384 	mov	ar2,@r0
                            385 ;	SRC/queue.c:52: value = node->value;
   2624 8B 82               386 	mov	dpl,r3
   2626 8C 83               387 	mov	dph,r4
   2628 8A F0               388 	mov	b,r2
   262A 12 2A 61            389 	lcall	__gptrget
   262D FE                  390 	mov	r6,a
   262E E5 13               391 	mov	a,_bp
   2630 24 07               392 	add	a,#0x07
   2632 F8                  393 	mov	r0,a
   2633 A6 06               394 	mov	@r0,ar6
                            395 ;	SRC/queue.c:54: queue->head = queue->head->next;
   2635 E5 13               396 	mov	a,_bp
   2637 24 04               397 	add	a,#0x04
   2639 F8                  398 	mov	r0,a
   263A 74 01               399 	mov	a,#0x01
   263C 26                  400 	add	a,@r0
   263D FE                  401 	mov	r6,a
   263E E4                  402 	clr	a
   263F 08                  403 	inc	r0
   2640 36                  404 	addc	a,@r0
   2641 FF                  405 	mov	r7,a
   2642 08                  406 	inc	r0
   2643 86 05               407 	mov	ar5,@r0
   2645 8E 82               408 	mov	dpl,r6
   2647 8F 83               409 	mov	dph,r7
   2649 8D F0               410 	mov	b,r5
   264B 12 2A 61            411 	lcall	__gptrget
   264E FE                  412 	mov	r6,a
   264F A3                  413 	inc	dptr
   2650 12 2A 61            414 	lcall	__gptrget
   2653 FF                  415 	mov	r7,a
   2654 A3                  416 	inc	dptr
   2655 12 2A 61            417 	lcall	__gptrget
   2658 FD                  418 	mov	r5,a
   2659 A8 13               419 	mov	r0,_bp
   265B 08                  420 	inc	r0
   265C 86 82               421 	mov	dpl,@r0
   265E 08                  422 	inc	r0
   265F 86 83               423 	mov	dph,@r0
   2661 08                  424 	inc	r0
   2662 86 F0               425 	mov	b,@r0
   2664 EE                  426 	mov	a,r6
   2665 12 27 DA            427 	lcall	__gptrput
   2668 A3                  428 	inc	dptr
   2669 EF                  429 	mov	a,r7
   266A 12 27 DA            430 	lcall	__gptrput
   266D A3                  431 	inc	dptr
   266E ED                  432 	mov	a,r5
   266F 12 27 DA            433 	lcall	__gptrput
                            434 ;	SRC/queue.c:56: free(node);
   2672 8B 82               435 	mov	dpl,r3
   2674 8C 83               436 	mov	dph,r4
   2676 8A F0               437 	mov	b,r2
   2678 12 27 91            438 	lcall	_free
   267B                     439 00102$:
                            440 ;	SRC/queue.c:59: return value;
   267B E5 13               441 	mov	a,_bp
   267D 24 07               442 	add	a,#0x07
   267F F8                  443 	mov	r0,a
   2680 86 82               444 	mov	dpl,@r0
   2682 85 13 81            445 	mov	sp,_bp
   2685 D0 13               446 	pop	_bp
   2687 22                  447 	ret
                            448 ;------------------------------------------------------------
                            449 ;Allocation info for local variables in function 'Print'
                            450 ;------------------------------------------------------------
                            451 ;queue                     Allocated to registers r2 r3 r4 
                            452 ;str                       Allocated to stack - offset 1
                            453 ;node                      Allocated to registers r2 r3 r4 
                            454 ;------------------------------------------------------------
                            455 ;	SRC/queue.c:63: void Print(TQueue* queue){
                            456 ;	-----------------------------------------
                            457 ;	 function Print
                            458 ;	-----------------------------------------
   2688                     459 _Print:
   2688 C0 13               460 	push	_bp
   268A E5 81               461 	mov	a,sp
   268C F5 13               462 	mov	_bp,a
   268E 24 0A               463 	add	a,#0x0a
   2690 F5 81               464 	mov	sp,a
   2692 AA 82               465 	mov	r2,dpl
   2694 AB 83               466 	mov	r3,dph
   2696 AC F0               467 	mov	r4,b
                            468 ;	SRC/queue.c:64: unsigned char str[10] = {0};
   2698 A8 13               469 	mov	r0,_bp
   269A 08                  470 	inc	r0
   269B 76 00               471 	mov	@r0,#0x00
   269D E8                  472 	mov	a,r0
   269E 04                  473 	inc	a
   269F F9                  474 	mov	r1,a
   26A0 77 00               475 	mov	@r1,#0x00
   26A2 74 02               476 	mov	a,#0x02
   26A4 28                  477 	add	a,r0
   26A5 F9                  478 	mov	r1,a
   26A6 77 00               479 	mov	@r1,#0x00
   26A8 74 03               480 	mov	a,#0x03
   26AA 28                  481 	add	a,r0
   26AB F9                  482 	mov	r1,a
   26AC 77 00               483 	mov	@r1,#0x00
   26AE 74 04               484 	mov	a,#0x04
   26B0 28                  485 	add	a,r0
   26B1 F9                  486 	mov	r1,a
   26B2 77 00               487 	mov	@r1,#0x00
   26B4 74 05               488 	mov	a,#0x05
   26B6 28                  489 	add	a,r0
   26B7 F9                  490 	mov	r1,a
   26B8 77 00               491 	mov	@r1,#0x00
   26BA 74 06               492 	mov	a,#0x06
   26BC 28                  493 	add	a,r0
   26BD F9                  494 	mov	r1,a
   26BE 77 00               495 	mov	@r1,#0x00
   26C0 74 07               496 	mov	a,#0x07
   26C2 28                  497 	add	a,r0
   26C3 F9                  498 	mov	r1,a
   26C4 77 00               499 	mov	@r1,#0x00
   26C6 74 08               500 	mov	a,#0x08
   26C8 28                  501 	add	a,r0
   26C9 F9                  502 	mov	r1,a
   26CA 77 00               503 	mov	@r1,#0x00
   26CC 74 09               504 	mov	a,#0x09
   26CE 28                  505 	add	a,r0
   26CF F8                  506 	mov	r0,a
   26D0 76 00               507 	mov	@r0,#0x00
                            508 ;	SRC/queue.c:65: TNode* node = queue->head;
   26D2 8A 82               509 	mov	dpl,r2
   26D4 8B 83               510 	mov	dph,r3
   26D6 8C F0               511 	mov	b,r4
   26D8 12 2A 61            512 	lcall	__gptrget
   26DB FA                  513 	mov	r2,a
   26DC A3                  514 	inc	dptr
   26DD 12 2A 61            515 	lcall	__gptrget
   26E0 FB                  516 	mov	r3,a
   26E1 A3                  517 	inc	dptr
   26E2 12 2A 61            518 	lcall	__gptrget
   26E5 FC                  519 	mov	r4,a
                            520 ;	SRC/queue.c:69: while (node)
   26E6                     521 00101$:
   26E6 EA                  522 	mov	a,r2
   26E7 4B                  523 	orl	a,r3
   26E8 4C                  524 	orl	a,r4
   26E9 60 45               525 	jz	00104$
                            526 ;	SRC/queue.c:71: wsio(node->value);
   26EB 8A 82               527 	mov	dpl,r2
   26ED 8B 83               528 	mov	dph,r3
   26EF 8C F0               529 	mov	b,r4
   26F1 12 2A 61            530 	lcall	__gptrget
   26F4 F5 82               531 	mov	dpl,a
   26F6 C0 02               532 	push	ar2
   26F8 C0 03               533 	push	ar3
   26FA C0 04               534 	push	ar4
   26FC 12 22 41            535 	lcall	_wsio
                            536 ;	SRC/queue.c:72: wsio(' ');
   26FF 75 82 20            537 	mov	dpl,#0x20
   2702 12 22 41            538 	lcall	_wsio
   2705 D0 04               539 	pop	ar4
   2707 D0 03               540 	pop	ar3
   2709 D0 02               541 	pop	ar2
                            542 ;	SRC/queue.c:73: node=node->next;
   270B 74 01               543 	mov	a,#0x01
   270D 2A                  544 	add	a,r2
   270E FD                  545 	mov	r5,a
   270F E4                  546 	clr	a
   2710 3B                  547 	addc	a,r3
   2711 FE                  548 	mov	r6,a
   2712 8C 07               549 	mov	ar7,r4
   2714 8D 82               550 	mov	dpl,r5
   2716 8E 83               551 	mov	dph,r6
   2718 8F F0               552 	mov	b,r7
   271A 12 2A 61            553 	lcall	__gptrget
   271D FD                  554 	mov	r5,a
   271E A3                  555 	inc	dptr
   271F 12 2A 61            556 	lcall	__gptrget
   2722 FE                  557 	mov	r6,a
   2723 A3                  558 	inc	dptr
   2724 12 2A 61            559 	lcall	__gptrget
   2727 FF                  560 	mov	r7,a
   2728 8D 02               561 	mov	ar2,r5
   272A 8E 03               562 	mov	ar3,r6
   272C 8F 04               563 	mov	ar4,r7
   272E 80 B6               564 	sjmp	00101$
   2730                     565 00104$:
   2730 85 13 81            566 	mov	sp,_bp
   2733 D0 13               567 	pop	_bp
   2735 22                  568 	ret
                            569 ;------------------------------------------------------------
                            570 ;Allocation info for local variables in function 'isEmpty'
                            571 ;------------------------------------------------------------
                            572 ;queue                     Allocated to registers r2 r3 r4 
                            573 ;------------------------------------------------------------
                            574 ;	SRC/queue.c:78: char isEmpty(TQueue* queue)
                            575 ;	-----------------------------------------
                            576 ;	 function isEmpty
                            577 ;	-----------------------------------------
   2736                     578 _isEmpty:
                            579 ;	SRC/queue.c:80: return queue->head==NULL;
   2736 12 2A 61            580 	lcall	__gptrget
   2739 FA                  581 	mov	r2,a
   273A A3                  582 	inc	dptr
   273B 12 2A 61            583 	lcall	__gptrget
   273E FB                  584 	mov	r3,a
   273F A3                  585 	inc	dptr
   2740 12 2A 61            586 	lcall	__gptrget
   2743 FC                  587 	mov	r4,a
   2744 E4                  588 	clr	a
   2745 BA 00 07            589 	cjne	r2,#0x00,00103$
   2748 BB 00 04            590 	cjne	r3,#0x00,00103$
   274B BC 00 01            591 	cjne	r4,#0x00,00103$
   274E 04                  592 	inc	a
   274F                     593 00103$:
   274F F5 82               594 	mov	dpl,a
   2751 22                  595 	ret
                            596 	.area CSEG    (CODE)
                            597 	.area CONST   (CODE)
                            598 	.area XINIT   (CODE)
                            599 	.area CABS    (ABS,CODE)
