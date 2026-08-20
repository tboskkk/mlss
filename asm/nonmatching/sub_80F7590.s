	.syntax unified
	.text

	thumb_func_start sub_80F7590
sub_80F7590:
	ldr r1, _080F75AC @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x2C]
	ldr r1, _080F75B0 @ =0x00001788
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	bics r1, r0
	str r1, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
_080F75AC: .4byte 0x03000FD8
_080F75B0: .4byte 0x00001788
