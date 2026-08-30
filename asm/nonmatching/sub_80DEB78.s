	.syntax unified
	.text

	thumb_func_start sub_80DEB78
sub_80DEB78:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DEBBC
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x04
	cmp r1, r0
	beq _080DEB9A
	movs r2, #0x06
_080DEB9A:
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080DEBC4 @ =0x080DDBF5
	str r0, [r4, #0x4C]
_080DEBBC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DEBC4: .4byte sub_80DDBF4
