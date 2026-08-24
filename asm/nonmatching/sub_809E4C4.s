	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r2, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _0809E4E6
	mov r12, r1
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _0809E4F6
_0809E4E6:
	movs r0, #0x02
	negs r0, r0
	cmp r2, r0
	bne _0809E4F6
	ldr r0, _0809E554 @ =0xFFFFFED0
	adds r0, r0, r1
	mov r12, r0
	adds r5, r1, #0x0
_0809E4F6:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809E57A
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0809E558
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r12
	adds r0, #0xD8
	adds r2, r5, #0x0
	adds r2, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r1, r1, r0
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r2, #0x00]
	b _0809E59A
_0809E554: .4byte 0xFFFFFED0
_0809E558:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	mov r3, r12
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r0, [r3, #0x44]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	b _0809E598
_0809E57A:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r0, [r5, #0x44]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
_0809E598:
	str r0, [r1, #0x00]
_0809E59A:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0809E5E0 @ =0x0809EB8D
	str r0, [r4, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809E5E0: .4byte sub_809EB8C
