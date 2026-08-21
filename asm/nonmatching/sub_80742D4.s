	.syntax unified
	.text

	thumb_func_start sub_80742D4
sub_80742D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080742F0
	movs r0, #0x87
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080742F8 @ =0x08072BE9
	str r0, [r4, #0x4C]
_080742F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080742F8: .4byte sub_8072BE8
