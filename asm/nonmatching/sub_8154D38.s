	.syntax unified
	.text

	thumb_func_start sub_8154D38
sub_8154D38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x010]
	adds r7, r1, #0x0
	adds r0, r7, #0x0
	bl sub_8151758
	ldr r0, _08154ED0 @ =0x0300034C
	ldr r1, _08154ED4 @ =0x00000884
	adds r0, r0, r1
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	str r2, [r0, #0x00]
	ldr r3, _08154ED8 @ =0x00001C98
	adds r3, r3, r7
	mov r8, r3
	ldr r4, [r3, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x1C
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x44]
	str r0, [r4, #0x08]
	adds r4, #0x24
	movs r5, #0x09
	strb r5, [r4, #0x00]
	ldr r0, _08154EDC @ =0x00001C9C
	adds r6, r7, r0
	ldr r4, [r6, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r7, r1
	ldr r1, [r4, #0x04]
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x44]
	str r0, [r4, #0x08]
	adds r4, #0x24
	strb r5, [r4, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x08]
	str r0, [sp, #0x004]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x08]
	ldr r0, [r0, #0x04]
	str r0, [sp, #0x008]
	str r1, [sp, #0x00C]
	ldr r3, _08154EE0 @ =0x00001CB8
	adds r1, r7, r3
	ldr r0, [sp, #0x008]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	add r2, sp, #0x008
	ldr r0, _08154EE4 @ =0x00001CBC
	adds r1, r7, r0
	ldr r0, [r2, #0x04]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x04]
	ldr r1, _08154EE8 @ =0x00001CB4
	adds r4, r7, r1
	ldr r0, [r4, #0x00]
	mov r1, sp
	movs r3, #0x32
	bl sub_8150EC0
	ldr r0, [r4, #0x00]
	ldr r1, _08154EEC @ =0x0000FE01
	bl sub_8150DF0
	ldr r0, [r4, #0x00]
	bl sub_8150E38
	movs r0, #0x00
	movs r1, #0x16
	mov r2, r9
	bl sub_8019308
	ldr r2, _08154EF0 @ =0x04000208
	mov r9, r2
	movs r3, #0x00
	strh r3, [r2, #0x00]
	ldr r0, _08154EF4 @ =0x02000004
	mov r8, r0
	ldrh r1, [r0, #0x00]
	ldr r0, _08154EF8 @ =0x0000FFEF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldr r5, _08154EFC @ =0x04000200
	ldrh r1, [r5, #0x00]
	ldr r0, _08154F00 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r4, _08154F04 @ =0x04000202
	ldrh r0, [r4, #0x00]
	movs r6, #0x02
	orrs r0, r6
	strh r0, [r4, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r3, r9
	strh r2, [r3, #0x00]
	ldr r1, _08154F08 @ =0x081592ED
	movs r0, #0x02
	bl sub_8018B78
	ldr r1, _08154F0C @ =0x0815928D
	movs r0, #0x04
	bl sub_8018B78
	movs r1, #0x00
	mov r0, r9
	strh r1, [r0, #0x00]
	mov r2, r8
	ldrh r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r5, #0x00]
	orrs r0, r6
	strh r0, [r5, #0x00]
	ldrh r0, [r4, #0x00]
	orrs r0, r6
	strh r0, [r4, #0x00]
	mov r0, r10
	mov r3, r9
	strh r0, [r3, #0x00]
	ldr r1, [sp, #0x010]
	cmp r1, #0x00
	beq _08154E6E
	ldr r1, [r1, #0x04]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08154E6E:
	movs r1, #0xF9
	lsls r1, r1, #0x05
	adds r0, r7, r1
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08154F6C
	ldr r2, _08154F10 @ =0x00001CC4
	adds r0, r7, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _08154F24
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrh r0, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08154F14 @ =0x02000048
	movs r0, #0x3F
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	adds r1, #0x06
	ldr r2, _08154F18 @ =0x00003F44
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08154F1C @ =0x00001008
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _08154F20 @ =0x02000040
	strh r4, [r0, #0x00]
	subs r1, #0x0E
	movs r0, #0xA0
	strh r0, [r1, #0x00]
	b _08154F38
_08154ED0: .4byte 0x0300034C
_08154ED4: .4byte 0x00000884
_08154ED8: .4byte 0x00001C98
_08154EDC: .4byte 0x00001C9C
_08154EE0: .4byte 0x00001CB8
_08154EE4: .4byte 0x00001CBC
_08154EE8: .4byte 0x00001CB4
_08154EEC: .4byte 0x0000FE01
_08154EF0: .4byte 0x04000208
_08154EF4: .4byte 0x02000004
_08154EF8: .4byte 0x0000FFEF
_08154EFC: .4byte 0x04000200
_08154F00: .4byte 0x0000FFFD
_08154F04: .4byte 0x04000202
_08154F08: .4byte sub_81592EC
_08154F0C: .4byte sub_815928C
_08154F10: .4byte 0x00001CC4
_08154F14: .4byte 0x02000048
_08154F18: .4byte 0x00003F44
_08154F1C: .4byte 0x00001008
_08154F20: .4byte 0x02000040
_08154F24:
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r1, [r2, #0x00]
	ldr r0, _08154F58 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _08154F5C @ =0x02000050
	strh r3, [r0, #0x00]
	adds r0, #0x04
	strh r3, [r0, #0x00]
_08154F38:
	ldr r1, _08154F60 @ =0x00001CB4
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	bl sub_8150E2C
	ldr r2, _08154F64 @ =0x082126A0
	movs r0, #0x50
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_81580F8
	ldr r2, _08154F68 @ =0x00001CAC
	adds r1, r7, r2
	b _08154F80
_08154F58: .4byte 0x0000FBFF
_08154F5C: .4byte 0x02000050
_08154F60: .4byte 0x00001CB4
_08154F64: .4byte dword_82126A0 @ =0x082126A0
_08154F68: .4byte 0x00001CAC
_08154F6C:
	ldr r2, _08154F94 @ =0x082126A8
	movs r0, #0x28
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_815817C
	ldr r3, _08154F98 @ =0x00001CAC
	adds r1, r7, r3
_08154F80:
	str r0, [r1, #0x00]
	movs r0, #0x01
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08154F94: .4byte dword_82126A8 @ =0x082126A8
_08154F98: .4byte 0x00001CAC
