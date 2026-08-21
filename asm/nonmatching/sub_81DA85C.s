	.syntax unified
	.text

	thumb_func_start sub_81DA85C
sub_81DA85C:
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x01
	bl sub_81DA870
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
