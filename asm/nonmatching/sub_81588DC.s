	.syntax unified
	.text

	thumb_func_start sub_81588DC
sub_81588DC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _08158914 @ =0x08CDC930
	str r0, [r4, #0x30]
	movs r0, #0x00
	strh r5, [r4, #0x3C]
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x38]
	bl sub_8199F30
	ldr r1, _08158918 @ =0x000001FF
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158914: .4byte 0x08CDC930
_08158918: .4byte 0x000001FF
	.byte 0x00, 0x20, 0x70, 0x47
