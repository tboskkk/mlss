	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r7, _08107298 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r1, _0810729C @ =0x00000342
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x04
	adds r4, #0x28
	movs r0, #0x16
	ldsh r5, [r6, r0]
	adds r0, r5, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_810D34C
	ldrh r0, [r6, #0x10]
	adds r0, #0x01
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x09
	ble _08107292
	ldr r0, [r7, #0x00]
	adds r0, #0x4C
	ldr r1, _081072A0 @ =0x081072DD
	bl sub_807FFD8
	movs r0, #0x00
	strh r0, [r6, #0x10]
	ldr r0, _081072A4 @ =0x08104A85
	str r0, [r6, #0x04]
_08107292:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08107298: .4byte 0x03000FD8
_0810729C: .4byte 0x00000342
_081072A0: .4byte sub_81072DC
_081072A4: .4byte sub_8104A84
