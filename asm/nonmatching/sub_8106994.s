	.syntax unified
	.text

	thumb_func_start sub_8106994
sub_8106994:
	push {lr}
	ldr r1, _081069AC @ =0x03000FD8
	ldr r1, [r1, #0x00]
	ldr r0, [r0, #0x6C]
	ldrb r0, [r0, #0x0A]
	ldr r2, _081069B0 @ =0x000002F9
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	bl sub_810CA30
	pop {r0}
	bx r0
_081069AC: .4byte 0x03000FD8
_081069B0: .4byte 0x000002F9
