	.syntax unified
	.text

	thumb_func_start sub_813AC5C
sub_813AC5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x02C]
	ldr r6, [sp, #0x030]
	ldr r2, [sp, #0x034]
	ldr r4, [sp, #0x038]
	ldr r5, [sp, #0x03C]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x01
	mov r10, r0
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
	beq _0813AD4A
	cmp r4, #0x02
	beq _0813ACB4
	cmp r4, #0x08
	bne _0813AD4A
_0813ACB4:
	cmp r4, #0x01
	beq _0813ACC0
	cmp r4, #0x04
	beq _0813ACC0
	movs r1, #0x00
	mov r10, r1
_0813ACC0:
	mov r3, r10
	cmp r3, #0x00
	beq _0813AD4A
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD08
	movs r1, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0813ACEC
	negs r2, r7
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AD58
_0813ACEC:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AD58
_0813AD08:
	movs r0, #0x08
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	movs r3, #0x01
	adds r0, r4, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0813AD2E
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r1, r2, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
	b _0813AD58
_0813AD2E:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AD58
_0813AD4A:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A818
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0813AD58:
	ldr r3, _0813AD84 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AD88
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AD8A
	.byte 0x00, 0x00
_0813AD84: .4byte 0x00000242
_0813AD88:
	movs r0, #0xFF
_0813AD8A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ADC0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ADC4
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
	b _0813ADC8
_0813ADC0: .4byte 0x00000242
_0813ADC4:
	movs r3, #0x01
	negs r3, r3
_0813ADC8:
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
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
