	.arch armv4t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"exp.c"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12 
	mov	r3, #3
	str	r3, [fp, #-8]
	mov	r3, #5
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #12
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r3, r3, #1
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	mov	r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	lsl	r2, r3, #3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #3
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r2, r3
	lsl	r3, r3, #2
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	mvn	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #2
	lsl	r3, r3, #2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	sub	r3, r3, #3
	str	r3, [fp, #-12]
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
