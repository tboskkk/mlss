	.syntax unified
	.text

	thumb_func_start sub_80479A8
sub_80479A8:
	ldr r1, _080479B8 @ =0x000002B5
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	bx lr
_080479B8: .4byte 0x000002B5
