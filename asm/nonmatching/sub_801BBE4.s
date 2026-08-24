	push {r4, r5, lr}
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, #0x22
	movs r4, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	ldr r2, _0801BC34 @ =0x03001038
	ldr r0, _0801BC38 @ =0x0819832C
	ldr r1, _0801BC3C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	movs r0, #0x64
	muls r0, r3
	movs r1, #0x3C
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x25
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x29
	strb r4, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801BC34: .4byte 0x03001038
_0801BC38: .4byte 0x0819832C
_0801BC3C: .4byte 0x08198220
