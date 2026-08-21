	.syntax unified
	.text

	thumb_func_start sub_8111F3C
sub_8111F3C:
	push {r4, r5, r6, lr}
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
	bge _08111F60
	adds r0, #0xFF
_08111F60:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08111FD8 @ =0x00003FFF
	cmp r5, r0
	bgt _08111FF6
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
	bge _08111F94
	adds r0, #0x3F
_08111F94:
	asrs r0, r0, #0x06
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FB0
	adds r0, #0x3F
_08111FB0:
	asrs r0, r0, #0x06
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08111FDC
	subs r0, #0x10
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08111FD4
	adds r0, #0x3F
_08111FD4:
	asrs r0, r0, #0x06
	b _08111FF0
_08111FD8: .4byte 0x00003FFF
_08111FDC:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08111FF0:
	str r0, [r4, #0x14]
	movs r0, #0x01
	b _08112028
_08111FF6:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r6, #0x02
	ldsh r0, [r0, r6]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08112028:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
