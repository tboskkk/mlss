	.syntax unified
	.text

	thumb_func_start sub_814DB8C
sub_814DB8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov r8, r6
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	mov r10, r1
	movs r1, #0x00
	mov r9, r1
	str r1, [sp, #0x000]
	movs r1, #0x09
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	cmp r6, #0x01
	beq _0814DC16
	cmp r6, #0x01
	bgt _0814DBF8
	cmp r6, #0x00
	beq _0814DC00
	b _0814DC5A
_0814DBF8:
	mov r1, r8
	cmp r1, #0x02
	beq _0814DC2C
	b _0814DC5A
_0814DC00:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x10]
	b _0814DC56
_0814DC16:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x18]
	b _0814DC56
_0814DC2C:
	ldr r0, [r4, #0x00]
	mov r1, r9
	str r1, [sp, #0x000]
	movs r1, #0x09
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x24]
_0814DC56:
	adds r1, #0x20
	strb r0, [r1, #0x00]
_0814DC5A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
