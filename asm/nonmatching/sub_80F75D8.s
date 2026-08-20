	.syntax unified
	.text

	thumb_func_start sub_80F75D8
sub_80F75D8:
	ldr r1, _080F75FC @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x2C]
	ldr r1, _080F7600 @ =0x00001788
	adds r3, r2, r1
	ldr r1, [r3, #0x00]
	orrs r1, r0
	str r1, [r3, #0x00]
	ldr r1, _080F7604 @ =0x00001798
	adds r2, r2, r1
	ldr r1, [r2, #0x00]
	orrs r1, r0
	str r1, [r2, #0x00]
	bx lr
_080F75FC: .4byte 0x03000FD8
_080F7600: .4byte 0x00001788
_080F7604: .4byte 0x00001798
