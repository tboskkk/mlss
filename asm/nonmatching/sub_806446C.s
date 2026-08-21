	.syntax unified
	.text

	thumb_func_start sub_806446C
sub_806446C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064484 @ =0x08063CC9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08064484: .4byte sub_8063CC8
