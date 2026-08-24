	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DFA4
	b _0805E528
_0805DFA4:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DFB8
	adds r1, #0xFF
_0805DFB8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DFC2
	adds r2, #0xFF
_0805DFC2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DFCC
	adds r3, #0xFF
_0805DFCC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805E0A4 @ =0x000012E2
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805DFE0
	adds r0, #0xFF
_0805DFE0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DFEE
	adds r0, #0xFF
_0805DFEE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DFFA
	adds r0, #0xFF
_0805DFFA:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E0A8 @ =0x0000412E
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805E0AC @ =0x03000E14
	movs r2, #0x01
	strb r4, [r0, #0x00]
	ldr r1, _0805E0B0 @ =0x03000E15
	movs r0, #0x00
	strb r0, [r1, #0x00]
	str r5, [r6, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _0805E0B4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r2, r6, #0x0
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x010]
	str r2, [sp, #0x00C]
	cmp r0, #0x01
	beq _0805E138
	cmp r0, #0x01
	bgt _0805E0B8
	cmp r0, #0x00
	beq _0805E0C0
	b _0805E264
_0805E0A4: .4byte 0x000012E2
_0805E0A8: .4byte 0x0000412E
_0805E0AC: .4byte 0x03000E14
_0805E0B0: .4byte 0x03000E15
_0805E0B4: .4byte sub_8087540
_0805E0B8:
	cmp r0, #0x02
	bne _0805E0BE
	b _0805E1D0
_0805E0BE:
	b _0805E264
_0805E0C0:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x38]
	ldr r3, _0805E130 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x88
	ldr r0, [r6, #0x3C]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r6, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	subs r0, #0x10
	str r7, [r0, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E104
	adds r0, #0xFF
_0805E104:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E112
	adds r0, #0xFF
_0805E112:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r5, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	ldr r0, _0805E134 @ =0x0805E551
	b _0805E262
_0805E130: .4byte 0xFFFFF000
_0805E134: .4byte sub_805E550
_0805E138:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E140
	adds r0, #0xFF
_0805E140:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E152
	adds r0, #0xFF
_0805E152:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E164
	adds r0, #0xFF
_0805E164:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E1CC @ =0x0805E8B5
	b _0805E262
	.byte 0x00, 0x00
_0805E1CC: .4byte sub_805E8B4
_0805E1D0:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E1D8
	adds r0, #0xFF
_0805E1D8:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E1EA
	adds r0, #0xFF
_0805E1EA:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E1FC
	adds r0, #0xFF
_0805E1FC:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xB0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E538 @ =0x0805EDE5
_0805E262:
	str r0, [r5, #0x4C]
_0805E264:
	adds r4, r5, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r7, #0x07
_0805E2A0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r7, #0x04
	cmp r7, #0x00
	bge _0805E2A0
	movs r1, #0x00
	mov r8, r1
	str r1, [r0, #0x00]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E2EE
	adds r0, #0xFF
_0805E2EE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0805E2FC
	adds r3, #0xFF
_0805E2FC:
	asrs r3, r3, #0x08
	adds r3, #0x02
	mov r4, r8
	str r4, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E53C @ =0x0000700C
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r3, r10
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	mov r9, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	mov r1, r8
	str r1, [r4, #0x4C]
	ldr r1, [r4, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E350
	adds r0, #0xFF
_0805E350:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E35E
	adds r0, #0xFF
_0805E35E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E36A
	adds r0, #0xFF
_0805E36A:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r4, r5, #0x0
	adds r4, #0x77
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r4, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r3, #0x21
	negs r3, r3
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldr r4, _0805E544 @ =0x08087541
	str r4, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x28
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E3F4
	adds r0, #0xFF
_0805E3F4:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E406
	adds r0, #0xFF
_0805E406:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E418
	adds r0, #0xFF
_0805E418:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r3, _0805E548 @ =0x0805F49D
	mov r8, r3
	str r3, [r5, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E43A
	adds r0, #0xFF
_0805E43A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E448
	adds r0, #0xFF
_0805E448:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E454
	adds r0, #0xFF
_0805E454:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, [sp, #0x010]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, _0805E544 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r2, [sp, #0x00C]
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E4E0
	adds r0, #0xFF
_0805E4E0:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E4F2
	adds r0, #0xFF
_0805E4F2:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E504
	adds r0, #0xFF
_0805E504:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	mov r3, r8
	str r3, [r4, #0x4C]
	ldr r0, _0805E54C @ =0x0805F555
	str r0, [r6, #0x4C]
	movs r0, #0x88
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E528:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E538: .4byte sub_805EDE4
_0805E53C: .4byte 0x0000700C
_0805E540: .4byte 0x0000412F
_0805E544: .4byte sub_8087540
_0805E548: .4byte sub_805F49C
_0805E54C: .4byte sub_805F554
