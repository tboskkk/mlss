	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8150AC8
sub_8150AC8:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r3, _08150B50 @ =0x0300034C
	ldrh r1, [r3, #0x28]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08150AE2
	ldr r0, [r2, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r2, #0x0C]
_08150AE2:
	ldrh r1, [r3, #0x28]
	movs r0, #0x20
	ands r0, r1
	adds r3, r1, #0x0
	cmp r0, #0x00
	beq _08150AF6
	ldr r0, [r2, #0x0C]
	ldr r4, _08150B54 @ =0xFFFFFC00
	adds r0, r0, r4
	str r0, [r2, #0x0C]
_08150AF6:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _08150B08
	ldr r0, [r2, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r0, r3
	str r0, [r2, #0x10]
_08150B08:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08150B18
	ldr r0, [r2, #0x10]
	ldr r4, _08150B54 @ =0xFFFFFC00
	adds r0, r0, r4
	str r0, [r2, #0x10]
_08150B18:
	ldrh r3, [r2, #0x2C]
	movs r0, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _08150B7C
	movs r0, #0x08
	ands r0, r3
	cmp r0, #0x00
	beq _08150B7C
	movs r0, #0x04
	ands r0, r3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	beq _08150B58
	ldr r0, [r2, #0x34]
	ldr r1, [r2, #0x3C]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r1, [r2, #0x38]
	cmp r0, r1
	blt _08150B64
	str r1, [r2, #0x34]
	movs r0, #0x05
	negs r0, r0
	ands r0, r3
	strh r0, [r2, #0x2C]
	b _08150B64
_08150B50: .4byte 0x0300034C
_08150B54: .4byte 0xFFFFFC00
_08150B58:
	ldr r0, [r2, #0x34]
	subs r0, #0x20
	str r0, [r2, #0x34]
	cmp r0, #0x00
	bge _08150B64
	str r1, [r2, #0x34]
_08150B64:
	ldr r0, [r2, #0x34]
	cmp r0, #0x00
	bge _08150B6E
	ldr r1, _08150B84 @ =0x00000FFF
	adds r0, r0, r1
_08150B6E:
	asrs r0, r0, #0x0C
	adds r0, #0x01
	ldr r2, _08150B88 @ =0x02000052
	lsls r0, r0, #0x08
	movs r1, #0x08
	orrs r0, r1
	strh r0, [r2, #0x00]
_08150B7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150B84: .4byte 0x00000FFF
_08150B88: .4byte 0x02000052
