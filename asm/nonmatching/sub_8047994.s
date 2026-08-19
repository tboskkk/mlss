	.syntax unified
	.text

	thumb_func_start sub_8047994
sub_8047994:
	ldr r1, _080479A4 @ =0x000002B5
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x3F
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_080479A4: .4byte 0x000002B5
