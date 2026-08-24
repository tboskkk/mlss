	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r1, #0x06
	ldr r0, [r4, #0x00]
	lsrs r2, r0, #0x1F
	adds r0, r0, r2
	asrs r0, r0, #0x01
	subs r1, r1, r0
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r2, r0, #0x1
	strh r2, [r6, #0x00]
	ldr r1, [r5, #0x18]
	ldr r0, _08061F34 @ =0x000003FF
	cmp r1, r0
	bgt _08061F2C
	ldr r1, _08061F38 @ =0x0000FFFF
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r6, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_08061F2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061F34: .4byte 0x000003FF
_08061F38: .4byte 0x0000FFFF
