	.syntax unified
	.text

	thumb_func_start sub_813DD30
sub_813DD30:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r6, r4, r2
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0813DDC6
	ldrb r1, [r5, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0813DDA2
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x9B
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	ldrb r0, [r5, #0x12]
	movs r1, #0x09
	negs r1, r1
	ands r1, r0
	strb r1, [r5, #0x12]
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0813DDD0
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x12]
	b _0813DE06
_0813DDA2:
	movs r1, #0x2C
	ldsh r0, [r5, r1]
	cmp r0, #0x7F
	ble _0813DDB6
	movs r2, #0x9D
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r0, #0x14
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDB6:
	cmp r0, #0x3F
	ble _0813DE06
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	b _0813DE06
_0813DDC6:
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813DE06
_0813DDD0:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r1, [r5, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r5, #0x12]
	ldr r3, _0813DE10 @ =0x0813DE15
	str r3, [r7, #0x00]
	mov r0, r8
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
_0813DE06:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813DE10: .4byte sub_813DE14
