	.syntax unified
	.text

	thumb_func_start sub_80760A8
sub_80760A8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080760BC
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
_080760BC:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080760D2
	cmp r0, #0x01
	beq _080760D8
	adds r0, r4, #0x0
	movs r1, #0x0A
	b _080760DC
_080760D2:
	adds r0, r4, #0x0
	movs r1, #0x02
	b _080760DC
_080760D8:
	adds r0, r4, #0x0
	movs r1, #0x06
_080760DC:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760F0 @ =0x08076149
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080760F0: .4byte sub_8076148
