	.syntax unified
	.text

	thumb_func_start sub_8068E60
sub_8068E60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08068E78 @ =0x08068B69
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08068E78: .4byte sub_8068B68
