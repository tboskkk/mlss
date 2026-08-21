	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8031650
sub_8031650:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r3, #0x00
	movs r0, #0x3A
	strh r0, [r4, #0x04]
	ldr r0, _080316E4 @ =0x00000351
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080316E8 @ =0x0000023B
	adds r0, r4, r1
	strb r3, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _080316EC @ =0x00001030
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x03
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _080316F0 @ =0x00000239
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r2, #0x39
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_804E0D8
	ldr r0, _080316F4 @ =0x00000355
	adds r4, r4, r0
	movs r0, #0x46
	strb r0, [r4, #0x00]
	ldr r1, _080316F8 @ =0x0000020B
	adds r5, r5, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x56
	bl play_sfx_80195B4
	pop {r4, r5}
	pop {r0}
	bx r0
_080316E4: .4byte 0x00000351
_080316E8: .4byte 0x0000023B
_080316EC: .4byte 0x00001030
_080316F0: .4byte 0x00000239
_080316F4: .4byte 0x00000355
_080316F8: .4byte 0x0000020B
