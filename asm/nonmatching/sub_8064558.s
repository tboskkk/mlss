	.syntax unified
	.text

	thumb_func_start sub_8064558
sub_8064558:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064606
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080645AC
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064588
	adds r1, #0xFF
_08064588:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08064592
	adds r2, #0xFF
_08064592:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806459C
	adds r3, #0xFF
_0806459C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080645A8 @ =0x00001284
	bl sub_80DF024
	b _080645DE
_080645A8: .4byte 0x00001284
_080645AC:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080645C0
	adds r1, #0xFF
_080645C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080645CA
	adds r2, #0xFF
_080645CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080645D4
	adds r3, #0xFF
_080645D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080645F4 @ =0x0000128D
	bl sub_80DF024
_080645DE:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080645F8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x28
	bl play_sfx_80195B4
	b _08064602
_080645F4: .4byte 0x0000128D
_080645F8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x28
	bl play_sfx_80195B4
_08064602:
	ldr r0, _08064610 @ =0x08064D21
	str r0, [r4, #0x4C]
_08064606:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064610: .4byte sub_8064D20
