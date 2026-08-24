	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, [r7, #0x2C]
	lsls r0, r6, #0x03
	subs r0, r0, r6
	lsls r4, r0, #0x02
	adds r3, r4, r1
	ldrb r0, [r3, #0x03]
	cmp r0, #0x00
	bne _08115068
	movs r0, #0x00
	b _081151DA
_08115068:
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	movs r5, #0x01
	adds r1, r5, #0x0
	lsls r1, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	lsls r1, r0
	ldr r0, [r7, #0x28]
	eors r0, r1
	str r0, [r7, #0x28]
	ldrb r1, [r3, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x08
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x18
	adds r1, r1, r0
	adds r3, r7, #0x0
	adds r3, #0x4C
	strh r1, [r3, #0x00]
	cmp r2, #0x00
	beq _081150F2
	ldr r0, [r7, #0x2C]
	adds r0, r4, r0
	ldr r0, [r0, #0x0C]
	ldrh r1, [r3, #0x00]
	lsls r1, r1, #0x01
	ldr r2, _081150D4 @ =0x02000080
	adds r1, r1, r2
	ldr r2, _081150D8 @ =0x04000008
	bl CpuSet
	ldr r0, [r7, #0x2C]
	adds r3, r4, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081150E0
	ldr r2, _081150DC @ =0x0300034C
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	adds r1, r5, #0x0
	lsls r1, r0
	ldrh r0, [r2, #0x00]
	orrs r1, r0
	strh r1, [r2, #0x00]
	b _081150F2
_081150D4: .4byte 0x02000080
_081150D8: .4byte 0x04000008
_081150DC: .4byte 0x0300034C
_081150E0:
	ldr r2, _081151E0 @ =0x0300034C
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	adds r1, r5, #0x0
	lsls r1, r0
	ldrh r0, [r2, #0x02]
	orrs r1, r0
	strh r1, [r2, #0x02]
_081150F2:
	ldr r1, [r7, #0x2C]
	lsls r2, r6, #0x03
	subs r0, r2, r6
	lsls r4, r0, #0x02
	adds r3, r4, r1
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	movs r1, #0x06
	ands r1, r0
	adds r5, r2, #0x0
	cmp r1, #0x00
	beq _08115124
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	beq _08115116
	bl free_heap_8018D9C
_08115116:
	ldr r0, [r7, #0x2C]
	adds r0, r4, r0
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	beq _08115124
	bl free_heap_8018D9C
_08115124:
	ldr r0, [r7, #0x2C]
	subs r1, r5, r6
	lsls r6, r1, #0x02
	adds r0, r6, r0
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	beq _08115136
	bl free_heap_8018D9C
_08115136:
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x01]
	movs r3, #0x10
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x01]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x01]
	movs r4, #0x0F
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x01]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x02]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x02]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	movs r5, #0x00
	strb r5, [r0, #0x03]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x04]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x04]
	ldr r1, [r7, #0x2C]
	adds r1, r6, r1
	ldrb r2, [r1, #0x04]
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x04]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	strb r5, [r0, #0x05]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	movs r1, #0x00
	strh r5, [r0, #0x06]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	strh r5, [r0, #0x08]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	strb r1, [r0, #0x18]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	ldrb r1, [r0, #0x19]
	ands r3, r1
	strb r3, [r0, #0x19]
	ldr r0, [r7, #0x2C]
	adds r0, r6, r0
	ldrb r1, [r0, #0x19]
	ands r4, r1
	strb r4, [r0, #0x19]
	movs r0, #0x01
_081151DA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081151E0: .4byte 0x0300034C
