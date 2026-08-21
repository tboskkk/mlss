	.syntax unified
	.text

	thumb_func_start sub_8111D0C
sub_8111D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r0, [sp, #0x028]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, _08111DFC @ =0x00004041
	mov r0, r8
	movs r2, #0x00
	str r3, [sp, #0x000]
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r1, _08111E00 @ =0x00004042
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x08
	ldr r0, [r4, #0x38]
	adds r0, r0, r5
	str r0, [r4, #0x38]
	str r0, [r7, #0x38]
	str r0, [r4, #0x10]
	str r0, [r7, #0x10]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x08
	ldr r0, [r4, #0x3C]
	adds r0, r0, r6
	str r0, [r4, #0x3C]
	str r0, [r7, #0x3C]
	str r0, [r4, #0x14]
	str r0, [r7, #0x14]
	ldr r3, [sp, #0x000]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	adds r0, r0, r3
	str r0, [r4, #0x40]
	str r0, [r7, #0x40]
	str r0, [r4, #0x18]
	str r0, [r7, #0x18]
	mov r0, r9
	str r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	ldr r5, [r7, #0x08]
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x12]
	movs r1, #0x07
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r5, #0x12]
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #0x12]
	ldr r1, [sp, #0x02C]
	str r1, [r4, #0x4C]
	str r1, [r7, #0x4C]
	mov r3, r8
	adds r3, #0x75
	ldrb r0, [r3, #0x00]
	adds r0, #0x01
	adds r2, r7, #0x0
	adds r2, #0x75
	movs r1, #0x00
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	adds r2, r4, #0x0
	adds r2, #0x75
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r1, [r0, #0x00]
	adds r4, #0xA8
	movs r0, #0x01
	str r0, [r4, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x28]
	ldr r2, _08111E04 @ =0x00000113
	adds r1, r0, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	mov r0, r10
	cmp r0, #0x00
	beq _08111E08
	mov r1, r10
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r3, #0x01
	b _08111E16
_08111DFC: .4byte 0x00004041
_08111E00: .4byte 0x00004042
_08111E04: .4byte 0x00000113
_08111E08:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r3, r0, #0x0
_08111E16:
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
