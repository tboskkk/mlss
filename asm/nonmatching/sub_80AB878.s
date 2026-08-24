	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AB924 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r5, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AB91C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB8B0
	cmp r1, #0x04
	bne _080AB90C
_080AB8B0:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB8B8
	adds r1, #0xFF
_080AB8B8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB8CE
	adds r0, #0xFF
_080AB8CE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB8E4
	adds r3, #0xFF
_080AB8E4:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x04
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0xCC
	bl sub_8088274
_080AB90C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AB928 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AB92C @ =0x080AB931
	str r0, [r7, #0x4C]
_080AB91C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB924: .4byte 0x03000FD8
_080AB928: .4byte 0x00000FFF
_080AB92C: .4byte sub_80AB930
