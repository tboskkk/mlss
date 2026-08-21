	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163C40
sub_8163C40:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163C64
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C5C
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163C74
_08163C5C:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x04]
	b _08163C74
_08163C64:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163C70
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163C72
_08163C70:
	str r0, [r3, #0x04]
_08163C72:
	str r0, [r3, #0x00]
_08163C74:
	ldr r0, [r3, #0x08]
	subs r0, #0x01
	str r0, [r3, #0x08]
	cmp r2, #0x00
	beq _08163C8E
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163C8E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163C94
sub_8163C94:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r1, #0x0
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08163CB8
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163CB0
	str r0, [r1, #0x08]
	ldr r1, [r2, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	b _08163CC8
_08163CB0:
	str r0, [r1, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x04]
	b _08163CC8
_08163CB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _08163CC4
	str r1, [r0, #0x04]
	ldr r0, [r2, #0x08]
	b _08163CC6
_08163CC4:
	str r0, [r3, #0x04]
_08163CC6:
	str r0, [r3, #0x00]
_08163CC8:
	ldr r0, [r3, #0x08]
	subs r0, #0x01
	str r0, [r3, #0x08]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8163CD4
sub_8163CD4:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08163CE8
_08163CDE:
	cmp r0, r1
	beq _08163D0C
	ldr r0, [r0, #0x08]
	cmp r0, #0x00
	bne _08163CDE
_08163CE8:
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08163CF8
	str r0, [r1, #0x08]
	str r0, [r1, #0x04]
	str r1, [r2, #0x04]
	str r1, [r2, #0x00]
	b _08163D06
_08163CF8:
	ldr r0, [r2, #0x04]
	str r1, [r0, #0x08]
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x04]
	movs r0, #0x00
	str r0, [r1, #0x08]
	str r1, [r2, #0x04]
_08163D06:
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
_08163D0C:
	pop {r0}
	bx r0
