	.syntax unified
	.text

	thumb_func_start sub_8087DE4
sub_8087DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldsh r1, [r1, r5]
	muls r0, r1
	cmp r0, #0x00
	bge _08087E0C
	adds r0, #0xFF
_08087E0C:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087E80 @ =0x00003FFF
	cmp r5, r0
	bgt _08087E84
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	adds r2, r1, #0x0
	muls r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r3, r1, r5
	muls r0, r3
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08087E40
	adds r0, #0x3F
_08087E40:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087E5C
	adds r0, #0x3F
_08087E5C:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087EF2
	.byte 0x00, 0x00
_08087E80: .4byte 0x00003FFF
_08087E84:
	movs r7, #0x84
	adds r7, r7, r4
	mov r8, r7
	movs r1, #0x02
	ldsh r0, [r7, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0x88
	movs r2, #0x02
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x06
	movs r7, #0x00
	ldsh r3, [r0, r7]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	cmp r0, #0x00
	blt _08087ECE
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _08087EF2
_08087ECE:
	mov r1, r8
	movs r2, #0x02
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	movs r5, #0x02
	ldsh r0, [r6, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087EF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
