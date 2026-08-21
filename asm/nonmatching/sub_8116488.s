	.syntax unified
	.text

	thumb_func_start sub_8116488
sub_8116488:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	str r1, [sp, #0x008]
	mov r8, r2
	ldr r0, [sp, #0x038]
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x040]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x00C]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r10, r2
	movs r2, #0x00
	movs r4, #0x00
	movs r5, #0x00
	lsls r0, r6, #0x10
	str r0, [sp, #0x014]
_081164C0:
	ldr r0, [sp, #0x010]
	asrs r0, r5
	movs r1, #0x01
	ands r1, r0
	adds r7, r0, #0x0
	adds r3, r5, #0x1
	cmp r1, #0x00
	bne _08116524
	cmp r2, r5
	beq _08116524
	cmp r4, #0x01
	bne _08116524
	mov r3, r10
	cmp r3, #0x00
	beq _081164F8
	lsls r1, r2, #0x05
	add r1, r8
	subs r2, r5, r2
	lsls r2, r2, #0x05
	ldr r0, _081164F4 @ =0x03001034
	ldr r3, [r0, #0x00]
	ldr r0, [sp, #0x014]
	orrs r0, r6
	bl _call_via_r3
	b _08116516
_081164F4: .4byte 0x03001034
_081164F8:
	lsls r1, r2, #0x05
	mov r3, r8
	adds r0, r3, r1
	ldr r3, [sp, #0x008]
	adds r1, r3, r1
	subs r3, r5, r2
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x00C]
	str r2, [sp, #0x000]
	mov r2, r9
	ldr r4, [r2, #0x54]
	adds r2, r6, #0x0
	bl _call_via_r4
_08116516:
	movs r4, #0x00
	adds r1, r5, #0x1
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	adds r3, r1, #0x0
	cmp r5, #0x0F
	beq _0811653C
_08116524:
	movs r0, #0x01
	ands r0, r7
	cmp r0, #0x00
	beq _08116536
	cmp r4, #0x00
	bne _08116536
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	movs r4, #0x01
_08116536:
	adds r5, r3, #0x0
	cmp r5, #0x0F
	ble _081164C0
_0811653C:
	cmp r5, #0x10
	bne _08116582
	cmp r4, #0x01
	bne _08116582
	mov r3, r10
	cmp r3, #0x00
	beq _08116564
	ldr r3, _08116560 @ =0x03001034
	lsls r0, r6, #0x10
	orrs r0, r6
	lsls r1, r2, #0x05
	add r1, r8
	subs r2, r5, r2
	lsls r2, r2, #0x05
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	b _08116582
_08116560: .4byte 0x03001034
_08116564:
	lsls r1, r2, #0x05
	mov r3, r8
	adds r0, r3, r1
	ldr r3, [sp, #0x008]
	adds r1, r3, r1
	subs r3, r5, r2
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x00C]
	str r2, [sp, #0x000]
	mov r2, r9
	ldr r4, [r2, #0x54]
	adds r2, r6, #0x0
	bl _call_via_r4
_08116582:
	mov r3, r9
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	beq _081165BC
	ldr r1, [r3, #0x40]
	cmp r1, #0x00
	beq _081165BC
	mov r0, r10
	cmp r0, #0x00
	beq _081165A8
	add r0, sp, #0x004
	strh r6, [r0, #0x00]
	ldr r2, _081165A4 @ =0x010000A0
	bl CpuSet
	b _081165BC
	.byte 0x00, 0x00
_081165A4: .4byte 0x010000A0
_081165A8:
	ldr r3, [sp, #0x00C]
	str r3, [sp, #0x000]
	mov r0, r9
	ldr r4, [r0, #0x54]
	adds r0, r1, #0x0
	adds r1, r2, #0x0
	adds r2, r6, #0x0
	movs r3, #0xA0
	bl _call_via_r4
_081165BC:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
