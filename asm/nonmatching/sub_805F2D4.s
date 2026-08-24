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
