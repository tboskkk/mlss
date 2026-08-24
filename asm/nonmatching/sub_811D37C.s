	.syntax unified
	.text

	thumb_func_start sub_811D37C
sub_811D37C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xCA
	lsls r0, r0, #0x01
	adds r0, r7, r0
	str r0, [sp, #0x02C]
	movs r1, #0x01
	mov r10, r1
	movs r6, #0x02
	movs r2, #0x00
	mov r8, r2
	mov r9, r2
	movs r3, #0x01
	str r3, [sp, #0x028]
_0811D3A4:
	add r0, sp, #0x01C
	ldr r1, _0811D41C @ =0x08202F2C
	movs r2, #0x0C
	bl memcpy
	ldr r0, [sp, #0x02C]
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0811D488
	ldr r2, _0811D420 @ =0x083BBDD0
	ldr r1, _0811D424 @ =0x0000018B
	adds r0, r7, r1
	ldr r3, [sp, #0x02C]
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r3, r1, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	mov r12, r2
	adds r2, r1, #0x0
	cmp r0, #0x03
	bls _0811D428
	cmp r0, #0x09
	bhi _0811D428
	movs r1, #0x88
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, r10
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x04
	add r0, r12
	ldrb r0, [r0, #0x00]
	subs r0, #0x04
	lsls r0, r0, #0x01
	add r0, sp
	adds r0, #0x1C
	ldrh r0, [r0, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r5, #0x0
	movs r2, #0x6C
	b _0811D4CE
	.byte 0x00, 0x00
_0811D41C: .4byte dword_8202F2C @ =0x08202F2C
_0811D420: .4byte byte_83BBDD0 @ =0x083BBDD0
_0811D424: .4byte 0x0000018B
_0811D428:
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldrb r3, [r1, #0x00]
	cmp r3, #0x00
	bne _0811D488
	ldr r4, _0811D484 @ =0x0000018B
	adds r0, r7, r4
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bne _0811D488
	movs r1, #0x88
	mov r0, r8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, r10
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r4, #0x0E
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, sp
	adds r0, #0x1C
	ldrh r0, [r0, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r5, #0x0
	movs r2, #0x6C
	b _0811D4CE
_0811D484: .4byte 0x0000018B
_0811D488:
	movs r4, #0x88
	mov r0, r8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, r10
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xC0
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	mov r2, r9
	str r2, [sp, #0x014]
	str r2, [sp, #0x018]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x64
	movs r3, #0x00
	bl sub_8122A20
	adds r5, r0, #0x0
	mov r3, r10
	str r3, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0xC8
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r6, [sp, #0x010]
	mov r0, r9
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x74
_0811D4CE:
	movs r3, #0x00
	bl sub_8122A20
	adds r5, r0, #0x0
	movs r1, #0x70
	add r8, r1
	ldr r2, [sp, #0x028]
	subs r2, #0x01
	str r2, [sp, #0x028]
	cmp r2, #0x00
	blt _0811D4E6
	b _0811D3A4
_0811D4E6:
	adds r0, r5, #0x0
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
