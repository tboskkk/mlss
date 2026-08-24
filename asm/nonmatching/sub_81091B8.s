	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	ldr r5, _081091E0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r2, #0x04
	orrs r1, r2
	strb r1, [r0, #0x0B]
	ldr r2, [r3, #0x4C]
	cmp r2, #0x00
	beq _081091E4
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r0, #0x00
	b _08109232
_081091E0: .4byte 0x03000FD8
_081091E4:
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0xB3
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r1, r6]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	str r1, [r3, #0x18]
	ldr r0, [r3, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08109234
	str r2, [r3, #0x58]
	adds r2, r3, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x18]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0x08
	cmp r3, r0
	beq _08109230
	adds r0, r3, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08109230:
	ldr r0, _0810923C @ =0x08109241
_08109232:
	str r0, [r4, #0x04]
_08109234:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810923C: .4byte sub_8109240
