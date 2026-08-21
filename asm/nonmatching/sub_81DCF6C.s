	.syntax unified
	.text

	thumb_func_start sub_81DCF6C
sub_81DCF6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_81DD2E0
	adds r4, r0, #0x0
	bl sub_81DCF58
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5, pc}
