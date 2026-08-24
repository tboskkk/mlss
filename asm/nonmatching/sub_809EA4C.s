	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _0809EA64
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _0809EAC8
_0809EA64:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r6, [r0, #0x00]
	cmp r6, #0x00
	bne _0809EAC8
	ldr r4, [r5, #0x28]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x40]
	ldr r2, _0809EAD0 @ =0xFFFFF600
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x44]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x48]
	movs r3, #0xD0
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, [r4, #0x48]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r6, [r0, #0x00]
	ldr r0, _0809EAD4 @ =0x0809EAD9
	str r0, [r5, #0x4C]
_0809EAC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809EAD0: .4byte 0xFFFFF600
_0809EAD4: .4byte sub_809EAD8
