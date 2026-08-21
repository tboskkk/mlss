	.syntax unified
	.text

	thumb_func_start sub_813AA5C
sub_813AA5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x028]
	ldr r6, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	ldr r4, [sp, #0x034]
	ldr r5, [sp, #0x038]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	mov r0, r8
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813AEAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xFF
	bne _0813AAA8
	b _0813ABB8
_0813AAA8:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x10
	movs r0, #0x0A
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB30
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AAFC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0813AAE6
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AADE
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB0A
_0813AADE:
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB22
_0813AAE6:
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AAF4
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB46
_0813AAF4:
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB5E
_0813AAFC:
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB1A
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB0A:
	mov r0, r8
	adds r1, r7, #0x0
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AB6A
_0813AB1A:
	negs r1, r7
	mov r4, sp
	movs r0, #0x01
	strb r0, [r4, #0x00]
_0813AB22:
	mov r0, r8
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AB6A
_0813AB30:
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB6A
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB56
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB46:
	mov r0, r8
	movs r1, #0x00
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AB6A
_0813AB56:
	negs r2, r7
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB5E:
	mov r0, r8
	movs r1, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
_0813AB6A:
	ldr r3, _0813AB94 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AB98
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AB9A
_0813AB94: .4byte 0x00000242
_0813AB98:
	movs r0, #0xFF
_0813AB9A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ABB4 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _0813AC0E
	b _0813AC30
_0813ABB4: .4byte 0x00000242
_0813ABB8:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _0813ABF0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ABF4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813ABF6
_0813ABF0: .4byte 0x00000242
_0813ABF4:
	movs r0, #0xFF
_0813ABF6:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813AC2C @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AC30
_0813AC0E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813AC34
_0813AC2C: .4byte 0x00000242
_0813AC30:
	movs r3, #0x01
	negs r3, r3
_0813AC34:
	mov r2, r8
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
