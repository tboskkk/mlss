	.syntax unified
	.text

	thumb_func_start sub_819B19C
sub_819B19C:
	ldr r1, _0819B1B0 @ =0x03007FF0
	ldr r1, [r1, #0x00]
	ldr r2, _0819B1B4 @ =0x00000494
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	bx lr
_0819B1B0: .4byte 0x03007FF0
_0819B1B4: .4byte 0x00000494
