	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8028FBC
sub_8028FBC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_801A6B0
	movs r0, #0x00
	bl sub_8019628
	adds r0, r4, #0x0
	bl sub_80273E4
	bl sub_80E8DC0
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08028FEA
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r5, #0x00]
_08028FEA:
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	movs r0, #0x01
	strb r0, [r4, #0x00]
	ldr r1, _08029018 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08029002
	ldr r0, _0802901C @ =0x0800063C
	str r0, [r1, #0x00]
_08029002:
	ldr r0, _08029020 @ =0x0000012B
	adds r4, r4, r0
	movs r0, #0x00
	ldsb r0, [r4, r0]
	bl sub_815085C
	movs r0, #0xFF
	strb r0, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08029018: .4byte 0x03000C78
_0802901C: .4byte 0x0800063C
_08029020: .4byte 0x0000012B
