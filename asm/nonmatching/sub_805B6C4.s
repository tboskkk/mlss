	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x008]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x004]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	str r2, [sp, #0x010]
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x014]
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	movs r1, #0x02
	mov r9, r1
	movs r3, #0x00
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcs _0805B7DE
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x020]
_0805B730:
	ldr r1, [sp, #0x00C]
	adds r2, r1, r3
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	muls r0, r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x00
	adds r5, r2, #0x0
	adds r3, #0x01
	str r3, [sp, #0x024]
	ldr r2, [sp, #0x010]
	cmp r4, r2
	bcs _0805B7D2
	adds r6, r7, #0x0
	adds r6, #0x98
_0805B762:
	mov r3, r9
	lsls r0, r3, #0x01
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805B7BC
	mov r3, r10
	adds r1, r3, r4
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r0, r1, r0
	strh r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0805B7BC
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	subs r0, r2, #0x1
	cmp r5, r0
	blt _0805B7BC
	adds r0, #0x0C
	cmp r5, r0
	bgt _0805B7BC
	ldr r3, [sp, #0x008]
	adds r2, r3, r4
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r0, r3, #0x1
	cmp r2, r0
	blt _0805B7BC
	adds r0, #0x11
	cmp r2, r0
	bgt _0805B7BC
	adds r3, r5, #0x0
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	bl sub_8058898
_0805B7BC:
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x010]
	cmp r4, r0
	bcc _0805B762
_0805B7D2:
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcc _0805B730
_0805B7DE:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
