	push {r4, r5, r6, r7, lr}
	movs r4, #0x00
	adds r7, r0, #0x4
	ldr r6, _0816364C @ =0x08212934
	movs r5, #0x00
_08163612:
	lsls r2, r4, #0x01
	adds r2, r2, r4
	lsls r2, r2, #0x02
	adds r2, r2, r7
	adds r3, r2, #0x0
	ldm r2!, {r1}
	str r6, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r5, [r0, #0x00]
	str r5, [r1, #0x40]
	ldr r1, [r2, #0x00]
	str r6, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r5, [r0, #0x00]
	str r5, [r1, #0x40]
	ldr r1, [r3, #0x08]
	str r6, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r5, [r0, #0x00]
	str r5, [r1, #0x40]
	adds r4, #0x01
	cmp r4, #0x01
	ble _08163612
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0816364C: .4byte 0x08212934
