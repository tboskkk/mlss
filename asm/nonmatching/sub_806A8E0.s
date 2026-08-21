	.syntax unified
	.text

	thumb_func_start sub_806A8E0
sub_806A8E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A8FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A904 @ =0x0806A3F9
	str r0, [r4, #0x4C]
_0806A8FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A904: .4byte sub_806A3F8
