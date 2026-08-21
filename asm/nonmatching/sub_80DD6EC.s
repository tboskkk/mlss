	.syntax unified
	.text

	thumb_func_start sub_80DD6EC
sub_80DD6EC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DD6FC
	ldr r0, _080DD704 @ =0x080DD76D
	str r0, [r4, #0x4C]
_080DD6FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD704: .4byte sub_80DD76C
