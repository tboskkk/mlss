	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x00
_0805827E:
	lsls r2, r5, #0x01
	mov r3, r12
	adds r3, #0x4E
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x72
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x52
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r6, #0x00
	ldsh r0, [r0, r6]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r3, r12
	adds r3, #0x54
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x78
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x58
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x01
	bls _0805827E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
