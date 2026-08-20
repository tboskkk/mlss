	.syntax unified
	.text

	thumb_func_start sub_80F8254
sub_80F8254:
	ldr r0, _080F8274 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x00]
	movs r2, #0xAD
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	ldr r0, _080F8278 @ =0x000002C1
	adds r3, r3, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080F8274: .4byte 0x03000FD8
_080F8278: .4byte 0x000002C1
