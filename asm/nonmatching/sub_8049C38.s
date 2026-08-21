	.syntax unified
	.text

	thumb_func_start sub_8049C38
sub_8049C38:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	str r1, [sp, #0x000]
	ldr r0, _08049E6C @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08049C58
	b _08049FDA
_08049C58:
	movs r0, #0x83
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _08049E70 @ =0x02001000
	ands r0, r1
	cmp r0, r1
	beq _08049C6A
	b _08049FDA
_08049C6A:
	cmp r2, #0x00
	bgt _08049C70
	b _08049FDA
_08049C70:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	mov r10, r0
	mov r1, r8
	add r1, r10
	mov r9, r1
	str r2, [sp, #0x004]
	ldr r2, _08049E74 @ =0x00000283
	add r2, r8
	str r2, [sp, #0x008]
_08049C84:
	ldr r3, [sp, #0x000]
	ldr r6, [r3, #0x00]
	mov r0, r8
	adds r0, #0x54
	adds r1, r6, #0x0
	adds r1, #0x54
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _08049C9A
	b _08049FC8
_08049C9A:
	ldr r4, _08049E6C @ =0x00000216
	adds r0, r6, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08049CAA
	b _08049FC8
_08049CAA:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08049E70 @ =0x02001000
	ands r0, r1
	cmp r0, r1
	beq _08049CBC
	b _08049FC8
_08049CBC:
	mov r2, r8
	movs r3, #0x06
	ldsh r7, [r2, r3]
	ldr r1, _08049E78 @ =0x00000282
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	subs r2, r7, r5
	movs r0, #0x06
	ldsh r4, [r6, r0]
	adds r1, r6, r1
	ldrb r0, [r1, #0x00]
	lsrs r3, r0, #0x01
	adds r0, r4, r3
	cmp r2, r0
	blt _08049CDE
	b _08049FC8
_08049CDE:
	adds r1, r7, r5
	subs r0, r4, r3
	cmp r1, r0
	bgt _08049CE8
	b _08049FC8
_08049CE8:
	mov r1, r9
	ldr r7, [r1, #0x00]
	movs r2, #0x02
	ldsh r5, [r7, r2]
	mov r3, r10
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0x02
	ldsh r4, [r0, r1]
	ldr r2, _08049E74 @ =0x00000283
	adds r0, r6, r2
	ldrb r1, [r0, #0x00]
	adds r0, r4, r1
	cmp r5, r0
	blt _08049D0A
	b _08049FC8
_08049D0A:
	subs r0, r4, r1
	cmp r5, r0
	bgt _08049D12
	b _08049FC8
_08049D12:
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08049D1C
	adds r0, #0xFF
_08049D1C:
	asrs r1, r0, #0x08
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08049D26
	adds r0, #0xFF
_08049D26:
	asrs r0, r0, #0x08
	cmp r1, r0
	bge _08049D4E
	mov r0, r8
	ldr r3, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r3, r3, r0
	str r3, [sp, #0x00C]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	movs r3, #0x9D
	lsls r3, r3, #0x02
	adds r2, r6, r3
	adds r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x00C]
	cmp r1, r0
	bge _08049D4E
	b _08049E80
_08049D4E:
	ldr r0, _08049E7C @ =0x00000352
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08049D5E
	b _08049E80
_08049D5E:
	adds r0, r5, #0x0
	subs r0, #0x10
	cmp r0, r4
	bge _08049D8A
	ldrb r3, [r7, #0x1F]
	lsls r0, r3, #0x1C
	mov r2, r12
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049D8A
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r7, #0x1F]
_08049D8A:
	mov r4, r9
	ldr r3, [r4, #0x00]
	movs r0, #0x02
	ldsh r1, [r3, r0]
	ldr r2, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	subs r1, r1, r0
	mov r4, r10
	adds r0, r6, r4
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	subs r0, #0x10
	cmp r1, r0
	bge _08049DC4
	ldrb r4, [r3, #0x1F]
	lsls r1, r4, #0x1E
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1E
	cmp r1, r0
	bls _08049DC4
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049DC4:
	mov r0, r9
	ldr r3, [r0, #0x00]
	movs r1, #0x02
	ldsh r0, [r3, r1]
	subs r0, #0x10
	mov r2, r10
	adds r1, r6, r2
	ldr r2, [r1, #0x00]
	movs r4, #0x02
	ldsh r1, [r2, r4]
	cmp r0, r1
	ble _08049DFC
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1E
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049DFC
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049DFC:
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r1, r10
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r1, [r3, r4]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049E34
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1E
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049E34
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
_08049E34:
	movs r0, #0x85
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	ands r1, r2
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ands r0, r2
	cmp r1, r0
	beq _08049E52
	b _08049FC8
_08049E52:
	mov r4, r9
	ldr r2, [r4, #0x00]
	mov r1, r10
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x0E]
	ldrh r0, [r2, #0x0E]
	cmp r0, r1
	bcs _08049E66
	b _08049FC8
_08049E66:
	subs r0, r1, #0x1
	strh r0, [r2, #0x0E]
	b _08049FC8
_08049E6C: .4byte 0x00000216
_08049E70: .4byte 0x02001000
_08049E74: .4byte 0x00000283
_08049E78: .4byte 0x00000282
_08049E7C: .4byte 0x00000352
_08049E80:
	mov r2, r10
	adds r0, r6, r2
	ldr r3, [r0, #0x00]
	movs r4, #0x02
	ldsh r1, [r3, r4]
	subs r1, #0x10
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049EC6
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049EC6
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049EC6:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x02
	ldsh r1, [r3, r2]
	ldr r4, _08049FF0 @ =0x00000283
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	subs r1, r1, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	subs r0, #0x10
	cmp r1, r0
	bge _08049F0E
	ldrb r4, [r3, #0x1F]
	lsls r1, r4, #0x1E
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1E
	cmp r1, r0
	bls _08049F0E
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F0E:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x02
	ldsh r1, [r3, r2]
	subs r1, #0x10
	mov r4, r9
	ldr r2, [r4, #0x00]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	ble _08049F52
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1E
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049F52
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	movs r0, #0x04
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F52:
	mov r1, r10
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	mov r4, r9
	ldr r2, [r4, #0x00]
	movs r0, #0x02
	ldsh r1, [r3, r0]
	movs r4, #0x02
	ldsh r0, [r2, r4]
	cmp r1, r0
	bge _08049F96
	ldrb r4, [r3, #0x1F]
	lsls r0, r4, #0x1C
	ldrb r1, [r2, #0x1F]
	lsls r2, r1, #0x1E
	lsrs r0, r0, #0x1E
	lsrs r1, r2, #0x1E
	cmp r0, r1
	bls _08049F96
	adds r0, r1, #0x0
	movs r1, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0x1F]
	ldr r0, _08049FEC @ =0x00000217
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049F96:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	ands r1, r2
	movs r0, #0x85
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ands r0, r2
	cmp r1, r0
	bne _08049FC8
	mov r2, r10
	adds r0, r6, r2
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r0, [r3, #0x00]
	ldrh r3, [r0, #0x0E]
	ldrh r0, [r1, #0x0E]
	cmp r0, r3
	bcc _08049FC8
	subs r0, r3, #0x1
	strh r0, [r1, #0x0E]
_08049FC8:
	ldr r4, [sp, #0x004]
	subs r4, #0x01
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x000]
	adds r0, #0x04
	str r0, [sp, #0x000]
	cmp r4, #0x00
	beq _08049FDA
	b _08049C84
_08049FDA:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049FEC: .4byte 0x00000217
_08049FF0: .4byte 0x00000283
