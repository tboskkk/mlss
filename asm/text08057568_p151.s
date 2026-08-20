	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_816316C
sub_816316C:
	push {lr}
	adds r2, r0, #0x0
	ldrh r1, [r2, #0x20]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08163186
	ldr r1, _081631CC @ =0x02000010
	ldr r0, [r2, #0x18]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x1C]
	strh r0, [r1, #0x00]
_08163186:
	ldrh r1, [r2, #0x20]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0816319C
	ldr r1, _081631D0 @ =0x02000014
	ldr r0, [r2, #0x18]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x1C]
	strh r0, [r1, #0x00]
_0816319C:
	ldrh r1, [r2, #0x20]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081631B2
	ldr r1, _081631D4 @ =0x02000018
	ldr r0, [r2, #0x18]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x1C]
	strh r0, [r1, #0x00]
_081631B2:
	ldrh r1, [r2, #0x20]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081631C8
	ldr r1, _081631D8 @ =0x0200001C
	ldr r0, [r2, #0x18]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [r2, #0x1C]
	strh r0, [r1, #0x00]
_081631C8:
	pop {r0}
	bx r0
_081631CC: .4byte 0x02000010
_081631D0: .4byte 0x02000014
_081631D4: .4byte 0x02000018
_081631D8: .4byte 0x0200001C
