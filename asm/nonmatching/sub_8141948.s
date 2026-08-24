	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08141A34
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814198E
	b _08141C1A
_0814198E:
	subs r2, #0x04
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081419A0
	b _08141C1A
_081419A0:
	subs r2, #0x02
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141A00 @ =0x03001038
	ldr r0, _08141A04 @ =0x0819832C
	ldr r1, _08141A08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141A0C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141A10
	.byte 0x00, 0x00
_08141A00: .4byte 0x03001038
_08141A04: .4byte 0x0819832C
_08141A08: .4byte 0x08198220
_08141A0C:
	movs r1, #0x01
	negs r1, r1
_08141A10:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08141C1A
_08141A34:
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08141A48
	b _08141C14
_08141A48:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08141A80 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141AAA
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141A88
	ldr r0, _08141A84 @ =0x08141C31
	mov r2, r8
	str r0, [r2, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141A80: .4byte 0x00007FFF
_08141A84: .4byte sub_8141C30
_08141A88:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _08141AC0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r6, r0
	beq _08141AB8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	beq _08141AB8
_08141AAA:
	ldr r0, _08141AB4 @ =0x08141C31
	mov r1, r8
	str r0, [r1, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141AB4: .4byte sub_8141C30
_08141AB8:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r6, [r0, #0x00]
_08141AC0:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _08141B52
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141B20 @ =0x03001038
	ldr r0, _08141B24 @ =0x0819832C
	ldr r1, _08141B28 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141B2C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141B30
_08141B20: .4byte 0x03001038
_08141B24: .4byte 0x0819832C
_08141B28: .4byte 0x08198220
_08141B2C:
	movs r1, #0x01
	negs r1, r1
_08141B30:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x32]
	b _08141B90
_08141B52:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x3A]
_08141B90:
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141BB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08141BB6
_08141BB4:
	movs r0, #0xFF
_08141BB6:
	movs r3, #0x00
	strb r0, [r5, #0x02]
	ldr r2, _08141C2C @ =0x00000242
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r6, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	mov r0, sp
	strb r3, [r0, #0x00]
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_813A284
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r9
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
_08141C14:
	adds r0, r5, #0x0
	bl sub_813B650
_08141C1A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141C2C: .4byte 0x00000242
