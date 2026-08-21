	.syntax unified
	.text

	thumb_func_start sub_8108180
sub_8108180:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	mov r9, r1
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0810825E
	adds r1, r6, #0x0
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _08108268
	ldr r0, _081081D8 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r1, [r2, #0x00]
	ldr r0, _081081DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	cmp r1, #0x10
	beq _081081E0
	movs r2, #0x00
	mov r8, r2
	cmp r1, #0x12
	bne _081081E4
	movs r3, #0x3C
	mov r8, r3
	b _081081E4
	.byte 0x00, 0x00
_081081D8: .4byte 0x03000FF4
_081081DC: .4byte 0x03000FD8
_081081E0:
	movs r1, #0x1E
	mov r8, r1
_081081E4:
	ldr r0, [r0, #0x7C]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r6, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	bl __divsi3
	movs r7, #0x64
	mov r3, r9
	subs r5, r7, r3
	muls r0, r5
	cmp r0, #0x00
	bge _0810820A
	adds r0, #0xFF
_0810820A:
	asrs r5, r0, #0x08
	mov r0, r8
	movs r1, #0x03
	bl __divsi3
	adds r4, r0, #0x0
	subs r4, r7, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r5, r0
	ble _0810822C
	movs r2, #0x00
	b _08108244
_0810822C:
	mov r0, r8
	subs r4, r7, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r2, #0x02
	cmp r5, r0
	ble _08108244
	movs r2, #0x01
_08108244:
	ldr r1, _08108264 @ =0x00000121
	adds r3, r6, r1
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0x70
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
_0810825E:
	movs r0, #0x00
	b _08108348
	.byte 0x00, 0x00
_08108264: .4byte 0x00000121
_08108268:
	ldr r2, _08108290 @ =0x083BA960
	adds r0, r6, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x04
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r0, #0x64
	subs r4, r0, r1
	cmp r4, #0x64
	beq _081082B0
	cmp r4, #0x00
	bne _08108294
	movs r2, #0x02
	b _081082CC
	.byte 0x00, 0x00
_08108290: .4byte 0x083BA960
_08108294:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl __divsi3
	mov r2, r9
	subs r5, r2, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r5, r0
	bge _081082B4
_081082B0:
	movs r2, #0x00
	b _081082CC
_081082B4:
	mov r3, r9
	subs r5, r3, r4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r2, #0x02
	cmp r5, r0
	bge _081082CC
	movs r2, #0x01
_081082CC:
	ldr r0, _08108354 @ =0x00000121
	adds r3, r6, r0
	lsls r2, r2, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0x70
	ands r0, r1
	cmp r0, #0x00
	beq _0810825E
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r6, r2
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x01
	adds r1, r6, r3
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
	subs r3, #0x04
	adds r4, r6, r3
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08108332
	adds r0, r6, #0x0
	adds r0, #0x08
	bl sub_8086E8C
	movs r2, #0x8C
	lsls r2, r2, #0x01
	adds r1, r6, r2
	str r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
_08108332:
	movs r3, #0x8F
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrh r0, [r2, #0x00]
	ldr r1, _08108358 @ =0x0000FCFF
	ands r1, r0
	subs r3, #0x1E
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
	movs r0, #0x01
_08108348:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08108354: .4byte 0x00000121
_08108358: .4byte 0x0000FCFF
