	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080615CC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061598
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061568
	adds r1, #0xFF
_08061568:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08061572
	adds r2, #0xFF
_08061572:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806157C
	adds r3, #0xFF
_0806157C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061594 @ =0x00001254
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	b _080615C8
	.byte 0x00, 0x00
_08061594: .4byte 0x00001254
_08061598:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080615A0
	adds r1, #0xFF
_080615A0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080615AA
	adds r2, #0xFF
_080615AA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080615B4
	adds r3, #0xFF
_080615B4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080615D4 @ =0x0000126C
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_080615C8:
	ldr r0, _080615D8 @ =0x080615DD
	str r0, [r4, #0x4C]
_080615CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080615D4: .4byte 0x0000126C
_080615D8: .4byte sub_80615DC
