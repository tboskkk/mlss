	.syntax unified
	.text

	thumb_func_start sub_80F1C0C
sub_80F1C0C:
	ldr r0, _080F1C2C @ =0x03000FD0
	ldr r3, [r0, #0x00]
	ldr r0, _080F1C30 @ =0x0000055A
	adds r3, r3, r0
	movs r0, #0x01
	ldrb r1, [r2, #0x00]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x01
	bx lr
	.byte 0x00, 0x00
_080F1C2C: .4byte 0x03000FD0
_080F1C30: .4byte 0x0000055A
