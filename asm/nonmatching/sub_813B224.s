	.syntax unified
	.text

	thumb_func_start sub_813B224
sub_813B224:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813B260
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813B262
_0813B260:
	movs r0, #0xFF
_0813B262:
	movs r4, #0x00
	strb r0, [r5, #0x02]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, _0813B2B8 @ =0x0000023E
	adds r0, r5, r3
	movs r6, #0x00
	ldsh r3, [r0, r6]
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813B2BC @ =0x0813B9B5
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B2B8: .4byte 0x0000023E
_0813B2BC: .4byte sub_813B9B4
