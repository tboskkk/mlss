	.syntax unified
	.text

	thumb_func_start sub_80DD6D0
sub_80DD6D0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DD6E0
	ldr r0, _080DD6E8 @ =0x080DD741
	str r0, [r4, #0x4C]
_080DD6E0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD6E8: .4byte sub_80DD740
