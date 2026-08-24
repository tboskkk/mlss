	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF3A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0805DF44 @ =0x0805DF4D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805DF10
	adds r1, #0xFF
_0805DF10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805DF1A
	adds r2, #0xFF
_0805DF1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805DF24
	adds r3, #0xFF
_0805DF24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805DF48 @ =0x000010E6
	bl sub_80DF024
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805DF3A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF44: .4byte sub_805DF4C
_0805DF48: .4byte 0x000010E6
