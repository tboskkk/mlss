	.syntax unified
	.text

	thumb_func_start sub_80DAF84
sub_80DAF84:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DAF9E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _080DAFA4 @ =0x080DB015
	str r0, [r4, #0x4C]
_080DAF9E:
	pop {r4}
	pop {r0}
	bx r0
_080DAFA4: .4byte sub_80DB014
