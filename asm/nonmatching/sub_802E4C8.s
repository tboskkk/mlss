	.syntax unified
	.text

	thumb_func_start sub_802E4C8
sub_802E4C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	mov r9, r1
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	mov r12, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802E4EC
	b _0802E674
_0802E4EC:
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r6, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldrb r3, [r4, #0x00]
	movs r1, #0x21
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r5, #0x7F
	ands r0, r5
	movs r3, #0x41
	negs r3, r3
	ands r0, r3
	strb r0, [r4, #0x00]
	adds r2, r6, r2
	ldrb r0, [r2, #0x00]
	ands r1, r0
	ands r1, r5
	ands r1, r3
	strb r1, [r2, #0x00]
	ldr r2, [r7, #0x0C]
	ldr r4, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x04
	eors r0, r1
	movs r1, #0x90
	lsls r1, r1, #0x02
	add r1, r8
	movs r5, #0x00
	ldsh r3, [r1, r5]
	mov r10, r3
	ldr r1, _0802E594 @ =0x08198504
	lsls r3, r0, #0x06
	adds r1, r3, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	mov r1, r10
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0802E55A
	ldr r5, _0802E598 @ =0x00003FFF
	adds r0, r0, r5
_0802E55A:
	asrs r0, r0, #0x0E
	adds r2, r2, r0
	ldr r0, _0802E59C @ =0x08198584
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0802E574
	ldr r5, _0802E598 @ =0x00003FFF
	adds r0, r0, r5
_0802E574:
	asrs r0, r0, #0x0E
	subs r4, r4, r0
	ldr r0, _0802E5A0 @ =0x00000246
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x00
	bne _0802E5A4
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x01
	orrs r0, r1
	mov r3, r12
	strb r0, [r3, #0x00]
	b _0802E5B0
_0802E594: .4byte word_8198504 @ =0x08198504
_0802E598: .4byte 0x00003FFF
_0802E59C: .4byte word_8198584 @ =0x08198584
_0802E5A0: .4byte 0x00000246
_0802E5A4:
	mov r5, r12
	ldrb r1, [r5, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0802E5B0:
	mov r0, r9
	cmp r0, #0x00
	bne _0802E63C
	ldr r1, [r6, #0x0C]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r1, r3
	cmp r2, r0
	bge _0802E5D8
	ldr r5, _0802E62C @ =0xFFFFFF00
	adds r0, r1, r5
	cmp r2, r0
	ble _0802E5D8
	ldr r1, [r6, #0x10]
	adds r0, r1, r3
	cmp r4, r0
	bge _0802E5D8
	adds r0, r1, r5
	cmp r4, r0
	bgt _0802E63C
_0802E5D8:
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0802E5E0
	adds r3, #0xFF
_0802E5E0:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0802E5EA
	adds r0, #0xFF
_0802E5EA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldr r1, _0802E630 @ =0x0000023E
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8045A94
	ldr r2, _0802E634 @ =0x000002B6
	adds r3, r6, r2
	ldrb r0, [r3, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r3, _0802E638 @ =0x00000351
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x03
	strb r0, [r1, #0x00]
	b _0802E674
	.byte 0x00, 0x00
_0802E62C: .4byte 0xFFFFFF00
_0802E630: .4byte 0x0000023E
_0802E634: .4byte 0x000002B6
_0802E638: .4byte 0x00000351
_0802E63C:
	str r2, [r6, #0x34]
	str r2, [r6, #0x0C]
	str r4, [r6, #0x38]
	str r4, [r6, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r6, #0x3C]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r6, #0x40]
	str r0, [r6, #0x18]
	ldr r5, _0802E684 @ =0x00000242
	adds r0, r7, r5
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	subs r2, #0x3C
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	movs r1, #0x00
	bl sub_802DF80
_0802E674:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0802E684: .4byte 0x00000242
