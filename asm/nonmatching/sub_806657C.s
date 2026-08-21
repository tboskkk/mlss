	.syntax unified
	.text

	thumb_func_start sub_806657C
sub_806657C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080665A2
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _080665A8 @ =0x08066335
	str r0, [r4, #0x4C]
_080665A2:
	pop {r4}
	pop {r0}
	bx r0
_080665A8: .4byte sub_8066334
