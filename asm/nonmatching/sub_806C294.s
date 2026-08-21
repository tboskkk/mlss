	.syntax unified
	.text

	thumb_func_start sub_806C294
sub_806C294:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806C2AC @ =0x0806C2B1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806C2AC: .4byte sub_806C2B0
