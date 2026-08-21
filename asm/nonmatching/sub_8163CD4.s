	.syntax unified
	.text

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
