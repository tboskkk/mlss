	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2304
	cmp r1, #0x04
	bne _080D2370
_080D2304:
	ldr r1, [r3, #0x38]
	ldr r0, [r4, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D2310
	adds r0, #0xFF
_080D2310:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r5, r0, #0x01
	ldr r1, [r3, #0x3C]
	ldr r0, [r4, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D2330
	adds r1, #0xFF
_080D2330:
	asrs r2, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D235C
	adds r0, #0xFF
_080D235C:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080D2370:
	ldr r0, _080D237C @ =0x080D2381
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D237C: .4byte sub_80D2380
