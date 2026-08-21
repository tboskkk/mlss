	.syntax unified
	.text

	thumb_func_start sub_807608C
sub_807608C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760A4 @ =0x080760F5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080760A4: .4byte sub_80760F4
