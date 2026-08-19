	.syntax unified
	.text

	thumb_func_start sub_81DCF58
sub_81DCF58:
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0x00
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	pop {r4, pc}
	.byte 0x00, 0x00
