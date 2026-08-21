	.syntax unified
	.text

	thumb_func_start sub_8074260
sub_8074260:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080742CC
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _080742C8 @ =0x08072F45
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _080742CE
	.byte 0x00, 0x00
_080742C8: .4byte sub_8072F44
_080742CC:
	adds r0, r5, #0x0
_080742CE:
	pop {r4, r5}
	pop {r1}
	bx r1
