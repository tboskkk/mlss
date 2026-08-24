	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C1B24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C1BA8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _080C1B2C
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1B1C
	cmp r2, #0x04
	bne _080C1BA8
_080C1B1C:
	ldr r0, _080C1B28 @ =0x080C1CE5
	str r0, [r4, #0x4C]
	b _080C1BA8
	.byte 0x00, 0x00
_080C1B24: .4byte 0x03000FD8
_080C1B28: .4byte sub_80C1CE4
_080C1B2C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1B3E
	cmp r1, #0x04
	bne _080C1B98
_080C1B3E:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080C1B46
	adds r0, #0xFF
_080C1B46:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C1B60
	adds r2, #0xFF
_080C1B60:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C1B84
	adds r0, #0xFF
_080C1B84:
	asrs r0, r0, #0x08
	adds r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C1B98:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C1BB0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C1BB4 @ =0x080C1BB9
	str r0, [r6, #0x4C]
_080C1BA8:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C1BB0: .4byte 0x00000FFF
_080C1BB4: .4byte sub_80C1BB8
