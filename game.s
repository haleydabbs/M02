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
	mov	fp, #205
	mov	r3, #1
	mov	r2, #8
	ldr	r5, .L8+28
	mov	r9, #0
	mov	r10, #32
	ldr	ip, [r5]
	ldr	r0, .L8+32
	ldr	lr, .L8+36
	mov	r6, #9
	mov	r8, #16
	mov	r7, #21
	add	ip, ip, #104
	stm	r0, {fp, ip}
	str	r3, [r0, #44]
	str	r3, [lr, #20]
	str	r3, [lr, #16]
	mov	r1, r3
	mov	r4, lr
	mov	ip, r3
	str	r2, [lr, #12]
	mov	r3, lr
	str	r2, [lr, #8]
	mov	lr, #140
	str	r10, [r0, #16]
	str	r10, [r0, #20]
	str	r9, [r0, #24]
	str	r9, [r0, #28]
	str	r9, [r0, #40]
	ldr	r0, .L8+40
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r0]
	str	r8, [r0, #20]
	str	r7, [r0, #4]
	str	r6, [r0, #16]
	str	r6, [r0, #24]
.L2:
	sub	r0, r1, r1, lsl #4
	add	r1, r1, #1
	add	r0, r0, #235
	cmp	r1, #5
	str	lr, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	ip, [r3, #44]
	str	r0, [r3, #4]
	str	r1, [r3, #40]
	add	r3, r3, #24
	bne	.L2
	mov	r3, #10
	mov	r1, #0
	mov	r9, #220
	mov	r8, #6
	mov	r7, #210
	mov	r6, #7
	mov	lr, #200
	mov	r0, #352
	str	r3, [r4, #100]
	str	r1, [r5]
	ldr	r3, .L8+44
	ldr	r1, .L8+48
	str	r2, [r4, #96]
	str	r9, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	ip, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #24]
	str	ip, [r3, #40]
	str	r2, [r3, #60]
	str	r2, [r3, #56]
	str	r2, [r3, #48]
	str	r2, [r3, #68]
	str	ip, [r3, #64]
	str	r8, [r3, #20]
	str	r7, [r3, #28]
	str	r6, [r3, #44]
	str	lr, [r3, #52]
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
	.word	hearts
	.word	vOff
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
	ldr	r3, .L26
	ldrh	r2, [r3, #48]
	push	{r4, r5, r6, lr}
	ldr	r3, .L26+4
	ldr	lr, .L26+8
	tst	r2, #32
	ldr	ip, [lr]
	ldm	r3, {r0, r2}
	bne	.L15
	mov	r1, #1
	cmp	r2, #0
	str	r1, [r3, #28]
	ble	.L15
	sub	r6, r2, #1
	ldr	r5, .L26+12
	add	r1, r6, r0, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r5, r1]
	cmp	r1, #0
	beq	.L15
	ldr	r4, [r3, #20]
	ldr	r1, [r3, #44]
	add	r4, r0, r4
	sub	r4, r4, #1
	sub	r1, r2, r1
	add	r1, r1, r4, lsl #8
	lsl	r1, r1, #1
	ldrh	r1, [r5, r1]
	cmp	r1, #0
	beq	.L15
	cmp	ip, #0
	str	r6, [r3, #4]
	ble	.L18
	ldr	r2, [r3, #12]
	cmp	r2, #119
	bgt	.L18
	mov	r2, r6
	sub	ip, ip, #1
	str	ip, [lr]
.L15:
	ldr	r1, .L26
	ldrh	r1, [r1, #48]
	ands	r1, r1, #16
	bne	.L16
	cmp	r2, #239
	str	r1, [r3, #28]
	bgt	.L16
	add	r2, r2, #1
	cmp	ip, #15
	str	r2, [r3, #4]
	bgt	.L16
	ldr	r1, [r3, #12]
	cmp	r1, #120
	addgt	ip, ip, #1
	strgt	ip, [lr]
.L16:
	ldr	r1, .L26+16
	ldr	r1, [r1]
	sub	r2, r2, ip
	sub	r0, r0, r1
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	mov	r2, r6
	b	.L15
.L27:
	.align	2
.L26:
	.word	67109120
	.word	deer
	.word	hOff
	.word	collisionMapBitmap
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
	ldr	r5, .L39
	str	r6, [sp, #8]
	ldr	r0, .L39+4
	lsl	r1, r2, #23
	lsr	r1, r1, #23
	lsl	r2, ip, #3
	and	r3, r3, #255
	add	ip, r5, ip, lsl #3
	strh	r3, [r5, r2]	@ movhi
	ldr	r6, .L39+8
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	strh	r1, [ip, #2]	@ movhi
	ldr	r1, [r0, #8]
	ldr	r0, [r0, #12]
	strh	lr, [ip, #4]	@ movhi
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L28
	mov	ip, #0
	mov	r0, #512
	ldr	r2, .L39+12
	ldr	r3, [r2]
	ldr	r1, .L39+16
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
.L28:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r0, .L49
	bl	updateGems
	ldr	r0, .L49+4
	bl	updateGems
	ldr	r0, .L49+8
	bl	updateGems
	ldr	r0, .L49+12
	bl	updateGems
	ldr	r0, .L49+16
	bl	updateGems
	ldr	r3, .L49+20
	ldr	ip, .L49+24
	ldr	r6, .L49+28
	ldr	r5, .L49+32
	add	r0, r3, #72
.L43:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L42
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #4]
	ldrb	r4, [r3]	@ zero_extendqisi2
	lsl	lr, r2, #3
	and	r1, r1, r6
	add	r2, ip, r2, lsl #3
	strh	r4, [ip, lr]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
.L42:
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L43
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r1, .L60
	str	lr, [sp, #-4]!
	lsl	r2, r2, #23
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldr	r0, .L60+4
	lsl	ip, r3, #3
	lsr	r2, r2, #23
	add	r3, r1, r3, lsl #3
	strh	lr, [r1, ip]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r2, .L64
	ldr	r3, [r2, #24]
	cmp	r3, #4
	subgt	r3, r3, #1
	strgt	r3, [r2, #24]
	bx	lr
.L65:
	.align	2
.L64:
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
	ldr	r2, .L68
	push	{r4, r5, r6, lr}
	ldr	r3, [r2, #12]
	ldr	lr, .L68+4
	and	r3, r3, lr
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L68+8
	ldr	r4, .L68+12
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
	ldr	r2, .L68+16
	strh	r5, [r4, lr]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L68+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L68+24
	ldrh	r1, [r2]
	ldr	r2, .L68+28
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r0, .L71
	ldr	r3, [r0, #12]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, [r0, #28]
	ldr	r2, .L71+4
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	lsl	r1, r1, #2
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r1, .L75
	push	{r4, lr}
	ldr	r2, [r1, #4]
	ldr	r3, [r1, #16]
	ldr	r4, [r1, #24]
	ldrb	lr, [r1]	@ zero_extendqisi2
	ldr	r0, .L75+4
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
.L76:
	.align	2
.L75:
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
