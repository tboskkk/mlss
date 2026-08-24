	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _0805F11C
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r7, _0805F118 @ =0xFFFFFF00
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	bgt _0805F14C
	b _0805F148
	.byte 0x00, 0x00
_0805F118: .4byte 0xFFFFFF00
_0805F11C:
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	ldr r1, _0805F1C8 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	blt _0805F14C
_0805F148:
	ldr r0, _0805F1CC @ =0x0805F1D1
	str r0, [r4, #0x4C]
_0805F14C:
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r7, [r6, #0x00]
	mov r12, r7
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805F17A
	adds r0, #0xFF
_0805F17A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r2, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r0, #0x51
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805F1C8: .4byte 0xFFFFFF00
_0805F1CC: .4byte sub_805F1D0
