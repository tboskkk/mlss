	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FC164
sub_80FC164:
	push {lr}
	adds r2, r0, #0x0
	ldr r3, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0x0C
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	blt _080FC178
	ldrb r1, [r1, #0x0C]
	b _080FC184
_080FC178:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r1, r0, #0x1F
_080FC184:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	cmp r0, r1
	beq _080FC190
	movs r0, #0x00
	b _080FC192
_080FC190:
	movs r0, #0x01
_080FC192:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FC198
sub_80FC198:
	push {lr}
	ldr r2, _080FC1E4 @ =0x03000FFC
	ldr r0, _080FC1E8 @ =0x03000D40
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r1, r0, #0x03
	subs r1, r1, r0
	lsls r1, r1, #0x05
	subs r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x10
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	ldr r2, _080FC1EC @ =0x040000D4
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r1, r0, r3
	str r1, [r2, #0x00]
	ldr r1, _080FC1F0 @ =0x03000FC0
	ldr r3, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x20
	str r1, [r2, #0x04]
	ldr r1, _080FC1F4 @ =0x840000DB
	str r1, [r2, #0x08]
	ldr r1, [r2, #0x08]
	movs r1, #0xA9
	lsls r1, r1, #0x03
	adds r0, r0, r1
	movs r2, #0xE5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	movs r2, #0xD4
	bl CpuSet
	pop {r0}
	bx r0
_080FC1E4: .4byte 0x03000FFC
_080FC1E8: .4byte 0x03000D40
_080FC1EC: .4byte 0x040000D4
_080FC1F0: .4byte 0x03000FC0
_080FC1F4: .4byte 0x840000DB
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
