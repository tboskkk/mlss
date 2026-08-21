	.syntax unified
	.text

	thumb_func_start sub_8199480
sub_8199480:
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.byte 0x00, 0x00
