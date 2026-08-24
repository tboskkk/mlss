	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r5, r6, r0
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r1, #0x22
	adds r2, r6, r1
	movs r1, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814188E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814189A
_0814188E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814189A:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r7, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r3, [r0, #0x3A]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	strb r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xC8
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08141944 @ =0x08141949
	mov r1, r10
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141944: .4byte sub_8141948
