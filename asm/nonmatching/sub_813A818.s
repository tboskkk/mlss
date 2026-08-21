	.syntax unified
	.text

	thumb_func_start sub_813A818
sub_813A818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r3, [r7, #0x0C]
	mov r10, r3
	ldr r6, [r7, #0x10]
	lsrs r5, r1, #0x08
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r2, r2, #0x0C
	adds r0, #0x02
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r3, r1, #0x0C
	adds r0, #0x02
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r1, r1, #0x0C
	mov r12, r1
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r4, r0, #0x0C
	movs r0, #0x00
	mov r9, r0
	mov r1, r10
	subs r0, r1, r5
	cmp r0, r2
	ble _0813A892
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A874
	movs r1, #0x00
	movs r2, #0x01
	mov r9, r2
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A874:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A892
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A892:
	mov r0, r10
	adds r0, r0, r5
	mov r8, r0
	cmp r8, r12
	bge _0813A8D8
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A8BA
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A8BA:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A8D8
	mov r1, r9
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A8D8:
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A8E8
	movs r0, #0x01
	negs r0, r0
	b _0813AA3C
_0813A8E8:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	mov r3, r9
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	beq _0813A942
	cmp r0, #0x01
	bgt _0813A922
	cmp r0, #0x00
	beq _0813A92C
	b _0813A97E
_0813A922:
	cmp r0, #0x02
	beq _0813A956
	cmp r0, #0x03
	beq _0813A96A
	b _0813A97E
_0813A92C:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	subs r0, r6, r5
	b _0813A97C
_0813A942:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	b _0813A97A
_0813A956:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r7, r2
	subs r0, r6, r5
	b _0813A97C
_0813A96A:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r8
	str r4, [r0, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r1, r7, r0
_0813A97A:
	adds r0, r6, r5
_0813A97C:
	str r0, [r1, #0x00]
_0813A97E:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	subs r0, r0, r1
	ldr r2, _0813AA08 @ =0x00000242
	adds r2, r2, r7
	mov r8, r2
	strh r0, [r2, #0x00]
	ldr r3, _0813AA0C @ =0x03001038
	mov r10, r3
	ldr r4, _0813AA10 @ =0x0819832C
	ldr r0, _0813AA14 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x00
	ldsh r0, [r2, r3]
	bl __divsi3
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r6, r7, r3
	strh r0, [r6, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	bl __divsi3
	strh r0, [r6, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0813AA18
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AA1A
_0813AA08: .4byte 0x00000242
_0813AA0C: .4byte 0x03001038
_0813AA10: .4byte 0x0819832C
_0813AA14: .4byte 0x08198220
_0813AA18:
	movs r0, #0xFF
_0813AA1A:
	strb r0, [r7, #0x02]
	ldr r2, _0813AA4C @ =0x03001038
	ldr r0, _0813AA50 @ =0x0819832C
	ldr r1, _0813AA54 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	ldr r3, _0813AA58 @ =0x000002DE
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
_0813AA3C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813AA4C: .4byte 0x03001038
_0813AA50: .4byte 0x0819832C
_0813AA54: .4byte 0x08198220
_0813AA58: .4byte 0x000002DE
