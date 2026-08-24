	.syntax unified
	.text

	thumb_func_start bclr_init
bclr_init:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _080533D0 @ =0x08CDC1D8
	str r0, [r7, #0x18]
	ldr r1, _080533D4 @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	ldr r0, _080533D8 @ =0x02000054
	movs r6, #0x10
	strh r6, [r0, #0x00]
	subs r1, #0x50
	movs r0, #0x00
	strh r0, [r1, #0x00]
	bl sub_8017E34
	ldr r2, _080533DC @ =0x0300034C
	adds r1, r2, #0x0
	adds r1, #0x31
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r1, _080533E0 @ =0x00000888
	adds r2, r2, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, _080533E4 @ =0x081E271C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _080533E8 @ =0x08CDC1E8
	str r0, [r4, #0x18]
	str r4, [r7, #0x34]
	str r7, [r4, #0x14]
	ldrb r0, [r7, #0x1C]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r7, #0x1C]
	mov r2, r8
	strh r2, [r7, #0x3C]
	strb r6, [r7, #0x1D]
	movs r3, #0x80
	lsls r3, r3, #0x04
	mov r8, r3
	ldr r2, _080533EC @ =0x081E26E4
	mov r0, r8
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x38]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ldr r2, _080533F0 @ =0x081E26EC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r6, r0, #0x0
	ldr r0, _080533F4 @ =0x03000C84
	ldr r4, _080533F8 @ =0x083A0E94
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r4, #0x0
	bl sub_80198B0
	adds r2, r0, #0x0
	lsls r2, r2, #0x09
	lsrs r2, r2, #0x0B
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl CpuFastSet
	cmp r6, #0x00
	beq _0805330C
	adds r0, r6, #0x0
	bl free_heap_8018D9C
_0805330C:
	ldr r2, _080533FC @ =0x081E2724
	mov r0, r8
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	adds r4, r0, #0x0
	movs r5, #0x0F
	ldr r3, _08053400 @ =0x0000107B
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r2, r4, r0
_08053324:
	strh r3, [r2, #0x00]
	subs r0, r3, #0x1
	subs r1, r2, #0x2
	strh r0, [r1, #0x00]
	subs r0, r3, #0x2
	subs r1, r2, #0x4
	strh r0, [r1, #0x00]
	subs r0, r3, #0x3
	subs r1, r2, #0x6
	strh r0, [r1, #0x00]
	subs r0, r3, #0x4
	subs r1, #0x02
	strh r0, [r1, #0x00]
	subs r0, r3, #0x5
	subs r1, #0x02
	strh r0, [r1, #0x00]
	subs r0, r3, #0x6
	subs r1, #0x02
	strh r0, [r1, #0x00]
	subs r0, r3, #0x7
	subs r1, #0x02
	strh r0, [r1, #0x00]
	subs r3, #0x08
	subs r2, #0x10
	subs r5, #0x08
	cmp r5, #0x00
	bge _08053324
	ldr r1, _08053404 @ =0x0600E800
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r4, #0x0
	bl CpuFastSet
	cmp r4, #0x00
	beq _08053370
	adds r0, r4, #0x0
	bl free_heap_8018D9C
_08053370:
	movs r0, #0x80
	lsls r0, r0, #0x06
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8020994
	ldr r1, _08053408 @ =0x00006005
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x48]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x48]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x48]
	movs r0, #0x8C
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x48]
	movs r0, #0x5A
	strh r0, [r1, #0x02]
	ldr r0, _080533DC @ =0x0300034C
	ldr r1, _080533E0 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08053414
	ldr r0, _0805340C @ =0x083A1BA0
	ldr r1, _08053410 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	b _0805341E
_080533D0: .4byte dword_8CDC1D8 @ =0x08CDC1D8
_080533D4: .4byte 0x02000050
_080533D8: .4byte 0x02000054
_080533DC: .4byte 0x0300034C
_080533E0: .4byte 0x00000888
_080533E4: .4byte dword_81E271C @ =0x081E271C
_080533E8: .4byte dword_8CDC1E8 @ =0x08CDC1E8
_080533EC: .4byte dword_81E26E4 @ =0x081E26E4
_080533F0: .4byte dword_81E26EC @ =0x081E26EC
_080533F4: .4byte 0x03000C84
_080533F8: .4byte 0x083A0E94
_080533FC: .4byte dword_81E2724 @ =0x081E2724
_08053400: .4byte 0x0000107B
_08053404: .4byte 0x0600E800
_08053408: .4byte 0x00006005
_0805340C: .4byte 0x083A1BA0
_08053410: .4byte 0x02000080
_08053414:
	ldr r0, _08053674 @ =0x083A1D80
	ldr r1, _08053678 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
_0805341E:
	ldr r1, _08053678 @ =0x02000080
	ldr r2, _0805367C @ =0x00007FFF
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r1, _08053680 @ =0x0300034C
	ldr r0, _08053684 @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, _08053688 @ =0x0819941C
	ldr r1, _0805368C @ =0x08198784
	subs r0, r0, r1
	ldr r2, _08053690 @ =0x081E26F4
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x2C]
	ldr r1, _08053694 @ =0x0851F9E8
	bl sub_81994EC
	ldr r2, _08053698 @ =0x081E26FC
	movs r0, #0x14
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	str r0, [r7, #0x30]
	ldr r0, _0805369C @ =0x00012C1F
	ldr r2, _080536A0 @ =0x081E2704
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x20]
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x24]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _080536A4 @ =0x081E270C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r7, #0x28]
	movs r0, #0x00
	str r0, [sp, #0x018]
	ldr r1, _080536A8 @ =0x06004000
	ldr r2, _080536AC @ =0x01000008
	add r0, sp, #0x018
	bl CpuFastSet
	movs r0, #0x80
	lsls r0, r0, #0x01
	ldr r2, _080536B0 @ =0x081E272C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [sp, #0x01C]
	movs r5, #0x00
_0805349A:
	ldr r1, _080536B4 @ =0x083A2958
	lsls r0, r5, #0x01
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	ldr r0, _080536B8 @ =0x083A2944
	lsls r1, r5, #0x02
	adds r0, r1, r0
	ldrh r0, [r0, #0x00]
	mov r8, r0
	ldr r0, _080536BC @ =0x083A2964
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0xFF
	ldr r3, [sp, #0x01C]
	strb r1, [r3, #0x00]
	movs r1, #0x35
	strb r1, [r3, #0x01]
	adds r0, #0x02
	adds r1, r3, #0x0
	adds r1, #0x02
	movs r2, #0x7F
	bl CpuSet
	ldr r0, [r7, #0x30]
	lsls r2, r5, #0x04
	subs r2, r2, r5
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x24]
	adds r1, r1, r2
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	movs r3, #0x00
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	movs r3, #0x02
	str r3, [sp, #0x00C]
	movs r3, #0x05
	str r3, [sp, #0x010]
	movs r3, #0x03
	str r3, [sp, #0x014]
	movs r3, #0x00
	bl sub_8199D78
	ldr r0, [r7, #0x30]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r1, #0x00
	adds r2, r4, #0x0
	ldr r3, [sp, #0x01C]
	bl sub_8199D5C
	lsls r4, r5, #0x0B
	adds r5, #0x01
	str r5, [sp, #0x024]
_0805350E:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	bne _0805352A
	ldrb r0, [r2, #0x01]
	cmp r0, #0x0B
	bne _0805352A
	ldrb r0, [r2, #0x02]
	cmp r0, #0x01
	bne _0805352A
	adds r0, r2, #0x3
	str r0, [r3, #0x08]
_0805352A:
	adds r0, r3, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805350E
	ldr r0, [r7, #0x28]
	adds r4, r0, r4
	ldr r6, _080536C0 @ =0x0000E001
	movs r2, #0x00
	mov r0, r8
	lsls r0, r0, #0x10
	mov r10, r0
	asrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x1E
	mov r1, r9
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	lsls r0, r0, #0x01
	mov r8, r0
	mov r3, r8
	adds r3, #0x04
	str r3, [sp, #0x020]
_0805355E:
	add r4, r8
	adds r2, #0x01
	mov r12, r2
	mov r0, r9
	cmp r0, #0x00
	ble _080535DE
	mov r1, r10
	asrs r5, r1, #0x10
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _080535AE
	cmp r1, #0x03
	bge _0805359C
	cmp r1, #0x02
	bge _0805358E
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_0805358E:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
_0805359C:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x00]
	adds r4, #0x02
	subs r5, #0x01
	cmp r5, #0x00
	beq _080535DE
_080535AE:
	adds r1, r6, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r6, #0x0
	strh r1, [r4, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r3, r6, #0x0
	strh r2, [r4, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r1, r6, #0x0
	strh r3, [r4, #0x04]
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	strh r1, [r4, #0x06]
	adds r4, #0x08
	subs r5, #0x04
	cmp r5, #0x00
	bne _080535AE
_080535DE:
	ldr r2, [sp, #0x020]
	adds r4, r4, r2
	mov r2, r12
	cmp r2, #0x0F
	ble _0805355E
	ldr r5, [sp, #0x024]
	cmp r5, #0x04
	bgt _080535F0
	b _0805349A
_080535F0:
	ldr r0, [sp, #0x01C]
	bl free_heap_8018D9C
	ldr r0, [r7, #0x24]
	ldr r1, _080536C4 @ =0x06004020
	movs r2, #0xF0
	lsls r2, r2, #0x04
	bl CpuFastSet
	ldr r0, [r7, #0x28]
	ldr r1, _080536C8 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x02
	bl CpuFastSet
	ldr r1, _080536CC @ =0x02000008
	ldr r3, _080536D0 @ =0x00000406
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _080536D4 @ =0x00001C02
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _080536D8 @ =0x00001D01
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _080536DC @ =0x02000010
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r4, [r0, #0x00]
	ldr r0, _080536B8 @ =0x083A2944
	ldrh r1, [r0, #0x00]
	ldrh r2, [r0, #0x02]
	adds r0, r7, #0x0
	bl sub_80541B0
	ldr r1, _080536E0 @ =0x02000050
	movs r0, #0xBF
	strh r0, [r1, #0x00]
	ldr r0, _080536E4 @ =0x02000054
	strh r4, [r0, #0x00]
	subs r1, #0x50
	movs r2, #0xCD
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08053674: .4byte 0x083A1D80
_08053678: .4byte 0x02000080
_0805367C: .4byte 0x00007FFF
_08053680: .4byte 0x0300034C
_08053684: .4byte 0x0000FFFF
_08053688: .4byte 0x0819941C
_0805368C: .4byte 0x08198784
_08053690: .4byte dword_81E26F4 @ =0x081E26F4
_08053694: .4byte 0x0851F9E8
_08053698: .4byte dword_81E26FC @ =0x081E26FC
_0805369C: .4byte 0x00012C1F
_080536A0: .4byte dword_81E2704 @ =0x081E2704
_080536A4: .4byte dword_81E270C @ =0x081E270C
_080536A8: .4byte 0x06004000
_080536AC: .4byte 0x01000008
_080536B0: .4byte dword_81E272C @ =0x081E272C
_080536B4: .4byte dword_83A2958 @ =0x083A2958
_080536B8: .4byte word_83A2944 @ =0x083A2944
_080536BC: .4byte dword_83A2964 @ =0x083A2964
_080536C0: .4byte 0x0000E001
_080536C4: .4byte 0x06004020
_080536C8: .4byte 0x06002000
_080536CC: .4byte 0x02000008
_080536D0: .4byte 0x00000406
_080536D4: .4byte 0x00001C02
_080536D8: .4byte 0x00001D01
_080536DC: .4byte 0x02000010
_080536E0: .4byte 0x02000050
_080536E4: .4byte 0x02000054
