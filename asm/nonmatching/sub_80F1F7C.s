	.syntax unified
	.text

	thumb_func_start sub_80F1F7C
sub_80F1F7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	ldr r4, [sp, #0x030]
	ldr r5, [sp, #0x034]
	ldr r6, [sp, #0x038]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x008]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r10, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r9, r5
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x00C]
	movs r7, #0x00
	ldr r4, [r0, #0x00]
_080F1FB6:
	ldrb r6, [r4, #0x0F]
	cmp r6, #0x00
	bne _080F204C
	ldr r5, [r4, #0x00]
	ldrh r1, [r5, #0x16]
	ldrb r0, [r5, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080F2048 @ =0x00008004
	cmp r1, r2
	beq _080F1FDC
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_807FB78
_080F1FDC:
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r8
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	mov r0, sp
	ldrb r0, [r0, #0x04]
	strb r0, [r4, #0x0C]
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r4, #0x0E]
	mov r2, r10
	strh r2, [r4, #0x04]
	mov r0, r9
	strh r0, [r4, #0x06]
	strh r6, [r4, #0x08]
	strh r6, [r4, #0x0A]
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	strb r1, [r4, #0x0D]
	movs r0, #0x01
	strb r0, [r4, #0x0F]
	ldrb r1, [r5, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x31
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	adds r2, #0x24
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	adds r2, #0x09
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x1F]
	strh r6, [r5, #0x0E]
	adds r0, r5, #0x0
	bl sub_807BC90
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	b _080F2060
_080F2048: .4byte 0x00008004
_080F204C:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r4, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F1FB6
	movs r0, #0xFF
_080F2060:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
