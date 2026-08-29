	.syntax unified
	.text

	thumb_func_start sub_815F5C8
sub_815F5C8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815F5FC @ =0x08CDCF10
	str r0, [r4, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x24
	movs r1, #0x00
	strb r1, [r0, #0x00]
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	adds r0, #0x1C
	strh r1, [r0, #0x00]
	str r1, [r4, #0x3C]
	str r1, [r4, #0x44]
	adds r0, r4, #0x0
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F5FC: .4byte 0x08CDCF10
