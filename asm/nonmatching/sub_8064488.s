	.syntax unified
	.text

	thumb_func_start sub_8064488
sub_8064488:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080644D2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080644C4
	ldr r0, _080644C0 @ =0x08064541
	b _080644D0
	.byte 0x00, 0x00
_080644C0: .4byte sub_8064540
_080644C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080644D8 @ =0x08064515
_080644D0:
	str r0, [r4, #0x4C]
_080644D2:
	pop {r4}
	pop {r0}
	bx r0
_080644D8: .4byte sub_8064514
