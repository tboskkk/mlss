	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	adds r4, r3, #0x0
	ldr r0, _080F0538 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x03
	adds r3, r0, r2
	cmp r1, #0x00
	beq _080F0510
	str r1, [r3, #0x00]
_080F0510:
	ldr r0, _080F053C @ =0x083BA4BC
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r5, #0x14]
	ldr r2, [r1, #0x00]
	adds r1, r3, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r4, #0x04]
	cmp r0, r1
	bne _080F0530
	ldr r0, [r4, #0x08]
	str r0, [r6, #0x00]
_080F0530:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F0538: .4byte 0x03000FD0
_080F053C: .4byte 0x083BA4BC
