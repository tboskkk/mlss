	.syntax unified
	.text

	thumb_func_start sub_81433D0
sub_81433D0:
	push {r4, lr}
	ldr r2, _081433F4 @ =0x0000033E
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x10
	orrs r2, r3
	strb r2, [r4, #0x00]
	ldr r2, _081433F8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_8143374
	pop {r4}
	pop {r0}
	bx r0
_081433F4: .4byte 0x0000033E
_081433F8: .4byte 0x000002B6
