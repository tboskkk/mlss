	.syntax unified
	.text

	thumb_func_start sub_80DEC60
sub_80DEC60:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
