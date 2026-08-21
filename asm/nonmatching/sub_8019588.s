	.syntax unified
	.text

	thumb_func_start sub_8019588
sub_8019588:
	push {lr}
	bl sub_819BABC
	adds r1, r0, #0x0
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	pop {r1}
	bx r1
	.byte 0x00, 0x00
