	.syntax unified
	.text

	thumb_func_start sub_8158220
sub_8158220:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x1E
	str r1, [r4, #0x1C]
	movs r5, #0x00
	str r5, [r4, #0x0C]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [r4, #0x10]
	ldr r2, _08158254 @ =0x03001038
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x0C
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	str r0, [r4, #0x14]
	str r5, [r4, #0x18]
	str r5, [r4, #0x04]
	strh r5, [r4, #0x00]
	strh r5, [r4, #0x08]
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08158254: .4byte 0x03001038
