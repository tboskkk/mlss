	.syntax unified
	.text

	thumb_func_start sub_813D0F0
sub_813D0F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r1
	str r2, [sp, #0x000]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	add r1, r10
	ldr r6, [r1, #0x00]
	movs r1, #0xFF
	bl sub_8138F64
	mov r8, r0
	ldr r3, _0813D1F4 @ =0x03001038
	ldr r1, [r0, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0813D120
	adds r0, r1, #0x3
_0813D120:
	asrs r0, r0, #0x02
	muls r0, r1
	cmp r0, #0x00
	bge _0813D12A
	adds r0, #0x03
_0813D12A:
	asrs r2, r0, #0x02
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0813D13C
	adds r0, r1, #0x3
_0813D13C:
	asrs r0, r0, #0x02
	muls r0, r1
	cmp r0, #0x00
	bge _0813D146
	adds r0, #0x03
_0813D146:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r7, [r1, r0]
	mov r1, r8
	ldr r0, [r1, #0x0C]
	ldr r5, [r6, #0x0C]
	subs r0, r0, r5
	lsls r0, r0, #0x06
	mov r1, r9
	bl __divsi3
	adds r4, r0, #0x0
	muls r4, r7
	adds r4, r4, r5
	mov r2, r8
	ldr r0, [r2, #0x10]
	ldr r5, [r6, #0x10]
	subs r0, r0, r5
	lsls r0, r0, #0x06
	mov r1, r9
	bl __divsi3
	muls r0, r7
	adds r7, r0, r5
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	adds r3, r7, #0x0
	bl sub_8137BB0
	adds r0, r6, #0x0
	bl sub_8138364
	ldr r0, _0813D1F8 @ =0x0000020D
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	ldr r1, _0813D1FC @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813D200 @ =0x0813D205
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D1F4: .4byte 0x03001038
_0813D1F8: .4byte 0x0000020D
_0813D1FC: .4byte 0xFFFC7FFF
_0813D200: .4byte sub_813D204
