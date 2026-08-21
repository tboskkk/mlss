	.syntax unified
	.text

	thumb_func_start sub_81639C4
sub_81639C4:
	push {lr}
	adds r2, r1, #0x0
	movs r1, #0x06
	bl sub_816391C
	pop {r0}
	bx r0
	.byte 0x00, 0x00
