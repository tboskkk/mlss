	.syntax unified
	.text

	thumb_func_start sub_8161C28
sub_8161C28:
	adds r2, r0, #0x0
	movs r0, #0x00
	str r0, [r2, #0x08]
	str r0, [r2, #0x04]
	str r1, [r2, #0x00]
	ldr r1, _08161C94 @ =0x08CDD0F8
	str r1, [r2, #0x0C]
	movs r1, #0x01
	str r1, [r2, #0x40]
	str r0, [r2, #0x14]
	str r0, [r2, #0x10]
	adds r1, r2, #0x0
	adds r1, #0x18
	str r0, [r2, #0x18]
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	adds r1, #0x0C
	str r0, [r2, #0x24]
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	adds r1, #0x0C
	str r0, [r2, #0x30]
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	str r0, [r2, #0x3C]
	str r0, [r2, #0x44]
	adds r1, #0x18
	strh r0, [r1, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	subs r1, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	strh r0, [r1, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	subs r1, #0x02
	strh r0, [r1, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	subs r1, #0x02
	strh r0, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	str r0, [r2, #0x60]
	str r0, [r2, #0x5C]
	str r0, [r2, #0x64]
	ldr r0, _08161C98 @ =0x0821282C
	str r0, [r2, #0x68]
	adds r0, r2, #0x0
	bx lr
	.byte 0x00, 0x00
_08161C94: .4byte 0x08CDD0F8
_08161C98: .4byte 0x0821282C
