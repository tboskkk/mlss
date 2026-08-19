	.syntax unified
	.text

	thumb_func_start sub_8018A4C
sub_8018A4C:
	ldr r1, _08018A60 @ =0x0300034C
	str r0, [r1, #0x24]
	ldr r0, _08018A64 @ =0x00000889
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08018A60: .4byte 0x0300034C
_08018A64: .4byte 0x00000889
