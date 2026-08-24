	.syntax unified
	.text

	thumb_func_start sub_807EF54
sub_807EF54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	ldr r6, _0807EFC0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0807EF6E
	b _0807F39C
_0807EF6E:
	ldr r1, _0807EFC4 @ =0x0820009C
	mov r0, sp
	movs r2, #0x08
	bl memcpy
	add r5, sp, #0x008
	ldr r1, _0807EFC8 @ =0x082000A4
	adds r0, r5, #0x0
	movs r2, #0x08
	bl memcpy
	add r4, sp, #0x010
	ldr r1, _0807EFCC @ =0x082000AC
	adds r0, r4, #0x0
	movs r2, #0x08
	bl memcpy
	movs r7, #0x00
	ldr r2, [r6, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	mov r9, r5
	mov r8, r4
	cmp r1, r0
	bne _0807F014
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0807EFE8
	cmp r0, #0x01
	bgt _0807EFD0
	cmp r0, #0x00
	beq _0807EFDA
	b _0807F076
	.byte 0x00, 0x00
_0807EFC0: .4byte 0x03000FD8
_0807EFC4: .4byte dword_820009C @ =0x0820009C
_0807EFC8: .4byte dword_82000A4 @ =0x082000A4
_0807EFCC: .4byte dword_82000AC @ =0x082000AC
_0807EFD0:
	cmp r0, #0x03
	beq _0807EFF4
	cmp r0, #0x06
	beq _0807F004
	b _0807F076
_0807EFDA:
	mov r1, sp
	ldr r6, _0807EFE4 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x00]
	b _0807F06C
