	.syntax unified
	.text

	thumb_func_start sub_8148C20
sub_8148C20:
	ldr r1, _08148C58 @ =0x0000020D
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	ands r1, r2
	strb r1, [r3, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r3, r0, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x7F
	ands r1, r2
	subs r2, #0xA0
	ands r1, r2
	strb r1, [r3, #0x00]
	ldr r1, _08148C5C @ =0x0000020F
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08148C58: .4byte 0x0000020D
_08148C5C: .4byte 0x0000020F
