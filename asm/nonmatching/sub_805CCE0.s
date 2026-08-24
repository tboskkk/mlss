	.syntax unified
	.text

	thumb_func_start sub_805CCE0
sub_805CCE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldr r0, [sp, #0x038]
	mov r8, r0
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp, #0x008]
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	ldr r0, [sp, #0x03C]
	lsls r0, r0, #0x10
	str r0, [sp, #0x014]
	lsrs r5, r0, #0x10
	str r5, [sp, #0x010]
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805CDF0 @ =0x08CDC2C8
	str r0, [r7, #0x18]
	ldr r1, _0805CDF4 @ =0x00000A3C
	adds r0, r7, r1
	str r4, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x94
	movs r4, #0xC0
	lsls r4, r4, #0x06
	ldr r2, _0805CDF8 @ =0x081E2840
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r2, #0x98
	adds r2, r2, r7
	mov r9, r2
	ldr r2, _0805CDFC @ =0x081E2848
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r9
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xA8
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _0805CE00 @ =0x081E2850
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	movs r2, #0xA4
	adds r2, r2, r7
	mov r10, r2
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _0805CE04 @ =0x081E2858
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r10
	str r0, [r1, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x00]
	ldr r5, _0805CE08 @ =0x01000C00
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r6, #0x00]
	ldr r2, _0805CE0C @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r5, r10
	ldr r1, [r5, #0x00]
	ldr r2, _0805CE10 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _0805CE14 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	mov r0, sp
	ldrh r0, [r0, #0x08]
	strh r0, [r7, #0x1E]
	mov r1, r8
	strh r1, [r7, #0x22]
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r7, #0x24]
	ldrh r1, [r7, #0x1E]
	adds r0, r7, #0x0
	bl sub_805D914
	adds r0, r7, #0x0
	bl sub_805D5C0
	ldr r0, _0805CE18 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	cmp r1, #0x20
	beq _0805CE2A
	cmp r1, #0x20
	bgt _0805CE1C
	cmp r1, #0x00
	beq _0805CE22
	b _0805CE38
	.byte 0x00, 0x00
_0805CDF0: .4byte dword_8CDC2C8 @ =0x08CDC2C8
_0805CDF4: .4byte 0x00000A3C
_0805CDF8: .4byte dword_81E2840 @ =0x081E2840
_0805CDFC: .4byte dword_81E2848 @ =0x081E2848
_0805CE00: .4byte dword_81E2850 @ =0x081E2850
_0805CE04: .4byte dword_81E2858 @ =0x081E2858
_0805CE08: .4byte 0x01000C00
_0805CE0C: .4byte 0x01000A00
_0805CE10: .4byte 0x01000800
_0805CE14: .4byte 0x0000FFFB
_0805CE18: .4byte 0x03000DD0
_0805CE1C:
	cmp r0, #0x40
	beq _0805CE32
	b _0805CE38
_0805CE22:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _0805CE38
_0805CE2A:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _0805CE38
_0805CE32:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_0805CE38:
	ldr r1, _0805CE68 @ =0x0200000A
	ldr r5, _0805CE6C @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0805CE70 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _0805CE74 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CE68: .4byte 0x0200000A
_0805CE6C: .4byte 0x00004004
_0805CE70: .4byte 0x00004204
_0805CE74: .4byte 0x00004404
