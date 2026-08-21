	.syntax unified
	.text

	thumb_func_start sub_80D62D4
sub_80D62D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D6374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6300
	cmp r1, #0x04
	bne _080D631C
_080D6300:
	ldr r2, _080D6378 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D631C:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D633A
	ldr r2, _080D637C @ =0x00002095
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D633A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D6348
	adds r1, #0xFF
_080D6348:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D6352
	adds r2, #0xFF
_080D6352:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D635C
	adds r3, #0xFF
_080D635C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D6380 @ =0x0000069F
	bl sub_80DF024
	ldr r0, _080D6384 @ =0x080D6389
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D6374: .4byte 0x03000FD8
_080D6378: .4byte 0x00002066
_080D637C: .4byte 0x00002095
_080D6380: .4byte 0x0000069F
_080D6384: .4byte sub_80D6388
