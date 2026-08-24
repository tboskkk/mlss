	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _081063BC
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _081063FE
_081063BC:
	ldr r0, _08106404 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldrh r0, [r3, #0x02]
	adds r0, #0x10
	strh r0, [r3, #0x02]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5F
	ble _081063FE
	movs r2, #0x60
	strh r2, [r3, #0x02]
	ldrb r1, [r3, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r1, #0x07
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
	strh r2, [r4, #0x10]
	ldr r0, _08106408 @ =0x0810640D
	str r0, [r4, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_081063FE:
	pop {r4}
	pop {r0}
	bx r0
_08106404: .4byte 0x03000FD8
_08106408: .4byte sub_810640C
