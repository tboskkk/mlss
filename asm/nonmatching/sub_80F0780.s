	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x05
	beq _080F078E
	ldr r0, [r0, #0x14]
	bl sub_803C898
_080F078E:
	movs r0, #0x01
	pop {r1}
	bx r1
