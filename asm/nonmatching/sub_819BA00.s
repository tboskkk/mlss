	.syntax unified
	.text

	thumb_func_start sub_819BA00
sub_819BA00:
	push {lr}
	movs r0, #0xE0
	lsls r0, r0, #0x07
	bl sub_819B418
	pop {r1}
	bx r1
	.byte 0x00, 0x00
