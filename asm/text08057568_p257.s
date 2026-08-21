	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start _muldi3
_muldi3:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r3, [sp, #0x000]
	ldr r0, _081DC7B0 @ =0x0000FFFF
	mov r12, r0
	adds r2, r3, #0x0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	mov r4, r12
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0x0
	muls r5, r0
	adds r4, r2, #0x0
	muls r4, r1
	adds r2, r3, #0x0
	muls r2, r0
	muls r3, r1
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bcs _081DC784
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r3, r3, r0
_081DC784:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, r12
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0x0
	orrs r6, r5
	adds r1, r7, #0x0
	adds r0, r6, #0x0
	ldr r3, [sp, #0x000]
	ldr r4, [sp, #0x00C]
	adds r2, r3, #0x0
	muls r2, r4
	ldr r5, [sp, #0x004]
	ldr r4, [sp, #0x008]
	adds r3, r5, #0x0
	muls r3, r4
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x010
	pop {r4, r5, r6, r7, pc}
_081DC7B0: .4byte 0x0000FFFF
