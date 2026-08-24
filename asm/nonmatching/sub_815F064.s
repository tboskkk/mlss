	.syntax unified
	.text

	thumb_func_start sub_815F064
sub_815F064:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _0815F088 @ =0x08CDCC90
	str r0, [r5, #0x30]
	strh r4, [r5, #0x34]
	adds r1, r5, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815F088: .4byte dword_8CDCC90 @ =0x08CDCC90
