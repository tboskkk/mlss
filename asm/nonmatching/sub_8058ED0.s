	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	lsls r2, r2, #0x10
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	ldr r0, _08058FD0 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsrs r1, r2, #0x10
	mov r9, r1
	asrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x0F
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ands r0, r3
	mov r2, r12
	lsls r5, r2, #0x0B
	lsls r1, r0, #0x06
	adds r1, r5, r1
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x05
	adds r0, r5, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x03
	adds r2, r6, #0x0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r2, _08058FD4 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r12
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08058FD8 @ =0x0000FFFF
	cmp r1, r0
	beq _0805904A
	mov r2, r12
	lsls r1, r2, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r6, r8
	cmp r6, #0x00
	bge _08058F64
	movs r1, #0x00
	mov r9, r1
_08058F64:
	adds r1, r3, #0x0
	muls r1, r0
	adds r1, r5, r1
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0x00
	mov r12, r6
	adds r6, r4, #0x0
	adds r6, #0x94
	adds r5, r4, #0x0
	adds r5, #0x98
_08058F84:
	mov r0, r12
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0x00
	beq _08058FDC
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r0, [sp, #0x008]
	adds r3, r0, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	add r4, r10
	b _08059016
	.byte 0x00, 0x00
_08058FD0: .4byte 0x00000579
_08058FD4: .4byte room_solidity_index_table
_08058FD8: .4byte 0x0000FFFF
_08058FDC:
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r1, [sp, #0x000]
	adds r3, r1, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	ldr r0, [sp, #0x004]
	adds r4, r0, r4
_08059016:
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x01
	adds r1, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r4, r4, r0
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x06]
	strh r0, [r4, #0x02]
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	cmp r0, #0x11
	bls _08058F84
_0805904A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
