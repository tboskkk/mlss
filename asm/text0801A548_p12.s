	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_802191C
sub_802191C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _08021A0C @ =0x0203FFB8
	adds r6, r3, #0x0
	adds r6, #0x0C
	movs r2, #0x00
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	lsls r1, r0, #0x10
	ldr r4, _08021A10 @ =0x0000FFFF
	cmp r0, r4
	beq _080219FC
	lsrs r1, r1, #0x1A
	mov r12, r1
	movs r1, #0x0F
	mov r10, r1
	mov r2, r10
	mov r1, r12
	ands r2, r1
	mov r12, r2
	ldr r1, _08021A14 @ =0x000003FF
	adds r7, r1, #0x0
	ands r7, r0
	movs r5, #0x00
	ldrb r3, [r3, #0x04]
	cmp r3, #0x0F
	bgt _080219FA
	mov r8, r4
	mov r9, r1
	lsls r0, r3, #0x01
	adds r4, r0, r6
	movs r0, #0x10
	subs r0, r0, r3
	movs r6, #0x01
	ands r0, r6
	cmp r3, #0x10
	bge _08021972
	cmp r0, #0x00
	beq _080219A0
_08021972:
	ldrh r2, [r4, #0x00]
	lsls r0, r2, #0x10
	cmp r2, r8
	beq _08021998
	lsrs r0, r0, #0x1A
	mov r1, r10
	ands r0, r1
	mov r1, r9
	ands r1, r2
	cmp r12, r0
	bne _08021998
	cmp r7, r1
	bne _08021998
	mov r2, r8
	strh r2, [r4, #0x00]
	adds r0, r6, #0x0
	lsls r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021998:
	adds r4, #0x02
	adds r3, #0x01
	cmp r3, #0x0F
	bgt _080219FA
_080219A0:
	ldrh r2, [r4, #0x00]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219C8
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219C8
	cmp r7, r0
	bne _080219C8
	mov r0, r8
	strh r0, [r4, #0x00]
	movs r0, #0x01
	lsls r0, r3
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219C8:
	adds r6, r3, #0x1
	ldrh r2, [r4, #0x02]
	lsls r1, r2, #0x10
	cmp r2, r8
	beq _080219F2
	lsrs r1, r1, #0x1A
	movs r0, #0x0F
	ands r1, r0
	mov r0, r9
	ands r0, r2
	cmp r12, r1
	bne _080219F2
	cmp r7, r0
	bne _080219F2
	mov r1, r8
	strh r1, [r4, #0x02]
	movs r0, #0x01
	lsls r0, r6
	orrs r5, r0
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
_080219F2:
	adds r4, #0x04
	adds r3, #0x02
	cmp r3, #0x0F
	ble _080219A0
_080219FA:
	adds r2, r5, #0x0
_080219FC:
	adds r0, r2, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08021A0C: .4byte 0x0203FFB8
_08021A10: .4byte 0x0000FFFF
_08021A14: .4byte 0x000003FF
	thumb_func_start sub_8021A18
sub_8021A18:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08021A60 @ =0x0203FFB8
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _08021ABE
	cmp r5, #0x02
	bne _08021A68
	ldr r2, _08021A64 @ =0x00F0FFFF
	movs r5, #0x20
_08021A2E:
	cmp r3, r4
	beq _08021A56
	ldrb r1, [r3, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08021A56
	ldr r1, [r3, #0x1C]
	ands r1, r2
	ldr r0, [r4, #0x1C]
	ands r0, r2
	cmp r1, r0
	beq _08021AB4
_08021A56:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A2E
	b _08021ABE
	.byte 0x00, 0x00
_08021A60: .4byte 0x0203FFB8
_08021A64: .4byte 0x00F0FFFF
_08021A68:
	movs r6, #0x0F
_08021A6A:
	cmp r3, r4
	beq _08021AB8
	ldrb r0, [r3, #0x1E]
	ldrb r2, [r4, #0x1E]
	adds r1, r6, #0x0
	ands r1, r0
	adds r0, r6, #0x0
	ands r0, r2
	cmp r1, r0
	bne _08021AB8
	cmp r5, #0x00
	bne _08021A8A
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	beq _08021AB4
_08021A8A:
	cmp r5, #0x01
	bne _08021A96
	ldrh r0, [r3, #0x1A]
	ldrh r1, [r4, #0x1A]
	cmp r0, r1
	beq _08021AB4
_08021A96:
	cmp r5, #0x03
	bne _08021AA2
	ldrh r0, [r3, #0x2E]
	ldrh r1, [r4, #0x2E]
	cmp r0, r1
	beq _08021AB4
_08021AA2:
	cmp r5, #0x04
	bne _08021AB8
	ldrh r0, [r3, #0x18]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	bne _08021AB8
	ldr r0, [r3, #0x44]
	cmp r0, #0x00
	bne _08021AB8
_08021AB4:
	adds r0, r3, #0x0
	b _08021AC0
_08021AB8:
	ldr r3, [r3, #0x68]
	cmp r3, #0x00
	bne _08021A6A
_08021ABE:
	movs r0, #0x00
_08021AC0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8021AC8
sub_8021AC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	mov r8, r1
	adds r7, r2, #0x0
	mov r9, r3
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	bne _08021B64
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x18]
	ldr r1, _08021B38 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021AEE:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x02
	bne _08021B00
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021B00
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B3C
_08021B00:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021AEE
	movs r1, #0x00
_08021B08:
	cmp r1, #0x00
	bne _08021B44
	ldr r1, [sp, #0x01C]
	adds r1, #0x10
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x02
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	str r0, [r4, #0x48]
	mov r1, r8
	str r1, [r4, #0x50]
	adds r0, #0x10
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80208E0
	ldrb r0, [r4, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
	.byte 0x00, 0x00
_08021B38: .4byte 0x0203FFB8
_08021B3C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r1, r1, r0
	b _08021B08
_08021B44:
	str r1, [r4, #0x48]
	ldr r0, [r1, #0x04]
	str r0, [r4, #0x50]
	adds r0, r1, #0x0
	adds r0, #0x10
	str r0, [r4, #0x4C]
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021B6E
_08021B5C:
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r2, r1, r0
	b _08021BAA
_08021B64:
	mov r2, r8
	str r2, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r4, #0x48]
	str r0, [r4, #0x50]
_08021B6E:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _08021BDE
	ldrb r1, [r7, #0x02]
	ldrb r0, [r7, #0x03]
	lsls r0, r0, #0x08
	orrs r1, r0
	cmp r1, #0x00
	bne _08021BD8
	ldrb r0, [r4, #0x1E]
	lsls r1, r0, #0x1C
	lsrs r5, r1, #0x1C
	ldrh r2, [r4, #0x1A]
	ldr r1, _08021BC8 @ =0x0203FFB8
	ldr r1, [r1, #0x2C]
	adds r3, r0, #0x0
	adds r6, r2, #0x0
_08021B90:
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x03
	bne _08021BA2
	ldrb r0, [r1, #0x0D]
	cmp r0, r5
	bne _08021BA2
	ldrh r0, [r1, #0x0E]
	cmp r0, r2
	beq _08021B5C
_08021BA2:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021B90
	movs r2, #0x00
_08021BAA:
	cmp r2, #0x00
	bne _08021BCC
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1C
	movs r0, #0x03
	ldr r1, [sp, #0x020]
	adds r3, r6, #0x0
	bl sprite_heap_alloc
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BC8: .4byte 0x0203FFB8
_08021BCC:
	ldrb r1, [r4, #0x13]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x13]
	b _08021BDA
_08021BD8:
	subs r2, r7, r1
_08021BDA:
	str r2, [r4, #0x44]
	b _08021C0C
_08021BDE:
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _08021C0C
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021C04
	ldr r1, _08021C00 @ =0x0203FFC0
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x2E]
	ldr r2, [sp, #0x01C]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	b _08021C08
	.byte 0x00, 0x00
_08021C00: .4byte 0x0203FFC0
_08021C04:
	ldrh r0, [r0, #0x2E]
	strh r0, [r4, #0x2E]
_08021C08:
	movs r0, #0x00
	str r0, [r4, #0x44]
_08021C0C:
	str r7, [r4, #0x38]
	mov r0, r9
	str r0, [r4, #0x54]
	movs r0, #0x00
	str r0, [r4, #0x58]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8021C24
sub_8021C24:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	beq _08021C56
	ldrb r1, [r4, #0x13]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08021C56
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C4E
	ldr r0, [r4, #0x48]
	bl sprite_heap_free
	b _08021C56
_08021C4E:
	ldrb r0, [r2, #0x13]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x13]
_08021C56:
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	beq _08021C92
	ldr r0, _08021C84 @ =0x07FFFFFF
	cmp r1, r0
	bhi _08021CB4
	ldrb r1, [r4, #0x13]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8021A18
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08021C88
	ldr r0, [r4, #0x44]
	bl sprite_heap_free
	b _08021CB4
	.byte 0x00, 0x00
_08021C84: .4byte 0x07FFFFFF
_08021C88:
	ldrb r0, [r2, #0x13]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x13]
	b _08021CB4
_08021C92:
	ldr r5, _08021CBC @ =0x0203FFB8
	ldrh r0, [r4, #0x2E]
	ldrh r1, [r4, #0x30]
	adds r0, r0, r1
	ldrh r1, [r5, #0x08]
	cmp r0, r1
	bne _08021CB4
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8021A18
	cmp r0, #0x00
	bne _08021CB4
	ldrh r0, [r5, #0x08]
	ldrh r1, [r4, #0x30]
	subs r0, r0, r1
	strh r0, [r5, #0x08]
_08021CB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08021CBC: .4byte 0x0203FFB8
	thumb_func_start sprite_heap_alloc
sprite_heap_alloc:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldr r0, _08021D0C @ =0x0203FFB8
	ldr r1, [r0, #0x2C]
	adds r4, #0x0F
	movs r0, #0x10
	negs r0, r0
	ands r4, r0
	adds r4, #0x10
_08021CDC:
	ldr r2, [r1, #0x08]
	ldrb r3, [r1, #0x0C]
	cmp r3, #0x00
	bne _08021D38
	cmp r2, r4
	blt _08021D38
	adds r0, r4, #0x0
	adds r0, #0x10
	cmp r2, r0
	bcc _08021D10
	subs r2, r1, r4
	str r1, [r2, #0x00]
	ldr r0, [r1, #0x04]
	str r0, [r2, #0x04]
	cmp r0, #0x00
	beq _08021CFE
	str r2, [r0, #0x00]
_08021CFE:
	ldr r0, [r1, #0x08]
	subs r0, r0, r4
	str r0, [r2, #0x08]
	strb r3, [r2, #0x0C]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	b _08021D12
_08021D0C: .4byte 0x0203FFB8
_08021D10:
	str r2, [r1, #0x08]
_08021D12:
	movs r4, #0x00
	strb r5, [r1, #0x0C]
	strb r6, [r1, #0x0D]
	movs r2, #0x00
	strh r7, [r1, #0x0E]
	ldr r0, [r1, #0x08]
	subs r0, #0x10
	subs r0, r1, r0
	cmp r5, #0x02
	beq _08021D30
	cmp r5, #0x02
	ble _08021D40
	cmp r5, #0x03
	beq _08021D34
	b _08021D40
_08021D30:
	str r4, [r0, #0x00]
	b _08021D40
_08021D34:
	strb r2, [r0, #0x00]
	b _08021D40
_08021D38:
	ldr r1, [r1, #0x04]
	cmp r1, #0x00
	bne _08021CDC
	movs r0, #0x00
_08021D40:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
