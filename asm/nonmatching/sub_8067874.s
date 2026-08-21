	.syntax unified
	.text

	thumb_func_start sub_8067874
sub_8067874:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806788E
	adds r0, r2, #0x0
	bl sub_807C298
_0806788E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