_0807EFE4: .4byte 0x00001CD8
_0807EFE8:
	mov r0, sp
	ldrb r0, [r0, #0x01]
	ldr r1, _0807EFF0 @ =0x00001CD8
	b _0807F06C
_0807EFF0: .4byte 0x00001CD8
_0807EFF4:
	mov r0, sp
	ldrb r0, [r0, #0x02]
	ldr r2, _0807F000 @ =0x00001CD8
	adds r0, r0, r2
	b _0807F06E
	.byte 0x00, 0x00
_0807F000: .4byte 0x00001CD8
_0807F004:
	mov r0, sp
	ldrb r0, [r0, #0x03]
	ldr r3, _0807F010 @ =0x00001CD8
	adds r0, r0, r3
	b _0807F06E
	.byte 0x00, 0x00
_0807F010: .4byte 0x00001CD8
_0807F014:
	ldr r5, _0807F028 @ =0x0000034D
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	beq _0807F044
	cmp r0, #0x03
	bgt _0807F02C
	cmp r0, #0x00
	beq _0807F036
	b _0807F076
_0807F028: .4byte 0x0000034D
_0807F02C:
	cmp r0, #0x04
	beq _0807F054
	cmp r0, #0x06
	beq _0807F064
	b _0807F076
_0807F036:
	mov r1, sp
	ldr r6, _0807F040 @ =0x00001CD8
	adds r0, r6, #0x0
	ldrb r1, [r1, #0x04]
	b _0807F06C
_0807F040: .4byte 0x00001CD8
_0807F044:
	mov r1, sp
	ldr r2, _0807F050 @ =0x00001CD8
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x05]
	b _0807F06C
	.byte 0x00, 0x00
_0807F050: .4byte 0x00001CD8
_0807F054:
	mov r1, sp
	ldr r3, _0807F060 @ =0x00001CD8
	adds r0, r3, #0x0
	ldrb r1, [r1, #0x06]
	b _0807F06C
	.byte 0x00, 0x00
_0807F060: .4byte 0x00001CD8
_0807F064:
	mov r1, sp
	ldr r5, _0807F0BC @ =0x00001CD8
	adds r0, r5, #0x0
	ldrb r1, [r1, #0x07]
_0807F06C:
	adds r0, r0, r1
_0807F06E:
	bl sub_80E9B8C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0807F076:
	ldr r0, _0807F0C0 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _0807F0C4 @ =0x0000022F
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0807F090
	b _0807F39C
_0807F090:
	ldr r0, _0807F0C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807F0A6
	b _0807F228
_0807F0A6:
	movs r5, #0xD3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	cmp r1, #0x01
	beq _0807F134
	cmp r1, #0x01
	bgt _0807F0CC
	cmp r1, #0x00
	beq _0807F0D8
	b _0807F39C
_0807F0BC: .4byte 0x00001CD8
_0807F0C0: .4byte 0x03000FC0
_0807F0C4: .4byte 0x0000022F
_0807F0C8: .4byte 0x03000FD8
_0807F0CC:
	cmp r1, #0x03
	beq _0807F190
	cmp r1, #0x06
	bne _0807F0D6
	b _0807F1DC
_0807F0D6:
	b _0807F39C
_0807F0D8:
	mov r6, r8
	ldrb r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0807F0E2
	b _0807F39C
_0807F0E2:
	ldr r0, _0807F12C @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x01
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F0F8
	b _0807F39C
_0807F0F8:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F10E
	b _0807F39C
_0807F10E:
	mov r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, r7
	ble _0807F118
	b _0807F39C
_0807F118:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F130 @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	b _0807F39E
	.byte 0x00, 0x00
_0807F12C: .4byte 0x03000FF4
_0807F130: .4byte 0xFFFC0FFF
_0807F134:
	mov r3, r8
	ldrb r0, [r3, #0x01]
	cmp r0, #0x00
	bne _0807F13E
	b _0807F39C
_0807F13E:
	ldr r0, _0807F188 @ =0x03000FF4
	ldr r4, [r0, #0x00]
	ldr r6, [r4, #0x08]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r5, #0x02
	adds r0, r3, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0807F154
	b _0807F39C
_0807F154:
	ldrb r0, [r4, #0x0B]
	lsrs r0, r0, #0x06
	ldrb r1, [r4, #0x0C]
	movs r2, #0x0F
	ands r1, r2
	lsls r1, r1, #0x02
	orrs r1, r0
	ands r1, r5
	cmp r1, #0x00
	beq _0807F16A
	b _0807F39C
_0807F16A:
	mov r1, r9
	ldrb r0, [r1, #0x01]
	cmp r0, r7
	ble _0807F174
	b _0807F39C
_0807F174:
	orrs r3, r5
	lsls r0, r3, #0x0C
	ldr r1, _0807F18C @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	str r1, [r4, #0x08]
	mov r2, r8
	ldrb r0, [r2, #0x01]
	b _0807F39E
	.byte 0x00, 0x00
_0807F188: .4byte 0x03000FF4
_0807F18C: .4byte 0xFFFC0FFF
_0807F190:
	mov r3, r8
	ldrb r0, [r3, #0x02]
	cmp r0, #0x00
	bne _0807F19A
	b _0807F39C
_0807F19A:
	ldr r0, _0807F1D8 @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r5, [r3, #0x0A]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1AE
	b _0807F39C
_0807F1AE:
	ldrh r0, [r3, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _0807F1BC
	b _0807F39C
_0807F1BC:
	mov r6, r9
	ldrb r0, [r6, #0x02]
	cmp r0, r7
	ble _0807F1C6
	b _0807F39C
_0807F1C6:
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x0A]
	mov r1, r8
	ldrb r0, [r1, #0x02]
	b _0807F39E
	.byte 0x00, 0x00
_0807F1D8: .4byte 0x03000FF4
_0807F1DC:
	mov r2, r8
	ldrb r0, [r2, #0x03]
	cmp r0, #0x00
	bne _0807F1E6
	b _0807F39C
_0807F1E6:
	ldr r0, _0807F224 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	ldrb r4, [r2, #0x0B]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0807F1FC
	b _0807F39C
_0807F1FC:
	ldrb r0, [r2, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	beq _0807F208
	b _0807F39C
_0807F208:
	mov r5, r9
	ldrb r0, [r5, #0x03]
	cmp r0, r7
	ble _0807F212
	b _0807F39C
_0807F212:
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r2, #0x0B]
	mov r6, r8
	ldrb r0, [r6, #0x03]
	b _0807F39E
_0807F224: .4byte 0x03000FF4
_0807F228:
	ldr r1, _0807F23C @ =0x0000034D
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	beq _0807F2B0
	cmp r1, #0x03
	bgt _0807F240
	cmp r1, #0x00
	beq _0807F24C
	b _0807F39C
_0807F23C: .4byte 0x0000034D
_0807F240:
	cmp r1, #0x04
	beq _0807F300
	cmp r1, #0x06
	bne _0807F24A
	b _0807F350
_0807F24A:
	b _0807F39C
_0807F24C:
	mov r2, r8
	ldrb r0, [r2, #0x04]
	cmp r0, #0x00
	bne _0807F256
	b _0807F39C
_0807F256:
	ldr r0, _0807F2A8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r6, [r0, #0x44]
	lsls r0, r6, #0x0E
	lsrs r3, r0, #0x1A
	movs r4, #0x01
	adds r0, r3, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0807F26E
	b _0807F39C
_0807F26E:
	mov r0, r12
	adds r0, #0x47
	ldrb r2, [r0, #0x00]
	lsrs r2, r2, #0x06
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	orrs r0, r2
	ands r0, r4
	cmp r0, #0x00
	beq _0807F28A
	b _0807F39C
_0807F28A:
	mov r5, r9
	ldrb r0, [r5, #0x04]
	cmp r0, r7
	ble _0807F294
	b _0807F39C
_0807F294:
	orrs r3, r4
	lsls r0, r3, #0x0C
	ldr r1, _0807F2AC @ =0xFFFC0FFF
	ands r1, r6
	orrs r1, r0
	mov r6, r12
	str r1, [r6, #0x44]
	mov r1, r8
	ldrb r0, [r1, #0x04]
	b _0807F39E
_0807F2A8: .4byte 0x03000FF4
_0807F2AC: .4byte 0xFFFC0FFF
_0807F2B0:
	mov r2, r8
	ldrb r0, [r2, #0x05]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F2FC @ =0x03000FF4
	ldr r3, [r0, #0x00]
	movs r5, #0x46
	adds r5, r5, r3
	mov r12, r5
	ldrb r5, [r5, #0x00]
	lsrs r2, r5, #0x02
	movs r4, #0x01
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r3, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	bne _0807F39C
	mov r6, r9
	ldrb r0, [r6, #0x05]
	cmp r0, r7
	bgt _0807F39C
	orrs r2, r4
	lsls r0, r2, #0x02
	ands r1, r5
	orrs r1, r0
	mov r0, r12
	strb r1, [r0, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x05]
	b _0807F39E
	.byte 0x00, 0x00
_0807F2FC: .4byte 0x03000FF4
_0807F300:
	mov r2, r8
	ldrb r0, [r2, #0x06]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F34C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	movs r3, #0x46
	adds r3, r3, r2
	mov r12, r3
	ldrb r4, [r3, #0x00]
	lsrs r1, r4, #0x02
	movs r3, #0x02
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x48
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x06]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	lsls r0, r1, #0x02
	movs r1, #0x03
	ands r1, r4
	orrs r1, r0
	mov r6, r12
	strb r1, [r6, #0x00]
	mov r1, r8
	ldrb r0, [r1, #0x06]
	b _0807F39E
_0807F34C: .4byte 0x03000FF4
_0807F350:
	mov r2, r8
	ldrb r0, [r2, #0x07]
	cmp r0, #0x00
	beq _0807F39C
	ldr r0, _0807F398 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r6, r2, #0x0
	adds r6, #0x47
	ldrb r4, [r6, #0x00]
	lsls r0, r4, #0x1A
	lsrs r1, r0, #0x1A
	movs r3, #0x01
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	adds r0, r2, #0x0
	adds r0, #0x49
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	cmp r0, #0x00
	bne _0807F39C
	mov r5, r9
	ldrb r0, [r5, #0x07]
	cmp r0, r7
	bgt _0807F39C
	orrs r1, r3
	movs r0, #0x40
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r6, #0x00]
	mov r6, r8
	ldrb r0, [r6, #0x07]
	b _0807F39E
_0807F398: .4byte 0x03000FF4
_0807F39C:
	movs r0, #0x00
_0807F39E:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
