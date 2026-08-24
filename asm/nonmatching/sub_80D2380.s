	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r5, [r6, #0x2C]
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2482
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D23B8
	cmp r1, #0x04
	bne _080D247E
_080D23B8:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D23C4
	adds r0, #0xFF
_080D23C4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D23E4
	adds r1, #0xFF
_080D23E4:
	asrs r2, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r1, [r5, #0x18]
	cmp r1, #0x00
	bge _080D240C
	adds r1, #0xFF
_080D240C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r1, r1, r2
	movs r0, #0x50
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D242E
	adds r4, r2, #0x0
	b _080D243E
_080D242E:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D243E:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D2446
	adds r0, #0xFF
_080D2446:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D248C @ =0x03001038
	ldr r0, _080D2490 @ =0x0819832C
	ldr r1, _080D2494 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D2464
	adds r1, #0x3F
_080D2464:
	asrs r1, r1, #0x06
	adds r1, r7, r1
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D247E:
	ldr r0, _080D2498 @ =0x080D249D
	str r0, [r6, #0x4C]
_080D2482:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D248C: .4byte 0x03001038
_080D2490: .4byte 0x0819832C
_080D2494: .4byte 0x08198220
_080D2498: .4byte sub_80D249C
