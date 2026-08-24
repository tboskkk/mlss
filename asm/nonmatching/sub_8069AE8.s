	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	mov r8, r0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08069B1C
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069B18 @ =0x0806A059
	str r0, [r7, #0x4C]
	mov r0, r8
	bl sub_807C298
	b _08069C2E
_08069B18: .4byte sub_806A058
_08069B1C:
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r5, r5, r0
	str r5, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r7, #0x18]
	mov r0, r8
	str r5, [r0, #0x10]
	ldr r0, [r7, #0x14]
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069BE8
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069BCC
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069BCE
_08069BCC:
	ldr r2, _08069C0C @ =0x0000204D
_08069BCE:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069BE8:
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08069C2E
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069C10
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _08069C1C
_08069C0C: .4byte 0x0000204D
_08069C10:
	ldr r2, _08069C38 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_08069C1C:
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x18]
	ldr r0, _08069C3C @ =0x08069795
	str r0, [r7, #0x4C]
_08069C2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069C38: .4byte 0x0000204D
_08069C3C: .4byte sub_8069794
