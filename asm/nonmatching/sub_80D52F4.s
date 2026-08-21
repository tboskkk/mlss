	.syntax unified
	.text

	thumb_func_start sub_80D52F4
sub_80D52F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D53E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D53E0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D532C
	cmp r1, #0x04
	bne _080D5348
_080D532C:
	ldr r2, _080D53EC @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D5348:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D5366
	ldr r2, _080D53F0 @ =0x00002095
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5366:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5378
	cmp r1, #0x04
	bne _080D53D2
_080D5378:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D5380
	adds r0, #0xFF
_080D5380:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x18
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D539A
	adds r2, #0xFF
_080D539A:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
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
	bge _080D53BE
	adds r0, #0xFF
_080D53BE:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080D53D2:
	adds r0, r4, #0x0
	adds r0, #0x7A
	movs r1, #0xBA
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _080D53F4 @ =0x080D53F9
	str r0, [r6, #0x4C]
_080D53E0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D53E8: .4byte 0x03000FD8
_080D53EC: .4byte 0x00002066
_080D53F0: .4byte 0x00002095
_080D53F4: .4byte sub_80D53F8
