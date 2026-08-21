	.syntax unified
	.text

	thumb_func_start sub_810E03C
sub_810E03C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	adds r7, r1, #0x0
	mov r8, r2
	mov r10, r3
	ldr r0, [r7, #0x28]
	cmp r0, #0x00
	bne _0810E074
	ldr r0, _0810E06C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _0810E070 @ =0x000002C1
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	b _0810E34C
	.byte 0x00, 0x00
_0810E06C: .4byte 0x03000FD8
_0810E070: .4byte 0x000002C1
_0810E074:
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810E0B4
	ldr r0, _0810E0AC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _0810E0B0 @ =0x000002C1
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x02C]
	str r3, [sp, #0x000]
	ldr r4, [sp, #0x030]
	str r4, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	mov r0, r9
	adds r1, r7, #0x0
	mov r2, r8
	mov r3, r10
	bl sub_810E360
	b _0810E34C
	.byte 0x00, 0x00
_0810E0AC: .4byte 0x03000FD8
_0810E0B0: .4byte 0x000002C1
_0810E0B4:
	ldr r2, _0810E120 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _0810E124 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r4, r2, #0x0
	cmp r3, #0x00
	beq _0810E0CE
	b _0810E1FE
_0810E0CE:
	mov r2, r9
	ldr r0, [r2, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0810E0EE
	mov r2, r8
	muls r2, r0
	cmp r2, #0x00
	bge _0810E0E8
	adds r2, #0xFF
_0810E0E8:
	asrs r2, r2, #0x08
	mov r8, r2
	strh r3, [r1, #0x00]
_0810E0EE:
	mov r3, r9
	ldr r0, [r3, #0x28]
	ldr r1, _0810E128 @ =0x0000012B
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	beq _0810E0FE
	b _0810E1FE
_0810E0FE:
	mov r2, r8
	cmp r2, #0x00
	ble _0810E186
	ldr r0, _0810E12C @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	beq _0810E130
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0810E132
_0810E120: .4byte 0x03000FD8
_0810E124: .4byte 0x000002C1
_0810E128: .4byte 0x0000012B
_0810E12C: .4byte 0x03000FF4
_0810E130:
	movs r1, #0x00
_0810E132:
	adds r2, r1, #0x0
	ldr r3, [r3, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E14A
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_0810E14A:
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E158
	lsls r0, r0, #0x06
	adds r2, r2, r0
_0810E158:
	adds r1, r3, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E176
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0810E16E
	adds r0, #0xFF
_0810E16E:
	asrs r0, r0, #0x08
	mov r3, r8
	adds r2, r3, r0
	b _0810E1FC
_0810E176:
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0810E17E
	adds r0, #0xFF
_0810E17E:
	asrs r0, r0, #0x08
	mov r1, r8
	adds r2, r1, r0
	b _0810E1FC
_0810E186:
	ldr r0, _0810E1A4 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	beq _0810E1A8
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0810E1AA
	.byte 0x00, 0x00
_0810E1A4: .4byte 0x03000FF4
_0810E1A8:
	movs r1, #0x00
_0810E1AA:
	adds r2, r1, #0x0
	ldr r3, [r3, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E1C2
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_0810E1C2:
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E1D0
	lsls r0, r0, #0x06
	adds r2, r2, r0
_0810E1D0:
	adds r1, r3, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0810E1EE
	movs r1, #0x4C
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0810E1E6
	adds r0, #0xFF
_0810E1E6:
	asrs r0, r0, #0x08
	mov r3, r8
	subs r2, r3, r0
	b _0810E1FC
_0810E1EE:
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0810E1F6
	adds r0, #0xFF
_0810E1F6:
	asrs r0, r0, #0x08
	mov r1, r8
	subs r2, r1, r0
_0810E1FC:
	mov r8, r2
_0810E1FE:
	ldr r1, [r4, #0x00]
	ldr r2, _0810E250 @ =0x000002C1
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810E220
	mov r3, r8
	lsls r3, r3, #0x01
	mov r8, r3
_0810E220:
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x77
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _0810E2C4
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xF6
	movs r4, #0x00
	ldsh r0, [r1, r4]
	cmp r0, r8
	bgt _0810E254
	strh r2, [r1, #0x00]
	b _0810E25C
_0810E250: .4byte 0x000002C1
_0810E254:
	ldrh r0, [r1, #0x00]
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r1, #0x00]
_0810E25C:
	mov r3, r8
	cmp r3, #0x00
	bge _0810E28E
	ldr r0, [r7, #0x28]
	adds r2, r0, #0x0
	adds r2, #0xF6
	adds r0, #0xF8
	movs r4, #0x00
	ldsh r1, [r2, r4]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0810E27A
	strh r3, [r2, #0x00]
_0810E27A:
	mov r0, r8
	negs r0, r0
	mov r8, r0
	mov r5, r9
	adds r5, #0xC8
	mov r4, r9
	adds r4, #0xCC
	mov r6, r9
	adds r6, #0xCA
	b _0810E2B2
_0810E28E:
	mov r0, r9
	adds r0, #0xC8
	ldrh r1, [r0, #0x00]
	adds r5, r0, #0x0
	mov r4, r9
	adds r4, #0xCC
	mov r6, r9
	adds r6, #0xCA
	cmp r1, #0x00
	beq _0810E2B2
	ldr r0, [r7, #0x28]
	ldrh r1, [r5, #0x00]
	ldrb r2, [r4, #0x00]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	ldrh r3, [r6, #0x00]
	bl sub_8107D58
_0810E2B2:
	movs r2, #0x00
	strh r2, [r5, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	strh r2, [r6, #0x00]
	ldr r4, _0810E2E0 @ =0x03000FD8
_0810E2C4:
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x7C]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810E2E4
	movs r0, #0x20
	bl sub_80F75D8
	ldr r0, [r7, #0x28]
	bl sub_80F77AC
	b _0810E2F2
_0810E2E0: .4byte 0x03000FD8
_0810E2E4:
	movs r0, #0x80
	lsls r0, r0, #0x04
	bl sub_80F75D8
	ldr r0, [r7, #0x28]
	bl sub_80F7770
_0810E2F2:
	adds r0, r7, #0x0
	adds r0, #0xB4
	mov r2, r9
	str r2, [r0, #0x00]
	ldr r0, [r2, #0x6C]
	cmp r0, #0x00
	beq _0810E318
	ldr r3, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	ldr r0, _0810E35C @ =0x00000193
	cmp r1, r0
	beq _0810E312
	mov r4, r10
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r0, #0x00]
_0810E312:
	adds r0, r7, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
_0810E318:
	adds r0, r7, #0x0
	adds r0, #0xBA
	mov r1, r8
	strh r1, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xC2
	ldr r0, [sp, #0x034]
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xBC
	mov r2, sp
	ldrh r2, [r2, #0x2C]
	strh r2, [r0, #0x00]
	ldr r0, [r7, #0x14]
	cmp r0, #0x00
	bge _0810E33A
	adds r0, #0xFF
_0810E33A:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xBE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xC0
	mov r3, sp
	ldrh r3, [r3, #0x30]
	strh r3, [r0, #0x00]
_0810E34C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810E35C: .4byte 0x00000193
