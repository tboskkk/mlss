	.syntax unified
	.text

	thumb_func_start sub_80BC234
sub_80BC234:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BC2BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080BC256
	adds r1, #0xFF
_080BC256:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080BC260
	adds r2, #0xFF
_080BC260:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080BC26A
	adds r3, #0xFF
_080BC26A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080BC2C0 @ =0x000005DF
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC286
	cmp r1, #0x04
	bne _080BC2A2
_080BC286:
	ldr r2, _080BC2C4 @ =0x00002062
	adds r0, r4, #0x0
	movs r1, #0x03
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
_080BC2A2:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	ldr r0, _080BC2C8 @ =0x080BC2CD
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BC2BC: .4byte 0x03000FD8
_080BC2C0: .4byte 0x000005DF
_080BC2C4: .4byte 0x00002062
_080BC2C8: .4byte sub_80BC2CC
