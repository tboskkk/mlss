	push {r4, r5, r6, lr}
	movs r5, #0x00
	ldr r0, _08100CA4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _08100BF8
_08100BD2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100BF2
	adds r0, r4, #0x0
	bl sub_807D77C
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	movs r0, #0x01
	lsls r0, r1
	orrs r5, r0
_08100BF2:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100BD2
_08100BF8:
	ldr r0, _08100CA4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _08100CD2
_08100C02:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08100CA8
	adds r0, r4, #0x0
	adds r0, #0x78
	ldrb r1, [r0, #0x00]
	movs r2, #0x10
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08100CCC
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08100C3C
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08100C3C
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100C3C
	adds r0, r4, #0x0
	bl sub_8085A6C
_08100C3C:
	ldr r1, [r4, #0x4C]
	adds r0, r4, #0x0
	bl _call_via_r1
	ldr r2, [r4, #0x4C]
	cmp r2, #0x00
	bne _08100CCC
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08100C5E
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
_08100C5E:
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r6, #0x21
	negs r6, r6
	adds r1, r6, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, #0x04
	strh r2, [r0, #0x00]
	adds r0, #0x02
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x22
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	subs r0, #0x20
	strh r2, [r0, #0x00]
	adds r0, #0x02
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	b _08100CCC
	.byte 0x00, 0x00
_08100CA4: .4byte 0x03000FD8
_08100CA8:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08100CCC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08100CCC
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100CCC
	adds r0, r4, #0x0
	bl sub_8085A6C
_08100CCC:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100C02
_08100CD2:
	ldr r1, _08100D14 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r4, [r0, #0x78]
	adds r2, r1, #0x0
	cmp r4, #0x00
	beq _08100CFC
	movs r3, #0x01
_08100CE0:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08100CF6
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r3, #0x0
	lsls r0, r1
	orrs r5, r0
_08100CF6:
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _08100CE0
_08100CFC:
	ldr r2, [r2, #0x00]
	lsls r3, r5, #0x04
	ldrb r1, [r2, #0x09]
	movs r0, #0x0F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x09]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08100D14: .4byte 0x03000FD8
