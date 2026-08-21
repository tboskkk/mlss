	.syntax unified
	.text

	thumb_func_start sub_801AF50
sub_801AF50:
	push {lr}
	bl sub_80FC1F8
	pop {r0}
	bx r0
	.byte 0x00, 0x00
