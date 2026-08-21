	.syntax unified
	.text

	thumb_func_start sub_8081FB0
sub_8081FB0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081FCA
	bl sub_8082A28
	bl sub_80813A0
	ldr r0, _08081FD0 @ =0x08081289
	str r0, [r4, #0x04]
_08081FCA:
	pop {r4}
	pop {r0}
	bx r0
_08081FD0: .4byte sub_8081288
