	.syntax unified
	.text

	thumb_func_start sub_81394CC
sub_81394CC:
	push {r4, lr}
	ldr r2, _081394E8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r3, [r4, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r3
	strb r2, [r4, #0x00]
	bl sub_81393D8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394E8: .4byte 0x000002B6
