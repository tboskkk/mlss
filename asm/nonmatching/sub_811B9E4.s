	.syntax unified
	.text

	thumb_func_start sub_811B9E4
sub_811B9E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x00C]
	movs r5, #0xC0
	lsls r5, r5, #0x07
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x05
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	adds r1, r5, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x30]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x30]
	bl sprite_show_8020CBC
	ldr r2, _0811BA6C @ =0x00000151
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0811BA78
	ldr r3, _0811BA70 @ =0x0000014F
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811BADA
	ldr r1, [r7, #0x30]
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	ldr r4, _0811BA74 @ =0x00000189
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x46
	adds r3, #0x3B
	b _0811BA92
_0811BA6C: .4byte 0x00000151
_0811BA70: .4byte 0x0000014F
_0811BA74: .4byte 0x00000189
_0811BA78:
	ldr r1, [r7, #0x30]
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	ldr r4, _0811BB4C @ =0x00000189
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x46
	movs r3, #0xC5
	lsls r3, r3, #0x01
_0811BA92:
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	subs r1, r1, r0
	strh r1, [r2, #0x02]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
_0811BADA:
	ldr r1, [r7, #0x30]
	ldr r0, _0811BB50 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r7, #0x30]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x30]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	str r2, [r7, #0x34]
	ldr r1, _0811BB54 @ =0x00000151
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0811BB5C
	ldr r3, _0811BB58 @ =0x0000014F
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0811BB5C
	adds r1, r0, #0x0
	adds r1, #0x01
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	b _0811BB6E
_0811BB4C: .4byte 0x00000189
_0811BB50: .4byte 0x0000EFFF
_0811BB54: .4byte 0x00000151
_0811BB58: .4byte 0x0000014F
_0811BB5C:
	ldr r0, [r7, #0x34]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
_0811BB6E:
	ldr r0, [r7, #0x34]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x34]
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r4, _0811BBA0 @ =0x00000151
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0811BBA8
	ldr r1, _0811BBA4 @ =0x0000014F
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811BBA8
	ldr r1, [r7, #0x34]
	movs r0, #0x10
	strh r0, [r1, #0x02]
	ldr r2, [r7, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0811BBC6
_0811BBA0: .4byte 0x00000151
_0811BBA4: .4byte 0x0000014F
_0811BBA8:
	ldr r2, [r7, #0x34]
	ldr r3, _0811BD84 @ =0x00000189
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x46
	movs r4, #0xC5
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	subs r1, r1, r0
	strh r1, [r2, #0x02]
_0811BBC6:
	ldr r0, [r7, #0x34]
	ldr r1, _0811BD88 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
	ldr r2, [r7, #0x34]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x34]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x34]
	ldrb r1, [r2, #0x1F]
	movs r4, #0x31
	negs r4, r4
	mov r10, r4
	mov r0, r10
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x34]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	mov r9, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x34]
	ldrb r1, [r2, #0x10]
	subs r3, #0x43
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x34]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r6, #0x03
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x34]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r5, #0x21
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x07
	adds r4, #0x30
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r4, r7, #0x0
	adds r4, #0x84
	str r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r4, #0x00]
	movs r0, #0x6C
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x10
	strh r0, [r1, #0x02]
	ldr r0, [r4, #0x00]
	ldr r2, _0811BD88 @ =0xFFFFEFFF
	strh r2, [r0, #0x0E]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x04
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	mov r3, r10
	ands r3, r0
	strb r3, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	mov r2, r9
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x10]
	mov r3, r8
	ands r3, r0
	strb r3, [r1, #0x10]
	ldr r0, [r4, #0x00]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r6, r1
	strb r6, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r5, r1
	strb r5, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r4, #0x04
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r0, _0811BD8C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _0811BD90 @ =0x00000225
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	adds r2, r7, #0x0
	adds r2, #0x44
	str r2, [sp, #0x014]
	cmp r0, #0x00
	bne _0811BCF6
	b _0811C222
_0811BCF6:
	ldr r3, _0811BD94 @ =0x00000151
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	beq _0811BD02
	b _0811C222
_0811BD02:
	movs r4, #0xDF
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0xFF
	bne _0811BD10
	b _0811C222
_0811BD10:
	ldr r1, _0811BD98 @ =0x000080B2
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [sp, #0x004]
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r5, #0x00
	movs r4, #0x01
	negs r4, r4
	mov r8, r4
	ldr r6, _0811BD9C @ =0x083BADD4
	adds r4, r7, #0x0
	adds r4, #0x4C
_0811BD3C:
	mov r0, r8
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x07
	ldr r1, _0811BDA0 @ =0x000080D8
	movs r2, #0x01
	mov r3, r8
	bl sub_8020DD0
	str r0, [r4, #0x00]
	ldr r0, _0811BDA4 @ =0x00001BC8
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	beq _0811BD6E
	ldr r0, _0811BDA4 @ =0x00001BC8
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bne _0811BDA8
_0811BD6E:
	cmp r5, #0x00
	bne _0811BDA8
	ldr r0, [r7, #0x4C]
	str r5, [sp, #0x000]
	movs r1, #0x02
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	b _0811BDBA
	.byte 0x00, 0x00
_0811BD84: .4byte 0x00000189
_0811BD88: .4byte 0xFFFFEFFF
_0811BD8C: .4byte 0x03000FC0
_0811BD90: .4byte 0x00000225
_0811BD94: .4byte 0x00000151
_0811BD98: .4byte 0x000080B2
_0811BD9C: .4byte 0x083BADD4
_0811BDA0: .4byte 0x000080D8
_0811BDA4: .4byte 0x00001BC8
_0811BDA8:
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
_0811BDBA:
	ldr r0, _0811BDE0 @ =0x00001BC8
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	bne _0811BDE8
	cmp r5, #0x00
	bne _0811BDE8
	ldr r1, [r7, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x4C]
	ldr r2, _0811BDE4 @ =0x083BAE29
	ldrb r0, [r2, #0x00]
	b _0811BE68
	.byte 0x00, 0x00
_0811BDE0: .4byte 0x00001BC8
_0811BDE4: .4byte 0x083BAE29
_0811BDE8:
	ldr r0, _0811BE0C @ =0x00001BC8
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	bne _0811BE14
	cmp r5, #0x00
	bne _0811BE14
	ldr r1, [r7, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x64
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x4C]
	ldr r3, _0811BE10 @ =0x083BAE39
	ldrb r0, [r3, #0x00]
	b _0811BE68
_0811BE0C: .4byte 0x00001BC8
_0811BE10: .4byte 0x083BAE39
_0811BE14:
	ldr r0, _0811BE40 @ =0x000001BF
	adds r2, r7, r0
	movs r3, #0xE0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldrb r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _0811BE48
	ldr r3, [r4, #0x00]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	adds r1, r0, #0x6
	ldr r2, _0811BE44 @ =0x083BADD4
	cmp r5, #0x00
	beq _0811BE3C
	subs r1, r0, #0x5
_0811BE3C:
	strh r1, [r3, #0x00]
	b _0811BE58
_0811BE40: .4byte 0x000001BF
_0811BE44: .4byte 0x083BADD4
_0811BE48:
	ldr r1, [r4, #0x00]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r2, _0811BE84 @ =0x083BADD4
_0811BE58:
	ldr r1, [r4, #0x00]
	ldr r3, _0811BE88 @ =0x000001BF
	adds r0, r7, r3
	adds r0, r0, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x01]
_0811BE68:
	strh r0, [r1, #0x02]
	ldr r1, [sp, #0x00C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	cmp r5, r0
	bne _0811BE90
	ldr r1, [r4, #0x00]
	ldr r0, _0811BE8C @ =0x0000DFFF
	b _0811BE94
	.byte 0x00, 0x00
_0811BE84: .4byte 0x083BADD4
_0811BE88: .4byte 0x000001BF
_0811BE8C: .4byte 0x0000DFFF
_0811BE90:
	ldr r1, [r4, #0x00]
	ldr r0, _0811BF94 @ =0x0000EFFF
_0811BE94:
	strh r0, [r1, #0x0E]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	movs r3, #0x04
	negs r3, r3
	mov r9, r3
	mov r2, r9
	ands r0, r2
	strb r0, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	subs r3, #0x09
	mov r10, r3
	mov r2, r10
	ands r0, r2
	strb r0, [r1, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x1F]
	subs r3, #0x24
	ands r0, r3
	strb r0, [r1, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x10]
	movs r2, #0x3F
	negs r2, r2
	ands r0, r2
	strb r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	adds r1, #0x29
	ldrb r0, [r1, #0x00]
	adds r3, #0x2E
	ands r0, r3
	strb r0, [r1, #0x00]
	ldm r4!, {r1}
	adds r1, #0x29
	ldrb r0, [r1, #0x00]
	adds r2, #0x1E
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r5, #0x01
	cmp r5, #0x01
	bgt _0811BEF4
	b _0811BD3C
_0811BEF4:
	ldr r1, _0811BF98 @ =0x000080B4
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r3, #0xA4
	lsls r3, r3, #0x01
	adds r0, r7, r3
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r5, _0811BF9C @ =0x00001B9A
	adds r0, r5, #0x0
	bl sub_80E99E0
	movs r1, #0x80
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r6, #0x00
	bne _0811BF28
	b _0811C04C
_0811BF28:
	movs r0, #0x01
	str r0, [sp, #0x010]
	movs r1, #0x00
	mov r10, r1
	mov r8, r4
	mov r9, r1
	ldr r0, _0811BFA0 @ =0x083BADD4
	adds r6, r0, #0x0
	adds r6, #0x68
_0811BF3A:
	ldr r0, _0811BF9C @ =0x00001B9A
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [sp, #0x010]
	ands r5, r2
	cmp r5, #0x00
	bne _0811C02C
	mov r3, r8
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x07
	ldr r1, _0811BFA4 @ =0x000080DA
	movs r2, #0x01
	bl sub_8020DD0
	adds r4, r7, #0x0
	adds r4, #0x58
	mov r2, r9
	adds r1, r4, r2
	str r0, [r1, #0x00]
	str r5, [sp, #0x000]
	mov r1, r10
	mov r2, r8
	movs r3, #0x00
	bl sub_801E150
	mov r3, r10
	cmp r3, #0x00
	bne _0811BFA8
	ldr r0, _0811BF9C @ =0x00001B9A
	bl sub_80E99E0
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0x00
	beq _0811BFA8
	ldr r1, [r7, #0x58]
	ldrb r0, [r6, #0x10]
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x58]
	ldrb r0, [r6, #0x11]
	b _0811BFB6
_0811BF94: .4byte 0x0000EFFF
_0811BF98: .4byte 0x000080B4
_0811BF9C: .4byte 0x00001B9A
_0811BFA0: .4byte 0x083BADD4
_0811BFA4: .4byte 0x000080DA
_0811BFA8:
	mov r0, r9
	adds r2, r4, r0
	ldr r1, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	ldrb r0, [r6, #0x01]
_0811BFB6:
	strh r0, [r1, #0x02]
	mov r1, r9
	adds r3, r4, r1
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r4, #0x04
	negs r4, r4
	adds r0, r4, #0x0
	ands r1, r0
	movs r0, #0x01
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r4, #0x09
	adds r0, r4, #0x0
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r4, #0x24
	adds r0, r4, #0x0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r3, #0x00]
	ldr r0, _0811C048 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x10]
	subs r4, #0x0E
	adds r1, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r3, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r4, #0x3C
	adds r1, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	movs r3, #0x21
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_0811C02C:
	movs r4, #0x04
	add r9, r4
	adds r6, #0x04
	movs r0, #0x01
	add r10, r0
	ldr r1, [sp, #0x010]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #0x010]
	mov r2, r10
	cmp r2, #0x03
	bgt _0811C046
	b _0811BF3A
_0811C046:
	b _0811C116
_0811C048: .4byte 0x0000EFFF
_0811C04C:
	ldr r5, _0811C268 @ =0x00001BC8
	adds r0, r5, #0x0
	bl sub_80E99E0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0811C116
	adds r0, r5, #0x0
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x19
	beq _0811C116
	ldr r1, _0811C26C @ =0x000080DB
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x54]
	str r6, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sub_80E99E0
	ldr r1, [r7, #0x54]
	ldr r4, _0811C270 @ =0x083BADD4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_80E99E0
	ldr r1, [r7, #0x54]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0E
	adds r0, r0, r4
	ldrb r0, [r0, #0x01]
	strh r0, [r1, #0x02]
	ldr r2, [r7, #0x54]
	ldrb r0, [r2, #0x1F]
	mov r3, r9
	ands r0, r3
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x54]
	ldrb r0, [r2, #0x1F]
	mov r4, r10
	ands r0, r4
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x54]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x54]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r7, #0x54]
	ldr r0, _0811C274 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r1, [r7, #0x54]
	ldrb r0, [r1, #0x10]
	movs r2, #0x3F
	negs r2, r2
	ands r0, r2
	strb r0, [r1, #0x10]
	ldr r0, [r7, #0x54]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r3, #0x03
	negs r3, r3
	ands r1, r3
	strb r1, [r0, #0x00]
	ldr r0, [r7, #0x54]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r4, #0x21
	negs r4, r4
	ands r1, r4
	strb r1, [r0, #0x00]
_0811C116:
	ldr r0, _0811C278 @ =0x00001B9E
	bl sub_80E99E0
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0x00
	beq _0811C222
	movs r0, #0x01
	mov r10, r0
	ldr r1, _0811C27C @ =0x000080B3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r3, #0x00
	mov r8, r3
	mov r9, r4
_0811C14C:
	mov r6, r8
	adds r6, #0x1F
	ldr r0, _0811C278 @ =0x00001B9E
	bl sub_80E99E0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r4, r10
	ands r5, r4
	cmp r5, #0x00
	bne _0811C210
	mov r0, r9
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x07
	ldr r1, _0811C280 @ =0x000080D9
	movs r2, #0x01
	mov r3, r9
	bl sub_8020DD0
	mov r2, r8
	lsls r1, r2, #0x02
	adds r4, r7, #0x0
	adds r4, #0x68
	adds r4, r4, r1
	str r0, [r4, #0x00]
	str r5, [sp, #0x000]
	mov r1, r8
	mov r2, r9
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	ldr r0, _0811C270 @ =0x083BADD4
	lsls r1, r6, #0x02
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r1, #0x01]
	strh r0, [r2, #0x02]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r3, #0x04
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x01
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r3, #0x09
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r3, #0x24
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r1, [r4, #0x00]
	ldr r0, _0811C274 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	subs r3, #0x0E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	movs r4, #0x21
	negs r4, r4
	adds r1, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
_0811C210:
	movs r0, #0x01
	add r8, r0
	mov r1, r10
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x18
	mov r10, r0
	mov r2, r8
	cmp r2, #0x06
	ble _0811C14C
_0811C222:
	ldr r5, _0811C284 @ =0x00006002
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r3, #0xA4
	lsls r3, r3, #0x01
	adds r0, r7, r3
	str r0, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	movs r0, #0x05
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldr r1, [sp, #0x00C]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811C29C
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811C28C
	ldr r1, _0811C288 @ =0x00006003
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	b _0811C2A6
_0811C268: .4byte 0x00001BC8
_0811C26C: .4byte 0x000080DB
_0811C270: .4byte 0x083BADD4
_0811C274: .4byte 0x0000EFFF
_0811C278: .4byte 0x00001B9E
_0811C27C: .4byte 0x000080B3
_0811C280: .4byte 0x000080D9
_0811C284: .4byte 0x00006002
_0811C288: .4byte 0x00006003
_0811C28C:
	ldr r1, _0811C298 @ =0x00006004
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	b _0811C2A6
_0811C298: .4byte 0x00006004
_0811C29C:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	adds r1, r5, #0x0
_0811C2A6:
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x3C]
	ldr r0, [r7, #0x3C]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x01
	movs r2, #0x01
	negs r2, r2
	bl sub_801E150
	ldr r1, [r7, #0x3C]
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	movs r0, #0x2E
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x3C]
	ldr r4, _0811C508 @ =0xFFFFEFFF
	strh r4, [r0, #0x0E]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x3C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	subs r3, #0x07
	mov r10, r3
	mov r0, r10
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	subs r4, #0x31
	mov r9, r4
	mov r0, r9
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811C41E
	ldr r6, _0811C50C @ =0x083BCA64
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldrb r0, [r2, #0x00]
	ldr r3, _0811C510 @ =0x0000018B
	adds r5, r7, r3
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0xA6
	adds r0, r4, r0
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldrh r1, [r0, #0x04]
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x01
	movs r3, #0x01
	negs r3, r3
	bl sub_8020DD0
	str r0, [r7, #0x40]
	mov r2, r8
	ldrb r1, [r2, #0x00]
	adds r5, r5, r1
	ldrb r1, [r5, #0x00]
	adds r4, r4, r1
	ldrb r2, [r4, #0x00]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r6, #0x08
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r2, #0x01
	negs r2, r2
	bl sub_801E150
	ldr r1, [r7, #0x40]
	movs r0, #0xC8
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x40]
	movs r0, #0x34
	strh r0, [r1, #0x02]
	ldr r0, [r7, #0x40]
	ldr r4, _0811C508 @ =0xFFFFEFFF
	strh r4, [r0, #0x0E]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r3, #0x04
	orrs r0, r3
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x40]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	mov r0, r10
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x40]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, #0x00]
_0811C41E:
	movs r2, #0x00
	mov r10, r2
	ldr r3, _0811C514 @ =0x03000FF8
	mov r9, r3
	mov r8, r2
	movs r5, #0x01
	negs r5, r5
	ldr r4, [sp, #0x014]
	movs r0, #0x00
	str r0, [sp, #0x018]
	movs r6, #0x00
_0811C434:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811C45A
	ldr r2, [sp, #0x00C]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811C524
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	cmp r0, r10
	beq _0811C524
_0811C45A:
	mov r0, r8
	str r0, [sp, #0x000]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0811C518 @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0811C51C @ =0x00006006
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	mov r1, r10
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xCC
	ldr r3, [sp, #0x018]
	subs r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _0811C520 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0811C61C
	.byte 0x00, 0x00
_0811C508: .4byte 0xFFFFEFFF
_0811C50C: .4byte 0x083BCA64
_0811C510: .4byte 0x0000018B
_0811C514: .4byte 0x03000FF8
_0811C518: .4byte 0x00006002
_0811C51C: .4byte 0x00006006
_0811C520: .4byte 0x0000EFFF
_0811C524:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r6, r0
	ldrh r1, [r0, #0x00]
	movs r0, #0x00
	bl sub_8021EA8
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r2, r8
	str r2, [sp, #0x000]
	movs r3, #0xA4
	lsls r3, r3, #0x01
	adds r0, r7, r3
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, r6, r0
	ldrh r1, [r0, #0x00]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r6, r1
	ldrb r1, [r1, #0x02]
	mov r3, r8
	str r3, [sp, #0x000]
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r6, r2
	ldrb r1, [r2, #0x02]
	ldrb r2, [r2, #0x03]
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xCC
	ldr r2, [sp, #0x018]
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _0811C708 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0x30
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x1F]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	adds r3, #0x1A
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x02
	orrs r1, r0
	strb r1, [r2, #0x12]
_0811C61C:
	adds r4, #0x04
	ldr r0, [sp, #0x018]
	adds r0, #0x60
	str r0, [sp, #0x018]
	adds r6, #0x08
	movs r1, #0x01
	add r10, r1
	mov r2, r10
	cmp r2, #0x01
	bgt _0811C632
	b _0811C434
_0811C632:
	movs r5, #0x00
	ldr r1, _0811C70C @ =0x00006001
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x38]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x38]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x38]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	movs r0, #0x20
	strh r0, [r1, #0x02]
	ldr r1, [r7, #0x38]
	ldr r0, _0811C708 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x10]
	movs r0, #0x3F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x38]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x38]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r7, #0x38]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _0811C710 @ =0x03000D48
	ldr r0, _0811C714 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _0811C718 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0811C708: .4byte 0x0000EFFF
_0811C70C: .4byte 0x00006001
_0811C710: .4byte 0x03000D48
_0811C714: .4byte 0x0203FFB8
_0811C718: .4byte 0x00000A14
