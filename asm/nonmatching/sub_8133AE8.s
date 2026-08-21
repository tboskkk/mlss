	.syntax unified
	.text

	thumb_func_start sub_8133AE8
sub_8133AE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08133B2C @ =0x03001034
	ldr r0, _08133B30 @ =0x08198154
	ldr r1, _08133B34 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08133B38 @ =0x02000460
	ldr r1, _08133B3C @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08133B40 @ =0x00003CD0
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08133B44 @ =0x03000D74
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x2A]
	strh r0, [r2, #0x28]
	ldr r3, _08133B48 @ =0x0000FFFF
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x2A]
	ldr r0, _08133B4C @ =0x08133659
	adds r1, r4, #0x0
	bl sub_807FF70
	ldr r0, _08133B50 @ =0x0813378D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08133B2C: .4byte 0x03001034
_08133B30: .4byte 0x08198154
_08133B34: .4byte 0x081980D8
_08133B38: .4byte 0x02000460
_08133B3C: .4byte 0x03000FDC
_08133B40: .4byte 0x00003CD0
_08133B44: .4byte 0x03000D74
_08133B48: .4byte 0x0000FFFF
_08133B4C: .4byte sub_8133658
_08133B50: .4byte sub_813378C
