	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801FBAC
sub_801FBAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _0801FBD2
_0801FBCA:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_0801FBD2:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801FBCA
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _0801FBFA
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801FC22
_0801FBFA:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801FC22
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _0801FC22
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _0801FC22
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _0801FC26
_0801FC22:
	movs r0, #0x03
	b _0801FC42
_0801FC26:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _0801FC44
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _0801FE20 @ =0x01000100
	cmp r2, r0
	bne _0801FC44
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0801FC42:
	str r0, [sp, #0x010]
_0801FC44:
	ldr r4, [sp, #0x004]
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x014]
	movs r7, #0x00
	str r7, [sp, #0x018]
	ldr r0, [sp, #0x008]
	cmp r7, r0
	blt _0801FC56
	b _0801FF8E
_0801FC56:
	ldr r1, [sp, #0x014]
	ldrb r1, [r1, #0x03]
	str r1, [sp, #0x01C]
	lsrs r0, r1, #0x04
	lsls r0, r0, #0x01
	ldr r2, _0801FE24 @ =0x0839EE04
	adds r0, r0, r2
	ldrb r3, [r0, #0x00]
	ldrb r4, [r0, #0x01]
	ldr r7, [sp, #0x014]
	movs r6, #0x00
	ldsb r6, [r7, r6]
	movs r5, #0x01
	ldsb r5, [r7, r5]
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801FCAC
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801FC8C
	adds r0, #0xFF
_0801FC8C:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801FCA0
	adds r0, #0xFF
_0801FCA0:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801FCAA
	adds r0, #0xFF
_0801FCAA:
	asrs r3, r0, #0x08
_0801FCAC:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801FCBE
	negs r0, r6
	subs r6, r0, r3
_0801FCBE:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801FCFE
	lsls r4, r4, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801FCDE
	adds r0, #0xFF
_0801FCDE:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801FCF2
	adds r0, #0xFF
_0801FCF2:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801FCFC
	adds r0, #0xFF
_0801FCFC:
	asrs r4, r0, #0x08
_0801FCFE:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801FD0A
	negs r0, r5
	subs r5, r0, r4
_0801FD0A:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801FD70
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r6, r0
	add r5, r10
	mov r12, r5
	lsls r1, r1, #0x01
	ldr r2, _0801FE28 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r5, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r5
	ldr r0, _0801FE2C @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801FD52
	ldr r2, _0801FE30 @ =0x00003FFF
	adds r0, r0, r2
_0801FD52:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801FD6A
	ldr r7, _0801FE30 @ =0x00003FFF
	adds r0, r0, r7
_0801FD6A:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r5, r0, r1
_0801FD70:
	mov r2, r8
	ldr r1, [r2, #0x08]
	ldr r0, _0801FE20 @ =0x01000100
	cmp r1, r0
	beq _0801FDC8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FD88
	adds r0, #0xFF
_0801FD88:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FD94
	adds r0, #0xFF
_0801FD94:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FDB0
	adds r0, #0xFF
_0801FDB0:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801FDBC
	adds r0, #0xFF
_0801FDBC:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
_0801FDC8:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _0801FDE2
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsls r3, r3, #0x01
	lsls r4, r4, #0x01
_0801FDE2:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r5, r5, r0
	cmn r6, r3
	bge _0801FDF6
	b _0801FF6E
_0801FDF6:
	cmp r6, #0xEF
	ble _0801FDFC
	b _0801FF6E
_0801FDFC:
	cmn r5, r4
	bge _0801FE02
	b _0801FF6E
_0801FE02:
	cmp r5, #0x9F
	ble _0801FE08
	b _0801FF6E
_0801FE08:
	ldr r1, [sp, #0x01C]
	lsrs r0, r1, #0x01
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801FE34
	mov r2, r8
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r4, r0, #0x0A
	b _0801FE3C
_0801FE20: .4byte 0x01000100
_0801FE24: .4byte 0x0839EE04
_0801FE28: .4byte 0x08198584
_0801FE2C: .4byte 0x08198504
_0801FE30: .4byte 0x00003FFF
_0801FE34:
	mov r3, r8
	ldrb r0, [r3, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r4, r0, #0x14
_0801FE3C:
	lsls r1, r4, #0x14
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r2, [sp, #0x050]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r3, [sp, #0x018]
	orrs r1, r3
	ldr r7, [sp, #0x000]
	str r1, [r7, #0x08]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _0801FEB6
	ldr r1, [sp, #0x01C]
	lsrs r1, r1, #0x02
	str r1, [sp, #0x020]
	movs r0, #0x03
	ands r1, r0
	str r1, [sp, #0x020]
	mov r2, r8
	ldrb r0, [r2, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	ldr r3, [sp, #0x020]
	eors r3, r1
	str r3, [sp, #0x020]
	ldr r7, [sp, #0x048]
	adds r2, r7, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801FEB6
	add r0, sp, #0x04C
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x04C]
	adds r1, #0x01
	str r1, [sp, #0x04C]
	mov r3, r8
	ldrh r2, [r3, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801FF0C @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801FEB6:
	movs r0, #0x00
	ldr r7, [sp, #0x000]
	strh r0, [r7, #0x06]
	ldr r7, [sp, #0x000]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r0, #0xC0
	ldr r2, [sp, #0x01C]
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r5, r0
	orrs r1, r5
	adds r0, r7, #0x0
	strh r1, [r0, #0x00]
	cmp r3, #0x00
	beq _0801FF14
	movs r1, #0x30
	ands r1, r2
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x048]
	ldr r3, [sp, #0x020]
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r2, _0801FF10 @ =0x000001FF
	adds r0, r2, #0x0
	ands r6, r0
	orrs r1, r6
	ldr r3, [sp, #0x000]
	strh r1, [r3, #0x02]
	b _0801FF3A
	.byte 0x00, 0x00
_0801FF0C: .4byte 0xFFFFFC3F
_0801FF10: .4byte 0x000001FF
_0801FF14:
	movs r2, #0x3C
	ldr r0, [sp, #0x01C]
	ands r2, r0
	mov r3, r8
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x03
	orrs r0, r1
	eors r2, r0
	lsls r2, r2, #0x0A
	ldr r1, _0801FF50 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r2, r6
	ldr r3, [sp, #0x000]
	strh r2, [r3, #0x02]
_0801FF3A:
	ldr r0, [sp, #0x044]
	cmp r0, #0x00
	bne _0801FF54
	ldr r2, [sp, #0x014]
	ldrb r1, [r2, #0x02]
	movs r0, #0x01
	ldr r3, [sp, #0x01C]
	ands r3, r0
	lsls r0, r3, #0x08
	orrs r1, r0
	b _0801FF58
_0801FF50: .4byte 0x000001FF
_0801FF54:
	ldr r0, [sp, #0x044]
	ldrb r1, [r0, #0x00]
_0801FF58:
	ldr r2, [sp, #0x00C]
	orrs r4, r2
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	orrs r4, r0
	strh r4, [r7, #0x04]
	ldr r4, [sp, #0x000]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
_0801FF6E:
	ldr r7, [sp, #0x044]
	cmp r7, #0x00
	beq _0801FF7A
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x044]
_0801FF7A:
	ldr r1, [sp, #0x018]
	adds r1, #0x01
	str r1, [sp, #0x018]
	ldr r2, [sp, #0x014]
	adds r2, #0x04
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _0801FF8E
	b _0801FC56
_0801FF8E:
	ldr r4, [sp, #0x014]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_801FFA8
sub_801FFA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _0801FFCE
_0801FFC6:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_0801FFCE:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801FFC6
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _0801FFF6
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802001E
_0801FFF6:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0802001E
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _0802001E
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _0802001E
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _08020022
_0802001E:
	movs r0, #0x03
	b _0802003E
_08020022:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _08020040
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _08020304 @ =0x01000100
	cmp r2, r0
	bne _08020040
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0802003E:
	str r0, [sp, #0x010]
_08020040:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x014]
	ldr r7, [sp, #0x004]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x018]
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	blt _0802005C
	b _08020382
_0802005C:
	ldr r2, [sp, #0x018]
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x018]
	ldrb r3, [r3, #0x01]
	str r3, [sp, #0x024]
	ldr r4, [sp, #0x018]
	ldrb r4, [r4, #0x02]
	str r4, [sp, #0x028]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x03
	lsrs r1, r3, #0x06
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r7, _08020308 @ =0x0839EE04
	adds r0, r0, r7
	ldrb r5, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	adds r3, r2, #0x0
	movs r0, #0x3F
	ands r3, r0
	adds r0, r3, #0x0
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08020096
	movs r0, #0x40
	negs r0, r0
	orrs r3, r0
_08020096:
	ldr r4, [sp, #0x024]
	movs r2, #0x3F
	ands r4, r2
	adds r0, r4, #0x0
	movs r7, #0x20
	ands r0, r7
	cmp r0, #0x00
	beq _080200AC
	movs r0, #0x40
	negs r0, r0
	orrs r4, r0
_080200AC:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _080200E6
	lsls r5, r5, #0x08
	muls r3, r0
	muls r0, r5
	cmp r0, #0x00
	bge _080200C6
	adds r0, #0xFF
_080200C6:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080200DA
	adds r0, #0xFF
_080200DA:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080200E4
	adds r0, #0xFF
_080200E4:
	asrs r5, r0, #0x08
_080200E6:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080200F8
	negs r0, r3
	subs r3, r0, r5
_080200F8:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _08020138
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r6
	cmp r0, #0x00
	bge _08020118
	adds r0, #0xFF
_08020118:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0802012C
	adds r0, #0xFF
_0802012C:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08020136
	adds r0, #0xFF
_08020136:
	asrs r6, r0, #0x08
_08020138:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08020144
	negs r0, r4
	subs r4, r0, r6
_08020144:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _080201AA
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r3, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _0802030C @ =0x08198584
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r4, [r0, r3]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _08020310 @ =0x08198504
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0802018C
	ldr r2, _08020314 @ =0x00003FFF
	adds r0, r0, r2
_0802018C:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r3, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080201A4
	ldr r4, _08020314 @ =0x00003FFF
	adds r0, r0, r4
_080201A4:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r4, r0, r7
_080201AA:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _08020304 @ =0x01000100
	cmp r1, r0
	beq _08020204
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201C4
	adds r0, #0xFF
_080201C4:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201D0
	adds r0, #0xFF
_080201D0:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201EC
	adds r0, #0xFF
_080201EC:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201F8
	adds r0, #0xFF
_080201F8:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_08020204:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _0802021E
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r5, r5, #0x01
	lsls r6, r6, #0x01
_0802021E:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r3, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r3, r5
	bge _08020232
	b _08020364
_08020232:
	cmp r3, #0xEF
	ble _08020238
	b _08020364
_08020238:
	cmn r4, r6
	bge _0802023E
	b _08020364
_0802023E:
	cmp r4, #0x9F
	ble _08020244
	b _08020364
_08020244:
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x058]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x01C]
	orrs r1, r0
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	ldr r7, [sp, #0x028]
	lsrs r5, r7, #0x07
	mov r1, r8
	ldrb r0, [r1, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r5, r1
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	beq _080202B4
	ldr r7, [sp, #0x050]
	adds r2, r7, r5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080202B4
	add r0, sp, #0x054
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x054]
	adds r1, #0x01
	str r1, [sp, #0x054]
	mov r7, r8
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _08020318 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_080202B4:
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x06]
	ldr r6, [sp, #0x000]
	mov r2, r8
	ldrh r0, [r2, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r2, #0xC0
	ldr r7, [sp, #0x020]
	ands r7, r2
	lsls r0, r7, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x010]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	strh r1, [r6, #0x00]
	cmp r7, #0x00
	beq _08020320
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r1, r0, #0x08
	ldr r2, [sp, #0x050]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r4, _0802031C @ =0x000001FF
	adds r0, r4, #0x0
	ands r3, r0
	orrs r1, r3
	ldr r7, [sp, #0x000]
	strh r1, [r7, #0x02]
	b _08020336
_08020304: .4byte 0x01000100
_08020308: .4byte 0x0839EE04
_0802030C: .4byte 0x08198584
_08020310: .4byte 0x08198504
_08020314: .4byte 0x00003FFF
_08020318: .4byte 0xFFFFFC3F
_0802031C: .4byte 0x000001FF
_08020320:
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r0, r0, #0x08
	lsls r1, r5, #0x0C
	orrs r0, r1
	ldr r2, _08020344 @ =0x000001FF
	adds r1, r2, #0x0
	ands r3, r1
	orrs r0, r3
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x02]
_08020336:
	ldr r4, [sp, #0x04C]
	cmp r4, #0x00
	bne _08020348
	movs r2, #0x7F
	ldr r7, [sp, #0x028]
	ands r2, r7
	b _0802034C
_08020344: .4byte 0x000001FF
_08020348:
	ldr r0, [sp, #0x04C]
	ldrb r2, [r0, #0x00]
_0802034C:
	ldr r1, [sp, #0x00C]
	ldr r3, [sp, #0x014]
	orrs r1, r3
	mov r4, r8
	ldrh r0, [r4, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r6, #0x04]
	ldr r7, [sp, #0x000]
	ldr r7, [r7, #0x10]
	str r7, [sp, #0x000]
_08020364:
	ldr r0, [sp, #0x04C]
	cmp r0, #0x00
	beq _0802036E
	adds r0, #0x01
	str r0, [sp, #0x04C]
_0802036E:
	ldr r1, [sp, #0x01C]
	adds r1, #0x01
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x018]
	adds r2, #0x03
	str r2, [sp, #0x018]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _08020382
	b _0802005C
_08020382:
	ldr r4, [sp, #0x018]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_802039C
sub_802039C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _080203C2
_080203BA:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_080203C2:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080203BA
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _080203EA
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08020412
_080203EA:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _08020412
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _08020412
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _08020412
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _08020416
_08020412:
	movs r0, #0x03
	b _08020432
_08020416:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _08020434
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _080206F4 @ =0x01000100
	cmp r2, r0
	bne _08020434
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_08020432:
	str r0, [sp, #0x010]
_08020434:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x014]
	ldr r7, [sp, #0x004]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x018]
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	blt _08020450
	b _08020768
_08020450:
	ldr r2, [sp, #0x018]
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x018]
	ldrb r3, [r3, #0x01]
	str r3, [sp, #0x024]
	ldr r4, [sp, #0x018]
	ldrb r4, [r4, #0x02]
	str r4, [sp, #0x028]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x03
	lsrs r1, r3, #0x06
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r7, _080206F8 @ =0x0839EE04
	adds r0, r0, r7
	ldrb r5, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	adds r3, r2, #0x0
	movs r0, #0x3F
	ands r3, r0
	adds r0, r3, #0x0
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802048A
	movs r0, #0x40
	negs r0, r0
	orrs r3, r0
_0802048A:
	ldr r4, [sp, #0x024]
	movs r2, #0x3F
	ands r4, r2
	adds r0, r4, #0x0
	movs r7, #0x20
	ands r0, r7
	cmp r0, #0x00
	beq _080204A0
	movs r0, #0x40
	negs r0, r0
	orrs r4, r0
_080204A0:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _080204DA
	lsls r5, r5, #0x08
	muls r3, r0
	muls r0, r5
	cmp r0, #0x00
	bge _080204BA
	adds r0, #0xFF
_080204BA:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080204CE
	adds r0, #0xFF
_080204CE:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080204D8
	adds r0, #0xFF
_080204D8:
	asrs r5, r0, #0x08
_080204DA:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080204EC
	negs r0, r3
	subs r3, r0, r5
_080204EC:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0802052C
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r6
	cmp r0, #0x00
	bge _0802050C
	adds r0, #0xFF
_0802050C:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08020520
	adds r0, #0xFF
_08020520:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0802052A
	adds r0, #0xFF
_0802052A:
	asrs r6, r0, #0x08
_0802052C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08020538
	negs r0, r4
	subs r4, r0, r6
_08020538:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0802059E
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r3, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _080206FC @ =0x08198584
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r4, [r0, r3]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _08020700 @ =0x08198504
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _08020580
	ldr r2, _08020704 @ =0x00003FFF
	adds r0, r0, r2
_08020580:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r3, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08020598
	ldr r4, _08020704 @ =0x00003FFF
	adds r0, r0, r4
_08020598:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r4, r0, r7
_0802059E:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _080206F4 @ =0x01000100
	cmp r1, r0
	beq _080205F8
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205B8
	adds r0, #0xFF
_080205B8:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205C4
	adds r0, #0xFF
_080205C4:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205E0
	adds r0, #0xFF
_080205E0:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080205EC
	adds r0, #0xFF
_080205EC:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_080205F8:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _08020612
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r5, r5, #0x01
	lsls r6, r6, #0x01
_08020612:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r3, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r3, r5
	bge _08020626
	b _08020748
_08020626:
	cmp r3, #0xEF
	ble _0802062C
	b _08020748
_0802062C:
	cmn r4, r6
	bge _08020632
	b _08020748
_08020632:
	cmp r4, #0x9F
	ble _08020638
	b _08020748
_08020638:
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x058]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x01C]
	orrs r1, r0
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x11]
	lsls r1, r0, #0x19
	lsrs r5, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r5, r0
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	beq _080206A4
	ldr r1, [sp, #0x050]
	adds r2, r1, r5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080206A4
	add r7, sp, #0x054
	ldrb r7, [r7, #0x00]
	strb r7, [r2, #0x00]
	ldr r0, [sp, #0x054]
	adds r0, #0x01
	str r0, [sp, #0x054]
	mov r1, r8
	ldrh r2, [r1, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _08020708 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	mov r2, r8
	strh r0, [r2, #0x10]
_080206A4:
	movs r0, #0x00
	ldr r7, [sp, #0x000]
	strh r0, [r7, #0x06]
	ldr r6, [sp, #0x000]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r2, #0xC0
	ldr r7, [sp, #0x020]
	ands r7, r2
	lsls r0, r7, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x010]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	strh r1, [r6, #0x00]
	cmp r7, #0x00
	beq _08020710
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r1, r0, #0x08
	ldr r2, [sp, #0x050]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r4, _0802070C @ =0x000001FF
	adds r0, r4, #0x0
	ands r3, r0
	orrs r1, r3
	ldr r7, [sp, #0x000]
	strh r1, [r7, #0x02]
	b _08020726
_080206F4: .4byte 0x01000100
_080206F8: .4byte 0x0839EE04
_080206FC: .4byte 0x08198584
_08020700: .4byte 0x08198504
_08020704: .4byte 0x00003FFF
_08020708: .4byte 0xFFFFFC3F
_0802070C: .4byte 0x000001FF
_08020710:
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r0, r0, #0x08
	lsls r1, r5, #0x0C
	orrs r0, r1
	ldr r2, _08020780 @ =0x000001FF
	adds r1, r2, #0x0
	ands r3, r1
	orrs r0, r3
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x02]
_08020726:
	ldr r2, [sp, #0x028]
	ldr r4, [sp, #0x04C]
	cmp r4, #0x00
	beq _08020730
	ldrb r2, [r4, #0x00]
_08020730:
	ldr r1, [sp, #0x00C]
	ldr r7, [sp, #0x014]
	orrs r1, r7
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r6, #0x04]
	ldr r4, [sp, #0x000]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
_08020748:
	ldr r7, [sp, #0x04C]
	cmp r7, #0x00
	beq _08020754
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x04C]
_08020754:
	ldr r1, [sp, #0x01C]
	adds r1, #0x01
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x018]
	adds r2, #0x03
	str r2, [sp, #0x018]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _08020768
	b _08020450
_08020768:
	ldr r4, [sp, #0x018]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08020780: .4byte 0x000001FF
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x0B, 0x1C, 0x07, 0xE0, 0xD0, 0x88, 0x00, 0x28, 0x04, 0xD1, 0x10, 0x68
	.byte 0x91, 0x88, 0x18, 0x60, 0x99, 0x80, 0x08, 0x33, 0x12, 0x69, 0x00, 0x2A, 0xF4, 0xD1, 0x18, 0x1C
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x0D, 0x1C, 0x03, 0x69, 0xDA, 0x68, 0x00, 0x21, 0x90, 0x68
	.byte 0x9C, 0x68, 0xA0, 0x42, 0x0C, 0xD9, 0xD0, 0x68, 0x19, 0x69, 0x03, 0x61, 0xCA, 0x60, 0xD8, 0x60
	.byte 0xD3, 0x60, 0x11, 0x61, 0x1A, 0x61, 0x11, 0x1C, 0xDA, 0x68, 0x90, 0x68, 0xA0, 0x42, 0xF2, 0xD8
	.byte 0x00, 0x29, 0x01, 0xD0, 0x0B, 0x69, 0x00, 0xE0, 0x1B, 0x69, 0xAB, 0x42, 0xE5, 0xD1, 0x30, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x10, 0xB5, 0x02, 0x1C, 0x01, 0x39, 0x00, 0x20, 0x90, 0x60, 0x14, 0x32
	.byte 0x00, 0x29, 0x1E, 0xD0, 0x01, 0x24, 0x4B, 0x42, 0x03, 0x20, 0x03, 0x40, 0x00, 0x2B, 0x0E, 0xD0
	.byte 0x03, 0x2B, 0x07, 0xDA, 0x02, 0x2B, 0x02, 0xDA, 0xD4, 0x80, 0x01, 0x39, 0x14, 0x32, 0xD4, 0x80
	.byte 0x01, 0x39, 0x14, 0x32, 0xD4, 0x80, 0x01, 0x39, 0x14, 0x32, 0x00, 0x29, 0x09, 0xD0, 0xD4, 0x80
	.byte 0x54, 0x83, 0xD4, 0x85, 0x10, 0x1C, 0x3C, 0x30, 0xC4, 0x80, 0x04, 0x39, 0x50, 0x32, 0x00, 0x29
	.byte 0xF5, 0xD1, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_802083C
sub_802083C:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	adds r3, r1, #0x0
	movs r4, #0x00
	cmp r3, #0x00
	beq _080208D0
	movs r6, #0x01
	movs r5, #0x01
	negs r5, r5
	negs r1, r3
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0802089A
	cmp r1, #0x03
	bge _08020884
	cmp r1, #0x02
	bge _08020872
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020872:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
_08020884:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	adds r4, r2, #0x0
	subs r3, #0x01
	adds r2, r0, #0x0
	cmp r3, #0x00
	beq _080208D0
_0802089A:
	strh r6, [r2, #0x06]
	str r5, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x14
	str r0, [r2, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r2, [r0, #0x0C]
	adds r1, r2, #0x0
	adds r1, #0x28
	str r1, [r0, #0x10]
	strh r6, [r1, #0x06]
	str r5, [r1, #0x08]
	str r0, [r1, #0x0C]
	adds r0, #0x28
	str r0, [r1, #0x10]
	strh r6, [r0, #0x06]
	str r5, [r0, #0x08]
	str r1, [r0, #0x0C]
	adds r1, #0x28
	str r1, [r0, #0x10]
	adds r4, r0, #0x0
	subs r3, #0x04
	adds r2, r1, #0x0
	cmp r3, #0x00
	bne _0802089A
_080208D0:
	adds r1, r2, #0x0
	subs r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
