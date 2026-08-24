	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0809DE8E
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	subs r0, #0xA0
	movs r3, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _0809DE86
	str r3, [r5, #0x00]
	strh r3, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082E1C
_0809DE86:
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
_0809DE8E:
	cmp r6, #0x00
	bne _0809DEA0
	ldr r0, [r4, #0x28]
	adds r0, #0xB0
	ldr r1, [r0, #0x00]
	subs r1, #0x01
	str r1, [r0, #0x00]
	ldr r0, _0809DEA8 @ =0x0809DEAD
	str r0, [r4, #0x4C]
_0809DEA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DEA8: .4byte sub_809DEAC
