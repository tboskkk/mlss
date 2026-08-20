	.syntax unified
	.text

	thumb_func_start sub_8029804
sub_8029804:
	adds r3, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r0, _0802982C @ =0x00000351
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x00]
	bx lr
_0802982C: .4byte 0x00000351
