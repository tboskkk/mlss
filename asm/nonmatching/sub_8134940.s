	.syntax unified
	.text

	thumb_func_start sub_8134940
sub_8134940:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08134952
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x08]
_08134952:
	pop {r4}
	pop {r0}
	bx r0
