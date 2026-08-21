	.syntax unified
	.text

	thumb_func_start sub_8150A38
sub_8150A38:
	push {lr}
	bl sub_8021FD4
	pop {r0}
	bx r0
	.byte 0x00, 0x00
