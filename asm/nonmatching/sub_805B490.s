	.syntax unified
	.text

	thumb_func_start sub_805B490
sub_805B490:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r7, #0x00
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	movs r1, #0x4C
_0805B4AC:
	adds r0, r7, #0x1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r7, #0x0
	muls r0, r1
	adds r0, r6, r0
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	cmp r7, #0x0F
	bls _0805B4AC
_0805B4C4:
	cmp r7, #0x0F
	bhi _0805B574
	ldr r0, _0805B584 @ =0x03000DD0
	ldrb r0, [r0, #0x07]
	ldr r1, _0805B588 @ =0x083B283C
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0805B574
	lsls r0, r7, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B574
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	adds r0, r6, r3
	mov r12, r0
	lsls r2, r2, #0x03
	adds r2, r2, r4
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	mov r1, r12
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r2, #0x04]
	movs r4, #0x00
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	movs r0, #0xB6
	adds r0, r0, r6
	mov r12, r0
_0805B52E:
	adds r2, r4, #0x0
	lsls r3, r2, #0x01
	add r3, r8
	mov r0, r12
	adds r4, r0, r3
	lsls r1, r2, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r3, r9
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B58C @ =0x00007FFF
	ands r0, r1
	strh r0, [r3, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldrh r1, [r2, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B52E
	movs r0, #0x4C
	muls r0, r7
	adds r0, r6, r0
	adds r2, r0, #0x0
	adds r2, #0xB2
	movs r1, #0x00
	strb r4, [r2, #0x00]
	adds r2, #0x01
	strb r1, [r2, #0x00]
	adds r0, #0xB4
	strb r1, [r0, #0x00]
_0805B574:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B584: .4byte 0x03000DD0
_0805B588: .4byte 0x083B283C
_0805B58C: .4byte 0x00007FFF
