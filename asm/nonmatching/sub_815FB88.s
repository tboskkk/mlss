	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	mov r9, r1
	adds r4, r2, #0x0
	lsls r4, r4, #0x10
	lsls r3, r3, #0x10
	ldr r0, _0815FD54 @ =0x00000808
	adds r0, r7, r0
	str r0, [sp, #0x004]
	str r1, [r0, #0x00]
	ldr r1, _0815FD58 @ =0x00000804
	adds r5, r7, r1
	lsrs r2, r3, #0x10
	str r2, [sp, #0x000]
	asrs r3, r3, #0x10
	lsrs r0, r4, #0x10
	mov r10, r0
	asrs r4, r4, #0x10
	adds r0, r3, #0x0
	muls r0, r4
	lsls r0, r0, #0x01
	ldr r6, _0815FD5C @ =0x082127B8
	movs r1, #0x01
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	ldr r1, _0815FD60 @ =0x0000080C
	adds r1, r1, r7
	mov r8, r1
	lsls r4, r4, #0x02
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r6, #0x0
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r0, _0815FD64 @ =0x03000C84
	ldr r1, [r5, #0x00]
	ldr r2, [r0, #0x00]
	mov r0, r9
	bl _call_via_r2
	ldr r0, [r5, #0x00]
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x00]
	movs r4, #0x81
	lsls r4, r4, #0x04
	adds r0, r7, r4
	ldr r1, [sp, #0x048]
	str r1, [r0, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x04
	adds r2, r7, r2
	str r2, [sp, #0x008]
	mov r3, r10
	strh r3, [r2, #0x00]
	adds r4, #0x12
	adds r0, r7, r4
	mov r1, sp
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	ldr r2, _0815FD68 @ =0x00000814
	adds r0, r7, r2
	ldr r3, [sp, #0x040]
	str r3, [r0, #0x00]
	subs r4, #0x0A
	adds r0, r7, r4
	ldr r1, [sp, #0x044]
	str r1, [r0, #0x00]
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	bge _0815FC2C
	adds r0, #0x07
_0815FC2C:
	asrs r0, r0, #0x03
	ldr r2, _0815FD6C @ =0x0000081C
	adds r2, r2, r7
	mov r8, r2
	strh r0, [r2, #0x00]
	ldr r0, [sp, #0x044]
	cmp r0, #0x00
	bge _0815FC3E
	adds r0, #0x07
_0815FC3E:
	asrs r0, r0, #0x03
	ldr r3, _0815FD70 @ =0x0000081E
	adds r5, r7, r3
	strh r0, [r5, #0x00]
	mov r4, r8
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r4, r7, r1
	movs r3, #0x1F
	adds r1, r3, #0x0
	ands r1, r0
	ldrb r2, [r4, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r1, [r5, #0x00]
	ands r1, r3
	lsls r1, r1, #0x05
	ldrh r2, [r4, #0x00]
	ldr r0, _0815FD74 @ =0xFFFFFC1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8160C64
	ldr r6, [r4, #0x00]
	movs r2, #0x00
	mov r9, r2
	str r5, [sp, #0x00C]
	ldr r3, [sp, #0x008]
	str r3, [sp, #0x010]
	mov r12, r8
	ldr r4, [sp, #0x004]
	mov r10, r4
_0815FC8A:
	movs r5, #0x00
	mov r0, r9
	adds r0, #0x01
	str r0, [sp, #0x014]
_0815FC92:
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r6
	lsls r2, r6, #0x1B
	lsrs r0, r2, #0x1B
	adds r3, r3, r0
	lsls r3, r3, #0x01
	adds r3, r7, r3
	ldr r1, [sp, #0x00C]
	ldrh r0, [r1, #0x00]
	add r0, r9
	ldr r4, [sp, #0x010]
	ldrh r1, [r4, #0x00]
	muls r1, r0
	mov r4, r12
	ldrh r0, [r4, #0x00]
	adds r0, r5, r0
	adds r1, r1, r0
	mov r4, r10
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r3, #0x00]
	lsrs r2, r2, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r2, r2, r0
	lsrs r2, r2, #0x18
	movs r1, #0x1F
	mov r8, r1
	ands r2, r1
	movs r4, #0x20
	negs r4, r4
	ands r6, r4
	orrs r6, r2
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r6
	lsls r2, r6, #0x1B
	lsrs r0, r2, #0x1B
	adds r3, r3, r0
	lsls r3, r3, #0x01
	adds r3, r7, r3
	str r3, [sp, #0x018]
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x00]
	add r0, r9
	ldr r3, [sp, #0x010]
	ldrh r1, [r3, #0x00]
	adds r3, r1, #0x0
	muls r3, r0
	adds r0, r5, #0x1
	mov r1, r12
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	adds r1, r3, r0
	mov r3, r10
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	ldr r1, [sp, #0x018]
	strh r0, [r1, #0x00]
	lsrs r2, r2, #0x03
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r2, r2, r3
	lsrs r2, r2, #0x18
	mov r0, r8
	ands r2, r0
	ands r6, r4
	orrs r6, r2
	adds r5, #0x02
	cmp r5, #0x1F
	ble _0815FC92
	lsls r0, r6, #0x16
	lsrs r0, r0, #0x1B
	adds r0, #0x01
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r1, _0815FD74 @ =0xFFFFFC1F
	ands r6, r1
	orrs r6, r0
	ldr r2, [sp, #0x014]
	mov r9, r2
	cmp r2, #0x1F
	ble _0815FC8A
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0815FD54: .4byte 0x00000808
_0815FD58: .4byte 0x00000804
_0815FD5C: .4byte 0x082127B8
_0815FD60: .4byte 0x0000080C
_0815FD64: .4byte 0x03000C84
_0815FD68: .4byte 0x00000814
_0815FD6C: .4byte 0x0000081C
_0815FD70: .4byte 0x0000081E
_0815FD74: .4byte 0xFFFFFC1F
