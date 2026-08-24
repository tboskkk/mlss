	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r10, r7
	ldr r2, [r7, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EEFC
	adds r0, #0xFF
_0805EEFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r7, r10
	ldr r2, [r7, #0x00]
	ldr r3, [r6, #0x00]
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
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EF3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EF4C @ =0x0805EF51
	str r0, [r4, #0x4C]
_0805EF3C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF4C: .4byte sub_805EF50
