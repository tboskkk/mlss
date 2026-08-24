	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x1B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081146A8
	adds r1, #0xFF
_081146A8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081146B2
	adds r2, #0xFF
_081146B2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081146BC
	adds r3, #0xFF
_081146BC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _081146D4 @ =0x00002AAF
	bl sub_80DF024
	ldr r0, _081146D8 @ =0x081134A9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081146D4: .4byte 0x00002AAF
_081146D8: .4byte sub_81134A8
