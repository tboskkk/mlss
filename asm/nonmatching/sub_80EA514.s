	.syntax unified
	.text

	thumb_func_start sub_80EA514
sub_80EA514:
	push {r4, lr}
	ldr r0, [sp, #0x008]
	ldr r4, [sp, #0x00C]
	str r2, [r1, #0x08]
	str r3, [r1, #0x0C]
	adds r2, r1, #0x0
	adds r2, #0xA2
	strh r0, [r2, #0x00]
	adds r1, #0xA5
	strb r4, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
