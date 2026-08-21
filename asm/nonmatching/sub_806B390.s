	.syntax unified
	.text

	thumb_func_start sub_806B390
sub_806B390:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806B3A8 @ =0x0806B3D1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806B3A8: .4byte sub_806B3D0
