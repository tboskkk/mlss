	.syntax unified
	.text

	thumb_func_start sub_802DF80
sub_802DF80:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	adds r4, r1, #0x0
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802DFA2
	b _0802E2C2
_0802DFA2:
	ldr r2, [sp, #0x000]
	ldr r3, _0802DFFC @ =0x00000246
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	cmp r0, #0x10
	bne _0802DFBE
	movs r3, #0xA0
	lsls r3, r3, #0x05
	adds r1, r3, #0x0
_0802DFBE:
	ldr r2, [sp, #0x000]
	movs r3, #0x90
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r0, _0802E000 @ =0x0000020B
	adds r3, r2, r0
	movs r0, #0x01
	adds r1, r4, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	cmp r4, #0x00
	bne _0802E004
	ldr r1, [sp, #0x000]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	mov r10, r0
	b _0802E01A
_0802DFFC: .4byte 0x00000246
_0802E000: .4byte 0x0000020B
_0802E004:
	ldr r1, [sp, #0x000]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	mov r9, r0
_0802E01A:
	mov r0, r10
	ldr r1, [r0, #0x0C]
	mov r2, r9
	ldr r0, [r2, #0x0C]
	subs r1, r1, r0
	str r1, [sp, #0x004]
	mov r3, r10
	ldr r1, [r3, #0x10]
	ldr r0, [r2, #0x10]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _0802E03A
	cmp r1, #0x00
	beq _0802E080
_0802E03A:
	ldr r5, _0802E2D4 @ =0x0839F620
	mov r1, r8
	negs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1C
	adds r0, r0, r5
	ldrb r3, [r0, #0x00]
	lsls r0, r3, #0x05
	mov r1, r9
	strb r0, [r1, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _0802E080
	mov r2, r9
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
_0802E080:
	movs r6, #0xD6
	lsls r6, r6, #0x02
	mov r3, r9
	adds r2, r3, r6
	ldrh r0, [r2, #0x00]
	movs r3, #0xFF
	lsls r3, r3, #0x04
	adds r1, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r3, _0802E2D8 @ =0x00000359
	mov r0, r9
	adds r5, r0, r3
	ldrb r2, [r5, #0x00]
	movs r1, #0x11
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r5, #0x00]
	mov r2, r10
	adds r5, r2, r6
	ldrh r2, [r5, #0x00]
	ldr r0, _0802E2DC @ =0xFFFFF00F
	ands r0, r2
	strh r0, [r5, #0x00]
	add r3, r10
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	mov r3, r10
	ldr r4, [r3, #0x0C]
	ldr r7, [r3, #0x10]
	ldr r2, _0802E2E0 @ =0x0839F584
	mov r1, r9
	ldrb r0, [r1, #0x02]
	lsrs r1, r0, #0x05
	lsls r0, r1, #0x02
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0802E0D6
	adds r0, #0x03
_0802E0D6:
	asrs r6, r0, #0x02
	lsls r0, r1, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0802E0EA
	adds r0, #0x03
_0802E0EA:
	asrs r5, r0, #0x02
	ldr r2, [sp, #0x004]
	adds r0, r2, #0x0
	muls r0, r2
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r2, _0802E2E4 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	str r0, [sp, #0x008]
	movs r3, #0x00
	mov r8, r3
	ldr r0, _0802E2E8 @ =0x0819832C
	ldr r1, _0802E2EC @ =0x08198220
	subs r0, r0, r1
	ldr r1, _0802E2E4 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r0
	ldr r3, [sp, #0x000]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x40
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r3, #0x00
	mov r0, r10
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x0C
	bne _0802E154
	mov r0, r9
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x0C
	bne _0802E154
	ldr r0, _0802E2F0 @ =0x00000353
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r3, r0, #0x1F
_0802E154:
	asrs r2, r3
	movs r3, #0xD6
	lsls r3, r3, #0x02
	add r3, r10
	movs r0, #0xFF
	ands r2, r0
	lsls r2, r2, #0x04
	ldrh r1, [r3, #0x00]
	ldr r0, _0802E2DC @ =0xFFFFF00F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x18
	subs r2, r0, #0x1
	cmp r2, #0x00
	bge _0802E178
	b _0802E2C2
_0802E178:
	ldr r0, [sp, #0x000]
	movs r1, #0x8F
	lsls r1, r1, #0x02
	adds r3, r0, r1
	movs r0, #0x03
	bics r0, r2
	cmp r2, #0x00
	blt _0802E1E8
	cmp r0, #0x00
	beq _0802E216
	cmp r0, #0x03
	bge _0802E1E8
	cmp r0, #0x02
	bge _0802E1BE
	ldr r0, [r3, #0x00]
	lsls r1, r2, #0x03
	adds r0, r1, r0
	str r4, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r1, r0
	str r7, [r1, #0x04]
	cmp r6, #0x00
	bne _0802E1AA
	cmp r5, #0x00
	beq _0802E1BC
_0802E1AA:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E1B8
	movs r5, #0x00
	movs r6, #0x00
_0802E1B8:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E1BC:
	subs r2, #0x01
_0802E1BE:
	ldr r0, [r3, #0x00]
	lsls r1, r2, #0x03
	adds r0, r1, r0
	str r4, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r1, r0
	str r7, [r1, #0x04]
	cmp r6, #0x00
	bne _0802E1D4
	cmp r5, #0x00
	beq _0802E1E6
_0802E1D4:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E1E2
	movs r5, #0x00
	movs r6, #0x00
_0802E1E2:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E1E6:
	subs r2, #0x01
_0802E1E8:
	ldr r0, [r3, #0x00]
	lsls r1, r2, #0x03
	adds r0, r1, r0
	str r4, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r1, r0
	str r7, [r1, #0x04]
	cmp r6, #0x00
	bne _0802E1FE
	cmp r5, #0x00
	beq _0802E210
_0802E1FE:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E20C
	movs r5, #0x00
	movs r6, #0x00
_0802E20C:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E210:
	subs r2, #0x01
	cmp r2, #0x00
	blt _0802E2C2
_0802E216:
	ldr r0, [r3, #0x00]
	lsls r1, r2, #0x03
	adds r0, r1, r0
	str r4, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r1, r0
	str r7, [r1, #0x04]
	cmp r6, #0x00
	bne _0802E22C
	cmp r5, #0x00
	beq _0802E23E
_0802E22C:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E23A
	movs r5, #0x00
	movs r6, #0x00
_0802E23A:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E23E:
	subs r0, r2, #0x1
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r1, r0, r1
	str r4, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r7, [r0, #0x04]
	cmp r6, #0x00
	bne _0802E256
	cmp r5, #0x00
	beq _0802E268
_0802E256:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E264
	movs r5, #0x00
	movs r6, #0x00
_0802E264:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E268:
	subs r0, r2, #0x2
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r1, r0, r1
	str r4, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r7, [r0, #0x04]
	cmp r6, #0x00
	bne _0802E280
	cmp r5, #0x00
	beq _0802E292
_0802E280:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E28E
	movs r5, #0x00
	movs r6, #0x00
_0802E28E:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E292:
	subs r0, r2, #0x3
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r1, r0, r1
	str r4, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r7, [r0, #0x04]
	cmp r6, #0x00
	bne _0802E2AA
	cmp r5, #0x00
	beq _0802E2BC
_0802E2AA:
	movs r0, #0x40
	add r8, r0
	ldr r1, [sp, #0x008]
	cmp r8, r1
	ble _0802E2B8
	movs r5, #0x00
	movs r6, #0x00
_0802E2B8:
	subs r4, r4, r6
	subs r7, r7, r5
_0802E2BC:
	subs r2, #0x04
	cmp r2, #0x00
	bge _0802E216
_0802E2C2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802E2D4: .4byte 0x0839F620
_0802E2D8: .4byte 0x00000359
_0802E2DC: .4byte 0xFFFFF00F
_0802E2E0: .4byte 0x0839F584
_0802E2E4: .4byte 0x03001038
_0802E2E8: .4byte 0x0819832C
_0802E2EC: .4byte 0x08198220
_0802E2F0: .4byte 0x00000353
