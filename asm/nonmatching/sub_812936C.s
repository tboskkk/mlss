	.syntax unified
	.text

	thumb_func_start sub_812936C
sub_812936C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x034]
	add r1, sp, #0x00C
	ldr r0, _08129690 @ =0x08210F94
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r4, sp
	adds r4, #0x20
	str r4, [sp, #0x038]
	adds r1, r4, #0x0
	ldr r0, _08129694 @ =0x08210FA8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, _08129698 @ =0x00006003
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x60
	str r0, [sp, #0x004]
	subs r4, #0x01
	str r4, [sp, #0x008]
	movs r0, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812969C @ =0x00006005
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x28]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x28]
	bl sprite_show_8020CBC
	ldr r1, [r7, #0x28]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x28]
	adds r2, r7, #0x0
	adds r2, #0xAD
	adds r0, r7, #0x0
	adds r0, #0xAA
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	ldr r2, [r7, #0x28]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x28]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x28]
	ldrb r1, [r2, #0x1F]
	movs r3, #0x31
	negs r3, r3
	mov r10, r3
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x28]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	mov r9, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r7, #0x28]
	ldr r1, _081296A0 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
	ldr r2, [r7, #0x28]
	ldrb r1, [r2, #0x10]
	subs r3, #0x0E
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x28]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r6, #0x03
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x28]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	movs r5, #0x21
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812969C @ =0x00006005
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x3C]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x01
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x3C]
	movs r2, #0x20
	strh r2, [r0, #0x00]
	ldr r0, [r7, #0x3C]
	movs r3, #0xC0
	strh r3, [r0, #0x02]
	ldr r0, [r7, #0x3C]
	ldr r1, _081296A0 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x1F]
	mov r0, r9
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x10]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x3C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812969C @ =0x00006005
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x40]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x07
	adds r2, r4, #0x0
	bl sub_801E150
	ldr r0, [r7, #0x40]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x40]
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x40]
	movs r2, #0xC0
	strh r2, [r0, #0x02]
	ldr r0, [r7, #0x40]
	ldr r3, _081296A0 @ =0xFFFFEFFF
	strh r3, [r0, #0x0E]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x1F]
	mov r0, r9
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x40]
	ldrb r1, [r2, #0x10]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r1, [r7, #0x40]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	adds r0, r6, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x40]
	adds r1, #0x29
	ldrb r2, [r1, #0x00]
	adds r0, r5, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x40]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812969C @ =0x00006005
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x44]
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_801E150
	ldr r0, [r7, #0x44]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x44]
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x44]
	movs r2, #0xC0
	strh r2, [r0, #0x02]
	ldr r0, [r7, #0x44]
	ldr r3, _081296A0 @ =0xFFFFEFFF
	strh r3, [r0, #0x0E]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x04
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x1F]
	movs r2, #0x0D
	negs r2, r2
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x1F]
	mov r2, r10
	ands r2, r0
	strb r2, [r1, #0x1F]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x1F]
	mov r3, r9
	ands r3, r0
	strb r3, [r1, #0x1F]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x10]
	mov r2, r8
	ands r2, r0
	strb r2, [r1, #0x10]
	ldr r0, [r7, #0x44]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r6, r1
	strb r6, [r0, #0x00]
	ldr r0, [r7, #0x44]
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	ands r5, r1
	strb r5, [r0, #0x00]
	ldr r1, [r7, #0x44]
	ldrb r0, [r1, #0x12]
	movs r3, #0x10
	orrs r0, r3
	strb r0, [r1, #0x12]
	movs r6, #0x00
	ldr r0, [sp, #0x038]
	mov r10, r0
	mov r9, r6
	adds r5, r7, #0x0
	adds r5, #0x48
	mov r8, r6
_08129618:
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _0812969C @ =0x00006005
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x00]
	adds r1, r6, #0x2
	mov r2, r9
	str r2, [sp, #0x000]
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x00]
	mov r0, sp
	add r0, r8
	adds r0, #0x0C
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	mov r0, r10
	add r0, r8
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x00]
	ldr r0, _081296A4 @ =0x0000EFFF
	strh r0, [r1, #0x0E]
	cmp r6, #0x00
	bne _081296A8
	ldr r2, [r7, #0x48]
	ldrb r0, [r2, #0x1F]
	movs r3, #0x04
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x48]
	ldrb r0, [r2, #0x1F]
	subs r3, #0x09
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x48]
	ldrb r0, [r2, #0x1F]
	subs r3, #0x24
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r7, #0x48]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	b _081296E6
_08129690: .4byte dword_8210F94 @ =0x08210F94
_08129694: .4byte dword_8210FA8 @ =0x08210FA8
_08129698: .4byte 0x00006003
_0812969C: .4byte 0x00006005
_081296A0: .4byte 0xFFFFEFFF
_081296A4: .4byte 0x0000EFFF
_081296A8:
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r3, #0x04
	negs r3, r3
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x01
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r3, #0x09
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x04
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x1F]
	subs r3, #0x24
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0x1F]
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
_081296E6:
	strb r0, [r2, #0x1F]
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x10]
	movs r3, #0x3F
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x10]
	ldr r2, [r5, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	adds r3, #0x3C
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, #0x29
	ldrb r0, [r2, #0x00]
	subs r3, #0x1E
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldm r5!, {r2}
	ldrb r1, [r2, #0x12]
	adds r3, #0x1A
	adds r0, r3, #0x0
	ands r1, r0
	movs r0, #0x02
	orrs r1, r0
	strb r1, [r2, #0x12]
	movs r0, #0x04
	add r8, r0
	adds r6, #0x01
	cmp r6, #0x03
	bgt _08129738
	b _08129618
_08129738:
	adds r0, r7, #0x0
	adds r0, #0xB0
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	adds r1, r7, #0x0
	adds r1, #0x60
	str r1, [sp, #0x040]
	adds r2, r7, #0x0
	adds r2, #0x34
	str r2, [sp, #0x03C]
	cmp r0, #0x00
	beq _08129754
	b _0812991A
_08129754:
	movs r3, #0x00
	mov r9, r3
	mov r8, r3
	movs r6, #0x01
	negs r6, r6
	adds r4, r7, #0x0
	adds r4, #0x2C
	mov r10, r3
	adds r5, r7, #0x0
	adds r5, #0x70
_08129768:
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08129860
	adds r1, r7, #0x0
	adds r1, #0x88
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	beq _0812977C
	cmp r0, r9
	bne _08129860
_0812977C:
	ldrh r1, [r5, #0x00]
	movs r0, #0x00
	bl sub_8021EA8
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x040]
	str r2, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	ldrh r1, [r5, #0x00]
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	mov r3, r8
	str r3, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	ldrb r1, [r5, #0x02]
	ldrb r2, [r5, #0x03]
	mov r3, r8
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r2, r10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	strh r0, [r1, #0x02]
	ldr r0, [r4, #0x00]
	ldr r3, _0812985C @ =0xFFFFEFFF
	strh r3, [r0, #0x0E]
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
	b _08129906
	.byte 0x00, 0x00
_0812985C: .4byte 0xFFFFEFFF
_08129860:
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x040]
	str r1, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _081299FC @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08129A00 @ =0x00006006
	movs r2, #0x00
	adds r3, r6, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	mov r1, r9
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r3, r10
	subs r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x68
	strh r0, [r1, #0x02]
	ldr r0, [r4, #0x00]
	ldr r1, _08129A04 @ =0xFFFFEFFF
	strh r1, [r0, #0x0E]
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
_08129906:
	adds r4, #0x04
	movs r0, #0x28
	add r10, r0
	adds r5, #0x08
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _0812991A
	b _08129768
_0812991A:
	movs r3, #0x00
	mov r9, r3
	ldr r4, _08129A08 @ =0x03000FF8
	mov r8, r4
	movs r7, #0x00
	movs r5, #0x01
	negs r5, r5
	ldr r4, [sp, #0x03C]
	movs r0, #0x00
	mov r10, r0
	movs r6, #0x00
_08129930:
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08129956
	ldr r2, [sp, #0x034]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _08129A10
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	cmp r0, r9
	beq _08129A10
_08129956:
	str r7, [sp, #0x000]
	ldr r0, [sp, #0x040]
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _081299FC @ =0x00006002
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x05
	ldr r1, _08129A00 @ =0x00006006
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	str r7, [sp, #0x000]
	mov r1, r9
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r2, r10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0xB4
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08129A0C @ =0x0000EFFF
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
	b _08129AFE
	.byte 0x00, 0x00
_081299FC: .4byte 0x00006002
_08129A00: .4byte 0x00006006
_08129A04: .4byte 0xFFFFEFFF
_08129A08: .4byte 0x03000FF8
_08129A0C: .4byte 0x0000EFFF
_08129A10:
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, r6, r0
	ldrh r1, [r0, #0x00]
	movs r0, #0x00
	bl sub_8021EA8
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x17
	str r7, [sp, #0x000]
	ldr r2, [sp, #0x040]
	str r2, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	mov r3, r8
	ldr r0, [r3, #0x00]
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
	mov r2, r8
	ldr r1, [r2, #0x00]
	adds r1, r6, r1
	ldrb r1, [r1, #0x02]
	str r7, [sp, #0x000]
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r6, r2
	ldrb r1, [r2, #0x02]
	ldrb r2, [r2, #0x03]
	str r7, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0xBC
	mov r2, r10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0xB4
	strh r0, [r1, #0x02]
	ldr r1, [r4, #0x00]
	ldr r0, _08129B3C @ =0x0000EFFF
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
_08129AFE:
	adds r4, #0x04
	movs r0, #0x28
	add r10, r0
	adds r6, #0x08
	movs r1, #0x01
	add r9, r1
	mov r2, r9
	cmp r2, #0x01
	bgt _08129B12
	b _08129930
_08129B12:
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _08129B40 @ =0x03000D48
	ldr r0, _08129B44 @ =0x0203FFB8
	ldr r0, [r0, #0x3C]
	ldr r3, _08129B48 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08129B3C: .4byte 0x0000EFFF
_08129B40: .4byte 0x03000D48
_08129B44: .4byte 0x0203FFB8
_08129B48: .4byte 0x00000A14
