	.syntax unified
	.text

	thumb_func_start sub_80EA530
sub_80EA530:
	push {r4, r5, lr}
	ldr r4, [sp, #0x00C]
	ldr r5, [sp, #0x010]
	str r2, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xA0
	strh r4, [r0, #0x00]
	adds r1, #0xA4
	strb r5, [r1, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
