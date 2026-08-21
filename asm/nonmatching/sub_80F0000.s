	.syntax unified
	.text

	thumb_func_start sub_80F0000
sub_80F0000:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r10, r0
	ldr r0, _080F0068 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x02
	adds r4, r0, r1
	movs r2, #0x00
	mov r8, r2
	ldr r3, _080F006C @ =0xFFFFFF00
	mov r9, r3
_080F001E:
	ldr r0, _080F0068 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r5, _080F0070 @ =0x0000055B
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1C
	mov r1, r8
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080F003A
	b _080F0160
_080F003A:
	movs r7, #0x00
	ldr r2, [r4, #0x14]
	adds r3, r2, #0x0
	cmp r2, #0x00
	blt _080F0074
	ldr r1, [r4, #0x00]
	ldr r0, [r4, #0x08]
	subs r0, r1, r0
	cmp r0, #0xFF
	ble _080F0056
	adds r0, r1, #0x0
	mov r3, r9
	ands r0, r3
	str r0, [r4, #0x08]
_080F0056:
	adds r1, r1, r2
	str r1, [r4, #0x00]
	movs r5, #0x10
	ldsh r0, [r4, r5]
	lsls r0, r0, #0x08
	cmp r0, r1
	bgt _080F0098
	b _080F0094
	.byte 0x00, 0x00
_080F0068: .4byte 0x03000FD0
_080F006C: .4byte 0xFFFFFF00
_080F0070: .4byte 0x0000055B
_080F0074:
	ldr r0, [r4, #0x08]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	cmp r0, #0xFF
	ble _080F0086
	adds r0, r1, #0x0
	mov r2, r9
	ands r0, r2
	str r0, [r4, #0x08]
_080F0086:
	adds r1, r1, r3
	str r1, [r4, #0x00]
	movs r3, #0x10
	ldsh r0, [r4, r3]
	lsls r0, r0, #0x08
	cmp r0, r1
	blt _080F0098
_080F0094:
	str r0, [r4, #0x00]
	movs r7, #0x01
_080F0098:
	ldr r2, [r4, #0x18]
	adds r3, r2, #0x0
	cmp r2, #0x00
	blt _080F00C2
	ldr r1, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	subs r0, r1, r0
	cmp r0, #0xFF
	ble _080F00B2
	adds r0, r1, #0x0
	mov r5, r9
	ands r0, r5
	str r0, [r4, #0x0C]
_080F00B2:
	adds r1, r1, r2
	str r1, [r4, #0x04]
	movs r2, #0x12
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r0, r1
	bgt _080F00F0
	b _080F00E2
_080F00C2:
	ldr r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	cmp r0, #0xFF
	ble _080F00D4
	adds r0, r1, #0x0
	mov r5, r9
	ands r0, r5
	str r0, [r4, #0x0C]
_080F00D4:
	adds r1, r1, r3
	str r1, [r4, #0x04]
	movs r2, #0x12
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r0, r1
	blt _080F00F0
_080F00E2:
	str r0, [r4, #0x04]
	movs r1, #0x02
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080F00F0:
	mov r3, r8
	cmp r3, #0x02
	bgt _080F0138
	cmp r3, #0x01
	blt _080F0138
	mov r5, r10
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	mov r0, r8
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, [r4, #0x00]
	ldr r0, [r4, #0x08]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F011C
	adds r0, #0xFF
_080F011C:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	ldr r1, [r4, #0x04]
	ldr r0, [r4, #0x0C]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080F012C
	adds r1, #0xFF
_080F012C:
	lsls r3, r1, #0x08
	asrs r3, r3, #0x10
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8057F60
_080F0138:
	cmp r7, #0x03
	bne _080F0160
	ldr r0, _080F017C @ =0x03000FD0
	ldr r3, [r0, #0x00]
	ldr r2, _080F0180 @ =0x0000055B
	adds r3, r3, r2
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1B
	lsrs r1, r1, #0x1C
	movs r0, #0x01
	mov r5, r8
	lsls r0, r5
	bics r1, r0
	lsls r1, r1, #0x01
	movs r5, #0x1F
	negs r5, r5
	adds r0, r5, #0x0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
_080F0160:
	adds r4, #0x20
	movs r0, #0x01
	add r8, r0
	mov r1, r8
	cmp r1, #0x03
	bgt _080F016E
	b _080F001E
_080F016E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F017C: .4byte 0x03000FD0
_080F0180: .4byte 0x0000055B
