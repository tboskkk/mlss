	.syntax unified
	.text

	thumb_func_start sub_80DDBF4
sub_80DDBF4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080DDC76
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080DDC7C @ =0x080DDF51
	str r0, [r4, #0x58]
	ldr r0, _080DDC80 @ =0x080DEB59
	str r0, [r4, #0x60]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	ldr r0, _080DDC84 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080DDC88 @ =0x080DEB1D
	str r0, [r4, #0x4C]
_080DDC76:
	pop {r4}
	pop {r0}
	bx r0
_080DDC7C: .4byte sub_80DDF50
_080DDC80: .4byte sub_80DEB58
_080DDC84: .4byte 0x00000199
_080DDC88: .4byte sub_80DEB1C
