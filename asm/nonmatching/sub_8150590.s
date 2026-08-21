	.syntax unified
	.text

	thumb_func_start sub_8150590
sub_8150590:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	pop {r4}
	pop {r0}
	bx r0
