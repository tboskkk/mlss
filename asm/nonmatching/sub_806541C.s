	.syntax unified
	.text

	thumb_func_start sub_806541C
sub_806541C:
	push {lr}
	bl sub_80871A8
	pop {r1}
	bx r1
	.byte 0x00, 0x00
