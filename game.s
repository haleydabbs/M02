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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGems.part.0, %function
updateGems.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #16
	ldr	r2, [r0, #4]
	sub	sp, sp, #16
	ldr	ip, [r0, #16]
	ldr	r3, [r0]
	ldr	r6, [r0, #12]
	str	r2, [sp]
	mov	r4, r0
	ldr	r0, [r0, #8]
	ldr	r5, .L8
	str	r3, [sp, #4]
	str	r6, [sp, #12]
	str	r0, [sp, #8]
	lsl	r1, r2, #23
	ldr	r0, .L8+4
	lsl	r2, ip, #3
	lsr	r1, r1, #23
	add	ip, r5, ip, lsl #3
	and	r3, r3, #255
	strh	r3, [r5, r2]	@ movhi
	ldr	r6, .L8+8
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	strh	r1, [ip, #2]	@ movhi
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	strh	lr, [ip, #4]	@ movhi
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L1
	mov	r1, #0
	mov	r2, #512
	ldr	r3, [r4, #16]
	lsl	r3, r3, #3
	str	r1, [r4, #20]
	strh	r2, [r5, r3]	@ movhi
.L1:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	shadowOAM
	.word	deer
	.word	collision
	.size	updateGems.part.0, .-updateGems.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #16384
	ldr	r4, .L14
	mov	r0, #3
	ldr	r2, .L14+4
	ldr	r1, .L14+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L14+12
	ldr	r1, .L14+16
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L14+20
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r4, #32
	mov	r7, #104
	mov	r6, #120
	mov	r5, #2
	mov	r2, r1
	mov	r0, #8
	mov	lr, #144
	mov	ip, #1
	ldr	r3, .L14+24
	stm	r3, {r6, r7}
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #28]
	str	r5, [r3, #32]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	ldr	r3, .L14+28
.L11:
	rsb	r1, r2, r2, lsl #4
	add	r2, r2, #1
	add	r1, r1, #4
	cmp	r2, #4
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	lr, [r3]
	str	ip, [r3, #20]
	str	r1, [r3, #4]
	str	r2, [r3, #16]
	add	r3, r3, #24
	bne	.L11
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	DMANow
	.word	100728832
	.word	FinalGameSpritesTiles
	.word	83886592
	.word	FinalGameSpritesPal
	.word	hideSprites
	.word	deer
	.word	gems
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
	str	lr, [sp, #-4]!
	mov	lr, #1
	mov	ip, #8
	ldr	r3, .L18
	ldr	r3, [r3, #12]
	rsb	r2, r1, r1, lsl #4
	add	r2, r2, #4
	add	r1, r1, lr
	add	r3, r3, #112
	str	lr, [r0, #20]
	str	r2, [r0, #4]
	str	r1, [r0, #16]
	str	r3, [r0]
	str	ip, [r0, #12]
	str	ip, [r0, #8]
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	deer
	.size	initGems, .-initGems
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
	bne	.L21
	ldr	r2, .L23+4
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ldrgt	r1, [r2, #32]
	subgt	r3, r3, r1
	strgt	r3, [r2, #4]
.L21:
	ldr	r3, .L23
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	ldr	r3, .L23+4
	ldmib	r3, {r1, r2}
	add	r2, r1, r2
	cmp	r2, #239
	ldrle	r2, [r3, #32]
	addle	r1, r2, r1
	strle	r1, [r3, #4]
	bx	lr
.L24:
	.align	2
.L23:
	.word	67109120
	.word	deer
	.size	updateDeer, .-updateDeer
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
	ldr	r4, .L34
	add	r5, r4, #96
.L27:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L33
.L26:
	add	r4, r4, #24
	cmp	r4, r5
	bne	.L27
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	mov	r0, r4
	bl	updateGems.part.0
	b	.L26
.L35:
	.align	2
.L34:
	.word	gems
	.size	updateGame, .-updateGame
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
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	b	updateGems.part.0
	.size	updateGems, .-updateGems
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
	@ link register save eliminated.
	ldr	r2, .L39
	ldr	r3, [r2, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r1, #0
	mvn	r3, r3, lsr #17
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldr	r2, .L39+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L40:
	.align	2
.L39:
	.word	deer
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
	b	drawGame
	.size	drawDeer, .-drawDeer
	.comm	gems,96,4
	.comm	livesRemaining,4,4
	.comm	gemsRemaining,4,4
	.comm	deer,36,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
