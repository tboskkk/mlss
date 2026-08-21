	.syntax unified
	.text

	thumb_func_start sub_819B9D0
sub_819B9D0:
	push {lr}
	movs r2, #0xA0
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_819B418
	pop {r1}
	bx r1
	.byte 0x00, 0x00
