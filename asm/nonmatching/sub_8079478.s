	.syntax unified
	.text

	thumb_func_start sub_8079478
sub_8079478:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
