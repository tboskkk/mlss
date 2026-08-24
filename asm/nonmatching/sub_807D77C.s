	.syntax unified
	.text

	thumb_func_start sub_807D77C
sub_807D77C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r0, #0xB8
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	adds r0, #0xBA
	ldrh r4, [r0, #0x00]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r1
	adds r6, r5, #0x0
	adds r6, #0xBE
	movs r1, #0x00
	ldsh r0, [r6, r1]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0xC0
	movs r2, #0x00
	ldsh r7, [r0, r2]
	adds r0, #0x02
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x010]
	ldr r0, [r5, #0x28]
	mov r10, r0
	cmp r4, #0x00
	bge _0807D7C0
	b _0807D8F4
_0807D7C0:
	adds r0, r5, #0x0
	adds r0, #0x78
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	cmp r3, #0x00
	beq _0807D7D4
	b _0807D8F4
_0807D7D4:
	ldr r2, [sp, #0x010]
	cmp r2, #0x03
	beq _0807D8C8
	cmp r2, #0x03
	ble _0807D7E4
	cmp r2, #0x04
	beq _0807D814
	b _0807D8F4
_0807D7E4:
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0807D7EC
	b _0807D8F4
_0807D7EC:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D7FE
	mov r2, r12
	str r2, [sp, #0x000]
	b _0807D800
_0807D7FE:
	str r3, [sp, #0x000]
_0807D800:
	movs r0, #0x0B
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D8F4
_0807D814:
	ldr r0, _0807D848 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	ldrh r1, [r2, #0x12]
	orrs r0, r1
	strh r0, [r2, #0x12]
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0807D84C
	mov r0, r12
	str r0, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
	b _0807D860
_0807D848: .4byte 0x03000FD8
_0807D84C:
	str r3, [sp, #0x000]
	movs r0, #0x0E
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CC3C
_0807D860:
	ldr r2, _0807D8A8 @ =0x03001034
	ldr r0, _0807D8AC @ =0x08198154
	ldr r1, _0807D8B0 @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _0807D8B4 @ =0x084FB588
	ldr r4, _0807D8B8 @ =0x0300034C
	ldr r1, _0807D8BC @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x22
	cmp r0, #0x00
	beq _0807D882
	movs r1, #0x24
_0807D882:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0807D8C0 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0807D8C4 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	b _0807D8F4
	.byte 0x00, 0x00
_0807D8A8: .4byte 0x03001034
_0807D8AC: .4byte dword_8198154 @ =0x08198154
_0807D8B0: .4byte dword_81980D8 @ =0x081980D8
_0807D8B4: .4byte word_84FB588 @ =0x084FB588
_0807D8B8: .4byte 0x0300034C
_0807D8BC: .4byte 0x00000888
_0807D8C0: .4byte dword_89F808C @ =0x089F808C
_0807D8C4: .4byte 0x02000440
_0807D8C8:
	mov r0, r10
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0807D8E6
	mov r2, r12
	str r2, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
	b _0807D8F4
_0807D8E6:
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_807CFB8
_0807D8F4:
	adds r0, r5, #0x0
	adds r0, #0x78
	str r0, [sp, #0x014]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bne _0807D902
	b _0807DA4A
_0807D902:
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0807D90E
	b _0807DA4A
_0807D90E:
	mov r0, r10
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bge _0807D9A4
	ldr r1, _0807D950 @ =0x03000FD8
	ldr r4, [r1, #0x00]
	ldrb r3, [r4, #0x0C]
	movs r0, #0x80
	ands r0, r3
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0807D95C
	mov r0, r10
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0807D95C
	movs r0, #0x7F
	ands r0, r3
	strb r0, [r4, #0x0C]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807D954
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x74]
	b _0807D958
_0807D950: .4byte 0x03000FD8
_0807D954:
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x70]
_0807D958:
	ldr r0, _0807D99C @ =0x0807F53D
	str r0, [r1, #0x54]
_0807D95C:
	ldr r3, _0807D9A0 @ =0x0807F649
	ldr r2, [r2, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r3, [r1, #0x04]
	movs r0, #0x00
	strh r0, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	movs r1, #0x00
	ldsh r2, [r6, r1]
	adds r2, #0x01
	ldr r0, [sp, #0x00C]
	subs r2, r0, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0807DA38
	.byte 0x00, 0x00
_0807D99C: .4byte sub_807F53C
_0807D9A0: .4byte sub_807F648
_0807D9A4:
	ldr r4, _0807DA00 @ =0x00000111
	add r4, r10
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807D9C0
	str r5, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0x0
	bl sub_80DF024
_0807D9C0:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _0807DA4A
	ldrb r1, [r4, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807DA0C
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x09]
	ldr r3, _0807DA04 @ =0x0807F681
	ldr r0, _0807DA08 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x3C]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x3C]
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r3, [r0, #0x04]
	strh r6, [r0, #0x10]
	str r0, [r2, #0x4C]
	str r5, [r0, #0x08]
	movs r1, #0x0C
	strh r1, [r0, #0x10]
	b _0807DA14
_0807DA00: .4byte 0x00000111
_0807DA04: .4byte sub_807F680
_0807DA08: .4byte 0x03000FD8
_0807DA0C:
	mov r0, r10
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r4, [r0, #0x08]
_0807DA14:
	lsls r0, r4, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807DA2A
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DA2A:
	ldr r2, _0807DA5C @ =0x00000111
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0807DA38:
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807DA4A:
	ldr r1, [sp, #0x010]
	cmp r1, #0x04
	bhi _0807DA9A
	lsls r0, r1, #0x02
	ldr r1, _0807DA60 @ =lbl_0807DA64
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0807DA5C: .4byte 0x00000111
_0807DA60: .4byte lbl_0807DA64
lbl_0807DA64:
	.4byte _0807DA9A
	.4byte _0807DA78
	.4byte _0807DA8A
	.4byte _0807DA9A
	.4byte _0807DA9A
_0807DA78:
	movs r2, #32
	negs r2, r2
	movs r3, #19
	negs r3, r3
	movs r0, #4
	adds r1, r5, #0
	bl sub_807EAE4
	b.n _0807DA9A
_0807DA8A:
	movs r2, #32
	negs r2, r2
	movs r3, #19
	negs r3, r3
	movs r0, #5
	adds r1, r5, #0
	bl sub_807EAE4
_0807DA9A:
	ldr r0, [sp, #0x014]
	ldrb r2, [r0, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	lsls r1, r0, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x014]
	strb r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB4
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
