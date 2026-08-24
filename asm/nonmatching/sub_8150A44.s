	.syntax unified
	.text

	thumb_func_start sub_8150A44
sub_8150A44:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	str r0, [r4, #0x04]
	str r0, [r4, #0x08]
	str r0, [r4, #0x0C]
	ldr r1, _08150AC0 @ =0xFFFF9C00
	str r1, [r4, #0x10]
	strh r0, [r4, #0x14]
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x1C]
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x24]
	str r0, [r4, #0x28]
	strh r0, [r4, #0x2C]
	movs r1, #0x50
	str r1, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x09
	str r1, [r4, #0x34]
	str r0, [r4, #0x40]
	str r1, [r4, #0x38]
	movs r0, #0xE4
	lsls r0, r0, #0x01
	ldr r2, _08150AC4 @ =0x082125C8
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r4, #0x00]
	movs r2, #0xEF
	movs r3, #0x9F
	movs r1, #0x9F
	lsls r1, r1, #0x01
	adds r0, r0, r1
_08150A8A:
	strh r2, [r0, #0x00]
	subs r1, r0, #0x2
	strh r2, [r1, #0x00]
	subs r1, r0, #0x4
	strh r2, [r1, #0x00]
	subs r1, r0, #0x6
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r1, #0x02
	strh r2, [r1, #0x00]
	subs r0, #0x14
	subs r3, #0x0A
	cmp r3, #0x00
	bge _08150A8A
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_08150AC0: .4byte 0xFFFF9C00
_08150AC4: .4byte dword_82125C8 @ =0x082125C8
