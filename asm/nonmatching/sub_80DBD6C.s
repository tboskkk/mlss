	.syntax unified
	.text

	thumb_func_start sub_80DBD6C
sub_80DBD6C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DBD7C
	ldr r0, _080DBD84 @ =0x080DBDE9
	str r0, [r4, #0x4C]
_080DBD7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBD84: .4byte sub_80DBDE8
