	.syntax unified
	.text

	thumb_func_start sub_8028F2C
sub_8028F2C:
	ldr r1, _08028F3C @ =0x0000012D
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
_08028F3C: .4byte 0x0000012D
