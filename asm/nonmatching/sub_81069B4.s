	.syntax unified
	.text

	thumb_func_start sub_81069B4
sub_81069B4:
	ldr r2, _081069CC @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r3, _081069D0 @ =0x000003A5
	adds r1, r1, r3
	strb r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x0B]
	bx lr
	.byte 0x00, 0x00
_081069CC: .4byte 0x03000FD8
_081069D0: .4byte 0x000003A5
