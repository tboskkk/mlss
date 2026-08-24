	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _08135F2E
	bl sub_8135F20
_08135F2E:
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08135F38
	bl sub_8135F20
_08135F38:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
