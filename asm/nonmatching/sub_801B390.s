	.syntax unified
	.text

	thumb_func_start sub_801B390
sub_801B390:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r8, r0
	adds r4, r1, #0x0
	str r2, [sp, #0x000]
	str r3, [sp, #0x004]
	ldr r0, _0801B520 @ =0x08198504
	movs r1, #0xFE
	ands r4, r1
	adds r0, r4, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0801B3B8
	adds r0, #0x3F
_0801B3B8:
	asrs r2, r0, #0x06
	mov r3, r8
	ldr r0, [r3, #0x0C]
	muls r0, r2
	cmp r0, #0x00
	bge _0801B3C6
	adds r0, #0xFF
_0801B3C6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	mov r3, r8
	ldr r0, [r3, #0x10]
	muls r0, r2
	cmp r0, #0x00
	bge _0801B3D6
	adds r0, #0xFF
_0801B3D6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	mov r1, r8
	ldr r0, [r1, #0x14]
	muls r0, r2
	cmp r0, #0x00
	bge _0801B3E6
	adds r0, #0xFF
_0801B3E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, _0801B524 @ =0x08198584
	adds r0, r4, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0801B3F8
	adds r0, #0x3F
_0801B3F8:
	asrs r7, r0, #0x06
	ldr r3, [sp, #0x008]
	negs r3, r3
	mov r9, r3
	ldr r4, [sp, #0x00C]
	negs r6, r4
	ldr r0, [sp, #0x010]
	negs r5, r0
	mov r1, r8
	ldr r3, [r1, #0x00]
	adds r1, r7, #0x0
	muls r1, r3
	mov r2, r8
	ldr r4, [r2, #0x08]
	adds r0, r6, #0x0
	muls r0, r4
	adds r1, r1, r0
	ldr r2, [r2, #0x04]
	adds r0, r5, #0x0
	muls r0, r2
	subs r1, r1, r0
	str r1, [sp, #0x014]
	adds r0, r7, #0x0
	muls r0, r2
	mov r1, r9
	muls r1, r4
	subs r0, r0, r1
	adds r1, r5, #0x0
	muls r1, r3
	adds r0, r0, r1
	mov r10, r0
	adds r0, r7, #0x0
	muls r0, r4
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r3
	subs r0, r0, r1
	mov r12, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	muls r0, r3
	adds r1, r6, #0x0
	muls r1, r2
	subs r0, r0, r1
	adds r1, r5, #0x0
	muls r1, r4
	subs r2, r0, r1
	ldr r3, [sp, #0x008]
	adds r0, r2, #0x0
	muls r0, r3
	ldr r4, [sp, #0x014]
	adds r1, r4, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r3, [sp, #0x010]
	mov r1, r10
	muls r1, r3
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	mov r1, r12
	muls r1, r4
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0801B47E
	adds r0, #0xFF
_0801B47E:
	asrs r0, r0, #0x08
	mov r9, r0
	ldr r1, [sp, #0x00C]
	adds r0, r2, #0x0
	muls r0, r1
	ldr r3, [sp, #0x014]
	ldr r4, [sp, #0x010]
	adds r1, r3, #0x0
	muls r1, r4
	subs r0, r0, r1
	mov r1, r10
	muls r1, r7
	adds r0, r0, r1
	ldr r3, [sp, #0x008]
	mov r1, r12
	muls r1, r3
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0801B4A6
	adds r0, #0xFF
_0801B4A6:
	asrs r6, r0, #0x08
	ldr r4, [sp, #0x010]
	adds r0, r2, #0x0
	muls r0, r4
	ldr r2, [sp, #0x014]
	ldr r3, [sp, #0x00C]
	adds r1, r2, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r4, [sp, #0x008]
	mov r1, r10
	muls r1, r4
	subs r0, r0, r1
	mov r1, r12
	muls r1, r7
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0801B4CC
	adds r0, #0xFF
_0801B4CC:
	asrs r5, r0, #0x08
	mov r1, r8
	ldrh r0, [r1, #0x18]
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0801B4E0
	ldr r3, _0801B528 @ =0x0000FFFF
	adds r0, r0, r3
_0801B4E0:
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x00]
	mov r1, r8
	ldrh r0, [r1, #0x1A]
	muls r0, r6
	cmp r0, #0x00
	bge _0801B4F4
	ldr r2, _0801B528 @ =0x0000FFFF
	adds r0, r0, r2
_0801B4F4:
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x00]
	mov r4, r8
	ldrh r0, [r4, #0x1C]
	muls r0, r5
	cmp r0, #0x00
	bge _0801B508
	ldr r1, _0801B528 @ =0x0000FFFF
	adds r0, r0, r1
_0801B508:
	asrs r1, r0, #0x10
	ldr r0, [sp, #0x038]
	str r1, [r0, #0x00]
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801B520: .4byte word_8198504 @ =0x08198504
_0801B524: .4byte word_8198584 @ =0x08198584
_0801B528: .4byte 0x0000FFFF
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x1A, 0x4A, 0x20, 0x68, 0x01, 0x1C, 0x41, 0x43, 0x08, 0x1C, 0x61, 0x68
	.byte 0x0B, 0x1C, 0x4B, 0x43, 0x19, 0x1C, 0x40, 0x18, 0xA1, 0x68, 0x0B, 0x1C, 0x4B, 0x43, 0x19, 0x1C
	.byte 0x40, 0x18, 0x11, 0x68, 0xBF, 0xF1, 0x8C, 0xFA, 0x05, 0x1C, 0x00, 0x2D, 0x1D, 0xD0, 0x20, 0x68
	.byte 0x00, 0x04, 0x29, 0x1C, 0xBF, 0xF1, 0xA0, 0xFA, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12
	.byte 0x20, 0x60, 0x60, 0x68, 0x00, 0x04, 0x29, 0x1C, 0xBF, 0xF1, 0x96, 0xFA, 0x00, 0x28, 0x00, 0xDA
	.byte 0xFF, 0x30, 0x00, 0x12, 0x60, 0x60, 0xA0, 0x68, 0x00, 0x04, 0x29, 0x1C, 0xBF, 0xF1, 0x8C, 0xFA
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0xA0, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x38, 0x10, 0x00, 0x03
