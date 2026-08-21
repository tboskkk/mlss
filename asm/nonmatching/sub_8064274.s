	.syntax unified
	.text

	thumb_func_start sub_8064274
sub_8064274:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08064286
	ldr r0, _0806428C @ =0x080643DD
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064286:
	pop {r4}
	pop {r1}
	bx r1
_0806428C: .4byte sub_80643DC
