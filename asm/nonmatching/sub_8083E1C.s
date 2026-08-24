	.syntax unified
	.text

	thumb_func_start sub_8083E1C
sub_8083E1C:
	push {lr}
	ldr r2, _08083E54 @ =0x03001034
	ldr r0, _08083E58 @ =0x08198154
	ldr r1, _08083E5C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E60 @ =0x02000420
	ldr r1, _08083E64 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _08083E68 @ =0x00003C90
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, _08083E6C @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, _08083E70 @ =0x0000FFFF
	strh r0, [r1, #0x26]
	ldr r0, _08083E74 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083E54: .4byte 0x03001034
_08083E58: .4byte dword_8198154 @ =0x08198154
_08083E5C: .4byte dword_81980D8 @ =0x081980D8
_08083E60: .4byte 0x02000420
_08083E64: .4byte 0x03000FDC
_08083E68: .4byte 0x00003C90
_08083E6C: .4byte 0x03000D74
_08083E70: .4byte 0x0000FFFF
_08083E74: .4byte 0x03000FD8
