	.syntax unified
	.text

	thumb_func_start sub_806B584
sub_806B584:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B5A4 @ =0x0806AA19
	str r0, [r4, #0x4C]
	adds r4, #0xAC
	movs r0, #0x00
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5A4: .4byte sub_806AA18
