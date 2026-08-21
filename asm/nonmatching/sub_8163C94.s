	.syntax unified
	.text

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
