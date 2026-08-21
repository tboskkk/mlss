	.syntax unified
	.text

	thumb_func_start sub_80DED30
sub_80DED30:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DED40
	ldr r0, _080DED48 @ =0x080DDAE5
	str r0, [r4, #0x4C]
_080DED40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DED48: .4byte sub_80DDAE4
