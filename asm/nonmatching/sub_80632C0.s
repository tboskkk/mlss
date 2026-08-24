	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080632DA
	ldr r0, _080632E0 @ =0x08063385
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
_080632DA:
	pop {r4}
	pop {r1}
	bx r1
_080632E0: .4byte sub_8063384
