	.syntax unified
	.text

	thumb_func_start sub_80F0B80
sub_80F0B80:
	ldr r0, _080F0B9C @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080F0BA0 @ =0x0000055F
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080F0B9C: .4byte 0x03000FD0
_080F0BA0: .4byte 0x0000055F
