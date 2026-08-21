	.syntax unified
	.text

	thumb_func_start sub_806A814
sub_806A814:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A832
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0xFF
	strh r1, [r0, #0x00]
	ldr r0, _0806A838 @ =0x0806A8B1
	str r0, [r4, #0x4C]
_0806A832:
	pop {r4}
	pop {r0}
	bx r0
_0806A838: .4byte sub_806A8B0
