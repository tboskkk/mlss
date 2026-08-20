	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801AE1C
sub_801AE1C:
	push {lr}
	add sp, #-0x004
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r1, _0801AE34 @ =0x03000D28
	ldr r2, _0801AE38 @ =0x05000002
	mov r0, sp
	bl CpuSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801AE34: .4byte 0x03000D28
_0801AE38: .4byte 0x05000002
	thumb_func_start sub_801AE3C
sub_801AE3C:
	push {r4, r5, lr}
	ldr r3, _0801AE84 @ =0x04000208
	movs r4, #0x00
	strh r4, [r3, #0x00]
	ldr r2, _0801AE88 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _0801AE8C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2, #0x00]
	movs r5, #0x01
	strh r5, [r3, #0x00]
	strh r4, [r3, #0x00]
	subs r2, #0xD8
	ldrh r1, [r2, #0x00]
	ldr r0, _0801AE90 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	strh r5, [r3, #0x00]
	ldr r0, _0801AE94 @ =0x0400010E
	strh r4, [r0, #0x00]
	ldr r1, _0801AE98 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0801AE9C @ =0x03000D18
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801AE84: .4byte 0x04000208
_0801AE88: .4byte 0x04000200
_0801AE8C: .4byte 0x0000FFBF
_0801AE90: .4byte 0x0000FF7F
_0801AE94: .4byte 0x0400010E
_0801AE98: .4byte 0x0400010C
_0801AE9C: .4byte 0x03000D18
	thumb_func_start sub_801AEA0
sub_801AEA0:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _0801AEB8 @ =0x03000D18
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	cmp r0, #0x01
	beq _0801AECA
	cmp r0, #0x01
	bgt _0801AEBC
	cmp r0, #0x00
	beq _0801AEC6
	b _0801AED4
_0801AEB8: .4byte 0x03000D18
_0801AEBC:
	cmp r0, #0x02
	beq _0801AECE
	cmp r0, #0x03
	beq _0801AED2
	b _0801AED4
_0801AEC6:
	adds r2, r1, #0x0
	b _0801AED4
_0801AECA:
	lsls r2, r1, #0x02
	b _0801AED4
_0801AECE:
	lsls r2, r1, #0x04
	b _0801AED4
_0801AED2:
	lsls r2, r1, #0x06
_0801AED4:
	adds r0, r2, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
