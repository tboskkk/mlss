	.syntax unified
	.text

	thumb_func_start sub_819B99C
sub_819B99C:
	push {lr}
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r2, #0x0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_819B418
	pop {r1}
	bx r1
