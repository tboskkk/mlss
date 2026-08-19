	.syntax unified
	.text

	thumb_func_start sub_80F7D64
sub_80F7D64:
	ldr r2, [r0, #0x2C]
	ldr r0, _080F7D7C @ =0x0000179D
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bx lr
_080F7D7C: .4byte 0x0000179D
