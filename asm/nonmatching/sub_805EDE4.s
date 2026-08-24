	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805EEB4 @ =0xFFFFFD80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	adds r7, r5, #0x0
	adds r7, #0x88
	muls r0, r2
	bl __divsi3
	subs r2, r4, r0
	str r2, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x8C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	movs r3, #0x22
	mov r9, r3
	str r3, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EE5C
	adds r0, #0xFF
_0805EE5C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	ldr r2, [r7, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805EEA2
	str r1, [r6, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0805EEB8 @ =0x0805EEBD
	str r0, [r5, #0x4C]
_0805EEA2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EEB4: .4byte 0xFFFFFD80
_0805EEB8: .4byte sub_805EEBC
