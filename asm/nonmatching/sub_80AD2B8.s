	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AD334 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AD2E0
	b _080AD42C
_080AD2E0:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080AD340
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AD2F2
	adds r1, #0xFF
_080AD2F2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AD2FC
	adds r2, #0xFF
_080AD2FC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AD306
	adds r3, #0xFF
_080AD306:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AD338 @ =0x00002FF9
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD32E
	cmp r1, #0x04
	beq _080AD32E
	b _080AD42C
_080AD32E:
	ldr r0, _080AD33C @ =0x080AD189
	b _080AD42A
	.byte 0x00, 0x00
_080AD334: .4byte 0x03000FD8
_080AD338: .4byte 0x00002FF9
_080AD33C: .4byte sub_80AD188
_080AD340:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r4, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AD384 @ =0x040210A8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r6, #0x24]
	adds r1, #0x01
	strh r1, [r6, #0x24]
	cmp r0, #0x01
	bne _080AD388
	adds r0, r6, #0x0
	bl sub_8086764
	b _080AD42C
_080AD384: .4byte 0x040210A8
_080AD388:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AD3A4
	ldr r2, _080AD434 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AD3F0
_080AD3A4:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AD3AC
	adds r1, #0xFF
_080AD3AC:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AD3C2
	adds r0, #0xFF
_080AD3C2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AD3D8
	adds r3, #0xFF
_080AD3D8:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AD438 @ =0x000006E3
	str r5, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AD3F0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD402
	cmp r1, #0x04
	bne _080AD41E
_080AD402:
	ldr r2, _080AD43C @ =0x00002005
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AD41E:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080AD440 @ =0x080B314D
_080AD42A:
	str r0, [r7, #0x4C]
_080AD42C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD434: .4byte 0x00000111
_080AD438: .4byte 0x000006E3
_080AD43C: .4byte 0x00002005
_080AD440: .4byte 0x080B314D
