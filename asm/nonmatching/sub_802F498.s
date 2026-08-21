	.syntax unified
	.text

	thumb_func_start sub_802F498
sub_802F498:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	movs r0, #0xAE
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r2, #0x10
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	bne _0802F4BA
	b _0802F6DE
_0802F4BA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r1, [r4, #0x00]
	ldr r2, _0802F574 @ =0x0000020D
	mov r10, r2
	add r1, r10
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	mov r9, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x28
	adds r1, r7, #0x0
	bl sub_80461B4
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldrb r1, [r6, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0802F520
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0802F57C
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldr r1, [r4, #0x00]
	add r1, r10
	ldrb r2, [r1, #0x00]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r1, r7, #0x0
	bl sub_80461B4
	ldr r0, [r4, #0x00]
	bl sub_80465D8
_0802F520:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	mov r0, r8
	ands r0, r1
	cmp r0, #0x00
	beq _0802F57C
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	bl sub_8047B78
	movs r1, #0x01
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r6, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802F5A0
	ldr r2, _0802F578 @ =0x0000026E
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0802F5A0
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
	b _0802F5A0
	.byte 0x00, 0x00
_0802F574: .4byte 0x0000020D
_0802F578: .4byte 0x0000026E
_0802F57C:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_8047B78
	movs r2, #0xAE
	lsls r2, r2, #0x02
	adds r3, r5, r2
	movs r1, #0x01
	ands r1, r0
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0802F5A0:
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802F5B2
	b _0802F6D8
_0802F5B2:
	adds r7, r5, #0x0
	adds r7, #0xFB
	ldrb r1, [r7, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0802F5E6
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r1, [r3, #0x00]
	ldr r0, [r1, #0x14]
	ldr r2, [r1, #0x18]
	adds r0, r0, r2
	str r0, [r1, #0x14]
	ldr r0, [r3, #0x00]
	str r4, [r0, #0x18]
	ldr r1, [r3, #0x00]
	ldr r0, [r1, #0x3C]
	ldr r2, [r1, #0x40]
	adds r0, r0, r2
	str r0, [r1, #0x3C]
	ldr r0, [r3, #0x00]
	str r4, [r0, #0x40]
_0802F5E6:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r1, [r3, #0x00]
	ldr r2, _0802F6C4 @ =0x00000353
	mov r12, r2
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	mov r10, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r6, _0802F6C8 @ =0x0000020D
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	mov r9, r2
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802F694
	ldrb r1, [r7, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0802F662
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldr r1, [r3, #0x00]
	ldr r0, [r1, #0x14]
	ldr r2, [r1, #0x18]
	adds r0, r0, r2
	str r0, [r1, #0x14]
	ldr r0, [r3, #0x00]
	str r4, [r0, #0x18]
	ldr r1, [r3, #0x00]
	ldr r0, [r1, #0x3C]
	ldr r2, [r1, #0x40]
	adds r0, r0, r2
	str r0, [r1, #0x3C]
	ldr r0, [r3, #0x00]
	str r4, [r0, #0x40]
_0802F662:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r1, [r3, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	mov r0, r10
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_802DF80
_0802F694:
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	subs r1, #0x04
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r4, _0802F6CC @ =0x0000020F
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _0802F6D0 @ =0x0000020A
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _0802F6D4 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r2, #0x00]
	b _0802F6DE
_0802F6C4: .4byte 0x00000353
_0802F6C8: .4byte 0x0000020D
_0802F6CC: .4byte 0x0000020F
_0802F6D0: .4byte 0x0000020A
_0802F6D4: .4byte 0xFFFFFE7F
_0802F6D8:
	adds r0, r5, #0x0
	bl sub_802F6EC
_0802F6DE:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
