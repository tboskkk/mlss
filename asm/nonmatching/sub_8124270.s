	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #0x008]
	mov r2, sp
	ldr r3, _08124344 @ =0x04000200
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	mov r5, sp
	adds r5, #0x02
	ldr r4, _08124348 @ =0x04000004
	ldrh r0, [r4, #0x00]
	strh r0, [r5, #0x00]
	ldr r0, _0812434C @ =0x04000208
	movs r2, #0x00
	strh r2, [r0, #0x00]
	strh r2, [r3, #0x00]
	adds r3, #0x02
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	strh r2, [r4, #0x00]
	adds r4, #0xB6
	ldrh r3, [r4, #0x00]
	ldr r2, _08124350 @ =0x00003FFF
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x0C
	ldrh r3, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x0C
	ldrh r3, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	ldr r3, _08124354 @ =0x040000DE
	ldrh r0, [r3, #0x00]
	ands r2, r0
	strh r2, [r3, #0x00]
	adds r4, #0x30
	ldrh r3, [r4, #0x00]
	ldr r2, _08124358 @ =0x0000FFBF
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x04
	ldrh r3, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x04
	ldrh r3, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x04
	ldrh r3, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	strh r0, [r4, #0x00]
	adds r4, #0x24
	ldrh r3, [r4, #0x00]
	ldr r0, _0812435C @ =0x0000BFFF
	ands r0, r3
	strh r0, [r4, #0x00]
	ldr r3, _08124360 @ =0x04000140
	ldrh r0, [r3, #0x00]
	ands r2, r0
	strh r2, [r3, #0x00]
	ldr r0, _08124364 @ =0x03000FFC
	ldr r3, [sp, #0x004]
	lsls r2, r3, #0x03
	ldr r0, [r0, #0x00]
	adds r4, r0, r2
	movs r0, #0x00
	mov r10, r0
	lsrs r1, r1, #0x13
	cmp r1, #0x00
	beq _08124408
	str r1, [sp, #0x00C]
	adds r3, #0x01
	mov r8, r3
	ldr r1, [sp, #0x004]
	lsls r7, r1, #0x10
	movs r0, #0x01
	ldr r2, [sp, #0x00C]
	ands r0, r2
	cmp r2, #0x00
	ble _0812433C
	cmp r0, #0x00
	beq _0812439C
_0812433C:
	movs r6, #0x00
	adds r5, r7, #0x0
	b _0812436A
	.byte 0x00, 0x00
_08124344: .4byte 0x04000200
_08124348: .4byte 0x04000004
_0812434C: .4byte 0x04000208
_08124350: .4byte 0x00003FFF
_08124354: .4byte 0x040000DE
_08124358: .4byte 0x0000FFBF
_0812435C: .4byte 0x0000BFFF
_08124360: .4byte 0x04000140
_08124364: .4byte 0x03000FFC
_08124368:
	adds r6, #0x01
_0812436A:
	cmp r6, #0x04
	bgt _0812437C
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA85C
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08124368
_0812437C:
	cmp r6, #0x05
	beq _0812440C
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r8, r0
	beq _08124408
	movs r3, #0x01
	add r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r7, r7, r0
	add r10, r3
	ldr r1, [sp, #0x00C]
	cmp r10, r1
	bge _08124408
_0812439C:
	movs r6, #0x00
	adds r5, r7, #0x0
	b _081243A4
_081243A2:
	adds r6, #0x01
_081243A4:
	cmp r6, #0x04
	bgt _081243B6
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA85C
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081243A2
_081243B6:
	cmp r6, #0x05
	beq _0812440C
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r8, r0
	beq _08124408
	movs r2, #0x01
	add r2, r8
	mov r9, r2
	movs r6, #0x00
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r5, r7, r3
	b _081243D6
_081243D4:
	adds r6, #0x01
_081243D6:
	cmp r6, #0x04
	bgt _081243E8
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA85C
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081243D4
_081243E8:
	cmp r6, #0x05
	beq _0812440C
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r9, r0
	beq _08124408
	movs r0, #0x02
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x0A
	adds r7, r7, r1
	add r10, r0
	ldr r2, [sp, #0x00C]
	cmp r10, r2
	blt _0812439C
_08124408:
	cmp r6, #0x05
	bne _081244E4
_0812440C:
	ldr r0, _08124440 @ =0x03000FFC
	ldr r3, [sp, #0x004]
	lsls r1, r3, #0x03
	ldr r0, [r0, #0x00]
	adds r4, r0, r1
	movs r0, #0x00
	mov r10, r0
	ldr r1, [sp, #0x008]
	lsrs r0, r1, #0x03
	cmp r10, r0
	bge _081244E4
	str r0, [sp, #0x010]
	adds r3, #0x01
	mov r8, r3
	ldr r2, [sp, #0x004]
	lsls r7, r2, #0x10
	movs r0, #0x01
	ldr r3, [sp, #0x010]
	ands r0, r3
	cmp r3, #0x00
	ble _0812443A
	cmp r0, #0x00
	beq _08124478
_0812443A:
	movs r6, #0x00
	adds r5, r7, #0x0
	b _08124446
_08124440: .4byte 0x03000FFC
_08124444:
	adds r6, #0x01
_08124446:
	cmp r6, #0x04
	bgt _08124458
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08124444
_08124458:
	cmp r6, #0x05
	beq _081244E4
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r8, r0
	beq _081244E4
	movs r0, #0x01
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r7, r7, r1
	add r10, r0
	ldr r2, [sp, #0x010]
	cmp r10, r2
	bge _081244E4
_08124478:
	movs r6, #0x00
	adds r5, r7, #0x0
	b _08124480
_0812447E:
	adds r6, #0x01
_08124480:
	cmp r6, #0x04
	bgt _08124492
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0812447E
_08124492:
	cmp r6, #0x05
	beq _081244E4
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r8, r0
	beq _081244E4
	movs r3, #0x01
	add r3, r8
	mov r9, r3
	movs r6, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r5, r7, r0
	b _081244B2
_081244B0:
	adds r6, #0x01
_081244B2:
	cmp r6, #0x04
	bgt _081244C4
	lsrs r0, r5, #0x10
	adds r1, r4, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081244B0
_081244C4:
	cmp r6, #0x05
	beq _081244E4
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r9, r0
	beq _081244E4
	movs r1, #0x02
	add r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x0A
	adds r7, r7, r2
	add r10, r1
	ldr r3, [sp, #0x010]
	cmp r10, r3
	blt _08124478
_081244E4:
	ldr r1, _08124510 @ =0x04000004
	mov r2, sp
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x00]
	ldr r2, _08124514 @ =0x04000208
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r1, _08124518 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r2, #0x00]
	cmp r6, #0x05
	bne _08124520
	ldr r3, _0812451C @ =0x0000FFFF
	str r3, [sp, #0x004]
	b _0812453A
_08124510: .4byte 0x04000004
_08124514: .4byte 0x04000208
_08124518: .4byte 0x04000200
_0812451C: .4byte 0x0000FFFF
_08124520:
	ldr r1, [sp, #0x008]
	lsrs r0, r1, #0x03
	ldr r2, [sp, #0x004]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r3, [sp, #0x004]
	cmp r3, r0
	bls _0812453A
	str r0, [sp, #0x004]
_0812453A:
	ldr r0, [sp, #0x004]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
