	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163134
sub_8163134:
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08163168 @ =0x03000FC0
	lsrs r2, r0, #0x15
	lsls r2, r2, #0x02
	adds r2, #0x20
	ldr r4, [r3, #0x00]
	adds r4, r4, r2
	movs r3, #0xF8
	lsls r3, r3, #0x0D
	ands r3, r0
	lsrs r3, r3, #0x10
	movs r5, #0x01
	adds r0, r5, #0x0
	lsls r0, r3
	ldr r2, [r4, #0x00]
	bics r2, r0
	ands r1, r5
	lsls r1, r3
	orrs r2, r1
	str r2, [r4, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08163168: .4byte 0x03000FC0
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
