	.syntax unified
	.text

	thumb_func_start sub_811AB8C
sub_811AB8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r7, r0, #0x0
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x01C]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r1, r7, r1
	str r1, [sp, #0x020]
	ldrb r2, [r1, #0x00]
	mov r9, r2
	cmp r2, #0x00
	bne _0811ABB0
	b _0811AD5C
_0811ABB0:
	cmp r2, #0x02
	beq _0811ABB6
	b _0811ACD0
_0811ABB6:
	ldr r0, [r7, #0x20]
	ldr r1, _0811ACAC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r3, #0xAB
	lsls r3, r3, #0x01
	adds r0, r7, r3
	movs r4, #0x01
	strb r4, [r0, #0x00]
	ldr r6, _0811ACB0 @ =0x0000014F
	adds r0, r7, r6
	movs r1, #0x08
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x00]
	adds r3, #0x28
	adds r1, r7, r3
	movs r6, #0x00
	movs r0, #0xF9
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0811ACB4 @ =0x02000040
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x19
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	adds r1, r7, #0x0
	adds r1, #0x88
	ldr r2, [r1, #0x00]
	movs r0, #0x03
	strb r0, [r2, #0x0C]
	ldr r2, [r1, #0x00]
	movs r3, #0xE5
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x14]
	ldr r0, [r1, #0x00]
	strb r4, [r0, #0x1C]
	ldr r2, [r1, #0x00]
	ldr r0, _0811ACB8 @ =0x0000FF78
	strh r0, [r2, #0x18]
	ldr r2, [r1, #0x00]
	movs r0, #0x10
	strb r0, [r2, #0x1B]
	ldr r2, [r1, #0x00]
	ldr r0, _0811ACBC @ =0x0000FF60
	strh r0, [r2, #0x16]
	ldr r2, [r1, #0x00]
	movs r0, #0xEC
	strb r0, [r2, #0x1A]
	ldr r0, [r1, #0x00]
	strb r4, [r0, #0x1D]
	ldr r0, [r1, #0x00]
	strh r5, [r0, #0x24]
	ldr r0, [r1, #0x00]
	adds r0, #0x2C
	strb r4, [r0, #0x00]
	ldr r2, [r1, #0x00]
	movs r0, #0x50
	strh r0, [r2, #0x26]
	ldr r0, [r1, #0x00]
	adds r0, #0x2A
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	strh r5, [r0, #0x28]
	ldr r0, [r1, #0x00]
	adds r0, #0x2B
	strb r6, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r0, #0x2D
	strb r4, [r0, #0x00]
	subs r3, #0x78
	adds r0, r7, r3
	mov r1, r9
	strb r1, [r0, #0x00]
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r1, _0811ACC0 @ =0x040000B0
	ldrh r2, [r1, #0x0A]
	ldr r0, _0811ACC4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r2, [r1, #0x0A]
	ldr r0, _0811ACC8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	movs r2, #0xB2
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r3, _0811ACCC @ =0x00000167
	adds r0, r7, r3
	strb r6, [r0, #0x00]
	ldr r4, [sp, #0x020]
	strb r6, [r4, #0x00]
	b _0811B464
	.byte 0x00, 0x00
_0811ACAC: .4byte 0x0000FFFF
_0811ACB0: .4byte 0x0000014F
_0811ACB4: .4byte 0x02000040
_0811ACB8: .4byte 0x0000FF78
_0811ACBC: .4byte 0x0000FF60
_0811ACC0: .4byte 0x040000B0
_0811ACC4: .4byte 0x0000C5FF
_0811ACC8: .4byte 0x00007FFF
_0811ACCC: .4byte 0x00000167
_0811ACD0:
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0811ACF8
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811ACE8
	b _0811B464
_0811ACE8:
	adds r0, r2, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _0811ACF8
	b _0811B464
_0811ACF8:
	movs r3, #0x00
	ldr r6, [sp, #0x020]
	strb r3, [r6, #0x00]
	ldr r0, _0811AD50 @ =0x0000019F
	adds r4, r7, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	eors r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r7, #0x3C]
	ldrb r1, [r4, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r2, _0811AD54 @ =0x0200000C
	ldrb r1, [r4, #0x00]
	adds r1, #0x03
	lsls r1, r1, #0x01
	movs r3, #0xE4
	lsls r3, r3, #0x01
	adds r0, r7, r3
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r6, _0811AD58 @ =0x00000153
	adds r1, r7, r6
	strb r0, [r1, #0x00]
	b _0811B464
	.byte 0x00, 0x00
_0811AD50: .4byte 0x0000019F
_0811AD54: .4byte 0x0200000C
_0811AD58: .4byte 0x00000153
_0811AD5C:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	adds r0, r0, r7
	mov r10, r0
	ldrb r4, [r0, #0x00]
	movs r3, #0x80
	adds r0, r3, #0x0
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _0811AD76
	b _0811B0B0
_0811AD76:
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	ldrh r1, [r2, #0x02]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0811AD8A
	b _0811AEB4
_0811AD8A:
	adds r0, r7, #0x0
	adds r0, #0xDE
	str r0, [sp, #0x010]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [sp, #0x014]
	adds r3, #0xB8
	adds r0, r7, r3
	str r0, [sp, #0x018]
	ldr r4, [sp, #0x01C]
	movs r6, #0x82
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0811ADBE
	lsls r0, r1, #0x1D
	lsrs r0, r0, #0x1F
	adds r2, #0x93
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _0811AEA8
_0811ADBE:
	movs r3, #0xCF
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	lsls r1, r0, #0x02
	mov r3, sp
	adds r3, r3, r1
	adds r3, #0x10
	movs r4, #0xD2
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldrb r2, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	ldr r6, _0811AE94 @ =0x0000019F
	adds r2, r7, r6
	ldrb r2, [r2, #0x00]
	movs r3, #0x01
	bl sub_8117778
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811AEA8
	movs r0, #0xD3
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r4, r7, r1
	movs r1, #0x64
	strh r1, [r4, #0x00]
	ldr r2, _0811AE98 @ =0x000001A5
	adds r2, r2, r7
	mov r8, r2
	ldrb r0, [r2, #0x00]
	movs r5, #0x0B
	muls r0, r5
	adds r0, #0x18
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r6, r7, r3
	strh r0, [r6, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r0, #0xDD
	lsls r0, r0, #0x01
	adds r3, r7, r0
	movs r0, #0x08
	strh r0, [r3, #0x00]
	subs r2, #0x04
	adds r1, r7, r2
	movs r0, #0x50
	strh r0, [r1, #0x00]
	ldr r2, _0811AE9C @ =0x03001038
	ldr r0, _0811AEA0 @ =0x0819832C
	ldr r1, _0811AEA4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r6, #0x00
	ldsh r1, [r3, r6]
	adds r0, r0, r1
	movs r1, #0x02
	bl _call_via_r2
	movs r2, #0xDB
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r1, r4, #0x0
	movs r2, #0x03
	bl sub_801B748
	movs r3, #0xD4
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r0, #0xC8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x01
	adds r1, r7, r4
	mov r6, r8
	ldrb r0, [r6, #0x00]
	muls r0, r5
	adds r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0811B32A
	.byte 0x00, 0x00
_0811AE94: .4byte 0x0000019F
_0811AE98: .4byte 0x000001A5
_0811AE9C: .4byte 0x03001038
_0811AEA0: .4byte 0x0819832C
_0811AEA4: .4byte 0x08198220
_0811AEA8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _0811B32A
_0811AEB4:
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x00
	beq _0811AF64
	movs r0, #0x7F
	ands r0, r4
	mov r1, r10
	strb r0, [r1, #0x00]
	ldr r2, _0811AF54 @ =0x0200000A
	movs r3, #0xEA
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r4, _0811AF58 @ =0x03000FC0
	mov r8, r4
	ldr r0, [r4, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r1, _0811AF5C @ =0x00000222
	mov r9, r1
	movs r1, #0x00
	mov r2, r9
	bl sub_80E98C0
	adds r5, r0, #0x0
	ldr r0, [r4, #0x00]
	adds r0, r0, r6
	movs r2, #0x88
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	adds r4, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	movs r1, #0x00
	mov r2, r9
	bl sub_80E98C0
	ldr r6, [r7, #0x30]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x15
	movs r2, #0x2C
	subs r2, r2, r5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x14
	subs r2, r2, r4
	mov r4, r10
	ldrb r3, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	movs r1, #0x20
	subs r1, r1, r0
	adds r0, r3, #0x0
	muls r0, r1
	adds r2, r2, r0
	strh r2, [r6, #0x02]
	movs r6, #0xA9
	lsls r6, r6, #0x01
	adds r0, r7, r6
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r2, _0811AF60 @ =0x00000153
	adds r0, r7, r2
	strb r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	b _0811B32A
_0811AF54: .4byte 0x0200000A
_0811AF58: .4byte 0x03000FC0
_0811AF5C: .4byte 0x00000222
_0811AF60: .4byte 0x00000153
_0811AF64:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0811B00C
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r2, r7, r3
	ldrb r3, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r4
	ldr r4, _0811AF8C @ =0x000001A1
	adds r1, r7, r4
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	cmp r3, r0
	bne _0811AF90
	strb r5, [r2, #0x00]
	b _0811AF94
_0811AF8C: .4byte 0x000001A1
_0811AF90:
	adds r0, r3, #0x1
	strb r0, [r2, #0x00]
_0811AF94:
	movs r6, #0xCF
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	movs r1, #0x7F
	ands r1, r0
	ldr r2, _0811AFC0 @ =0x000001A1
	adds r0, r7, r2
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x06
	bhi _0811AFC8
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811AFC8
	subs r0, r1, #0x1
	ldr r4, _0811AFC4 @ =0x000001A5
	adds r1, r7, r4
	b _0811AFD4
_0811AFC0: .4byte 0x000001A1
_0811AFC4: .4byte 0x000001A5
_0811AFC8:
	ldr r6, _0811B004 @ =0x000001A5
	adds r1, r7, r6
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0811AFD6
	subs r0, #0x01
_0811AFD4:
	strb r0, [r1, #0x00]
_0811AFD6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r2, [r7, #0x30]
	ldr r1, _0811B004 @ =0x000001A5
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r3, _0811B008 @ =0x00000153
	adds r1, r7, r3
	strb r0, [r1, #0x00]
	b _0811B32A
	.byte 0x00, 0x00
_0811B004: .4byte 0x000001A5
_0811B008: .4byte 0x00000153
_0811B00C:
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0811B016
	b _0811B32A
_0811B016:
	movs r6, #0xD2
	lsls r6, r6, #0x01
	adds r2, r7, r6
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0811B02E
	movs r0, #0x7F
	ands r0, r4
	ldr r3, _0811B064 @ =0x000001A1
	adds r1, r7, r3
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
_0811B02E:
	subs r0, #0x01
	strb r0, [r2, #0x00]
	movs r4, #0xCF
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	ldr r6, _0811B064 @ =0x000001A1
	adds r1, r7, r6
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x06
	bhi _0811B06C
	movs r1, #0xD2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x01
	cmp r1, r0
	bne _0811B06C
	ldr r2, _0811B068 @ =0x000001A5
	adds r1, r7, r2
	movs r0, #0x00
	b _0811B078
	.byte 0x00, 0x00
_0811B064: .4byte 0x000001A1
_0811B068: .4byte 0x000001A5
_0811B06C:
	ldr r3, _0811B0A8 @ =0x000001A5
	adds r1, r7, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	beq _0811B07A
	adds r0, #0x01
_0811B078:
	strb r0, [r1, #0x00]
_0811B07A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	ldr r2, [r7, #0x30]
	ldr r4, _0811B0A8 @ =0x000001A5
	adds r0, r7, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	movs r6, #0xA9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _0811B0AC @ =0x00000153
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	b _0811B32A
	.byte 0x00, 0x00
_0811B0A8: .4byte 0x000001A5
_0811B0AC: .4byte 0x00000153
_0811B0B0:
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldr r2, [r0, #0x00]
	ldrh r1, [r2, #0x02]
	movs r6, #0x01
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0811B130
	ldr r1, _0811B124 @ =0x000001A1
	adds r0, r7, r1
	mov r2, r10
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r1, r7, r3
	strb r0, [r1, #0x00]
	adds r4, #0x25
	adds r3, r7, r4
	strb r5, [r3, #0x00]
	mov r1, r10
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	orrs r0, r1
	mov r2, r10
	strb r0, [r2, #0x00]
	ldr r2, [r7, #0x30]
	ldrb r1, [r3, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	ldr r2, _0811B128 @ =0x0200000A
	movs r3, #0xE9
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0B
	lsls r0, r0, #0x08
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	subs r4, #0x53
	adds r0, r7, r4
	strb r6, [r0, #0x00]
	ldr r1, _0811B12C @ =0x00000153
	adds r0, r7, r1
	strb r6, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0811B32A
_0811B124: .4byte 0x000001A1
_0811B128: .4byte 0x0200000A
_0811B12C: .4byte 0x00000153
_0811B130:
	movs r4, #0x02
	mov r8, r4
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0811B14A
	mov r0, r8
	ldr r6, [sp, #0x020]
	strb r0, [r6, #0x00]
	ldr r0, [r7, #0x3C]
	bl sprite_hide_8021F20
	b _0811B32A
_0811B14A:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x00
	beq _0811B1DE
	mov r1, r10
	ldrb r5, [r1, #0x00]
	ldr r4, _0811B19C @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r2, #0x88
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811B1BC
	ldr r0, [r4, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r2, _0811B1A0 @ =0x00000222
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811B1A4
	mov r4, r10
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0811B1B0
	mov r6, r8
	strb r6, [r4, #0x00]
	b _0811B1BC
	.byte 0x00, 0x00
_0811B19C: .4byte 0x03000FC0
_0811B1A0: .4byte 0x00000222
_0811B1A4:
	mov r1, r10
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0811B1B0
	strb r6, [r1, #0x00]
	b _0811B1BC
_0811B1B0:
	movs r2, #0xCF
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
_0811B1BC:
	movs r3, #0xCF
	lsls r3, r3, #0x01
	adds r3, r3, r7
	mov r10, r3
	ldrb r4, [r3, #0x00]
	cmp r5, r4
	bne _0811B1CC
	b _0811B32A
_0811B1CC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	movs r6, #0xA9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	b _0811B2C2
_0811B1DE:
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0811B1E8
	b _0811B32A
_0811B1E8:
	mov r0, r10
	ldrb r0, [r0, #0x00]
	mov r8, r0
	ldr r4, _0811B238 @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x88
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811B2A4
	ldr r0, [r4, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0811B23C @ =0x00000222
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0811B244
	mov r3, r10
	ldrb r0, [r3, #0x00]
	cmp r0, #0x02
	bne _0811B244
	strb r5, [r3, #0x00]
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strb r6, [r0, #0x00]
	ldr r1, _0811B240 @ =0x00000153
	adds r0, r7, r1
	strb r6, [r0, #0x00]
	b _0811B2A4
_0811B238: .4byte 0x03000FC0
_0811B23C: .4byte 0x00000222
_0811B240: .4byte 0x00000153
_0811B244:
	ldr r0, _0811B27C @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r2, #0xE3
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, _0811B280 @ =0x00000222
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _0811B288
	movs r3, #0xCF
	lsls r3, r3, #0x01
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	cmp r1, #0x01
	bne _0811B288
	strb r0, [r2, #0x00]
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strb r1, [r0, #0x00]
	ldr r6, _0811B284 @ =0x00000153
	adds r0, r7, r6
	strb r1, [r0, #0x00]
	b _0811B2A4
_0811B27C: .4byte 0x03000FC0
_0811B280: .4byte 0x00000222
_0811B284: .4byte 0x00000153
_0811B288:
	movs r0, #0xCF
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r3, _0811B370 @ =0x00000153
	adds r1, r7, r3
	strb r0, [r1, #0x00]
_0811B2A4:
	movs r4, #0xCF
	lsls r4, r4, #0x01
	adds r4, r4, r7
	mov r10, r4
	ldrb r6, [r4, #0x00]
	cmp r8, r6
	beq _0811B32A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	movs r0, #0xA9
	lsls r0, r0, #0x01
	adds r1, r7, r0
_0811B2C2:
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _0811B370 @ =0x00000153
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	ldr r3, _0811B374 @ =0x03000FC0
	mov r8, r3
	ldr r0, [r3, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r4, _0811B378 @ =0x00000222
	mov r9, r4
	movs r1, #0x00
	mov r2, r9
	bl sub_80E98C0
	adds r5, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, r0, r6
	movs r2, #0x88
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	adds r4, r0, #0x0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	movs r1, #0x00
	mov r2, r9
	bl sub_80E98C0
	ldr r6, [r7, #0x30]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x15
	movs r2, #0x2C
	subs r2, r2, r5
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x14
	subs r2, r2, r4
	mov r4, r10
	ldrb r3, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x15
	movs r1, #0x20
	subs r1, r1, r0
	adds r0, r3, #0x0
	muls r0, r1
	adds r2, r2, r0
	strh r2, [r6, #0x02]
_0811B32A:
	movs r6, #0xC0
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0811B340
	b _0811B464
_0811B340:
	ldr r1, _0811B37C @ =0x0000019F
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0811B3CE
	ldr r2, [sp, #0x01C]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811B38C
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811B380
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
	b _0811B396
_0811B370: .4byte 0x00000153
_0811B374: .4byte 0x03000FC0
_0811B378: .4byte 0x00000222
_0811B37C: .4byte 0x0000019F
_0811B380:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x15
	bl play_sfx_80195B4
	b _0811B396
_0811B38C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x06
	bl play_sfx_80195B4
_0811B396:
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r2, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x3C]
	str r2, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x05
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x3C]
	adds r0, #0x20
	movs r1, #0xF0
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0811B3CE:
	movs r6, #0xC0
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x02]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0811B464
	ldr r1, _0811B414 @ =0x0000019F
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0811B464
	ldr r2, [sp, #0x01C]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0x00
	bne _0811B424
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811B418
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x03
	bl play_sfx_80195B4
	b _0811B42E
	.byte 0x00, 0x00
_0811B414: .4byte 0x0000019F
_0811B418:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x19
	bl play_sfx_80195B4
	b _0811B42E
_0811B424:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x19
	bl play_sfx_80195B4
_0811B42E:
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r2, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x3C]
	str r2, [sp, #0x000]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x3C]
	bl sprite_show_8020CBC
	ldr r0, [r7, #0x3C]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r2, [r7, #0x3C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0811B464:
	movs r0, #0x00
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
