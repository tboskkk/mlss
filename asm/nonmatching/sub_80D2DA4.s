	.syntax unified
	.text

	thumb_func_start sub_80D2DA4
sub_80D2DA4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080D2DE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r5, [r2, #0x10]
	ldr r3, _080D2DEC @ =0xFFFFF800
	adds r0, r5, r3
	ldr r3, [r4, #0x10]
	cmp r3, r0
	blt _080D2DDE
	adds r0, r1, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x18]
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _080D2DF0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r5, r1
	cmp r0, r3
	bge _080D2DF0
_080D2DDE:
	adds r0, r4, #0x0
	bl sub_8087CE4
	b _080D2DFE
	.byte 0x00, 0x00
_080D2DE8: .4byte 0x03000FD8
_080D2DEC: .4byte 0xFFFFF800
_080D2DF0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _080D2E04 @ =0x080CFB39
	str r0, [r4, #0x4C]
_080D2DFE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2E04: .4byte sub_80CFB38
