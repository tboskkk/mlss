	.syntax unified
	.text

	thumb_func_start sub_80DBD50
sub_80DBD50:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DBD60
	ldr r0, _080DBD68 @ =0x080DBD89
	str r0, [r4, #0x4C]
_080DBD60:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBD68: .4byte sub_80DBD88
