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
