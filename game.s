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
	mov	r4, #1
	mov	r3, #8
	ldr	r6, .L8+28
	ldr	r5, [r6]
	ldr	r1, .L8+32
	ldr	r0, .L8+36
	mov	lr, #0
	mov	r8, #32
	mov	fp, #214
	mov	r10, #2
	add	r5, r5, #104
	str	r5, [r1, #4]
	str	r4, [r0, #20]
	str	r4, [r0, #16]
	mov	r2, r4
	mov	ip, r0
	mov	r5, r4
	str	r3, [r0, #12]
	mov	r4, r0
	str	r3, [r0, #8]
	mov	r0, #21
	mov	r7, #9
	str	fp, [r1]
	str	r8, [r1, #16]
	str	r8, [r1, #20]
	str	lr, [r1, #24]
	mov	r9, #16
	str	r10, [r1, #44]
	str	lr, [r1, #28]
	str	lr, [r1, #40]
	ldr	r1, .L8+40
	str	r0, [r1, #4]
	mov	r0, #140
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1]
	str	r9, [r1, #20]
	str	r7, [r1, #16]
	str	r7, [r1, #24]
.L2:
	sub	r1, r2, r2, lsl #4
	add	r2, r2, #1
	add	r1, r1, #235
	cmp	r2, #5
	str	r0, [r4]
	str	r3, [r4, #36]
	str	r3, [r4, #32]
	str	r5, [r4, #44]
	str	r1, [r4, #4]
	str	r2, [r4, #40]
	add	r4, r4, #24
	bne	.L2
	mov	r2, #10
	mov	r1, #0
	mov	r9, #220
	mov	r8, #6
	mov	r7, #210
	mov	r4, #7
	mov	lr, #200
	mov	r0, #352
	str	r1, [r6]
	str	r2, [ip, #100]
	ldr	r1, .L8+44
	ldr	r2, .L8+48
	str	r3, [ip, #96]
	str	r9, [r2, #4]
	str	r3, [r2, #12]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r5, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r5, [r2, #40]
	str	r3, [r2, #60]
	str	r3, [r2, #56]
	str	r3, [r2, #48]
	str	r3, [r2, #68]
	str	r5, [r2, #64]
	str	r8, [r2, #20]
	str	r7, [r2, #28]
	str	r4, [r2, #44]
	str	lr, [r2, #52]
	str	r0, [r1]
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
	.word	hOff
	.word	deer
	.word	gems
	.word	countDownNum
	.word	vOff
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
	str	r3, [r0, #12]
	moveq	r2, #10
	str	r3, [r0, #8]
	movne	r3, #140
	subne	r1, r1, r1, lsl #4
	addne	r1, r1, #220
	str	ip, [r0, #20]
	streq	r3, [r0]
	streq	r2, [r0, #4]
	strne	r1, [r0, #4]
	strne	r3, [r0]
	bx	lr
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
	ldr	r3, .L17
	ldrh	r2, [r3, #48]
	ldr	ip, .L17+4
	ldr	r3, .L17+8
	tst	r2, #32
	ldr	r0, [ip]
	ldr	r2, [r3, #4]
	bne	.L15
	mov	r1, #1
	cmp	r2, #0
	str	r1, [r3, #28]
	ble	.L15
	sub	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #4]
	ble	.L15
	ldr	r1, [r3, #12]
	cmp	r1, #119
	suble	r0, r0, #1
	strle	r0, [ip]
.L15:
	ldr	r1, .L17
	ldrh	r1, [r1, #48]
	ands	r1, r1, #16
	bne	.L16
	cmp	r2, #239
	str	r1, [r3, #28]
	bgt	.L16
	add	r2, r2, #1
	cmp	r0, #15
	str	r2, [r3, #4]
	bgt	.L16
	ldr	r1, [r3, #12]
	cmp	r1, #120
	addgt	r0, r0, #1
	strgt	r0, [ip]
.L16:
	ldr	ip, .L17+12
	ldr	r1, [r3]
	ldr	ip, [ip]
	sub	r2, r2, r0
	sub	r1, r1, ip
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	bx	lr
.L18:
	.align	2
.L17:
	.word	67109120
	.word	hOff
	.word	deer
	.word	vOff
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
	ldr	r5, .L30
	str	r6, [sp, #8]
	ldr	r0, .L30+4
	lsl	r1, r2, #23
	lsr	r1, r1, #23
	lsl	r2, ip, #3
	and	r3, r3, #255
	add	ip, r5, ip, lsl #3
	strh	r3, [r5, r2]	@ movhi
	ldr	r6, .L30+8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	strh	r1, [ip, #2]	@ movhi
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	strh	lr, [ip, #4]	@ movhi
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L19
	mov	ip, #0
	mov	r0, #512
	ldr	r2, .L30+12
	ldr	r3, [r2]
	ldr	r1, .L30+16
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
.L19:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
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
	ldr	r0, .L40
	bl	updateGems
	ldr	r0, .L40+4
	bl	updateGems
	ldr	r0, .L40+8
	bl	updateGems
	ldr	r0, .L40+12
	bl	updateGems
	ldr	r0, .L40+16
	bl	updateGems
	ldr	r3, .L40+20
	ldr	ip, .L40+24
	ldr	r6, .L40+28
	ldr	r5, .L40+32
	add	r0, r3, #72
.L34:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L33
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #4]
	ldrb	r4, [r3]	@ zero_extendqisi2
	lsl	lr, r2, #3
	and	r1, r1, r6
	add	r2, ip, r2, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
.L33:
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L34
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r1, .L51
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, .L51+4
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r2, .L55
	ldr	r3, [r2, #24]
	cmp	r3, #4
	subgt	r3, r3, #1
	strgt	r3, [r2, #24]
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r2, .L59
	push	{r4, r5, r6, lr}
	ldr	r3, [r2, #12]
	ldr	lr, .L59+4
	and	r3, r3, lr
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L59+8
	ldr	r4, .L59+12
	ldr	r0, [r1, #4]
	ldr	ip, [r2, #28]
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	and	r0, r0, lr
	ldr	r2, [r1, #16]
	ldr	lr, [r1, #24]
	strh	r3, [r4, #2]	@ movhi
	ldr	r3, [r1, #20]
	ldrb	r5, [r1]	@ zero_extendqisi2
	lsl	ip, ip, #2
	add	r1, r3, lr, lsl #5
	add	r3, r4, r2, lsl #3
	lsl	lr, r2, #3
	strh	r6, [r4]	@ movhi
	strh	ip, [r4, #4]	@ movhi
	ldr	r2, .L59+16
	strh	r5, [r4, lr]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L59+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L59+24
	ldrh	r1, [r2]
	ldr	r2, .L59+28
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L60:
	.align	2
.L59:
	.word	deer
	.word	511
	.word	countDownNum
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
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
	ldr	r0, .L62
	ldr	r3, [r0, #12]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #28]
	ldr	r2, .L62+4
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	lsl	r1, r1, #2
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r1, .L66
	push	{r4, lr}
	ldr	r2, [r1, #4]
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #24]
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	r0, .L66+4
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
.L67:
	.align	2
.L66:
	.word	countDownNum
	.word	shadowOAM
	.size	drawGemsRemaining, .-drawGemsRemaining
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	hearts,72,4
	.comm	gems,120,4
	.comm	livesRemaining,4,4
	.comm	gemsRemaining,4,4
	.comm	countDownNum,28,4
	.comm	deer,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
