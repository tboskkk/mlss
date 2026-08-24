	.syntax unified
	.text

	thumb_func_start sub_81589A8
sub_81589A8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _081589CC @ =0x08CDC7B0
	str r0, [r5, #0x30]
	movs r1, #0x00
	strh r4, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x24
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081589CC: .4byte dword_8CDC7B0 @ =0x08CDC7B0
