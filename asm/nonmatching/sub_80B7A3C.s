	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r1, _080B7AA4 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r3, [r2, #0x70]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r1, [r2, #0x74]
	adds r6, r1, #0x0
	adds r6, #0x08
	ldr r4, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B7A60
	b _080B7C2A
_080B7A60:
	ldrb r0, [r2, #0x0C]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B7AA8 @ =0x040A1689
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080B7AAC
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B7C2A
	.byte 0x00, 0x00
_080B7AA4: .4byte 0x03000FD8
_080B7AA8: .4byte 0x040A1689
_080B7AAC:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B7AC8
	ldr r2, _080B7C34 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B7B14
_080B7AC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B7AD0
	adds r1, #0xFF
_080B7AD0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B7AE6
	adds r0, #0xFF
_080B7AE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B7AFC
	adds r3, #0xFF
_080B7AFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B7C38 @ =0x00002E47
	str r4, [sp, #0x000]
	adds r1, r7, #0x0
	bl sub_80DF024
_080B7B14:
	ldr r0, _080B7C3C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7B42
	cmp r2, #0x04
	bne _080B7B92
_080B7B42:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B50
	adds r0, #0xFF
_080B7B50:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B5E
	adds r0, #0xFF
_080B7B5E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7B6C
	adds r0, #0xFF
_080B7B6C:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7B7E
	adds r0, #0xFF
_080B7B7E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B7B92:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7BA0
	cmp r2, #0x04
	bne _080B7BAA
_080B7BA0:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B7BAA:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7BBE
	cmp r2, #0x04
	bne _080B7C12
_080B7BBE:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BCC
	adds r0, #0xFF
_080B7BCC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BDA
	adds r0, #0xFF
_080B7BDA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B7BE8
	adds r0, #0xFF
_080B7BE8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080B7BFE
	adds r0, #0xFF
_080B7BFE:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080B7C12:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7C20
	cmp r2, #0x04
	bne _080B7C2A
_080B7C20:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_80885C4
_080B7C2A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7C34: .4byte 0x00000111
_080B7C38: .4byte 0x00002E47
_080B7C3C: .4byte 0x03000FD8
