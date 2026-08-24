	push {lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #0x00
	beq _08057F7A
	cmp r1, #0x01
	beq _08057F98
	b _08057FC4
_08057F7A:
	ldr r0, _08057F94 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x08
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x72
	b _08057FAE
	.byte 0x00, 0x00
_08057F94: .4byte 0x03000DD0
_08057F98:
	ldr r0, _08057FC8 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x74
_08057FAE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x06
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
_08057FC4:
	pop {r0}
	bx r0
_08057FC8: .4byte 0x03000DD0
