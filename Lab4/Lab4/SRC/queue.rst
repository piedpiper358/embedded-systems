                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Jan 13 00:30:17 2019
                              5 ;--------------------------------------------------------
                              6 	.module queue
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Push
                             13 	.globl _Pop
                             14 	.globl _isEmpty
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 	.area RSEG    (DATA)
                             19 ;--------------------------------------------------------
                             20 ; special function bits
                             21 ;--------------------------------------------------------
                             22 	.area RSEG    (DATA)
                             23 ;--------------------------------------------------------
                             24 ; overlayable register banks
                             25 ;--------------------------------------------------------
                             26 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      27 	.ds 8
                             28 ;--------------------------------------------------------
                             29 ; internal ram data
                             30 ;--------------------------------------------------------
                             31 	.area DSEG    (DATA)
                             32 ;--------------------------------------------------------
                             33 ; overlayable items in internal ram 
                             34 ;--------------------------------------------------------
                             35 	.area OSEG    (OVR,DATA)
                             36 ;--------------------------------------------------------
                             37 ; indirectly addressable internal ram data
                             38 ;--------------------------------------------------------
                             39 	.area ISEG    (DATA)
                             40 ;--------------------------------------------------------
                             41 ; absolute internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area IABS    (ABS,DATA)
                             44 	.area IABS    (ABS,DATA)
                             45 ;--------------------------------------------------------
                             46 ; bit data
                             47 ;--------------------------------------------------------
                             48 	.area BSEG    (BIT)
                             49 ;--------------------------------------------------------
                             50 ; paged external ram data
                             51 ;--------------------------------------------------------
                             52 	.area PSEG    (PAG,XDATA)
                             53 ;--------------------------------------------------------
                             54 ; external ram data
                             55 ;--------------------------------------------------------
                             56 	.area XSEG    (XDATA)
                             57 ;--------------------------------------------------------
                             58 ; absolute external ram data
                             59 ;--------------------------------------------------------
                             60 	.area XABS    (ABS,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external initialized ram data
                             63 ;--------------------------------------------------------
                             64 	.area XISEG   (XDATA)
                             65 	.area HOME    (CODE)
                             66 	.area GSINIT0 (CODE)
                             67 	.area GSINIT1 (CODE)
                             68 	.area GSINIT2 (CODE)
                             69 	.area GSINIT3 (CODE)
                             70 	.area GSINIT4 (CODE)
                             71 	.area GSINIT5 (CODE)
                             72 	.area GSINIT  (CODE)
                             73 	.area GSFINAL (CODE)
                             74 	.area CSEG    (CODE)
                             75 ;--------------------------------------------------------
                             76 ; global & static initialisations
                             77 ;--------------------------------------------------------
                             78 	.area HOME    (CODE)
                             79 	.area GSINIT  (CODE)
                             80 	.area GSFINAL (CODE)
                             81 	.area GSINIT  (CODE)
                             82 ;--------------------------------------------------------
                             83 ; Home
                             84 ;--------------------------------------------------------
                             85 	.area HOME    (CODE)
                             86 	.area HOME    (CODE)
                             87 ;--------------------------------------------------------
                             88 ; code
                             89 ;--------------------------------------------------------
                             90 	.area CSEG    (CODE)
                             91 ;------------------------------------------------------------
                             92 ;Allocation info for local variables in function 'Push'
                             93 ;------------------------------------------------------------
                             94 ;value                     Allocated to stack - offset -3
                             95 ;queue                     Allocated to stack - offset 1
                             96 ;node                      Allocated to stack - offset 4
                             97 ;sloc0                     Allocated to stack - offset 7
                             98 ;------------------------------------------------------------
                             99 ;	SRC/queue.c:11: TQueue* Push(TQueue* queue, char value)
                            100 ;	-----------------------------------------
                            101 ;	 function Push
                            102 ;	-----------------------------------------
   220B                     103 _Push:
                    0002    104 	ar2 = 0x02
                    0003    105 	ar3 = 0x03
                    0004    106 	ar4 = 0x04
                    0005    107 	ar5 = 0x05
                    0006    108 	ar6 = 0x06
                    0007    109 	ar7 = 0x07
                    0000    110 	ar0 = 0x00
                    0001    111 	ar1 = 0x01
   220B C0 1A               112 	push	_bp
   220D 85 81 1A            113 	mov	_bp,sp
   2210 C0 82               114 	push	dpl
   2212 C0 83               115 	push	dph
   2214 C0 F0               116 	push	b
   2216 05 81               117 	inc	sp
   2218 05 81               118 	inc	sp
   221A 05 81               119 	inc	sp
                            120 ;	SRC/queue.c:14: TNode* node = malloc(sizeof(TNode));
   221C 90 00 04            121 	mov	dptr,#0x0004
   221F 12 29 14            122 	lcall	_malloc
   2222 AD 82               123 	mov	r5,dpl
   2224 AE 83               124 	mov	r6,dph
   2226 E5 1A               125 	mov	a,_bp
   2228 24 04               126 	add	a,#0x04
   222A F8                  127 	mov	r0,a
   222B A6 05               128 	mov	@r0,ar5
   222D 08                  129 	inc	r0
   222E A6 06               130 	mov	@r0,ar6
   2230 08                  131 	inc	r0
   2231 76 00               132 	mov	@r0,#0x00
                            133 ;	SRC/queue.c:16: node->value = value;
   2233 E5 1A               134 	mov	a,_bp
   2235 24 04               135 	add	a,#0x04
   2237 F8                  136 	mov	r0,a
   2238 86 82               137 	mov	dpl,@r0
   223A 08                  138 	inc	r0
   223B 86 83               139 	mov	dph,@r0
   223D 08                  140 	inc	r0
   223E 86 F0               141 	mov	b,@r0
   2240 A9 1A               142 	mov	r1,_bp
   2242 19                  143 	dec	r1
   2243 19                  144 	dec	r1
   2244 19                  145 	dec	r1
   2245 E7                  146 	mov	a,@r1
   2246 12 28 7E            147 	lcall	__gptrput
                            148 ;	SRC/queue.c:19: node->next = NULL;
   2249 E5 1A               149 	mov	a,_bp
   224B 24 04               150 	add	a,#0x04
   224D F8                  151 	mov	r0,a
   224E 74 01               152 	mov	a,#0x01
   2250 26                  153 	add	a,@r0
   2251 FA                  154 	mov	r2,a
   2252 E4                  155 	clr	a
   2253 08                  156 	inc	r0
   2254 36                  157 	addc	a,@r0
   2255 FB                  158 	mov	r3,a
   2256 08                  159 	inc	r0
   2257 86 04               160 	mov	ar4,@r0
   2259 8A 82               161 	mov	dpl,r2
   225B 8B 83               162 	mov	dph,r3
   225D 8C F0               163 	mov	b,r4
   225F E4                  164 	clr	a
   2260 12 28 7E            165 	lcall	__gptrput
   2263 A3                  166 	inc	dptr
   2264 E4                  167 	clr	a
   2265 12 28 7E            168 	lcall	__gptrput
   2268 A3                  169 	inc	dptr
   2269 E4                  170 	clr	a
   226A 12 28 7E            171 	lcall	__gptrput
                            172 ;	SRC/queue.c:22: if (queue->head!=NULL && queue->tail!=NULL)
   226D A8 1A               173 	mov	r0,_bp
   226F 08                  174 	inc	r0
   2270 86 82               175 	mov	dpl,@r0
   2272 08                  176 	inc	r0
   2273 86 83               177 	mov	dph,@r0
   2275 08                  178 	inc	r0
   2276 86 F0               179 	mov	b,@r0
   2278 12 2A 50            180 	lcall	__gptrget
   227B FA                  181 	mov	r2,a
   227C A3                  182 	inc	dptr
   227D 12 2A 50            183 	lcall	__gptrget
   2280 FB                  184 	mov	r3,a
   2281 A3                  185 	inc	dptr
   2282 12 2A 50            186 	lcall	__gptrget
   2285 FC                  187 	mov	r4,a
   2286 BA 00 08            188 	cjne	r2,#0x00,00109$
   2289 BB 00 05            189 	cjne	r3,#0x00,00109$
   228C BC 00 02            190 	cjne	r4,#0x00,00109$
   228F 80 6A               191 	sjmp	00102$
   2291                     192 00109$:
   2291 A8 1A               193 	mov	r0,_bp
   2293 08                  194 	inc	r0
   2294 74 03               195 	mov	a,#0x03
   2296 26                  196 	add	a,@r0
   2297 FA                  197 	mov	r2,a
   2298 E4                  198 	clr	a
   2299 08                  199 	inc	r0
   229A 36                  200 	addc	a,@r0
   229B FB                  201 	mov	r3,a
   229C 08                  202 	inc	r0
   229D 86 04               203 	mov	ar4,@r0
   229F 8A 82               204 	mov	dpl,r2
   22A1 8B 83               205 	mov	dph,r3
   22A3 8C F0               206 	mov	b,r4
   22A5 12 2A 50            207 	lcall	__gptrget
   22A8 FD                  208 	mov	r5,a
   22A9 A3                  209 	inc	dptr
   22AA 12 2A 50            210 	lcall	__gptrget
   22AD FE                  211 	mov	r6,a
   22AE A3                  212 	inc	dptr
   22AF 12 2A 50            213 	lcall	__gptrget
   22B2 FF                  214 	mov	r7,a
   22B3 BD 00 08            215 	cjne	r5,#0x00,00110$
   22B6 BE 00 05            216 	cjne	r6,#0x00,00110$
   22B9 BF 00 02            217 	cjne	r7,#0x00,00110$
   22BC 80 3D               218 	sjmp	00102$
   22BE                     219 00110$:
                            220 ;	SRC/queue.c:26: queue->tail->next = node;
   22BE 0D                  221 	inc	r5
   22BF BD 00 01            222 	cjne	r5,#0x00,00111$
   22C2 0E                  223 	inc	r6
   22C3                     224 00111$:
   22C3 8D 82               225 	mov	dpl,r5
   22C5 8E 83               226 	mov	dph,r6
   22C7 8F F0               227 	mov	b,r7
   22C9 E5 1A               228 	mov	a,_bp
   22CB 24 04               229 	add	a,#0x04
   22CD F8                  230 	mov	r0,a
   22CE E6                  231 	mov	a,@r0
   22CF 12 28 7E            232 	lcall	__gptrput
   22D2 A3                  233 	inc	dptr
   22D3 08                  234 	inc	r0
   22D4 E6                  235 	mov	a,@r0
   22D5 12 28 7E            236 	lcall	__gptrput
   22D8 A3                  237 	inc	dptr
   22D9 08                  238 	inc	r0
   22DA E6                  239 	mov	a,@r0
   22DB 12 28 7E            240 	lcall	__gptrput
                            241 ;	SRC/queue.c:28: queue->tail = node;
   22DE 8A 82               242 	mov	dpl,r2
   22E0 8B 83               243 	mov	dph,r3
   22E2 8C F0               244 	mov	b,r4
   22E4 E5 1A               245 	mov	a,_bp
   22E6 24 04               246 	add	a,#0x04
   22E8 F8                  247 	mov	r0,a
   22E9 E6                  248 	mov	a,@r0
   22EA 12 28 7E            249 	lcall	__gptrput
   22ED A3                  250 	inc	dptr
   22EE 08                  251 	inc	r0
   22EF E6                  252 	mov	a,@r0
   22F0 12 28 7E            253 	lcall	__gptrput
   22F3 A3                  254 	inc	dptr
   22F4 08                  255 	inc	r0
   22F5 E6                  256 	mov	a,@r0
   22F6 12 28 7E            257 	lcall	__gptrput
   22F9 80 49               258 	sjmp	00103$
   22FB                     259 00102$:
                            260 ;	SRC/queue.c:34: queue->head = queue->tail = node;
   22FB A8 1A               261 	mov	r0,_bp
   22FD 08                  262 	inc	r0
   22FE 74 03               263 	mov	a,#0x03
   2300 26                  264 	add	a,@r0
   2301 FA                  265 	mov	r2,a
   2302 E4                  266 	clr	a
   2303 08                  267 	inc	r0
   2304 36                  268 	addc	a,@r0
   2305 FB                  269 	mov	r3,a
   2306 08                  270 	inc	r0
   2307 86 04               271 	mov	ar4,@r0
   2309 8A 82               272 	mov	dpl,r2
   230B 8B 83               273 	mov	dph,r3
   230D 8C F0               274 	mov	b,r4
   230F E5 1A               275 	mov	a,_bp
   2311 24 04               276 	add	a,#0x04
   2313 F8                  277 	mov	r0,a
   2314 E6                  278 	mov	a,@r0
   2315 12 28 7E            279 	lcall	__gptrput
   2318 A3                  280 	inc	dptr
   2319 08                  281 	inc	r0
   231A E6                  282 	mov	a,@r0
   231B 12 28 7E            283 	lcall	__gptrput
   231E A3                  284 	inc	dptr
   231F 08                  285 	inc	r0
   2320 E6                  286 	mov	a,@r0
   2321 12 28 7E            287 	lcall	__gptrput
   2324 A8 1A               288 	mov	r0,_bp
   2326 08                  289 	inc	r0
   2327 86 82               290 	mov	dpl,@r0
   2329 08                  291 	inc	r0
   232A 86 83               292 	mov	dph,@r0
   232C 08                  293 	inc	r0
   232D 86 F0               294 	mov	b,@r0
   232F E5 1A               295 	mov	a,_bp
   2331 24 04               296 	add	a,#0x04
   2333 F9                  297 	mov	r1,a
   2334 E7                  298 	mov	a,@r1
   2335 12 28 7E            299 	lcall	__gptrput
   2338 A3                  300 	inc	dptr
   2339 09                  301 	inc	r1
   233A E7                  302 	mov	a,@r1
   233B 12 28 7E            303 	lcall	__gptrput
   233E A3                  304 	inc	dptr
   233F 09                  305 	inc	r1
   2340 E7                  306 	mov	a,@r1
   2341 12 28 7E            307 	lcall	__gptrput
   2344                     308 00103$:
                            309 ;	SRC/queue.c:37: return queue;
   2344 A8 1A               310 	mov	r0,_bp
   2346 08                  311 	inc	r0
   2347 86 82               312 	mov	dpl,@r0
   2349 08                  313 	inc	r0
   234A 86 83               314 	mov	dph,@r0
   234C 08                  315 	inc	r0
   234D 86 F0               316 	mov	b,@r0
   234F 85 1A 81            317 	mov	sp,_bp
   2352 D0 1A               318 	pop	_bp
   2354 22                  319 	ret
                            320 ;------------------------------------------------------------
                            321 ;Allocation info for local variables in function 'Pop'
                            322 ;------------------------------------------------------------
                            323 ;queue                     Allocated to stack - offset 1
                            324 ;value                     Allocated to stack - offset 7
                            325 ;node                      Allocated to stack - offset 4
                            326 ;sloc0                     Allocated to stack - offset 8
                            327 ;sloc1                     Allocated to stack - offset 7
                            328 ;------------------------------------------------------------
                            329 ;	SRC/queue.c:41: char Pop(TQueue* queue)
                            330 ;	-----------------------------------------
                            331 ;	 function Pop
                            332 ;	-----------------------------------------
   2355                     333 _Pop:
   2355 C0 1A               334 	push	_bp
   2357 85 81 1A            335 	mov	_bp,sp
   235A C0 82               336 	push	dpl
   235C C0 83               337 	push	dph
   235E C0 F0               338 	push	b
   2360 E5 81               339 	mov	a,sp
   2362 24 07               340 	add	a,#0x07
   2364 F5 81               341 	mov	sp,a
                            342 ;	SRC/queue.c:43: unsigned char value = 0;
   2366 E5 1A               343 	mov	a,_bp
   2368 24 07               344 	add	a,#0x07
   236A F8                  345 	mov	r0,a
   236B 76 00               346 	mov	@r0,#0x00
                            347 ;	SRC/queue.c:47: if (queue->head)
   236D A8 1A               348 	mov	r0,_bp
   236F 08                  349 	inc	r0
   2370 86 82               350 	mov	dpl,@r0
   2372 08                  351 	inc	r0
   2373 86 83               352 	mov	dph,@r0
   2375 08                  353 	inc	r0
   2376 86 F0               354 	mov	b,@r0
   2378 12 2A 50            355 	lcall	__gptrget
   237B FA                  356 	mov	r2,a
   237C A3                  357 	inc	dptr
   237D 12 2A 50            358 	lcall	__gptrget
   2380 FB                  359 	mov	r3,a
   2381 A3                  360 	inc	dptr
   2382 12 2A 50            361 	lcall	__gptrget
   2385 FC                  362 	mov	r4,a
   2386 EA                  363 	mov	a,r2
   2387 4B                  364 	orl	a,r3
   2388 4C                  365 	orl	a,r4
   2389 60 71               366 	jz	00102$
                            367 ;	SRC/queue.c:50: node = queue->head;
   238B E5 1A               368 	mov	a,_bp
   238D 24 04               369 	add	a,#0x04
   238F F8                  370 	mov	r0,a
   2390 A6 02               371 	mov	@r0,ar2
   2392 08                  372 	inc	r0
   2393 A6 03               373 	mov	@r0,ar3
   2395 08                  374 	inc	r0
   2396 A6 04               375 	mov	@r0,ar4
   2398 E5 1A               376 	mov	a,_bp
   239A 24 04               377 	add	a,#0x04
   239C F8                  378 	mov	r0,a
   239D 86 03               379 	mov	ar3,@r0
   239F 08                  380 	inc	r0
   23A0 86 04               381 	mov	ar4,@r0
   23A2 08                  382 	inc	r0
   23A3 86 02               383 	mov	ar2,@r0
                            384 ;	SRC/queue.c:52: value = node->value;
   23A5 8B 82               385 	mov	dpl,r3
   23A7 8C 83               386 	mov	dph,r4
   23A9 8A F0               387 	mov	b,r2
   23AB 12 2A 50            388 	lcall	__gptrget
   23AE FE                  389 	mov	r6,a
   23AF E5 1A               390 	mov	a,_bp
   23B1 24 07               391 	add	a,#0x07
   23B3 F8                  392 	mov	r0,a
   23B4 A6 06               393 	mov	@r0,ar6
                            394 ;	SRC/queue.c:54: queue->head = queue->head->next;
   23B6 E5 1A               395 	mov	a,_bp
   23B8 24 04               396 	add	a,#0x04
   23BA F8                  397 	mov	r0,a
   23BB 74 01               398 	mov	a,#0x01
   23BD 26                  399 	add	a,@r0
   23BE FE                  400 	mov	r6,a
   23BF E4                  401 	clr	a
   23C0 08                  402 	inc	r0
   23C1 36                  403 	addc	a,@r0
   23C2 FF                  404 	mov	r7,a
   23C3 08                  405 	inc	r0
   23C4 86 05               406 	mov	ar5,@r0
   23C6 8E 82               407 	mov	dpl,r6
   23C8 8F 83               408 	mov	dph,r7
   23CA 8D F0               409 	mov	b,r5
   23CC 12 2A 50            410 	lcall	__gptrget
   23CF FE                  411 	mov	r6,a
   23D0 A3                  412 	inc	dptr
   23D1 12 2A 50            413 	lcall	__gptrget
   23D4 FF                  414 	mov	r7,a
   23D5 A3                  415 	inc	dptr
   23D6 12 2A 50            416 	lcall	__gptrget
   23D9 FD                  417 	mov	r5,a
   23DA A8 1A               418 	mov	r0,_bp
   23DC 08                  419 	inc	r0
   23DD 86 82               420 	mov	dpl,@r0
   23DF 08                  421 	inc	r0
   23E0 86 83               422 	mov	dph,@r0
   23E2 08                  423 	inc	r0
   23E3 86 F0               424 	mov	b,@r0
   23E5 EE                  425 	mov	a,r6
   23E6 12 28 7E            426 	lcall	__gptrput
   23E9 A3                  427 	inc	dptr
   23EA EF                  428 	mov	a,r7
   23EB 12 28 7E            429 	lcall	__gptrput
   23EE A3                  430 	inc	dptr
   23EF ED                  431 	mov	a,r5
   23F0 12 28 7E            432 	lcall	__gptrput
                            433 ;	SRC/queue.c:56: free(node);
   23F3 8B 82               434 	mov	dpl,r3
   23F5 8C 83               435 	mov	dph,r4
   23F7 8A F0               436 	mov	b,r2
   23F9 12 27 0D            437 	lcall	_free
   23FC                     438 00102$:
                            439 ;	SRC/queue.c:59: return value;
   23FC E5 1A               440 	mov	a,_bp
   23FE 24 07               441 	add	a,#0x07
   2400 F8                  442 	mov	r0,a
   2401 86 82               443 	mov	dpl,@r0
   2403 85 1A 81            444 	mov	sp,_bp
   2406 D0 1A               445 	pop	_bp
   2408 22                  446 	ret
                            447 ;------------------------------------------------------------
                            448 ;Allocation info for local variables in function 'isEmpty'
                            449 ;------------------------------------------------------------
                            450 ;queue                     Allocated to registers r2 r3 r4 
                            451 ;------------------------------------------------------------
                            452 ;	SRC/queue.c:78: char isEmpty(TQueue* queue)
                            453 ;	-----------------------------------------
                            454 ;	 function isEmpty
                            455 ;	-----------------------------------------
   2409                     456 _isEmpty:
                            457 ;	SRC/queue.c:80: return queue->head==NULL;
   2409 12 2A 50            458 	lcall	__gptrget
   240C FA                  459 	mov	r2,a
   240D A3                  460 	inc	dptr
   240E 12 2A 50            461 	lcall	__gptrget
   2411 FB                  462 	mov	r3,a
   2412 A3                  463 	inc	dptr
   2413 12 2A 50            464 	lcall	__gptrget
   2416 FC                  465 	mov	r4,a
   2417 E4                  466 	clr	a
   2418 BA 00 07            467 	cjne	r2,#0x00,00103$
   241B BB 00 04            468 	cjne	r3,#0x00,00103$
   241E BC 00 01            469 	cjne	r4,#0x00,00103$
   2421 04                  470 	inc	a
   2422                     471 00103$:
   2422 F5 82               472 	mov	dpl,a
   2424 22                  473 	ret
                            474 	.area CSEG    (CODE)
                            475 	.area CONST   (CODE)
                            476 	.area XINIT   (CODE)
                            477 	.area CABS    (ABS,CODE)
