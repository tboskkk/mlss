	.syntax unified
	.text

	thumb_func_start sub_8132570
sub_8132570:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813258A
	adds r0, r4, #0x0
	movs r1, #0x0A
	bl sub_80883A0
	ldr r0, _08132590 @ =0x08132595
	str r0, [r4, #0x4C]
_0813258A:
	pop {r4}
	pop {r0}
	bx r0
_08132590: .4byte sub_8132594
