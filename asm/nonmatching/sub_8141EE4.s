	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [sp, #0x018]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08141FCE
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141FBA
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141F68
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r0, [r0, r2]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141F6C
_08141F68:
	movs r0, #0x00
	b _08141F70
_08141F6C:
	mov r9, r6
	movs r0, #0x01
_08141F70:
	cmp r0, #0x00
	beq _08141FA8
	mov r1, r9
	ldr r0, [r1, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne _08141F8C
	ldr r0, _08141F88 @ =0x08142151
	mov r2, r8
	str r0, [r2, #0x00]
	b _08142136
	.byte 0x00, 0x00
_08141F88: .4byte sub_8142150
_08141F8C:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r9, r0
	beq _08141FA8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	bne _08141FA8
	ldr r0, _08141FA4 @ =0x08142151
	b _08142106
	.byte 0x00, 0x00
_08141FA4: .4byte sub_8142150
_08141FA8:
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	adds r2, #0x24
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	b _08141FBE
_08141FBA:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08141FBE:
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814204C
_08141FCE:
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814205C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0814203C @ =0x03001038
	ldr r0, _08142040 @ =0x0819832C
	ldr r1, _08142044 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	mov r2, r10
	ldrh r0, [r2, #0x3A]
	str r0, [r1, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08142048 @ =0x08142659
	b _08142106
	.byte 0x00, 0x00
_0814203C: .4byte 0x03001038
_08142040: .4byte 0x0819832C
_08142044: .4byte 0x08198220
_08142048: .4byte sub_8142658
_0814204C:
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814205C
	subs r0, #0x01
	str r0, [r1, #0x00]
_0814205C:
	adds r0, r4, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142136
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08142104
	movs r1, #0xC8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081420F4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, r10
	ldrh r2, [r2, #0x22]
	cmp r0, r2
	bcs _081420F4
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _081420E4 @ =0x03001038
	ldr r0, _081420E8 @ =0x0819832C
	ldr r1, _081420EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldr r0, _081420F0 @ =0x08142659
	b _08142106
_081420E4: .4byte 0x03001038
_081420E8: .4byte 0x0819832C
_081420EC: .4byte 0x08198220
_081420F0: .4byte sub_8142658
_081420F4:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08142110
_08142104:
	ldr r0, _0814210C @ =0x08141D55
_08142106:
	mov r1, r8
	str r0, [r1, #0x00]
	b _08142136
_0814210C: .4byte sub_8141D54
_08142110:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142148 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0814214C @ =0x08141D55
	str r0, [r1, #0x0C]
_08142136:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142148: .4byte sub_813B1E8
_0814214C: .4byte sub_8141D54
