	.syntax unified
	.text

	thumb_func_start sub_8142CF0
sub_8142CF0:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142D04
	ldr r0, _08142D0C @ =0x0813E975
	str r0, [r4, #0x00]
_08142D04:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142D0C: .4byte sub_813E974
