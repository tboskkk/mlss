	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r12, r0
	ldr r0, [r0, #0x48]
	cmp r0, #0x00
	beq _0801E6A8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0801E6A8
	b _0801E7CE
_0801E6A8:
	mov r1, r12
	ldr r0, [r1, #0x44]
	cmp r0, #0x00
	beq _0801E6B8
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0801E6B8
	b _0801E7CE
_0801E6B8:
	mov r2, r12
	ldrb r1, [r2, #0x12]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _0801E6C6
	b _0801E7CE
_0801E6C6:
	lsls r0, r1, #0x1C
	lsrs r7, r0, #0x1F
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r2, #0x3C]
	mov r10, r0
	mov r0, r12
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x2C
	ldsh r6, [r2, r1]
	movs r0, #0x2A
	ldsh r5, [r2, r0]
	adds r2, #0x23
	ldrb r4, [r2, #0x00]
	mov r1, r12
	adds r1, #0x22
	ldrb r0, [r1, #0x00]
	mov r8, r0
	mov r0, r12
	adds r0, #0x20
	movs r3, #0x00
	ldsb r3, [r0, r3]
	str r2, [sp, #0x008]
	str r1, [sp, #0x004]
	str r0, [sp, #0x000]
	cmp r3, #0x00
	bge _0801E706
	negs r3, r3
_0801E706:
	adds r6, r6, r3
	subs r5, r5, r3
	cmp r5, #0x00
	bgt _0801E75A
	movs r0, #0x01
	eors r7, r0
	lsls r2, r7, #0x03
	movs r3, #0x09
	negs r3, r3
_0801E718:
	ldr r1, [sp, #0x000]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	ble _0801E72C
	adds r4, #0x01
	cmp r4, r9
	blt _0801E746
	movs r4, #0x00
	b _0801E736
_0801E72C:
	subs r4, #0x01
	cmp r4, #0x00
	bge _0801E746
	mov r4, r9
	subs r4, #0x01
_0801E736:
	movs r6, #0x00
	mov r0, r12
	ldrb r1, [r0, #0x12]
	adds r0, r3, #0x0
	ands r0, r1
	orrs r0, r2
	mov r1, r12
	strb r0, [r1, #0x12]
_0801E746:
	lsls r0, r4, #0x01
	adds r0, #0x01
	add r0, r10
	ldrb r1, [r0, #0x00]
	mov r8, r1
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x04
	adds r5, r5, r0
	cmp r5, #0x00
	ble _0801E718
_0801E75A:
	movs r2, #0x01
	mov r0, r12
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0801E79A
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0801E78C
	movs r0, #0x10
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x12]
	mov r4, r9
	subs r4, #0x01
	lsls r0, r4, #0x01
	adds r0, #0x01
	add r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r5, #0x01
	movs r6, #0x00
	b _0801E79A
_0801E78C:
	cmp r0, #0x04
	bne _0801E79A
	movs r0, #0x20
	orrs r0, r1
	mov r2, r12
	strb r0, [r2, #0x12]
	movs r2, #0x00
_0801E79A:
	cmp r2, #0x00
	beq _0801E7CE
	mov r0, r12
	ldr r1, [r0, #0x38]
	ldrb r2, [r1, #0x00]
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x08
	orrs r2, r0
	subs r1, r1, r2
	mov r2, r8
	lsls r0, r2, #0x01
	adds r0, r0, r1
	ldrb r2, [r0, #0x01]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x08
	orrs r2, r0
	adds r1, r1, r2
	mov r0, r12
	str r1, [r0, #0x40]
	strh r6, [r0, #0x2C]
	strh r5, [r0, #0x2A]
	ldr r1, [sp, #0x008]
	strb r4, [r1, #0x00]
	mov r0, r8
	ldr r2, [sp, #0x004]
	strb r0, [r2, #0x00]
_0801E7CE:
	mov r1, r12
	ldr r0, [r1, #0x5C]
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _0801E7FA
	mov r0, r12
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0801E7F2
	mov r0, r12
	ldrb r1, [r0, #0x12]
	movs r0, #0x28
	ands r0, r1
	cmp r0, #0x08
	bne _0801E7FA
_0801E7F2:
	mov r0, r12
	ldr r1, [r0, #0x60]
	bl _call_via_r2
_0801E7FA:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
