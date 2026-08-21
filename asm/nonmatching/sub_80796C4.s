	.syntax unified
	.text

	thumb_func_start sub_80796C4
sub_80796C4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _080796FA
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x10
	str r0, [r1, #0x00]
	adds r1, #0x20
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	ldr r0, _08079700 @ =0x08078679
	str r0, [r2, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
_080796FA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079700: .4byte sub_8078678
