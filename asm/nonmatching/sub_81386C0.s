	.syntax unified
	.text

	thumb_func_start sub_81386C0
sub_81386C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r9, r1
	ldr r3, _08138760 @ =0x00000141
	adds r3, r4, r3
	str r3, [sp, #0x000]
	ldrb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081387B4
	adds r0, r2, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	adds r6, r0, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08138700
	adds r0, #0xFF
_08138700:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0813870C
	adds r0, #0xFF
_0813870C:
	asrs r0, r0, #0x08
	mov r10, r0
	movs r1, #0x9B
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r2, #0x30
	ldsh r1, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0x00
	beq _081387B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r3, r9
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08138776
	ldr r1, [r4, #0x0C]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	blt _08138764
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	subs r0, r1, r0
	movs r2, #0x3C
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x02
	b _081387B6
_08138760: .4byte 0x00000141
_08138764:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	movs r3, #0x3E
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x03
	b _081387B6
_08138776:
	subs r0, r0, r1
	ldr r2, [sp, #0x000]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081387B4
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _081387A2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, r10
	subs r0, r3, r0
	movs r2, #0x38
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x00
	b _081387B6
_081387A2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	movs r3, #0x3A
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x01
	b _081387B6
_081387B4:
	movs r0, #0xFF
_081387B6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
