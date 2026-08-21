	.syntax unified
	.text

	thumb_func_start sub_8064290
sub_8064290:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _080642A2
	ldr r0, _080642A8 @ =0x08064425
	str r0, [r4, #0x4C]
	movs r0, #0x00
_080642A2:
	pop {r4}
	pop {r1}
	bx r1
_080642A8: .4byte sub_8064424
