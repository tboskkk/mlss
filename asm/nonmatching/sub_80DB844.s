	.syntax unified
	.text

	thumb_func_start sub_80DB844
sub_80DB844:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DB854
	ldr r0, _080DB85C @ =0x080DB1E5
	str r0, [r4, #0x4C]
_080DB854:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DB85C: .4byte sub_80DB1E4
