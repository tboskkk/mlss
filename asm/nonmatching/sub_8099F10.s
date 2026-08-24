	.syntax unified
	.text

	thumb_func_start sub_8099F10
sub_8099F10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08099F54 @ =0x03001034
	ldr r0, _08099F58 @ =0x08198154
	ldr r1, _08099F5C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08099F60 @ =0x02000460
	ldr r1, _08099F64 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08099F68 @ =0x00003CD0
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08099F6C @ =0x03000D74
	ldr r2, [r0, #0x00]
	ldrh r0, [r2, #0x2A]
	strh r0, [r2, #0x28]
	ldr r3, _08099F70 @ =0x0000FFFF
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x2A]
	ldr r0, _08099F74 @ =0x08099AB9
	adds r1, r4, #0x0
	bl sub_807FF70
	ldr r0, _08099F78 @ =0x08099FC5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08099F54: .4byte 0x03001034
_08099F58: .4byte 0x08198154
_08099F5C: .4byte 0x081980D8
_08099F60: .4byte 0x02000460
_08099F64: .4byte 0x03000FDC
_08099F68: .4byte 0x00003CD0
_08099F6C: .4byte 0x03000D74
_08099F70: .4byte 0x0000FFFF
_08099F74: .4byte sub_8099AB8
_08099F78: .4byte sub_8099FC4
