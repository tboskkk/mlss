	.syntax unified
	.text

	thumb_func_start sub_80F08A0
sub_80F08A0:
	ldr r3, [r0, #0x14]
	ldr r1, [r2, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r3, r3, r0
	movs r0, #0x01
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
