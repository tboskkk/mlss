	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	adds r3, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x018]
	mov r0, r9
	adds r0, #0x58
	str r0, [sp, #0x01C]
	movs r7, #0xD1
	lsls r7, r7, #0x02
	add r7, r9
	ldr r5, [r7, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r1, r5, r6
	str r1, [sp, #0x020]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r4, r3, r2
	ldr r0, [r4, #0x00]
	str r0, [sp, #0x024]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r9
	str r1, [sp, #0x028]
	ldrh r1, [r1, #0x00]
	cmp r1, #0x05
	bne _0814F392
	b _0814F83E
_0814F392:
	cmp r1, #0x05
	bgt _0814F3AA
	cmp r1, #0x03
	bne _0814F39C
	b _0814F5CC
_0814F39C:
	cmp r1, #0x03
	ble _0814F3A2
	b _0814F6E4
_0814F3A2:
	cmp r1, #0x02
	beq _0814F3D4
	bl _0814FC20
_0814F3AA:
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bne _0814F3B4
	b _0814FB8C
_0814F3B4:
	cmp r1, r0
	bgt _0814F3C2
	cmp r1, #0x06
	bne _0814F3BE
	b _0814FA4A
_0814F3BE:
	bl _0814FC20
_0814F3C2:
	ldr r0, _0814F3D0 @ =0x00000401
	cmp r1, r0
	bne _0814F3CC
	bl _0814FBD0
_0814F3CC:
	bl _0814FC20
_0814F3D0:
	lsls r1, r0, #0x10
	lsls r0, r0, #0x00
_0814F3D4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x3B
	bhi _0814F48C
	mov r0, r9
	movs r1, #0x00
	bl sub_814FFAC
	ldr r0, [r7, #0x00]
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8046A90
	ldr r0, [r7, #0x00]
	str r4, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8046B30
	ldr r0, [r7, #0x00]
	bl sub_8046D18
	ldr r0, [r7, #0x00]
	bl sub_80479A8
	ldr r0, [r7, #0x00]
	bl sub_8047994
	ldr r2, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	ldr r2, _0814F488 @ =0x0000020F
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r3, [sp, #0x028]
	strh r0, [r3, #0x00]
	b _0814FC20
_0814F488:
	lsls r7, r1, #0x08
	lsls r0, r0, #0x00
_0814F48C:
	ldr r2, [r7, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r9
	movs r1, #0x01
	bl sub_814FFAC
	ldr r1, [r7, #0x00]
	ldr r6, _0814F5B8 @ =0x0000020F
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x03
	bl sub_8150244
	adds r4, r0, #0x0
	ldr r0, [r7, #0x00]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r5, #0x01
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8046A90
	ldr r0, [r7, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8046B30
	ldr r0, [r7, #0x00]
	bl sub_8046D18
	ldr r0, [r7, #0x00]
	bl sub_80479A8
	ldr r0, [r7, #0x00]
	bl sub_8047994
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x020]
	adds r0, r0, r2
	ldrh r0, [r0, #0x10]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r4, #0x92
	lsls r4, r4, #0x02
	adds r1, r1, r4
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	movs r2, #0x18
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r4, [sp, #0x024]
	ldr r1, [r4, #0x0C]
	mov r6, r9
	ldr r0, [r6, #0x0C]
	subs r6, r1, r0
	ldr r1, [r4, #0x10]
	mov r2, r9
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _0814F5BC @ =0x03001038
	mov r10, r3
	adds r0, r6, #0x0
	muls r0, r6
	adds r4, r1, #0x0
	mov r1, r8
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F576
	adds r0, #0xFF
_0814F576:
	asrs r5, r0, #0x08
	ldr r4, _0814F5C0 @ =0x0819832C
	ldr r0, _0814F5C4 @ =0x08198220
	subs r4, r4, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	ldr r2, _0814F5C8 @ =0x00000242
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r1, r1, r4
	strh r0, [r1, #0x00]
	ldr r6, [sp, #0x028]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	b _0814FC20
	.byte 0x00, 0x00
_0814F5B8: .4byte 0x0000020F
_0814F5BC: .4byte 0x03001038
_0814F5C0: .4byte 0x0819832C
_0814F5C4: .4byte 0x08198220
_0814F5C8: .4byte 0x00000242
_0814F5CC:
	ldr r1, _0814F6D8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r3, #0x98
	adds r2, r5, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	ble _0814F614
	b _0814FC20
_0814F614:
	movs r0, #0x03
	bl sub_8150244
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	lsls r1, r1, #0x0F
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x05
	bl sub_8046A90
	movs r0, #0x03
	bl sub_8150244
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	lsls r1, r1, #0x0F
	lsrs r1, r1, #0x10
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x05
	bl sub_8046B30
	movs r1, #0xE8
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x26
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x020]
	adds r0, r0, r2
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x020]
	adds r0, r0, r3
	ldrh r0, [r0, #0x28]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _0814F6DC @ =0x0813B1E9
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	ldr r0, _0814F6E0 @ =0x0814F351
	str r0, [r6, #0x0C]
	ldr r0, [r7, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x0C]
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x00]
	b _0814FBC2
_0814F6D8: .4byte 0x00000242
_0814F6DC: .4byte sub_813B1E8
_0814F6E0: .4byte sub_814F350
_0814F6E4:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r6, [sp, #0x024]
	ldr r0, [r6, #0x0C]
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	movs r1, #0x14
	bl __divsi3
	adds r6, r4, r0
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x10]
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	movs r1, #0x14
	bl __divsi3
	adds r4, r4, r0
	mov r8, r4
	ldr r3, [sp, #0x024]
	ldr r4, [r3, #0x14]
	ldr r0, [r3, #0x18]
	adds r4, r4, r0
	movs r0, #0xF0
	lsls r0, r0, #0x04
	adds r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x020]
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r0, [r7, #0x00]
	str r1, [sp, #0x000]
	add r2, sp, #0x004
	movs r1, #0x00
	strb r1, [r2, #0x00]
	adds r1, r6, #0x0
	mov r2, r8
	adds r3, r4, #0x0
	bl sub_813A44C
	ldr r3, [r7, #0x00]
	ldr r2, _0814F7E0 @ =0x00000242
	mov r10, r2
	adds r0, r3, r2
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	beq _0814F766
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r1, r3, r6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bne _0814F7F0
_0814F766:
	ldr r4, [sp, #0x024]
	ldr r1, [r4, #0x0C]
	ldr r0, [r3, #0x0C]
	subs r6, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r3, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r4, _0814F7E4 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r2, r1, #0x0
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F790
	adds r0, #0xFF
_0814F790:
	asrs r5, r0, #0x08
	ldr r0, [r7, #0x00]
	add r0, r10
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0814F7B6
	ldr r0, _0814F7E8 @ =0x0819832C
	ldr r1, _0814F7EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	add r1, r10
	strh r0, [r1, #0x00]
_0814F7B6:
	ldr r0, [r7, #0x00]
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0814F830
	ldr r0, _0814F7E8 @ =0x0819832C
	ldr r1, _0814F7EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r4, #0x00]
	adds r2, r2, r0
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	b _0814F830
_0814F7E0: .4byte 0x00000242
_0814F7E4: .4byte 0x03001038
_0814F7E8: .4byte 0x0819832C
_0814F7EC: .4byte 0x08198220
_0814F7F0:
	ldr r5, _0814F890 @ =0x03001038
	ldr r4, _0814F894 @ =0x0819832C
	ldr r0, _0814F898 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x02
	bl _call_via_r2
	ldr r2, [r7, #0x00]
	add r2, r10
	ldrh r1, [r2, #0x00]
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x00]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r0, r4
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r1, #0x02
	bl _call_via_r2
	ldr r2, [r7, #0x00]
	adds r2, r2, r4
	ldrh r1, [r2, #0x00]
	subs r1, r1, r0
	strh r1, [r2, #0x00]
_0814F830:
	ldr r0, [sp, #0x01C]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0814F83E:
	add r0, sp, #0x008
	mov r1, r9
	movs r2, #0x28
	movs r3, #0x10
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, [sp, #0x01C]
	movs r4, #0xBF
	lsls r4, r4, #0x01
	adds r3, r3, r4
	mov r10, r3
	ldrb r1, [r3, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0814F8A0
	ldr r3, _0814F89C @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x008
	mov r1, r9
	ldr r2, [sp, #0x024]
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814F958
	mov r6, r10
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
	b _0814F958
_0814F890: .4byte 0x03001038
_0814F894: .4byte 0x0819832C
_0814F898: .4byte 0x08198220
_0814F89C: .4byte 0x00007FFF
_0814F8A0:
	ldr r3, _0814F944 @ =0x00007FFF
	str r3, [sp, #0x000]
	add r0, sp, #0x008
	mov r1, r9
	ldr r2, [sp, #0x024]
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814F958
	ldr r1, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814F958
	movs r7, #0xD1
	lsls r7, r7, #0x02
	add r7, r9
	ldr r2, [r7, #0x00]
	ldr r3, [sp, #0x024]
	ldr r1, [r3, #0x0C]
	ldr r0, [r2, #0x0C]
	subs r6, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r4, _0814F948 @ =0x03001038
	mov r9, r4
	adds r0, r6, #0x0
	muls r0, r6
	adds r2, r1, #0x0
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0814F8F6
	adds r0, #0xFF
_0814F8F6:
	asrs r5, r0, #0x08
	ldr r4, _0814F94C @ =0x0819832C
	ldr r0, _0814F950 @ =0x08198220
	subs r4, r4, r0
	mov r3, r9
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	ldr r6, _0814F954 @ =0x00000242
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [sp, #0x01C]
	subs r6, #0xC6
	adds r1, r4, r6
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	b _0814FC62
_0814F944: .4byte 0x00007FFF
_0814F948: .4byte 0x03001038
_0814F94C: .4byte 0x0819832C
_0814F950: .4byte 0x08198220
_0814F954: .4byte 0x00000242
_0814F958:
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	ldr r2, _0814FA20 @ =0x00000242
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x0C]
	adds r0, r0, r2
	str r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	movs r6, #0x91
	lsls r6, r6, #0x02
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	adds r6, #0x98
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r2, [r0, r3]
	ldr r0, [r1, #0x18]
	adds r0, r0, r2
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x00]
	bl sub_8046D18
	ldr r1, [r4, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r1, r5
	ldr r0, [r0, #0x00]
	movs r6, #0x04
	ldsh r0, [r0, r6]
	cmp r0, #0xA0
	bgt _0814F9BE
	adds r0, r1, #0x0
	bl sub_80479A8
	ldr r0, [sp, #0x01C]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814F9BE:
	ldr r1, [r4, #0x00]
	adds r0, r1, r5
	ldr r0, [r0, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0xA0
	bgt _0814F9E2
	adds r0, r1, #0x0
	bl sub_8047994
	ldr r3, [sp, #0x01C]
	movs r6, #0xBF
	lsls r6, r6, #0x01
	adds r2, r3, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814F9E2:
	ldr r2, [r4, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814FA14
	ldr r3, _0814FA24 @ =0x00000216
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814FA14
	ldr r4, [sp, #0x01C]
	movs r6, #0xBF
	lsls r6, r6, #0x01
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	bne _0814FA28
_0814FA14:
	ldr r0, [sp, #0x01C]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r0, r1
	b _0814FAFC
	.byte 0x00, 0x00
_0814FA20: .4byte 0x00000242
_0814FA24: .4byte 0x00000216
_0814FA28:
	ldr r0, [sp, #0x01C]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814FA3A
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0814FA3A:
	ldr r3, [sp, #0x01C]
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r1, r3, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _0814FC20
_0814FA4A:
	ldr r6, _0814FB74 @ =0x00000242
	adds r0, r5, r6
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	str r0, [r5, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	bl sub_8046D18
	ldr r1, [r7, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r6, #0x04
	ldsh r0, [r0, r6]
	cmp r0, #0xA0
	bgt _0814FA94
	adds r0, r1, #0x0
	bl sub_80479A8
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814FA94:
	ldr r1, [r7, #0x00]
	adds r0, r1, r4
	ldr r0, [r0, #0x00]
	movs r2, #0x06
	ldsh r0, [r0, r2]
	cmp r0, #0xA0
	bgt _0814FAB6
	adds r0, r1, #0x0
	bl sub_8047994
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814FAB6:
	ldr r2, [r7, #0x00]
	movs r3, #0x83
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0814FAE8
	ldr r4, _0814FB78 @ =0x00000216
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0814FAE8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814FAE8
	b _0814FC20
_0814FAE8:
	ldr r2, _0814FB7C @ =0x0000020D
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r6, [sp, #0x01C]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r6, r0
_0814FAFC:
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0xD1
	lsls r5, r5, #0x02
	add r5, r9
	ldr r0, [r5, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	mov r4, r9
	ldr r3, [r4, #0x14]
	ldr r4, [r4, #0x18]
	adds r3, r3, r4
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r4, #0x00
	str r4, [sp, #0x004]
	bl sub_8047F60
	ldr r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_804776C
	ldr r0, [r5, #0x00]
	movs r1, #0x00
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x020]
	adds r0, r0, r6
	ldrh r0, [r0, #0x28]
	ldr r2, [sp, #0x01C]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r2, r3
	strh r0, [r1, #0x00]
	ldr r0, _0814FB80 @ =0x0813B1E9
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	ldr r0, _0814FB84 @ =0x0813B361
	str r0, [r4, #0x0C]
	movs r6, #0xA6
	lsls r6, r6, #0x01
	adds r1, r2, r6
	ldr r0, _0814FB88 @ =0x0814F06D
	str r0, [r1, #0x00]
	b _0814FC64
	.byte 0x00, 0x00
_0814FB74: .4byte 0x00000242
_0814FB78: .4byte 0x00000216
_0814FB7C: .4byte 0x0000020D
_0814FB80: .4byte sub_813B1E8
_0814FB84: .4byte sub_813B360
_0814FB88: .4byte sub_814F06C
_0814FB8C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814FC20
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, [r7, #0x00]
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x0F
	strh r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	ldr r0, [r2, #0x00]
	str r0, [r2, #0x0C]
	ldr r0, _0814FBCC @ =0x0813B1E9
	str r0, [r2, #0x00]
_0814FBC2:
	ldr r3, [sp, #0x028]
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	b _0814FC20
_0814FBCC: .4byte sub_813B1E8
_0814FBD0:
	.byte 0x18, 0x1C, 0x49, 0x46, 0x02, 0x22, 0x00, 0x23, 0x00, 0xF0, 0x08, 0xF9, 0x85, 0x22, 0x92, 0x00
	.byte 0x4A, 0x44, 0x11, 0x78, 0x08, 0x20, 0x40, 0x42, 0x08, 0x40, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70
	.byte 0xA5, 0x20, 0x80, 0x00, 0x48, 0x44, 0x02, 0x68, 0x91, 0x7C, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x90, 0x74, 0xE9, 0x21, 0x49, 0x00, 0x49, 0x44, 0x3C, 0x20, 0x08, 0x80, 0x19, 0x48, 0x06, 0x9C
	.byte 0x20, 0x60, 0x19, 0x48, 0xE0, 0x60, 0xD2, 0x21, 0x49, 0x00, 0x49, 0x44, 0x17, 0x48, 0x08, 0x60
_0814FC20:
	movs r5, #0xA5
	lsls r5, r5, #0x02
	add r5, r9
	ldr r0, [r5, #0x00]
	movs r6, #0x06
	ldsh r0, [r0, r6]
	bl sub_81501E4
	movs r4, #0xD1
	lsls r4, r4, #0x02
	add r4, r9
	ldr r1, [r4, #0x00]
	ldr r2, _0814FC80 @ =0x00000272
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r3, #0x06
	ldsh r0, [r0, r3]
	bl sub_8150178
	ldr r1, [r4, #0x00]
	movs r6, #0x9D
	lsls r6, r6, #0x02
	adds r1, r1, r6
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x06
	ldsh r0, [r0, r1]
	bl sub_8150118
	ldr r1, [r4, #0x00]
	ldr r2, _0814FC84 @ =0x00000276
	adds r1, r1, r2
_0814FC62:
	strh r0, [r1, #0x00]
_0814FC64:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0xE9, 0xB1, 0x13, 0x08, 0x61, 0xB3, 0x13, 0x08, 0x6D, 0xF0, 0x14, 0x08
_0814FC80: .4byte 0x00000272
_0814FC84: .4byte 0x00000276
