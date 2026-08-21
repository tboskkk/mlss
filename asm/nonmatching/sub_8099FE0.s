	.syntax unified
	.text

	thumb_func_start sub_8099FE0
sub_8099FE0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08099FF8 @ =0x0809A09D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08099FF8: .4byte sub_809A09C
