	.syntax unified
	.text

	thumb_func_start sub_815852C
sub_815852C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08158550 @ =0x08CDC5F0
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158550: .4byte dword_8CDC5F0 @ =0x08CDC5F0
	.byte 0x70, 0x47, 0x00, 0x00
