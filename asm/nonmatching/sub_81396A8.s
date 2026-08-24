	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	ldr r1, _081396D4 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081396CE
	adds r0, r4, #0x0
	bl sub_81385A8
_081396CE:
	pop {r4}
	pop {r0}
	bx r0
_081396D4: .4byte 0x000002B5
