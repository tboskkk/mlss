	.syntax unified
	.text

	thumb_func_start sub_80742FC
sub_80742FC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08074318
	ldr r0, _08074320 @ =0x08072945
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	movs r0, #0x00
_08074318:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08074320: .4byte sub_8072944
