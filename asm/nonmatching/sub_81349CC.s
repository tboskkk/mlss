	.syntax unified
	.text

	thumb_func_start sub_81349CC
sub_81349CC:
	adds r3, r0, #0x0
	movs r1, #0x00
	str r1, [r3, #0x00]
	str r1, [r3, #0x04]
	str r1, [r3, #0x08]
	str r1, [r3, #0x0C]
	ldr r0, _08134A0C @ =0x0821253C
	str r0, [r3, #0x10]
	ldr r0, _08134A10 @ =0x08212544
	str r0, [r3, #0x14]
	str r1, [r3, #0x18]
	movs r2, #0x00
	strh r1, [r3, #0x20]
	strh r1, [r3, #0x1E]
	movs r0, #0xFF
	strb r0, [r3, #0x1D]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r3, #0x1C]
	adds r0, r3, #0x0
	adds r0, #0x24
	strb r2, [r0, #0x00]
	str r1, [r3, #0x28]
	str r1, [r3, #0x2C]
	str r1, [r3, #0x30]
	str r1, [r3, #0x34]
	subs r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08134A0C: .4byte 0x0821253C
_08134A10: .4byte 0x08212544
