	.syntax unified
	.text

	thumb_func_start sub_819B970
sub_819B970:
	push {lr}
	lsls r0, r0, #0x08
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_819B418
	pop {r1}
	bx r1
	.byte 0x00, 0x00
