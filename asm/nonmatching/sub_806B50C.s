	.syntax unified
	.text

	thumb_func_start sub_806B50C
sub_806B50C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B524 @ =0x0806AEFD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806B524: .4byte sub_806AEFC
