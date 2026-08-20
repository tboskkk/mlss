	.syntax unified
	.text

	thumb_func_start sub_81DCE7C
sub_81DCE7C:
	adds r3, r0, #0x0
	movs r1, #0x00
	ldr r2, _081DCE84 @ =0x03001A78
	b _081DCE90
_081DCE84: .4byte 0x03001A78
_081DCE88:
	adds r2, #0x08
	adds r1, #0x01
	cmp r1, #0x13
	bgt _081DCE96
_081DCE90:
	ldr r0, [r2, #0x00]
	cmp r0, r3
	bne _081DCE88
_081DCE96:
	adds r0, r1, #0x0
	bx lr
	.byte 0x00, 0x00
