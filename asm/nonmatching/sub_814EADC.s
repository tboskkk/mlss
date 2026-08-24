	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0814EB10
	b _0814EC3C
_0814EB10:
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EB24
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814EB30
_0814EB24:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814EB30:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r6, [r0, #0x28]
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814EC3C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	blt _0814EC3C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	movs r5, #0xAF
	lsls r5, r5, #0x02
	adds r3, r4, r5
	lsrs r0, r0, #0x17
	add r0, r8
	ldrh r2, [r0, #0x00]
	subs r5, #0x7E
	adds r1, r4, r5
	strh r2, [r1, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	str r1, [r3, #0x00]
	ldrh r2, [r0, #0x10]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r1, r4, r3
	strh r2, [r1, #0x00]
	adds r5, #0x0A
	adds r1, r4, r5
	movs r2, #0x18
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r5, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _0814EB9A
	negs r1, r5
_0814EB9A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814EBA2
	negs r0, r2
_0814EBA2:
	cmp r1, r0
	ble _0814EBE2
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r5, #0x00
	bge _0814EBCE
	movs r3, #0x06
_0814EBCE:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r5, r0, #0x0
	b _0814EC0C
_0814EBE2:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r1, r4, #0x0
	adds r1, #0x24
	ands r2, r0
	ldrb r3, [r1, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r5, r1, #0x0
_0814EC0C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	str r3, [sp, #0x000]
	bl sub_801E150
	ldrb r1, [r5, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815033C
_0814EC3C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
