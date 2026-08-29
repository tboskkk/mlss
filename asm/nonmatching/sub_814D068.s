	.syntax unified
	.text

	thumb_func_start sub_814D068
sub_814D068:
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814D0D0
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0814D126
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
	b _0814D126
_0814D0D0:
	ldr r0, _0814D12C @ =0x00000212
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	movs r6, #0xC0
	lsls r6, r6, #0x01
	ands r6, r0
	cmp r6, #0x00
	bne _0814D126
	ldr r1, _0814D130 @ =0x0000020D
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x0C]
	str r0, [r4, #0x0C]
	ldr r0, [r3, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [r3, #0x18]
	str r0, [r4, #0x18]
	ldrh r1, [r5, #0x00]
	ldr r0, _0814D134 @ =0xFFFFFE7F
	ands r0, r1
	strh r0, [r5, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r6, [r0, #0x00]
	ldr r0, _0814D138 @ =0x0000020E
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r7, #0x08]
	str r0, [r7, #0x00]
_0814D126:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D12C: .4byte 0x00000212
_0814D130: .4byte 0x0000020D
_0814D134: .4byte 0xFFFFFE7F
_0814D138: .4byte 0x0000020E
