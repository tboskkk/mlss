	.syntax unified
	.text

	thumb_func_start sub_8047AF4
sub_8047AF4:
	ldr r1, _08047B04 @ =0x000002B5
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	movs r1, #0x01
	ands r0, r1
	bx lr
	.byte 0x00, 0x00
_08047B04: .4byte 0x000002B5
