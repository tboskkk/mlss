	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801BBE4
sub_801BBE4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, #0x22
	movs r4, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	ldr r2, _0801BC34 @ =0x03001038
	ldr r0, _0801BC38 @ =0x0819832C
	ldr r1, _0801BC3C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	movs r0, #0x64
	muls r0, r3
	movs r1, #0x3C
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x25
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x29
	strb r4, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801BC34: .4byte 0x03001038
_0801BC38: .4byte 0x0819832C
_0801BC3C: .4byte 0x08198220
	thumb_func_start sub_801BC40
sub_801BC40:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	strh r4, [r6, #0x20]
	ldr r0, _0801BC8C @ =0x0000FFFF
	cmp r4, r0
	beq _0801BC6E
	ldr r0, _0801BC90 @ =0x081E23CD
	bl sub_80198B0
	adds r2, r0, #0x0
	ldr r0, [r6, #0x1C]
	ldr r1, _0801BC94 @ =0x06010000
	adds r1, r4, r1
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0801BC6E:
	adds r3, r6, #0x0
	adds r3, #0x28
	movs r0, #0x0F
	ands r5, r0
	lsls r2, r5, #0x02
	ldrb r1, [r3, #0x00]
	subs r0, #0x4C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BC8C: .4byte 0x0000FFFF
_0801BC90: .4byte 0x081E23CD
_0801BC94: .4byte 0x06010000
