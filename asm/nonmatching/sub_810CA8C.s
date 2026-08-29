	.syntax unified
	.text

	thumb_func_start sub_810CA8C
sub_810CA8C:
	push {lr}
	ldr r1, _0810CAA0 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	ldr r2, _0810CAA4 @ =0x000002F9
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	bl sub_810CA30
	pop {r0}
	bx r0
_0810CAA0: .4byte 0x03000FD8
_0810CAA4: .4byte 0x000002F9
