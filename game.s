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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	lr, #5
	ldr	ip, .L8
	ldr	r4, .L8+4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+16
	ldr	r1, .L8+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	r3, #8
	mov	r6, #9
	mov	fp, #16
	mov	r10, #21
	mov	r4, #0
	ldr	r0, .L8+28
	mov	r1, r2
	str	r2, [r0, #20]
	str	r2, [r0, #16]
	str	r3, [r0, #12]
	str	r3, [r0, #8]
	mov	lr, r0
	mov	ip, r2
	mov	r2, r0
	ldr	r0, .L8+32
	mov	r9, #104
	mov	r8, #120
	mov	r5, #32
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0]
	str	fp, [r0, #20]
	str	r10, [r0, #4]
	str	r6, [r0, #16]
	mov	r7, #2
	str	r6, [r0, #24]
	ldr	r0, .L8+36
	str	r4, [r0, #16]
	str	r4, [r0, #20]
	str	r4, [r0, #32]
	mov	r4, #144
	stm	r0, {r8, r9}
	str	r5, [r0, #8]
	str	r5, [r0, #12]
	str	r7, [r0, #36]
.L2:
	rsb	r0, r1, r1, lsl #4
	add	r1, r1, #1
	sub	r0, r0, #11
	cmp	r1, #5
	str	r4, [r2]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	ip, [r2, #44]
	str	r0, [r2, #4]
	str	r1, [r2, #40]
	add	r2, r2, #24
	bne	.L2
	mov	r7, #10
	mov	r6, #220
	mov	r5, #6
	mov	r4, #210
	mov	r0, #7
	mov	r1, #200
	ldr	r2, .L8+40
	str	r3, [lr, #96]
	str	r7, [lr, #100]
	str	r6, [r2, #4]
	str	r3, [r2, #12]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r3, [r2, #60]
	str	r3, [r2, #56]
	str	r3, [r2, #48]
	str	r3, [r2, #68]
	str	r5, [r2, #20]
	str	r4, [r2, #28]
	str	ip, [r2, #16]
	str	ip, [r2, #40]
	str	ip, [r2, #64]
	str	r0, [r2, #44]
	str	r1, [r2, #52]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	gemsRemaining
	.word	DMANow
	.word	100728832
	.word	FinalGameSpritesTiles
	.word	83886592
	.word	FinalGameSpritesPal
	.word	hideSprites
	.word	gems
	.word	countDownNum
	.word	deer
	.word	hearts
	.size	initGame, .-initGame
	.align	2
	.global	initGems
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGems, %function
initGems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #1
	mov	r3, #8
	cmp	r1, #4
	add	r2, r1, ip
	str	r2, [r0, #16]
	moveq	r2, #10
	str	r3, [r0, #12]
	str	r3, [r0, #8]
	ldrne	r3, .L13
	ldrne	r3, [r3, #12]
	rsbne	r1, r1, r1, lsl #4
	addne	r1, r1, #4
	addne	r3, r3, #112
	str	ip, [r0, #20]
	streq	r3, [r0]
	streq	r2, [r0, #4]
	strne	r1, [r0, #4]
	strne	r3, [r0]
	bx	lr
.L14:
	.align	2
.L13:
	.word	deer
	.size	initGems, .-initGems
	.align	2
	.global	initHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #1
	mov	r2, #8
	rsb	r3, r1, r1, lsl #29
	rsb	r3, r1, r3, lsl #2
	lsl	r3, r3, ip
	add	r3, r3, #220
	add	r1, r1, #6
	str	r3, [r0, #4]
	str	r1, [r0, #20]
	str	ip, [r0, #16]
	str	r2, [r0, #12]
	str	r2, [r0, #8]
	str	r2, [r0]
	bx	lr
	.size	initHearts, .-initHearts
	.align	2
	.global	updateDeer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDeer, %function
updateDeer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L18
	mov	r1, #1
	ldr	r3, .L23+4
	ldr	r2, [r3, #4]
	cmp	r2, #0
	str	r1, [r3, #20]
	ldrgt	r1, [r3, #36]
	subgt	r2, r2, r1
	strgt	r2, [r3, #4]
.L18:
	ldr	r3, .L23
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bxne	lr
	ldr	r2, .L23+4
	ldmib	r2, {r0, r1}
	add	r1, r0, r1
	cmp	r1, #239
	str	r3, [r2, #20]
	ldrle	r3, [r2, #36]
	addle	r0, r3, r0
	strle	r0, [r2, #4]
	bx	lr
.L24:
	.align	2
.L23:
	.word	67109120
	.word	deer
	.size	updateDeer, .-updateDeer
	.align	2
	.global	updateGems
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGems, %function
updateGems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	lr, #16
	ldr	r2, [r0, #4]
	sub	sp, sp, #16
	ldr	ip, [r0, #16]
	ldr	r3, [r0]
	str	r2, [sp]
	ldr	r6, [r4, #12]
	str	r3, [sp, #4]
	str	r6, [sp, #12]
	ldr	r6, [r4, #8]
	ldr	r5, .L36
	str	r6, [sp, #8]
	ldr	r0, .L36+4
	lsl	r1, r2, #23
	lsr	r1, r1, #23
	lsl	r2, ip, #3
	and	r3, r3, #255
	add	ip, r5, ip, lsl #3
	strh	r3, [r5, r2]	@ movhi
	ldr	r6, .L36+8
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	strh	r1, [ip, #2]	@ movhi
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	strh	lr, [ip, #4]	@ movhi
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L25
	mov	ip, #0
	mov	r0, #512
	ldr	r2, .L36+12
	ldr	r3, [r2]
	ldr	r1, .L36+16
	sub	r3, r3, #1
	str	r3, [r2]
	ldr	r2, [r1, #24]
	ldr	r3, [r4, #16]
	cmp	r2, #4
	lsl	r3, r3, #3
	subgt	r2, r2, #1
	str	ip, [r4, #20]
	strh	r0, [r5, r3]	@ movhi
	strgt	r2, [r1, #24]
.L25:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	shadowOAM
	.word	deer
	.word	collision
	.word	gemsRemaining
	.word	countDownNum
	.size	updateGems, .-updateGems
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	updateDeer
	ldr	r0, .L46
	bl	updateGems
	ldr	r0, .L46+4
	bl	updateGems
	ldr	r0, .L46+8
	bl	updateGems
	ldr	r0, .L46+12
	bl	updateGems
	ldr	r0, .L46+16
	bl	updateGems
	ldr	r3, .L46+20
	ldr	ip, .L46+24
	ldr	r6, .L46+28
	ldr	r5, .L46+32
	add	r0, r3, #72
.L40:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L39
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #4]
	ldrb	r4, [r3]	@ zero_extendqisi2
	lsl	lr, r2, #3
	and	r1, r1, r6
	add	r2, ip, r2, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
.L39:
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L40
	pop	{r4, r5, r6, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	gems
	.word	gems+24
	.word	gems+48
	.word	gems+72
	.word	gems+96
	.word	hearts
	.word	shadowOAM
	.word	511
	.word	4240
	.size	updateGame, .-updateGame
	.align	2
	.global	updateHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHearts, %function
updateHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #20]
	ldr	r1, .L57
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, .L57+4
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	shadowOAM
	.word	4240
	.size	updateHearts, .-updateHearts
	.align	2
	.global	updateGemsRemaining
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGemsRemaining, %function
updateGemsRemaining:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L61
	ldr	r3, [r2, #24]
	cmp	r3, #4
	subgt	r3, r3, #1
	strgt	r3, [r2, #24]
	bx	lr
.L62:
	.align	2
.L61:
	.word	countDownNum
	.size	updateGemsRemaining, .-updateGemsRemaining
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L65
	push	{r4, r5, r6, lr}
	ldr	r3, [r2, #4]
	ldr	r4, .L65+4
	and	r3, r3, r4
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L65+8
	ldr	r1, .L65+12
	ldr	ip, [r0, #4]
	ldr	lr, [r2, #20]
	ldrb	r6, [r2]	@ zero_extendqisi2
	and	ip, ip, r4
	ldr	r2, [r0, #16]
	ldr	r4, [r0, #24]
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, [r0, #20]
	ldrb	r5, [r0]	@ zero_extendqisi2
	lsl	lr, lr, #2
	add	r0, r3, r4, lsl #5
	lsl	r4, r2, #3
	add	r3, r1, r2, lsl #3
	strh	r6, [r1]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	r5, [r1, r4]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	deer
	.word	511
	.word	countDownNum
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	drawDeer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDeer, %function
drawDeer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L68
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #20]
	ldr	r2, .L68+4
	ldrb	r0, [r0]	@ zero_extendqisi2
	lsl	r1, r1, #2
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L69:
	.align	2
.L68:
	.word	deer
	.word	shadowOAM
	.size	drawDeer, .-drawDeer
	.align	2
	.global	drawGemsRemaining
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGemsRemaining, %function
drawGemsRemaining:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L72
	push	{r4, lr}
	ldr	r2, [r1, #4]
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #24]
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	r0, .L72+4
	ldr	r1, [r1, #20]
	lsl	r2, r2, #23
	lsl	ip, r3, #3
	add	r1, r1, r4, lsl #5
	add	r3, r0, r3, lsl #3
	lsr	r2, r2, #23
	strh	lr, [r0, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	countDownNum
	.word	shadowOAM
	.size	drawGemsRemaining, .-drawGemsRemaining
	.comm	hearts,72,4
	.comm	gems,120,4
	.comm	livesRemaining,4,4
	.comm	gemsRemaining,4,4
	.comm	countDownNum,28,4
	.comm	deer,40,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
