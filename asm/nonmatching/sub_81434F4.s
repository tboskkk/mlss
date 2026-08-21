	.syntax unified
	.text

	thumb_func_start sub_81434F4
sub_81434F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r7, r6, r0
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081435CC
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r6, r1
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r2, [r7, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r7, #0x84
	lsls r7, r7, #0x01
	adds r1, r6, r7
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r7, _081435D8 @ =0x00000239
	adds r1, r6, r7
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r2, _081435DC @ =0x0000023E
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r6, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r7, #0x18
	ldsh r0, [r5, r7]
	lsls r0, r0, #0x04
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r2, r6, r1
	strh r0, [r2, #0x00]
	movs r3, #0x1A
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x04
	subs r4, #0x56
	adds r3, r6, r4
	strh r0, [r3, #0x00]
	movs r7, #0x1C
	ldsh r0, [r5, r7]
	lsls r0, r0, #0x04
	adds r4, #0x02
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	movs r7, #0x00
	ldsh r2, [r2, r7]
	lsls r2, r2, #0x08
	movs r0, #0x00
	ldsh r3, [r3, r0]
	lsls r3, r3, #0x08
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8137A4C
	adds r0, r6, #0x0
	bl sub_81382A8
	ldr r0, _081435E0 @ =0x0814437D
	mov r1, r8
	str r0, [r1, #0x00]
_081435CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081435D8: .4byte 0x00000239
_081435DC: .4byte 0x0000023E
_081435E0: .4byte sub_814437C
