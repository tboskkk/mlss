	.syntax unified
	.text

	thumb_func_start sub_806C020
sub_806C020:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C032
	ldr r0, _0806C038 @ =0x0806B825
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806C032:
	pop {r4}
	pop {r1}
	bx r1
_0806C038: .4byte sub_806B824
