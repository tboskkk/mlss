	.syntax unified
	.text

	thumb_func_start sub_813A5C8
sub_813A5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	mov r10, r2
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldr r3, [r6, #0x0C]
	ldr r4, [r6, #0x10]
	lsrs r7, r1, #0x08
	movs r5, #0x00
	mov r8, r5
	subs r0, r3, r7
	str r0, [sp, #0x004]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	ldr r5, [sp, #0x004]
	cmp r5, r0
	ble _0813A608
	movs r1, #0x00
	movs r0, #0x01
	mov r8, r0
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A608:
	subs r1, r4, r7
	str r1, [sp, #0x008]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r1, r0
	ble _0813A630
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A630:
	adds r3, r3, r7
	str r3, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r3, r0
	bge _0813A658
	mov r1, r8
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A658:
	adds r4, r4, r7
	mov r9, r4
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x0C
	cmp r9, r0
	bge _0813A67E
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A67E:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A68E
	movs r0, #0x01
	negs r0, r0
	b _0813A7F8
_0813A68E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldr r0, [r6, #0x10]
	str r0, [r3, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0x01
	beq _0813A6E4
	cmp r5, #0x01
	bgt _0813A6C8
	cmp r5, #0x00
	beq _0813A6D2
	b _0813A79A
_0813A6C8:
	cmp r5, #0x02
	beq _0813A6F8
	cmp r5, #0x03
	beq _0813A754
	b _0813A79A
_0813A6D2:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r3, [sp, #0x004]
	str r3, [r1, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	b _0813A70A
_0813A6E4:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [sp, #0x008]
	b _0813A766
_0813A6F8:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r4, [sp, #0x00C]
	str r4, [r1, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	movs r5, #0x00
_0813A70A:
	str r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	ldr r1, _0813A744 @ =0x00000242
	adds r4, r6, r1
	strh r0, [r4, #0x00]
	ldr r2, _0813A748 @ =0x03001038
	ldr r0, _0813A74C @ =0x0819832C
	ldr r1, _0813A750 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r6, r3
	strh r5, [r0, #0x00]
	b _0813A79A
	.byte 0x00, 0x00
_0813A744: .4byte 0x00000242
_0813A748: .4byte 0x03001038
_0813A74C: .4byte 0x0819832C
_0813A750: .4byte 0x08198220
_0813A754:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	mov r0, r9
_0813A766:
	str r0, [r1, #0x00]
	subs r4, #0x8A
	adds r0, r6, r4
	strh r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	subs r5, #0x8C
	adds r4, r6, r5
	strh r0, [r4, #0x00]
	ldr r2, _0813A7C4 @ =0x03001038
	ldr r0, _0813A7C8 @ =0x0819832C
	ldr r1, _0813A7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
_0813A79A:
	ldr r4, _0813A7D0 @ =0x00000242
	adds r3, r6, r4
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r2, r6, r5
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813A7D4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813A7D6
_0813A7C4: .4byte 0x03001038
_0813A7C8: .4byte 0x0819832C
_0813A7CC: .4byte 0x08198220
_0813A7D0: .4byte 0x00000242
_0813A7D4:
	movs r0, #0xFF
_0813A7D6:
	strb r0, [r6, #0x02]
	ldr r2, _0813A808 @ =0x03001038
	ldr r0, _0813A80C @ =0x0819832C
	ldr r1, _0813A810 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	ldr r4, _0813A814 @ =0x000002DE
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
_0813A7F8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813A808: .4byte 0x03001038
_0813A80C: .4byte 0x0819832C
_0813A810: .4byte 0x08198220
_0813A814: .4byte 0x000002DE
