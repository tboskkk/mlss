	push {r4, r5, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08113F98
	str r2, [r3, #0x2C]
	ldr r0, _08113FA4 @ =0x0811403D
	str r0, [r3, #0x4C]
	ldr r0, [r2, #0x28]
	ldr r2, _08113FA8 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08113FAC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08113F8C
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r1, #0x02
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r3, r1, #0x0
	adds r3, #0x7D
	strb r0, [r3, #0x00]
	ldr r0, _08113FB0 @ =0x08113FB5
	str r0, [r1, #0x54]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
_08113F8C:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x85
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_08113F98:
	movs r0, #0x01
	negs r0, r0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08113FA4: .4byte sub_811403C
_08113FA8: .4byte 0x00000113
_08113FAC: .4byte 0x03000FD8
_08113FB0: .4byte sub_8113FB4
