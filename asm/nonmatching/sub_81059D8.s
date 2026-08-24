	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r9, r0
	str r1, [sp, #0x000]
	movs r7, #0x00
	ldr r0, _08105A44 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08105A48 @ =0x000002BE
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	cmp r7, r1
	bge _08105A76
	ldr r0, _08105A4C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r2, _08105A50 @ =0x00008E4E
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	mov r10, r0
	cmp r1, r9
	bgt _08105A76
	ldr r4, _08105A54 @ =0x00008E4A
	movs r3, #0x00
_08105A10:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, _08105A50 @ =0x00008E4E
	adds r2, r1, r0
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	bne _08105A58
	adds r1, r1, r4
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r0, r0, r2
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	adds r1, r0, r7
	ldrb r0, [r1, #0x00]
	cmp r0, #0x09
	bhi _08105A3C
	b _08105BF0
_08105A3C:
	movs r0, #0x09
	strb r0, [r1, #0x00]
	b _08105BF0
	.byte 0x00, 0x00
_08105A44: .4byte 0x03000FD8
_08105A48: .4byte 0x000002BE
_08105A4C: .4byte 0x03000FDC
_08105A50: .4byte 0x00008E4E
_08105A54: .4byte 0x00008E4A
_08105A58:
	adds r3, #0x02
	adds r7, #0x01
	ldr r1, _08105B18 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r7, r0
	bge _08105A76
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	cmp r0, r9
	ble _08105A10
_08105A76:
	ldr r2, _08105B18 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _08105B1C @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1A
	lsrs r0, r1, #0x1D
	cmp r0, #0x03
	bls _08105A8A
	b _08105BF0
_08105A8A:
	adds r4, r0, #0x0
	ldr r2, _08105B20 @ =0x03000FDC
	mov r10, r2
	cmp r4, r7
	bgt _08105A96
	b _08105BB0
_08105A96:
	mov r6, r10
	ldr r0, _08105B24 @ =0x00008E4A
	mov r8, r0
	lsls r3, r4, #0x01
	subs r5, r3, #0x2
	ldr r1, _08105B28 @ =0x00008E4E
	mov r12, r1
	subs r1, r7, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08105B2C
	cmp r1, #0x03
	bge _08105AF8
	cmp r1, #0x02
	bge _08105AD4
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r12
	adds r1, r0, r3
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, r3, #0x4
	adds r4, r2, #0x0
_08105AD4:
	mov r2, r10
	ldr r0, [r2, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	adds r4, r2, #0x0
_08105AF8:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x02
	b _08105BAA
_08105B18: .4byte 0x03000FD8
_08105B1C: .4byte 0x000002BE
_08105B20: .4byte 0x03000FDC
_08105B24: .4byte 0x00008E4A
_08105B28: .4byte 0x00008E4E
_08105B2C:
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x2
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x4
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r3, r5, #0x6
	adds r4, r2, #0x0
	ldr r0, [r6, #0x00]
	add r0, r8
	adds r1, r0, r4
	subs r2, r4, #0x1
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	lsls r1, r4, #0x01
	add r0, r12
	adds r1, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	subs r5, #0x08
_08105BAA:
	adds r4, r2, #0x0
	cmp r4, r7
	bgt _08105B2C
_08105BB0:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _08105C00 @ =0x00008E4A
	adds r0, r0, r1
	adds r0, r0, r4
	mov r2, sp
	ldrb r2, [r2, #0x00]
	strb r2, [r0, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r1, r4, #0x01
	ldr r2, _08105C04 @ =0x00008E4E
	adds r0, r0, r2
	adds r0, r0, r1
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08105C08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08105C0C @ =0x000002BE
	adds r2, r2, r1
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x01
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_08105BF0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08105C00: .4byte 0x00008E4A
_08105C04: .4byte 0x00008E4E
_08105C08: .4byte 0x03000FD8
_08105C0C: .4byte 0x000002BE
