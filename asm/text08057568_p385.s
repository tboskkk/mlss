	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805DF4C
sub_805DF4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805DF7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DF84 @ =0x0805DA79
	str r0, [r4, #0x4C]
_0805DF7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF84: .4byte sub_805DA78
	thumb_func_start sub_805DF88
sub_805DF88:
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
	thumb_func_start sub_805E550
sub_805E550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x88
	ldr r2, [r7, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r3, #0xAC
	adds r3, r3, r6
	mov r10, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	str r0, [sp, #0x004]
	movs r3, #0x9C
	adds r3, r3, r6
	mov r9, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	ldr r3, [r5, #0x00]
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5B2
	adds r1, #0xFF
_0805E5B2:
	asrs r2, r1, #0x08
	ldr r1, _0805E64C @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E5CC
	adds r0, #0x3F
_0805E5CC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5E2
	adds r1, #0xFF
_0805E5E2:
	asrs r2, r1, #0x08
	ldr r1, _0805E650 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E5F8
	adds r0, #0x3F
_0805E5F8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, #0x37
	bgt _0805E610
	adds r0, #0x01
	str r0, [r1, #0x00]
_0805E610:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	adds r0, #0x02
	ands r0, r5
	strh r0, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	bgt _0805E63C
	ldr r0, [r7, #0x00]
	cmp r0, r1
	bgt _0805E63C
	str r1, [r3, #0x00]
	str r1, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0805E654 @ =0x0805E659
	str r0, [r6, #0x4C]
_0805E63C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E64C: .4byte 0x08198584
_0805E650: .4byte 0x08198504
_0805E654: .4byte sub_805E658
	thumb_func_start sub_805E658
sub_805E658:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r6
	mov r9, r3
	ldr r2, [r3, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r7, [r5, #0x00]
	mov r12, r7
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r10, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [sp, #0x004]
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	mov r1, r10
	ldrh r0, [r1, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	mov r3, r10
	strh r0, [r3, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x37
	bgt _0805E6C8
	adds r0, #0x01
	str r0, [r7, #0x00]
_0805E6C8:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0805E71C
	ldr r0, _0805E72C @ =0x0805E731
	str r0, [r6, #0x4C]
	mov r7, r8
	ldr r0, [r7, #0x00]
	negs r0, r0
	cmp r0, #0x00
	bge _0805E6E6
	adds r0, #0xFF
_0805E6E6:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	mov r0, r9
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0805E6FA
	adds r0, #0xFF
_0805E6FA:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r6, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
_0805E71C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E72C: .4byte sub_805E730
	thumb_func_start sub_805E730
sub_805E730:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	subs r0, #0x01
	strh r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _0805E7A2
	ldr r0, _0805E7B0 @ =0x0805E7B9
	str r0, [r7, #0x4C]
	ldr r0, _0805E7B4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E7A2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E7B0: .4byte sub_805E7B8
_0805E7B4: .4byte 0x0000010F
	thumb_func_start sub_805E7B8
sub_805E7B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0x84
	ldr r1, [r7, #0x00]
	movs r0, #0x88
	adds r0, r0, r6
	mov r8, r0
	ldr r2, [r0, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r10, r3
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r9, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E81A
	adds r0, #0xFF
_0805E81A:
	asrs r4, r0, #0x08
	ldr r1, _0805E8AC @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E834
	adds r0, #0x3F
_0805E834:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E848
	adds r0, #0xFF
_0805E848:
	asrs r2, r0, #0x08
	ldr r1, _0805E8B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E85E
	adds r0, #0x3F
_0805E85E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r3, r9
	ldrh r0, [r3, #0x00]
	adds r0, #0x04
	ands r0, r5
	strh r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0805E89C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
_0805E89C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E8AC: .4byte 0x08198584
_0805E8B0: .4byte 0x08198504
	thumb_func_start sub_805E8B4
sub_805E8B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805E97C @ =0xFFFFFE80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r3, r7, #0x0
	adds r3, #0xB0
	str r3, [sp, #0x010]
	movs r0, #0x00
	ldsh r4, [r3, r0]
	lsls r4, r4, #0x08
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805E96A
	adds r0, r1, #0x0
	subs r0, #0x30
	str r0, [r2, #0x00]
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x00]
	ldr r0, _0805E980 @ =0x0805E985
	str r0, [r7, #0x4C]
_0805E96A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805E97C: .4byte 0xFFFFFE80
_0805E980: .4byte sub_805E984
	thumb_func_start sub_805E984
sub_805E984:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805E9FA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EA08 @ =0x0805EA0D
	str r0, [r7, #0x4C]
_0805E9FA:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EA08: .4byte sub_805EA0C
	thumb_func_start sub_805EA0C
sub_805EA0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EA98
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EA86
	adds r0, #0xFF
_0805EA86:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _0805EAA8 @ =0x0805EAB1
	str r0, [r7, #0x4C]
	ldr r0, _0805EAAC @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EA98:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EAA8: .4byte sub_805EAB0
_0805EAAC: .4byte 0x0000010F
	thumb_func_start sub_805EAB0
sub_805EAB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	subs r2, r2, r1
	str r2, [r6, #0x00]
	adds r0, #0x06
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, _0805EB74 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bge _0805EB64
	ldr r0, _0805EB78 @ =0x0805EB7D
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x30
	strh r0, [r1, #0x00]
_0805EB64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EB74: .4byte 0xFFFFD000
_0805EB78: .4byte sub_805EB7C
	thumb_func_start sub_805EB7C
sub_805EB7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EBF2
	ldr r0, _0805EC00 @ =0x0805EC05
	str r0, [r7, #0x4C]
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0805EBF2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EC00: .4byte sub_805EC04
	thumb_func_start sub_805EC04
sub_805EC04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r12, r3
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, [r5, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EC8C
	ldr r0, _0805EC9C @ =0x0805ECA1
	str r0, [r7, #0x4C]
	mov r3, r9
	strh r3, [r1, #0x00]
	subs r1, #0x0A
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r0, #0x71
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EC8C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EC9C: .4byte sub_805ECA0
	thumb_func_start sub_805ECA0
sub_805ECA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	movs r0, #0x84
	adds r0, r0, r7
	mov r10, r0
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xAE
	str r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r4, [r0, r5]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r5, r8
	str r4, [r5, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r2, #0xB2
	adds r2, r2, r7
	mov r9, r2
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	mov r3, r10
	ldr r1, [r3, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	mov r8, r0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r5, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	subs r0, #0x18
	lsls r0, r0, #0x08
	mov r2, r10
	ldr r1, [r2, #0x00]
	cmp r1, r0
	ble _0805EDA4
	ldr r1, _0805ED80 @ =0x03000E15
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0805ED84 @ =0xFFFFFEE0
	adds r0, r0, r3
	str r0, [r6, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	ble _0805ED88
	subs r0, r1, #0x1
	strh r0, [r4, #0x00]
	b _0805EDA4
	.byte 0x00, 0x00
_0805ED80: .4byte 0x03000E15
_0805ED84: .4byte 0xFFFFFEE0
_0805ED88:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDA4:
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, r1
	ble _0805EDD4
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDD4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805EDE4
sub_805EDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805EEB4 @ =0xFFFFFD80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	adds r7, r5, #0x0
	adds r7, #0x88
	muls r0, r2
	bl __divsi3
	subs r2, r4, r0
	str r2, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x8C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	movs r3, #0x22
	mov r9, r3
	str r3, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EE5C
	adds r0, #0xFF
_0805EE5C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	ldr r2, [r7, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805EEA2
	str r1, [r6, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0805EEB8 @ =0x0805EEBD
	str r0, [r5, #0x4C]
_0805EEA2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EEB4: .4byte 0xFFFFFD80
_0805EEB8: .4byte sub_805EEBC
	thumb_func_start sub_805EEBC
sub_805EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r10, r7
	ldr r2, [r7, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EEFC
	adds r0, #0xFF
_0805EEFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r7, r10
	ldr r2, [r7, #0x00]
	ldr r3, [r6, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EF3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EF4C @ =0x0805EF51
	str r0, [r4, #0x4C]
_0805EF3C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF4C: .4byte sub_805EF50
	thumb_func_start sub_805EF50
sub_805EF50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	movs r7, #0x8C
	adds r7, r7, r5
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r7, #0x00
	ldsh r0, [r4, r7]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EF90
	adds r0, #0xFF
_0805EF90:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805F016
	ldr r1, [r6, #0x00]
	ldr r0, _0805EFDC @ =0x00005FFF
	cmp r1, r0
	bgt _0805EFE0
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0805EFE6
	.byte 0x00, 0x00
_0805EFDC: .4byte 0x00005FFF
_0805EFE0:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, _0805F028 @ =0xFFFFE000
_0805EFE6:
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl __divsi3
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r0, _0805F02C @ =0x0805F035
	str r0, [r5, #0x4C]
	ldr r0, _0805F030 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805F016:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F028: .4byte 0xFFFFE000
_0805F02C: .4byte sub_805F034
_0805F030: .4byte 0x0000010F
	thumb_func_start sub_805F034
sub_805F034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r6, r4, #0x0
	adds r6, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	subs r1, r0, r1
	str r1, [r6, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	ldr r2, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F082
	adds r0, #0xFF
_0805F082:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _0805F0C8 @ =0x000007FF
	cmp r1, r0
	bgt _0805F0B6
	ldr r0, _0805F0CC @ =0x0805F0D1
	str r0, [r4, #0x4C]
_0805F0B6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F0C8: .4byte 0x000007FF
_0805F0CC: .4byte sub_805F0D0
	thumb_func_start sub_805F0D0
sub_805F0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _0805F11C
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r7, _0805F118 @ =0xFFFFFF00
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	bgt _0805F14C
	b _0805F148
	.byte 0x00, 0x00
_0805F118: .4byte 0xFFFFFF00
_0805F11C:
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	ldr r1, _0805F1C8 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	blt _0805F14C
_0805F148:
	ldr r0, _0805F1CC @ =0x0805F1D1
	str r0, [r4, #0x4C]
_0805F14C:
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r7, [r6, #0x00]
	mov r12, r7
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805F17A
	adds r0, #0xFF
_0805F17A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r2, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r0, #0x51
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805F1C8: .4byte 0xFFFFFF00
_0805F1CC: .4byte sub_805F1D0
	thumb_func_start sub_805F1D0
sub_805F1D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r7, r4, #0x0
	adds r7, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r7, #0x00]
	adds r1, r0, r1
	str r1, [r7, #0x00]
	movs r2, #0x88
	adds r2, r2, r4
	mov r9, r2
	ldr r2, [r2, #0x00]
	movs r3, #0x8C
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F220
	adds r0, #0xFF
_0805F220:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r8, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, _0805F278 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	adds r5, r2, #0x0
	cmp r1, r0
	ble _0805F29C
	ldr r0, _0805F27C @ =0x03000E15
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	ble _0805F280
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	b _0805F29C
_0805F278: .4byte 0xFFFFD000
_0805F27C: .4byte 0x03000E15
_0805F280:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F29C:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _0805F2C4
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F2C4:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805F2D4
sub_805F2D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	mov r10, r2
	str r3, [sp, #0x010]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F328
	ldr r6, _0805F48C @ =0x03000E14
	ldr r4, _0805F490 @ =0x03000E15
	ldrb r0, [r6, #0x00]
	ldrb r1, [r4, #0x00]
	cmp r0, r1
	beq _0805F328
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r0, [r4, #0x00]
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _0805F328
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0805F328:
	ldr r2, _0805F494 @ =0x08198584
	mov r9, r2
	movs r1, #0xFF
	ldr r0, [sp, #0x03C]
	ands r0, r1
	lsls r7, r0, #0x01
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F340
	adds r0, #0x3F
_0805F340:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r6
	adds r4, r1, #0x0
	ldr r0, [sp, #0x040]
	ands r4, r0
	lsls r3, r4, #0x01
	mov r1, r9
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _0805F35E
	adds r0, #0x3F
_0805F35E:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F368
	adds r0, #0xFF
_0805F368:
	asrs r2, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r2
	ldr r1, _0805F498 @ =0x08198504
	adds r0, r3, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F37C
	adds r0, #0x3F
_0805F37C:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r3, [sp, #0x00C]
	adds r2, r0, r3
	str r2, [r5, #0x10]
	mov r0, r10
	adds r3, r6, r0
	str r3, [r5, #0x14]
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F398
	adds r0, #0x3F
_0805F398:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r6, [sp, #0x010]
	adds r1, r0, r6
	str r1, [r5, #0x18]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F3AC
	adds r0, #0xFF
_0805F3AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F3B8
	adds r0, #0xFF
_0805F3B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805F3C4
	adds r0, #0xFF
_0805F3C4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x10]
	mov r2, r10
	str r2, [r0, #0x14]
	movs r1, #0x00
	str r1, [r0, #0x18]
	adds r5, #0x0C
	mov r8, r1
	cmp r5, #0x00
	beq _0805F47A
	str r4, [sp, #0x014]
_0805F3EC:
	mov r3, r8
	lsls r0, r3, #0x08
	movs r1, #0x0B
	bl __divsi3
	ldr r6, [sp, #0x03C]
	adds r0, r6, r0
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	mov r12, r0
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0805F40E
	adds r0, #0x3F
_0805F40E:
	asrs r0, r0, #0x06
	ldr r3, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r3
	ldr r6, [sp, #0x014]
	lsls r4, r6, #0x01
	mov r1, r9
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F428
	adds r0, #0x3F
_0805F428:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F432
	adds r0, #0xFF
_0805F432:
	asrs r3, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r3
	ldr r7, _0805F498 @ =0x08198504
	adds r0, r4, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F446
	adds r0, #0x3F
_0805F446:
	asrs r0, r0, #0x06
	muls r0, r3
	ldr r2, [sp, #0x00C]
	adds r1, r0, r2
	mov r3, r10
	adds r2, r6, r3
	mov r6, r12
	adds r0, r6, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F460
	adds r0, #0x3F
_0805F460:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	str r1, [r5, #0x04]
	str r2, [r5, #0x08]
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	movs r6, #0x01
	add r8, r6
	cmp r5, #0x00
	bne _0805F3EC
_0805F47A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F48C: .4byte 0x03000E14
_0805F490: .4byte 0x03000E15
_0805F494: .4byte 0x08198584
_0805F498: .4byte 0x08198504
	thumb_func_start sub_805F49C
sub_805F49C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x08
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r2, r0, #0x08
	str r2, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	str r3, [r4, #0x18]
	cmp r1, #0x00
	bge _0805F4C8
	adds r1, #0xFF
_0805F4C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F4D4
	adds r0, #0xFF
_0805F4D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F4E0
	adds r0, #0xFF
_0805F4E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805F500
	adds r0, r4, #0x0
	bl sub_807C298
_0805F500:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
