;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Tue Dec 11 01:29:27 2018
;--------------------------------------------------------
	.module queue
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Push
	.globl _Pop
	.globl _Print
	.globl _isEmpty
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Push'
;------------------------------------------------------------
;value                     Allocated to stack - offset -3
;queue                     Allocated to stack - offset 1
;node                      Allocated to stack - offset 4
;sloc0                     Allocated to stack - offset 7
;------------------------------------------------------------
;	SRC/queue.c:11: TQueue* Push(TQueue* queue, char value)
;	-----------------------------------------
;	 function Push
;	-----------------------------------------
_Push:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	SRC/queue.c:14: TNode* node = malloc(sizeof(TNode));
	mov	dptr,#0x0004
	lcall	_malloc
	mov	r5,dpl
	mov	r6,dph
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
;	SRC/queue.c:16: node->value = value;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	r1,_bp
	dec	r1
	dec	r1
	dec	r1
	mov	a,@r1
	lcall	__gptrput
;	SRC/queue.c:19: node->next = NULL;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	lcall	__gptrput
;	SRC/queue.c:22: if (queue->head!=NULL && queue->tail!=NULL)
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	cjne	r2,#0x00,00109$
	cjne	r3,#0x00,00109$
	cjne	r4,#0x00,00109$
	sjmp	00102$
00109$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	cjne	r5,#0x00,00110$
	cjne	r6,#0x00,00110$
	cjne	r7,#0x00,00110$
	sjmp	00102$
00110$:
;	SRC/queue.c:26: queue->tail->next = node;
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	SRC/queue.c:28: queue->tail = node;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	sjmp	00103$
00102$:
;	SRC/queue.c:34: queue->head = queue->tail = node;
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
00103$:
;	SRC/queue.c:37: return queue;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Pop'
;------------------------------------------------------------
;queue                     Allocated to stack - offset 1
;value                     Allocated to stack - offset 7
;node                      Allocated to stack - offset 4
;sloc0                     Allocated to stack - offset 8
;sloc1                     Allocated to stack - offset 7
;------------------------------------------------------------
;	SRC/queue.c:41: char Pop(TQueue* queue)
;	-----------------------------------------
;	 function Pop
;	-----------------------------------------
_Pop:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	SRC/queue.c:43: unsigned char value = 0;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,#0x00
;	SRC/queue.c:47: if (queue->head)
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00102$
;	SRC/queue.c:50: node = queue->head;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar2,@r0
;	SRC/queue.c:52: value = node->value;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar6
;	SRC/queue.c:54: queue->head = queue->head->next;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r6,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	SRC/queue.c:56: free(node);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_free
00102$:
;	SRC/queue.c:59: return value;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Print'
;------------------------------------------------------------
;queue                     Allocated to registers r2 r3 r4 
;str                       Allocated to stack - offset 1
;node                      Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	SRC/queue.c:63: void Print(TQueue* queue){
;	-----------------------------------------
;	 function Print
;	-----------------------------------------
_Print:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0a
	mov	sp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	SRC/queue.c:64: unsigned char str[10] = {0};
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
	mov	a,r0
	inc	a
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x02
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x03
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x04
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x05
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x06
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x07
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x08
	add	a,r0
	mov	r1,a
	mov	@r1,#0x00
	mov	a,#0x09
	add	a,r0
	mov	r0,a
	mov	@r0,#0x00
;	SRC/queue.c:65: TNode* node = queue->head;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	SRC/queue.c:69: while (node)
00101$:
	mov	a,r2
	orl	a,r3
	orl	a,r4
	jz	00104$
;	SRC/queue.c:71: wsio(node->value);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_wsio
;	SRC/queue.c:72: wsio(' ');
	mov	dpl,#0x20
	lcall	_wsio
	pop	ar4
	pop	ar3
	pop	ar2
;	SRC/queue.c:73: node=node->next;
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	sjmp	00101$
00104$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isEmpty'
;------------------------------------------------------------
;queue                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	SRC/queue.c:78: char isEmpty(TQueue* queue)
;	-----------------------------------------
;	 function isEmpty
;	-----------------------------------------
_isEmpty:
;	SRC/queue.c:80: return queue->head==NULL;
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	a
	cjne	r2,#0x00,00103$
	cjne	r3,#0x00,00103$
	cjne	r4,#0x00,00103$
	inc	a
00103$:
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
