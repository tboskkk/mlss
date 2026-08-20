	.syntax unified
	.text

	thumb_func_start sub_80F827C
sub_80F827C:
	ldr r3, _080F829C @ =0x0300034C
	ldr r0, [r2, #0x00]
	ldr r1, _080F82A0 @ =0x000003FF
	adds r2, r1, #0x0
	adds r1, r2, #0x0
	bics r1, r0
	adds r3, #0x78
	ands r1, r2
	ldrh r2, [r3, #0x00]
	ldr r0, _080F82A4 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080F829C: .4byte 0x0300034C
_080F82A0: .4byte 0x000003FF
_080F82A4: .4byte 0xFFFFFC00
