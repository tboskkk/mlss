	.syntax unified
	.text

	thumb_func_start sub_80DC4D8
sub_80DC4D8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DC4E8
	ldr r0, _080DC4F0 @ =0x080DC555
	str r0, [r4, #0x4C]
_080DC4E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DC4F0: .4byte sub_80DC554
