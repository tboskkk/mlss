	.syntax unified
	.text

	thumb_func_start sub_80195F8
sub_80195F8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_819BA2C
	adds r1, r0, #0x0
	adds r4, #0x01
	asrs r1, r4
	movs r0, #0x01
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1
