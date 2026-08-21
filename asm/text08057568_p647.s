	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FC1F8
sub_80FC1F8:
	push {r4, lr}
	ldr r2, _080FC248 @ =0x03000FFC
	ldr r0, _080FC24C @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x10
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	ldr r2, _080FC250 @ =0x040000D4
	ldr r0, _080FC254 @ =0x03000FC0
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x20
	str r0, [r2, #0x00]
	movs r4, #0xEE
	lsls r4, r4, #0x01
	adds r0, r1, r4
	str r0, [r2, #0x04]
	ldr r0, _080FC258 @ =0x840000DB
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r0, r3, r2
	movs r4, #0xA9
	lsls r4, r4, #0x03
	adds r1, r1, r4
	movs r2, #0xD4
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC248: .4byte 0x03000FFC
_080FC24C: .4byte 0x03000D40
_080FC250: .4byte 0x040000D4
_080FC254: .4byte 0x03000FC0
_080FC258: .4byte 0x840000DB
