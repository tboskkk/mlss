	.syntax unified
	.text

	thumb_func_start sub_80DEB1C
sub_80DEB1C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DEB4C
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x93
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x30
	strh r0, [r1, #0x00]
	ldr r0, _080DEB54 @ =0x080DDC8D
	str r0, [r4, #0x4C]
_080DEB4C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DEB54: .4byte sub_80DDC8C
