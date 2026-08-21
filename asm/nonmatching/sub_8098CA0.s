	.syntax unified
	.text

	thumb_func_start sub_8098CA0
sub_8098CA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08098CB8 @ =0x08098CBD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08098CB8: .4byte sub_8098CBC
