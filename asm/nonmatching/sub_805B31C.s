	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r7, #0x00
	ldr r0, _0805B3C8 @ =0x03000DD0
	mov r8, r0
	ldr r1, _0805B3CC @ =0x083B283C
	mov r10, r1
	movs r5, #0x4C
	movs r3, #0x00
	mov r0, r9
	adds r0, #0xB6
	str r0, [sp, #0x004]
	mov r1, r9
	adds r1, #0xD6
	str r1, [sp, #0x008]
_0805B344:
	adds r1, r7, #0x0
	muls r1, r5
	mov r0, r9
	adds r2, r0, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r6, r7, #0x1
	adds r4, r1, #0x0
_0805B370:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	ldr r7, [sp, #0x004]
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805B370
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805B344
	mov r3, r8
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B47C
	movs r7, #0x00
_0805B3A4:
	lsls r0, r7, #0x03
	ldr r1, [sp, #0x000]
	adds r3, r0, r1
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3D0
	movs r3, #0x4C
	adds r0, r7, #0x0
	muls r0, r3
	add r0, r9
	adds r0, #0xAC
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B466
	.byte 0x00, 0x00
_0805B3C8: .4byte 0x03000DD0
_0805B3CC: .4byte 0x083B283C
_0805B3D0:
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r1, r9
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r3, #0x04]
	movs r2, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	ldr r1, [sp, #0x004]
	mov r12, r1
_0805B414:
	adds r3, r2, #0x0
	lsls r2, r3, #0x01
	add r2, r8
	mov r0, r12
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [sp, #0x008]
	adds r2, r0, r2
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B48C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B414
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r3, r9
	adds r1, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r2, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	strb r1, [r0, #0x00]
_0805B466:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r3, [sp, #0x000]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3A4
_0805B47C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B48C: .4byte 0x00007FFF
