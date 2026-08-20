	.syntax unified
	.text

	thumb_func_start sub_8028E4C
sub_8028E4C:
	adds r2, r0, #0x0
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	adds r2, #0xF9
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	bx lr
	.byte 0x00, 0x00
