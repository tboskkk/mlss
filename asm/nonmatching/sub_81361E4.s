	.syntax unified
	.text

	thumb_func_start sub_81361E4
sub_81361E4:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x014
	mov r9, r0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, _08136268 @ =0x08CDC480
	mov r8, r0
	str r0, [sp, #0x010]
	mov r0, sp
	bl sub_8136470
	ldr r6, [r5, #0x00]
	ldr r0, [r4, #0x00]
	muls r0, r6
	ldr r3, [r5, #0x04]
	ldr r1, [r4, #0x10]
	muls r1, r3
	adds r0, r0, r1
	ldr r2, [r5, #0x08]
	ldr r1, [r4, #0x20]
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x30]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x04]
	muls r0, r6
	ldr r1, [r4, #0x14]
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x24]
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x34]
	adds r0, r0, r1
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x08]
	muls r0, r6
	ldr r1, [r4, #0x18]
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x28]
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	str r0, [sp, #0x008]
	mov r1, r8
	mov r0, r9
	str r1, [r0, #0x10]
	mov r1, sp
	bl sub_8136688
	mov r1, r8
	str r1, [sp, #0x010]
	mov r0, r9
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08136268: .4byte 0x08CDC480
