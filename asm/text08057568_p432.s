	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8171AFC
sub_8171AFC:
	push {r4, lr}
	bl sub_8020A78
	ldr r2, _08171B30 @ =0x03000D48
	ldr r4, _08171B34 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _08171B38 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r2, _08171B3C @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r4, _08171B40 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08171B30: .4byte 0x03000D48
_08171B34: .4byte 0x0203FFB8
_08171B38: .4byte 0x00000A14
_08171B3C: .4byte 0x03000D4C
_08171B40: .4byte 0x0300034C
