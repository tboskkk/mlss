	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x024]
	mov r8, r0
	ldr r3, [sp, #0x028]
	mov r9, r3
	ldr r4, [sp, #0x02C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805A340 @ =0x08CDC2A8
	str r0, [r7, #0x18]
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r4, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r2, _0805A344 @ =0x081E27EC
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x38]
	movs r4, #0x80
	lsls r4, r4, #0x04
	ldr r2, _0805A348 @ =0x081E27F4
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x3C]
	ldr r2, _0805A34C @ =0x081E27FC
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x44]
	ldr r2, _0805A350 @ =0x081E2804
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x40]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x38]
	ldr r2, _0805A354 @ =0x01000800
	mov r10, r2
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x3C]
	ldr r5, _0805A358 @ =0x01000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x44]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x40]
	mov r0, sp
	mov r2, r10
	bl CpuFastSet
	ldr r0, _0805A35C @ =0x0000FFFC
	strh r0, [r7, #0x1C]
	strh r6, [r7, #0x1E]
	mov r3, r8
	strh r3, [r7, #0x32]
	mov r5, r9
	strh r5, [r7, #0x36]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x20]
	ldr r2, _0805A360 @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x08]
	lsrs r0, r0, #0x04
	lsls r0, r0, #0x05
	strh r0, [r7, #0x24]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x08]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x04
	strh r0, [r7, #0x26]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0805A374
	cmp r1, #0x10
	bgt _0805A364
	cmp r1, #0x00
	beq _0805A36E
	b _0805A38E
_0805A340: .4byte 0x08CDC2A8
_0805A344: .4byte 0x081E27EC
_0805A348: .4byte 0x081E27F4
_0805A34C: .4byte 0x081E27FC
_0805A350: .4byte 0x081E2804
_0805A354: .4byte 0x01000800
_0805A358: .4byte 0x01000200
_0805A35C: .4byte 0x0000FFFC
_0805A360: .4byte 0x083AFC5C
_0805A364:
	cmp r1, #0x20
	beq _0805A37A
	cmp r1, #0x30
	beq _0805A380
	b _0805A38E
_0805A36E:
	movs r1, #0x04
	movs r0, #0x04
	b _0805A384
_0805A374:
	movs r1, #0x01
	movs r0, #0x01
	b _0805A384
_0805A37A:
	movs r1, #0x02
	movs r0, #0x02
	b _0805A384
_0805A380:
	movs r1, #0x08
	movs r0, #0x08
_0805A384:
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2A]
	adds r0, r7, #0x0
	adds r0, #0x2E
	strb r1, [r0, #0x00]
_0805A38E:
	ldr r2, _0805A3AC @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _0805A3B0
	movs r0, #0x04
	strh r0, [r7, #0x2A]
	b _0805A3B8
	.byte 0x00, 0x00
_0805A3AC: .4byte 0x083AFC5C
_0805A3B0:
	cmp r1, #0x02
	bne _0805A3B8
	movs r0, #0x04
	strh r0, [r7, #0x28]
_0805A3B8:
	adds r1, r7, #0x0
	adds r1, #0x2D
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x32
	ldsh r1, [r7, r0]
	movs r3, #0x28
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x24]
	adds r0, r0, r5
	strh r0, [r7, #0x30]
	movs r0, #0x36
	ldsh r1, [r7, r0]
	movs r3, #0x2A
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x26]
	adds r0, r0, r5
	strh r0, [r7, #0x34]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x09]
	lsrs r0, r1, #0x04
	movs r2, #0x0F
	ands r2, r1
	ldr r4, _0805A430 @ =0x02000008
	ldr r3, _0805A434 @ =0x081E280A
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x07
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r2, r2, #0x01
	adds r2, r2, r3
	ldrh r0, [r2, #0x00]
	movs r2, #0xB8
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805A430: .4byte 0x02000008
_0805A434: .4byte 0x081E280A
