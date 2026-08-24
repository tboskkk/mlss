	.syntax unified
	.text

	thumb_func_start sub_8040CF4
sub_8040CF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08040DE4 @ =0x00000222
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _08040D12
	b _08040F80
_08040D12:
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _08040D1A
	adds r1, #0xFF
_08040D1A:
	asrs r1, r1, #0x08
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r6, r1, r0
	strh r6, [r5, #0x06]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08040D30
	adds r1, #0xFF
_08040D30:
	asrs r1, r1, #0x08
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	ldr r3, _08040DE8 @ =0x083A0656
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1D
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r1, r1, r0
	strh r1, [r5, #0x08]
	adds r2, #0x2E
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	ldr r2, [r5, #0x18]
	cmp r2, #0x00
	bge _08040D6C
	adds r2, #0xFF
_08040D6C:
	asrs r2, r2, #0x08
	subs r2, r1, r2
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1D
	adds r0, r0, r3
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r1, r1, r2
	ldr r3, _08040DEC @ =0x0000023B
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r1, #0x00]
	mov r2, r12
	strh r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	strh r7, [r0, #0x02]
	ldr r6, [r1, #0x00]
	subs r3, #0x27
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	lsls r2, r0, #0x0C
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08040DB6
	adds r0, #0xFF
_08040DB6:
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r1, r3, #0x0
	subs r1, r1, r0
	orrs r2, r1
	strh r2, [r6, #0x0E]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bhi _08040E18
	movs r4, #0x8E
	lsls r4, r4, #0x02
	adds r1, r5, r4
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	blt _08040DF0
	lsls r0, r0, #0x02
	add r0, r8
	ldr r2, [r0, #0x00]
	b _08040DF2
_08040DE4: .4byte 0x00000222
_08040DE8: .4byte dword_83A0656 @ =0x083A0656
_08040DEC: .4byte 0x0000023B
_08040DF0:
	movs r2, #0x00
_08040DF2:
	cmp r2, #0x00
	beq _08040E14
	ldr r1, [r5, #0x14]
	ldr r0, [r2, #0x14]
	subs r1, r1, r0
	ldr r0, [r2, #0x18]
	movs r3, #0x9D
	lsls r3, r3, #0x02
	adds r2, r2, r3
	subs r0, r0, r1
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08040E10
	adds r0, #0xFF
_08040E10:
	asrs r0, r0, #0x08
	b _08040E1A
_08040E14:
	strh r2, [r5, #0x0A]
	b _08040E1C
_08040E18:
	movs r0, #0x00
_08040E1A:
	strh r0, [r5, #0x0A]
_08040E1C:
	ldr r4, _08040EFC @ =0x0000020E
	adds r0, r5, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x38
	bne _08040E3C
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08040E3C
	b _08040F80
_08040E3C:
	ldr r2, _08040F00 @ =0x00000211
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08040E8C
	mov r3, r12
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	ldr r4, _08040F04 @ =0x00000282
	adds r0, r5, r4
	ldrb r2, [r0, #0x00]
	movs r3, #0x10
	negs r3, r3
	subs r0, r3, r2
	cmp r1, r0
	blt _08040F1C
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r2, r0
	cmp r1, r0
	bgt _08040F1C
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	ldr r2, _08040F08 @ =0x00000283
	adds r0, r5, r2
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xD0
	cmp r1, r0
	bgt _08040F1C
	movs r4, #0x08
	ldsh r0, [r5, r4]
	cmp r0, r1
	ble _08040E8C
	adds r1, r0, #0x0
	subs r0, r3, r2
	cmp r1, r0
	blt _08040F1C
_08040E8C:
	ldr r1, _08040F0C @ =0x00000216
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08040F10 @ =0x0000020F
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08040F80
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r6, r5, r3
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08040F80
	ldr r4, _08040F14 @ =0x00000217
	adds r2, r5, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r4, [r0, #0x12]
	lsls r4, r4, #0x1D
	lsrs r4, r4, #0x1E
	bl sub_8021ED8
	ldr r2, [r6, #0x00]
	lsls r4, r4, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r0, _08040F18 @ =0x0000026E
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08040F80
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	bl sub_8116654
	b _08040F80
_08040EFC: .4byte 0x0000020E
_08040F00: .4byte 0x00000211
_08040F04: .4byte 0x00000282
_08040F08: .4byte 0x00000283
_08040F0C: .4byte 0x00000216
_08040F10: .4byte 0x0000020F
_08040F14: .4byte 0x00000217
_08040F18: .4byte 0x0000026E
_08040F1C:
	ldr r3, _08040F8C @ =0x0000020E
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	ldr r4, _08040F90 @ =0x00000216
	adds r3, r5, r4
	eors r1, r0
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _08040F94 @ =0x0000020F
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08040F80
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r6, r5, r2
	ldr r0, [r6, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08040F80
	ldr r3, _08040F98 @ =0x0000026E
	adds r1, r5, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _08040F74
	adds r2, #0xA0
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	bl sub_8116680
_08040F74:
	ldr r3, _08040F9C @ =0x0000023D
	adds r0, r5, r3
	strb r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	bl sub_8020D40
_08040F80:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08040F8C: .4byte 0x0000020E
_08040F90: .4byte 0x00000216
_08040F94: .4byte 0x0000020F
_08040F98: .4byte 0x0000026E
_08040F9C: .4byte 0x0000023D
