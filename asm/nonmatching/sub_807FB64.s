	.syntax unified
	.text

	thumb_func_start sub_807FB64
sub_807FB64:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807BDDC
	adds r0, r4, #0x0
	bl sub_80842D8
	pop {r4}
	pop {r0}
	bx r0
