	.syntax unified
	.text

	thumb_func_start sub_80FAEEC
sub_80FAEEC:
	ldr r0, [r0, #0x24]
	ldr r1, _080FAEF8 @ =0x000009A1
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_080FAEF8: .4byte 0x000009A1
