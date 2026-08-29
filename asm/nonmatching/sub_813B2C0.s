	.syntax unified
	.text

	thumb_func_start sub_813B2C0
sub_813B2C0:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _0813B2D8 @ =0x0813A5C9
	bl sub_813AF94
	ldr r0, _0813B2DC @ =0x0813BA0D
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B2D8: .4byte sub_813A5C8
_0813B2DC: .4byte sub_813BA0C
