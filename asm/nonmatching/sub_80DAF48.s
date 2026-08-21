	.syntax unified
	.text

	thumb_func_start sub_80DAF48
sub_80DAF48:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DAF62
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8D
	bl play_sfx_80195B4
	ldr r0, _080DAF68 @ =0x080DAFA9
	str r0, [r4, #0x4C]
_080DAF62:
	pop {r4}
	pop {r0}
	bx r0
_080DAF68: .4byte sub_80DAFA8
