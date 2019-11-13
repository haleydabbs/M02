	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #4096
	orr	r3, r3, #256
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L4
	mov	r3, #320
	mov	r2, #100663296
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+8
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startBGTiles
	.word	100675584
	.word	startBGMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #1536
	mov	r5, #67108864
	ldr	r2, .L8
	ldr	r4, .L8+4
	strh	r3, [r5, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L8+8
	ldr	r2, .L8+12
	add	r3, r3, #2736
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+24
	mov	r3, #32
	strh	r2, [r5, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #256
	strh	r2, [r5]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L8+44
	mov	lr, pc
	bx	r4
	mov	r2, #3936
	ldr	r3, .L8+48
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	-29180
	.word	DMANow
	.word	platformsBGTiles
	.word	100679680
	.word	100691968
	.word	platformsBGMap
	.word	5128
	.word	100696064
	.word	gameBGTiles
	.word	100704256
	.word	gameBGMap
	.word	startBGPal
	.word	vOff
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	mov	r4, #67108864
	ldrh	r3, [r4]
	bic	r3, r3, #256
	strh	r3, [r4]	@ movhi
	ldr	r3, .L23+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldrh	r3, [r4]
	ldr	r2, .L23+12
	orr	r3, r3, #5632
	strh	r3, [r4]	@ movhi
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	state
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	mov	r0, #1
	ldrh	r3, [r2]
	ldr	r1, .L26
	orr	r3, r3, #5632
	strh	r3, [r2]	@ movhi
	str	r0, [r1]
	bx	lr
.L27:
	.align	2
.L26:
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #4096
	orr	r3, r3, #256
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L30
	mov	r3, #384
	mov	r2, #100663296
	ldr	r1, .L30+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L30+8
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L30+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	pauseBGTiles
	.word	100675584
	.word	pauseBGMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L37
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	mov	r2, #67108864
	mov	r0, #1
	ldrh	r3, [r2]
	ldr	r1, .L37+8
	bic	r3, r3, #256
	orr	r3, r3, #5632
	strh	r3, [r2]	@ movhi
	str	r0, [r1]
	bx	lr
.L38:
	.align	2
.L37:
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #4096
	orr	r3, r3, #256
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L41
	mov	r3, #288
	mov	r2, #100663296
	ldr	r1, .L41+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L41+8
	mov	r0, #3
	ldr	r1, .L41+12
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L41+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	DMANow
	.word	winBGTiles
	.word	100675584
	.word	winBGMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #4096
	orr	r3, r3, #256
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2]	@ movhi
	ldr	r4, .L45
	mov	r3, #320
	mov	r2, #100663296
	ldr	r1, .L45+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L45+8
	mov	r0, #3
	ldr	r1, .L45+12
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L45+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	DMANow
	.word	loseBGTiles
	.word	100675584
	.word	loseBGMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L64+12
	ldrh	r2, [r3]
	mov	r0, #3
	ldr	r3, .L64+16
	strh	r2, [r4, #22]	@ movhi
	ldr	r1, .L64+20
	mov	r2, #117440512
	ldr	r5, .L64+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L64+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L48
	ldr	r2, .L64+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L61
.L48:
	tst	r3, #1
	beq	.L49
	ldr	r2, .L64+32
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L62
.L49:
	tst	r3, #2
	beq	.L47
	ldr	r3, .L64+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L63
.L47:
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	ldrh	r3, [r4]
	bic	r3, r3, #512
	strh	r3, [r4]	@ movhi
	pop	{r4, r5, r6, lr}
	b	goToPause
.L62:
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	b	goToWin
.L63:
	mov	r2, #67108864
	ldrh	r3, [r2]
	bic	r3, r3, #512
	strh	r3, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	b	goToLose
.L65:
	.align	2
.L64:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	vOff
	.word	67109120
	.word	shadowOAM
	.word	DMANow
	.word	oldButtons
	.word	buttons
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r6, .L80
	ldr	r10, .L80+4
	push	{r4, r7, fp, lr}
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L80+12
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L80+16
	ldr	r8, .L80+20
	ldr	r7, .L80+24
	ldr	fp, .L80+28
	ldr	r4, .L80+32
.L68:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L76
.L70:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
.L69:
	tst	r0, #8
	beq	.L76
	ldr	r3, .L80+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L68
.L71:
	tst	r0, #8
	beq	.L76
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L68
.L72:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L68
.L73:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L68
.L74:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L68
.L76:
	mov	r0, r3
	b	.L68
.L81:
	.align	2
.L80:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L84
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L85:
	.align	2
.L84:
	.word	oldButtons
	.size	lose, .-lose
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	lose
	.size	win, .-win
	.comm	state,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	hearts,72,4
	.comm	gems,120,4
	.comm	livesRemaining,4,4
	.comm	gemsRemaining,4,4
	.comm	countDownNum,28,4
	.comm	deer,40,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
