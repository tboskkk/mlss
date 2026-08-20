	.syntax unified
	.text

	thumb_func_start sub_801DC38
sub_801DC38:
	push {lr}
	ldr r2, [r0, #0x00]
	ldr r1, [r0, #0x04]
	ldr r3, [r0, #0x14]
	adds r0, r2, #0x0
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
