	.syntax unified
	.text

	thumb_func_start sub_806D30C
sub_806D30C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D336
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D33C @ =0x0806D481
	str r0, [r4, #0x4C]
_0806D336:
	pop {r4}
	pop {r0}
	bx r0
_0806D33C: .4byte sub_806D480
