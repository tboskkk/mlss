	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	ldr r0, _0805D720 @ =0x00000A5A
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	asrs r0, r0, #0x1F
	mov r12, r0
	movs r0, #0x10
	mov r1, r12
	ands r1, r0
	mov r12, r1
	movs r4, #0x00
	mov r3, r12
	movs r2, #0x4C
	mov r9, r2
	movs r2, #0x00
	mov r5, r10
	adds r5, #0xB6
	str r5, [sp, #0x008]
	mov r0, r10
	adds r0, #0xD6
	str r0, [sp, #0x00C]
	movs r7, #0x4C
_0805D674:
	mov r0, r9
	muls r0, r3
	mov r5, r10
	adds r1, r5, r0
	adds r0, r1, #0x0
	adds r0, #0xAC
	strb r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	adds r6, r3, #0x1
	adds r0, r3, #0x0
	muls r0, r7
	ldr r3, [sp, #0x00C]
	adds r1, r0, r3
	ldr r5, [sp, #0x008]
	adds r0, r0, r5
	movs r5, #0x0F
_0805D6AE:
	strh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	strh r2, [r0, #0x02]
	strh r2, [r1, #0x02]
	strh r2, [r0, #0x04]
	strh r2, [r1, #0x04]
	strh r2, [r0, #0x06]
	strh r2, [r1, #0x06]
	strh r2, [r0, #0x08]
	strh r2, [r1, #0x08]
	strh r2, [r0, #0x0A]
	strh r2, [r1, #0x0A]
	strh r2, [r0, #0x0C]
	strh r2, [r1, #0x0C]
	strh r2, [r0, #0x0E]
	strh r2, [r1, #0x0E]
	adds r1, #0x10
	adds r0, #0x10
	subs r5, #0x08
	cmp r5, #0x00
	bge _0805D6AE
	mov r4, r8
	adds r3, r6, #0x0
	cmp r4, #0x0F
	ble _0805D674
	ldr r1, _0805D724 @ =0x03000DD0
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x02
	ldr r2, _0805D728 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805D7C6
	movs r4, #0x00
_0805D6F4:
	lsls r2, r4, #0x03
	ldr r5, [sp, #0x000]
	adds r3, r2, r5
	ldrb r1, [r3, #0x00]
	movs r0, #0x40
	ands r1, r0
	str r2, [sp, #0x004]
	cmp r1, #0x00
	beq _0805D72C
	movs r1, #0x4C
	mov r0, r12
	muls r0, r1
	add r0, r10
	adds r0, #0xAC
	movs r2, #0x00
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	movs r3, #0x01
	add r3, r12
	mov r9, r3
	b _0805D7B2
_0805D720: .4byte 0x00000A5A
_0805D724: .4byte 0x03000DD0
_0805D728: .4byte 0x083B283C
_0805D72C:
	movs r5, #0x4C
	mov r0, r12
	muls r0, r5
	mov r1, r10
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
	movs r5, #0x00
	adds r4, #0x01
	mov r8, r4
	movs r2, #0x01
	add r2, r12
	mov r9, r2
	ldr r3, [r3, #0x04]
	movs r0, #0x4C
	mov r4, r12
	muls r4, r0
	ldr r7, [sp, #0x008]
	ldr r6, [sp, #0x00C]
_0805D770:
	adds r1, r7, r4
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r6, r4
	ldrh r1, [r3, #0x02]
	ldr r0, _0805D7D8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	adds r3, #0x04
	adds r4, #0x02
	adds r5, #0x01
	cmp r0, #0x00
	beq _0805D770
	movs r3, #0x4C
	mov r0, r12
	muls r0, r3
	mov r2, r10
	adds r1, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r5, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	strb r3, [r0, #0x00]
_0805D7B2:
	mov r12, r9
	ldr r5, [sp, #0x004]
	ldr r1, [sp, #0x000]
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	cmp r1, #0x00
	beq _0805D6F4
_0805D7C6:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D7D8: .4byte 0x00007FFF
