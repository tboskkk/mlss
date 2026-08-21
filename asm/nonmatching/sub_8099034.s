	.syntax unified
	.text

	thumb_func_start sub_8099034
sub_8099034:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809904C @ =0x08099051
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809904C: .4byte sub_8099050
