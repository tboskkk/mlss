	.syntax unified
	.text

	thumb_func_start sub_815F530
sub_815F530:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r2, r0, #0x08
	str r2, [r4, #0x44]
	ldr r0, [r4, #0x08]
	cmp r0, r2
	ble _0815F55E
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x0C]
	subs r1, r0, r1
	strh r1, [r4, #0x14]
	ldr r1, [r4, #0x10]
	subs r1, r2, r1
	strh r1, [r4, #0x18]
	str r0, [r4, #0x0C]
	str r2, [r4, #0x10]
	b _0815F564
_0815F55E:
	adds r0, r4, #0x0
	bl sub_815FACC
_0815F564:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
