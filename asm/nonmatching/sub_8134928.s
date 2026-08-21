	.syntax unified
	.text

	thumb_func_start sub_8134928
sub_8134928:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0813493A
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x0C]
_0813493A:
	pop {r4}
	pop {r0}
	bx r0
