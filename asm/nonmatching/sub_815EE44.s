	.syntax unified
	.text

	thumb_func_start sub_815EE44
sub_815EE44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r5, r2, #0x10
	lsrs r5, r5, #0x10
	bl sub_815F8F4
	ldr r0, _0815EE70 @ =0x08CDCB50
	str r0, [r4, #0x30]
	strh r5, [r4, #0x34]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815EE70: .4byte dword_8CDCB50 @ =0x08CDCB50
