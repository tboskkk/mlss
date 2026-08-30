	.syntax unified
	.text

	thumb_func_start sub_807FA50
sub_807FA50:
	ldr r0, _0807FA78 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r2, r3, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	str r0, [r2, #0x00]
	ldrb r2, [r0, #0x0C]
	movs r1, #0x20
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x0C]
	bx lr
_0807FA78: .4byte 0x03000FD8
