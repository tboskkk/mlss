	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r0, #0x0
	ldr r0, _08058674 @ =0x00000579
	adds r1, r6, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x004]
_08058512:
	ldr r2, _08058678 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r6, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _0805867C @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x030]
	cmp r1, r0
	bne _08058532
	b _0805879C
_08058532:
	adds r0, r6, #0x0
	adds r0, #0x8A
	ldr r4, [sp, #0x004]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08058546
	b _08058680
_08058546:
	lsls r1, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	movs r2, #0x00
	str r1, [sp, #0x038]
	str r1, [sp, #0x024]
_08058588:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r1, [sp, #0x00C]
	cmp r3, r1
	bge _08058662
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	asrs r1, r7, #0x10
	ldr r4, [sp, #0x018]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp, #0x020]
	str r1, [sp, #0x028]
	movs r5, #0x42
	adds r5, r5, r6
	mov r10, r5
	movs r0, #0x48
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [sp, #0x004]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x02C]
	adds r2, r6, #0x0
	adds r2, #0x98
	str r2, [sp, #0x034]
_080585C2:
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r5, [sp, #0x020]
	lsrs r4, r5, #0x10
	lsrs r5, r0, #0x10
	mov r8, r1
	cmp r0, #0x00
	bge _080585E8
	ldr r0, [sp, #0x038]
	add r0, r10
	ldrh r1, [r0, #0x00]
_080585DE:
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	blt _080585DE
_080585E8:
	lsls r0, r4, #0x10
	lsls r1, r5, #0x10
	cmp r0, #0x00
	bge _08058600
	ldr r0, [sp, #0x038]
	add r0, r9
	ldrh r2, [r0, #0x00]
_080585F6:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	blt _080585F6
_08058600:
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x024]
	add r1, r10
	ldrh r1, [r1, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x024]
	add r1, r9
	ldrh r1, [r1, #0x00]
	bl __modsi3
	mov r1, r8
	asrs r4, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r2, r3, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x008]
	muls r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x02C]
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r5, [sp, #0x034]
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x004]
	ldr r5, [sp, #0x028]
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _080585C2
_08058662:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _08058588
	b _0805879C
_08058674: .4byte 0x00000579
_08058678: .4byte room_solidity_index_table
_0805867C: .4byte 0x0000FFFF
_08058680:
	ldr r4, [sp, #0x004]
	lsls r2, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	subs r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bne _080586D4
	movs r4, #0x11
	str r4, [sp, #0x00C]
	ldr r5, [sp, #0x014]
	lsls r0, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080586D4:
	adds r1, #0x0F
	adds r0, r6, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080586EC
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_080586EC:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bne _08058704
	movs r5, #0x0C
	str r5, [sp, #0x010]
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
_08058704:
	adds r1, #0x0A
	adds r0, r6, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _0805871C
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_0805871C:
	movs r2, #0x00
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bge _0805879C
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
_0805872C:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r2, [sp, #0x00C]
	cmp r3, r2
	bge _0805878C
	ldr r4, [sp, #0x014]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x03C]
	asrs r0, r7, #0x10
	add r0, r10
	lsls r5, r0, #0x10
	mov r9, r5
	ldr r2, [sp, #0x008]
	adds r1, r0, #0x0
	muls r1, r2
	mov r8, r1
_0805874E:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x03C]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r5, [sp, #0x004]
	lsls r0, r5, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r3
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r5, r9
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _0805874E
_0805878C:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _0805872C
_0805879C:
	ldr r4, [sp, #0x030]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _080587AA
	b _08058512
_080587AA:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
