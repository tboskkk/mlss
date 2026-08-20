	.syntax unified
	.text

	thumb_func_start sub_8051614
sub_8051614:
	push {lr}
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
