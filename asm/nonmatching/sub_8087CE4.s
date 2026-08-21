	.syntax unified
	.text

	thumb_func_start sub_8087CE4
sub_8087CE4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x7E
	movs r0, #0x00
	ldsh r3, [r2, r0]
	movs r1, #0x7A
	adds r1, r1, r4
	mov r12, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r6, #0x00
	ldsh r1, [r1, r6]
	muls r0, r1
	cmp r0, #0x00
	bge _08087D0A
	adds r0, #0xFF
_08087D0A:
	asrs r0, r0, #0x08
	adds r5, r3, r0
	ldrh r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	strh r5, [r2, #0x00]
	ldr r0, _08087D8C @ =0x00003FFF
	cmp r5, r0
	bgt _08087DAA
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _08087DAA
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
	bge _08087D48
	adds r0, #0x3F
_08087D48:
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
	bge _08087D64
	adds r0, #0x3F
_08087D64:
	asrs r0, r0, #0x06
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _08087D90
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08087D88
	adds r0, #0x3F
_08087D88:
	asrs r0, r0, #0x06
	b _08087DA4
_08087D8C: .4byte 0x00003FFF
_08087D90:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	subs r0, #0x02
	movs r6, #0x00
	ldsh r3, [r0, r6]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	bl sub_80877FC
_08087DA4:
	str r0, [r4, #0x18]
	movs r0, #0x01
	b _08087DDC
_08087DAA:
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	movs r2, #0x02
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r5, #0x02
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
_08087DDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
