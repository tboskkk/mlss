	.syntax unified
	.text

	thumb_func_start sub_81126BC
sub_81126BC:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081126E0 @ =0x08111235
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081126E0: .4byte sub_8111234
