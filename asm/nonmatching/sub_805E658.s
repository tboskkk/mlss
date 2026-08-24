	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r6
	mov r9, r3
	ldr r2, [r3, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r7, [r5, #0x00]
	mov r12, r7
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r10, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [sp, #0x004]
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	mov r1, r10
	ldrh r0, [r1, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	mov r3, r10
	strh r0, [r3, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x37
	bgt _0805E6C8
	adds r0, #0x01
	str r0, [r7, #0x00]
_0805E6C8:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0805E71C
	ldr r0, _0805E72C @ =0x0805E731
	str r0, [r6, #0x4C]
	mov r7, r8
	ldr r0, [r7, #0x00]
	negs r0, r0
	cmp r0, #0x00
	bge _0805E6E6
	adds r0, #0xFF
_0805E6E6:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	mov r0, r9
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0805E6FA
	adds r0, #0xFF
_0805E6FA:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r6, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
_0805E71C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E72C: .4byte sub_805E730
