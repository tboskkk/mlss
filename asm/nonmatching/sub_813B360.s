	.syntax unified
	.text

	thumb_func_start sub_813B360
sub_813B360:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _0813B378 @ =0x0813A5C9
	bl sub_813AF94
	ldr r0, _0813B37C @ =0x0813BB61
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B378: .4byte sub_813A5C8
_0813B37C: .4byte sub_813BB60
