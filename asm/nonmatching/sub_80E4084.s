	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	cmp r6, #0x00
	bne _080E409A
	b _080E42E8
_080E409A:
	cmp r1, #0x00
	bgt _080E40A0
	b _080E42E8
_080E40A0:
	cmp r1, #0x00
	ble _080E4154
	adds r3, r6, #0x4
	adds r4, r6, #0x0
	str r1, [sp, #0x004]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E40EA
	ldrb r2, [r6, #0x02]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _080E40D6
	ldr r2, [r3, #0x0C]
	ldr r0, [r6, #0x04]
	adds r0, r2, r0
	str r0, [r3, #0x0C]
	ldr r2, [r3, #0x10]
	ldr r0, [r3, #0x04]
	adds r0, r2, r0
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x08]
	adds r0, r2, r0
	str r0, [r3, #0x14]
	b _080E40DC
_080E40D6:
	str r0, [r6, #0x04]
	str r0, [r3, #0x08]
	str r0, [r3, #0x04]
_080E40DC:
	adds r3, #0x28
	adds r4, #0x28
	ldr r0, [sp, #0x004]
	subs r0, #0x01
	str r0, [sp, #0x004]
	cmp r0, #0x00
	beq _080E4154
_080E40EA:
	ldrb r2, [r4, #0x02]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _080E410E
	ldr r2, [r3, #0x0C]
	ldr r0, [r3, #0x00]
	adds r0, r2, r0
	str r0, [r3, #0x0C]
	ldr r2, [r3, #0x10]
	ldr r0, [r3, #0x04]
	adds r0, r2, r0
	str r0, [r3, #0x10]
	ldr r2, [r3, #0x14]
	ldr r0, [r3, #0x08]
	adds r0, r2, r0
	str r0, [r3, #0x14]
	b _080E4114
_080E410E:
	str r0, [r3, #0x00]
	str r0, [r3, #0x08]
	str r0, [r3, #0x04]
_080E4114:
	adds r1, r3, #0x0
	adds r1, #0x28
	adds r0, r4, #0x0
	adds r0, #0x28
	ldrb r2, [r0, #0x02]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _080E4140
	ldr r2, [r1, #0x0C]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	str r0, [r1, #0x0C]
	ldr r2, [r1, #0x10]
	ldr r0, [r1, #0x04]
	adds r0, r2, r0
	str r0, [r1, #0x10]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x08]
	adds r0, r2, r0
	str r0, [r1, #0x14]
	b _080E4146
_080E4140:
	str r0, [r3, #0x28]
	str r0, [r1, #0x08]
	str r0, [r1, #0x04]
_080E4146:
	adds r3, #0x50
	adds r4, #0x50
	ldr r1, [sp, #0x004]
	subs r1, #0x02
	str r1, [sp, #0x004]
	cmp r1, #0x00
	bne _080E40EA
_080E4154:
	movs r2, #0x00
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x000]
	cmp r2, r0
	blt _080E4160
	b _080E42E8
_080E4160:
	ldr r1, _080E42F8 @ =0x0819832C
	ldr r0, _080E42FC @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x008]
	movs r1, #0x28
	adds r1, r1, r6
	mov r10, r1
	adds r5, r6, #0x0
	subs r5, #0x18
	subs r6, #0x28
	mov r9, r6
_080E4176:
	ldr r2, [sp, #0x004]
	cmp r2, #0x00
	ble _080E4222
	ldr r1, [r5, #0x00]
	ldr r0, [r5, #0x28]
	subs r6, r1, r0
	ldr r1, [r5, #0x04]
	ldr r0, [r5, #0x2C]
	subs r7, r1, r0
	ldr r1, [r5, #0x08]
	ldr r0, [r5, #0x30]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r1, r0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r3, r1, r0
	movs r0, #0x18
	ldsh r4, [r5, r0]
	adds r0, r4, #0x0
	muls r0, r4
	cmp r0, r3
	bge _080E4222
	ldr r2, _080E4300 @ =0x03001038
	ldr r1, [r2, #0x00]
	adds r0, r3, #0x0
	bl _call_via_r1
	adds r3, r0, #0x0
	ldr r0, _080E4300 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x008]
	adds r2, r2, r1
	subs r0, r3, r4
	lsls r0, r0, #0x0C
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r3
	cmp r1, #0x00
	bge _080E41DA
	ldr r2, _080E4304 @ =0x0000FFFF
	adds r1, r1, r2
_080E41DA:
	asrs r6, r1, #0x10
	adds r0, r7, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _080E41E8
	ldr r1, _080E4304 @ =0x0000FFFF
	adds r0, r0, r1
_080E41E8:
	asrs r7, r0, #0x10
	mov r0, r8
	muls r0, r3
	cmp r0, #0x00
	bge _080E41F6
	ldr r2, _080E4304 @ =0x0000FFFF
	adds r0, r0, r2
_080E41F6:
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5, #0x1C]
	adds r0, r0, r6
	str r0, [r5, #0x1C]
	ldr r0, [r5, #0x20]
	adds r0, r0, r7
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	add r0, r8
	str r0, [r5, #0x24]
	mov r1, r9
	ldr r0, [r1, #0x04]
	subs r0, r0, r6
	str r0, [r1, #0x04]
	ldr r0, [r1, #0x08]
	subs r0, r0, r7
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x0C]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r1, #0x0C]
_080E4222:
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	ldr r1, [sp, #0x004]
	cmp r1, r0
	bge _080E42D2
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x28]
	subs r6, r1, r0
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x2C]
	subs r7, r1, r0
	ldr r1, [r5, #0x58]
	ldr r0, [r5, #0x30]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r1, r0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r3, r1, r0
	movs r0, #0x18
	ldsh r4, [r5, r0]
	adds r0, r4, #0x0
	muls r0, r4
	cmp r0, r3
	bge _080E42D2
	ldr r2, _080E4300 @ =0x03001038
	ldr r1, [r2, #0x00]
	adds r0, r3, #0x0
	bl _call_via_r1
	adds r3, r0, #0x0
	ldr r0, _080E4300 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x008]
	adds r2, r2, r1
	subs r0, r3, r4
	lsls r0, r0, #0x0C
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r3
	cmp r1, #0x00
	bge _080E428A
	ldr r2, _080E4304 @ =0x0000FFFF
	adds r1, r1, r2
_080E428A:
	asrs r6, r1, #0x10
	adds r0, r7, #0x0
	muls r0, r3
	cmp r0, #0x00
	bge _080E4298
	ldr r1, _080E4304 @ =0x0000FFFF
	adds r0, r0, r1
_080E4298:
	asrs r7, r0, #0x10
	mov r0, r8
	muls r0, r3
	cmp r0, #0x00
	bge _080E42A6
	ldr r2, _080E4304 @ =0x0000FFFF
	adds r0, r0, r2
_080E42A6:
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r5, #0x1C]
	adds r0, r0, r6
	str r0, [r5, #0x1C]
	ldr r0, [r5, #0x20]
	adds r0, r0, r7
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x24]
	add r0, r8
	str r0, [r5, #0x24]
	mov r1, r10
	ldr r0, [r1, #0x04]
	subs r0, r0, r6
	str r0, [r1, #0x04]
	ldr r0, [r1, #0x08]
	subs r0, r0, r7
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x0C]
	mov r2, r8
	subs r0, r0, r2
	str r0, [r1, #0x0C]
_080E42D2:
	movs r0, #0x28
	add r10, r0
	adds r5, #0x28
	add r9, r0
	ldr r1, [sp, #0x004]
	adds r1, #0x01
	str r1, [sp, #0x004]
	ldr r2, [sp, #0x000]
	cmp r1, r2
	bge _080E42E8
	b _080E4176
_080E42E8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E42F8: .4byte 0x0819832C
_080E42FC: .4byte 0x08198220
_080E4300: .4byte 0x03001038
_080E4304: .4byte 0x0000FFFF
