	.syntax unified
	.text

	thumb_func_start sub_819B95C
sub_819B95C:
	push {lr}
	bl sub_819B31C
	bl sub_819B864
	bl sub_819AF88
	pop {r0}
	bx r0
	.byte 0x00, 0x00
