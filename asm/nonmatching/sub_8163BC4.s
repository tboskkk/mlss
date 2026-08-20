	.syntax unified
	.text

	thumb_func_start sub_8163BC4
sub_8163BC4:
	push {lr}
	ldr r2, [r0, #0x00]
	movs r3, #0x00
	cmp r2, #0x00
	beq _08163BDC
_08163BCE:
	ldr r0, [r2, #0x00]
	cmp r0, r1
	bne _08163BD6
	adds r3, #0x01
_08163BD6:
	ldr r2, [r2, #0x08]
	cmp r2, #0x00
	bne _08163BCE
_08163BDC:
	adds r0, r3, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
