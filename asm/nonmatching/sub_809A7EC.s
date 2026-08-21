	.syntax unified
	.text

	thumb_func_start sub_809A7EC
sub_809A7EC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809A804 @ =0x0809A809
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809A804: .4byte sub_809A808
