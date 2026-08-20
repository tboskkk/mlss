	.syntax unified
	.text

	thumb_func_start sub_8082D00
sub_8082D00:
	push {r4, lr}
	movs r3, #0xEF
	lsls r3, r3, #0x03
	adds r4, r0, r3
	ldrh r3, [r4, #0x00]
	adds r3, r3, r1
	strh r3, [r4, #0x00]
	ldr r1, _08082D20 @ =0x0000077A
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	adds r1, r1, r2
	strh r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082D20: .4byte 0x0000077A
