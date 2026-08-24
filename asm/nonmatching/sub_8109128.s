	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldr r3, _08109150 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08109154
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _081091AA
_08109150: .4byte 0x03000FD8
_08109154:
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xB3
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bgt _081091AC
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	cmp r4, r0
	beq _08109186
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109186:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081091B4 @ =0x081091B9
_081091AA:
	str r0, [r5, #0x04]
_081091AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081091B4: .4byte sub_81091B8
