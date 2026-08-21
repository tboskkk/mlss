	.syntax unified
	.text

	thumb_func_start sub_81612E4
sub_81612E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x0C]
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x0C]
	pop {r4}
	pop {r0}
	bx r0
