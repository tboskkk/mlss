	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	bl sub_8100BC4
	mov r8, r0
	movs r0, #0x02
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	bne _08100E84
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_08100E84:
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r1, _08100F28 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08100E98
	b _08101138
_08100E98:
	movs r0, #0x04
	mov r1, r8
	ands r0, r1
	cmp r0, #0x00
	bne _08100EA4
	b _08101138
_08100EA4:
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _08100EB2
	b _08101138
_08100EB2:
	subs r1, #0x87
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08100ED8
	ldr r0, _08100F2C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08100ED8
	ldr r0, _08100F30 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08100ED8:
	ldr r7, _08100F24 @ =0x03000FD8
	ldr r2, [r7, #0x00]
	ldr r4, [r2, #0x70]
	cmp r4, #0x00
	beq _08100EF6
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08100EF6
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _08100F38
_08100EF6:
	ldr r0, _08100F24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08100F34 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08100F0A
	b _0810100E
_08100F0A:
	ldr r0, _08100F2C @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810100E
	ldr r0, _08100F30 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0810100E
	.byte 0x00, 0x00
_08100F24: .4byte 0x03000FD8
_08100F28: .4byte 0x000002BF
_08100F2C: .4byte 0x0300034C
_08100F30: .4byte 0x0000015F
_08100F34: .4byte 0x000002C1
_08100F38:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	bne _0810100E
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r1, [r5, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r0, _08100F7C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0810100E
	ldr r1, _08100F80 @ =0x000002F9
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	beq _08100FC4
	cmp r0, #0x02
	bgt _08100F84
	cmp r0, #0x01
	beq _08100F88
	b _0810100E
	.byte 0x00, 0x00
_08100F7C: .4byte 0x0300034C
_08100F80: .4byte 0x000002F9
_08100F84:
	cmp r0, #0x03
	bne _0810100E
_08100F88:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r0, _08100FC0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08100FB4
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08100FB4:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_808C994
	b _0810100E
	.byte 0x00, 0x00
_08100FC0: .4byte 0x03000FD8
_08100FC4:
	ldr r0, _08101058 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810100E
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0810100E
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08101002
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x08]
_08101002:
	adds r0, r4, #0x0
	adds r0, #0xB0
	str r6, [r0, #0x00]
	subs r0, #0xA8
	bl sub_808CC08
_0810100E:
	ldr r7, _0810105C @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r4, [r3, #0x74]
	mov r12, r7
	cmp r4, #0x00
	beq _0810102E
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _0810102E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	ands r2, r1
	cmp r2, #0x02
	beq _0810106C
_0810102E:
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r1, _08101060 @ =0x000002C1
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r0, _08101064 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08101138
	ldr r0, _08101068 @ =0x0000015F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08101138
_08101058: .4byte 0x03000FC0
_0810105C: .4byte 0x03000FD8
_08101060: .4byte 0x000002C1
_08101064: .4byte 0x0300034C
_08101068: .4byte 0x0000015F
_0810106C:
	ldr r0, [r4, #0x54]
	cmp r0, #0x00
	bne _08101138
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r1, [r6, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r0, _081010AC @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r2, r0
	cmp r2, #0x00
	beq _08101138
	ldr r1, _081010B0 @ =0x000002F9
	adds r0, r3, r1
	ldrb r5, [r0, #0x00]
	cmp r5, #0x02
	beq _081010EE
	cmp r5, #0x02
	bgt _081010B4
	cmp r5, #0x01
	beq _081010B8
	b _08101138
	.byte 0x00, 0x00
_081010AC: .4byte 0x0300034C
_081010B0: .4byte 0x000002F9
_081010B4:
	cmp r5, #0x03
	bne _08101138
_081010B8:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	mov r0, r12
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _081010E4
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_081010E4:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_808C994
	b _08101138
_081010EE:
	ldr r0, _08101168 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8C
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08101138
	ldrh r1, [r6, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _08101138
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _0810112C
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x08]
_0810112C:
	adds r0, r4, #0x0
	adds r0, #0xB0
	str r5, [r0, #0x00]
	subs r0, #0xA8
	bl sub_808CC08
_08101138:
	mov r0, r8
	cmp r0, #0x00
	bne _0810117E
	ldr r3, _0810116C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r0, _08101170 @ =0x000002BF
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, _08101174 @ =0x000002D6
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08101178
	mov r0, r9
	bl sub_810118C
	b _0810117E
	.byte 0x00, 0x00
_08101168: .4byte 0x03000FC0
_0810116C: .4byte 0x03000FD8
_08101170: .4byte 0x000002BF
_08101174: .4byte 0x000002D6
_08101178:
	mov r0, r9
	bl sub_810124C
_0810117E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
