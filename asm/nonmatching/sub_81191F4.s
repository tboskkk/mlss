	.syntax unified
	.text

	thumb_func_start sub_81191F4
sub_81191F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r2, [r1, #0x06]
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _081192B0
	ldr r2, _081192A4 @ =0x00000189
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0811922A
	movs r3, #0xC5
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
_0811922A:
	subs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	movs r4, #0xA9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	ldr r6, _081192A4 @ =0x00000189
	adds r5, r7, r6
	ldrb r0, [r5, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x46
	movs r0, #0xC5
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x03
	subs r1, r1, r0
	strh r1, [r2, #0x02]
	ldr r2, [r7, #0x34]
	ldrb r1, [r5, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x46
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x03
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r0, _081192A8 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _081192AC @ =0x00000225
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _08119358
	ldrb r0, [r5, #0x00]
	ldrb r4, [r4, #0x00]
	cmp r0, r4
	bne _08119358
	ldr r0, [r7, #0x34]
	ldrb r1, [r5, #0x00]
	adds r1, #0x02
	str r2, [sp, #0x000]
	movs r2, #0x00
	b _08119366
	.byte 0x00, 0x00
_081192A4: .4byte 0x00000189
_081192A8: .4byte 0x03000FC0
_081192AC: .4byte 0x00000225
_081192B0:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08119374
	ldr r4, _081192D0 @ =0x00000189
	adds r1, r7, r4
	ldrb r2, [r1, #0x00]
	movs r5, #0xC5
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r2, r0
	bne _081192D4
	strb r3, [r1, #0x00]
	b _081192D8
_081192D0: .4byte 0x00000189
_081192D4:
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
_081192D8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	movs r6, #0xA9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, [r7, #0x30]
	ldr r0, _0811934C @ =0x00000189
	adds r5, r7, r0
	ldrb r0, [r5, #0x00]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	adds r1, #0x46
	movs r3, #0xC5
	lsls r3, r3, #0x01
	adds r4, r7, r3
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x03
	subs r1, r1, r0
	strh r1, [r2, #0x02]
	ldr r2, [r7, #0x34]
	ldrb r1, [r5, #0x00]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, #0x46
	ldrb r1, [r4, #0x00]
	lsls r1, r1, #0x03
	subs r0, r0, r1
	strh r0, [r2, #0x02]
	ldr r0, _08119350 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _08119354 @ =0x00000225
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x00
	bne _08119358
	ldrb r0, [r5, #0x00]
	ldrb r4, [r4, #0x00]
	cmp r0, r4
	bne _08119358
	ldr r0, [r7, #0x34]
	ldrb r1, [r5, #0x00]
	adds r1, #0x02
	str r2, [sp, #0x000]
	movs r2, #0x00
	b _08119366
_0811934C: .4byte 0x00000189
_08119350: .4byte 0x03000FC0
_08119354: .4byte 0x00000225
_08119358:
	ldr r0, [r7, #0x34]
	ldr r2, _08119370 @ =0x00000189
	adds r1, r7, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	movs r2, #0x00
	str r2, [sp, #0x000]
_08119366:
	movs r3, #0x00
	bl sub_801E150
	bl _08119C24
_08119370:
	lsls r1, r1, #0x06
	lsls r0, r0, #0x00
_08119374:
	ldrh r2, [r1, #0x02]
	movs r3, #0x01
	mov r10, r3
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	bne _08119386
	bl _08119BF8
_08119386:
	ldr r4, _08119524 @ =0x00000189
	adds r4, r7, r4
	str r4, [sp, #0x010]
	ldrb r5, [r4, #0x00]
	mov r9, r5
	cmp r5, #0x00
	beq _08119396
	b _0811955C
_08119396:
	movs r6, #0xC8
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	ldr r1, _08119528 @ =0xFFFFFF00
	ands r0, r1
	cmp r0, #0x00
	bne _081193A8
	b _0811955C
_081193A8:
	ldr r0, [r7, #0x20]
	ldr r1, _0811952C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0xAB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r10
	strb r2, [r0, #0x00]
	ldr r3, _08119530 @ =0x0000014F
	adds r1, r7, r3
	movs r0, #0x06
	strb r0, [r1, #0x00]
	ldr r6, _08119534 @ =0x03001034
	ldr r4, _08119538 @ =0x08198154
	ldr r0, _0811953C @ =0x081980D8
	subs r4, r4, r0
	ldr r3, [r6, #0x00]
	adds r3, r3, r4
	movs r5, #0xF0
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldr r0, [r0, #0x00]
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r1, r1, r7
	mov r8, r1
	ldrh r1, [r1, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r3, [r6, #0x00]
	adds r3, r3, r4
	movs r2, #0xF2
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r2, _08119540 @ =0x06000800
	adds r1, r1, r2
	adds r2, r5, #0x0
	bl _call_via_r3
	ldr r3, [r6, #0x00]
	adds r3, r3, r4
	movs r4, #0xF4
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	mov r6, r8
	ldrh r1, [r6, #0x00]
	ldr r2, _08119544 @ =0x06001000
	adds r1, r1, r2
	adds r2, r5, #0x0
	bl _call_via_r3
	movs r3, #0xBF
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r3, #0x00
	movs r0, #0xF1
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _08119548 @ =0x02000048
	movs r0, #0x1B
	strh r0, [r1, #0x00]
	subs r4, #0x94
	adds r0, r7, r4
	mov r5, r10
	strb r5, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x88
	ldr r0, [r2, #0x00]
	strb r5, [r0, #0x0C]
	ldr r1, [r2, #0x00]
	ldrh r0, [r6, #0x00]
	strh r0, [r1, #0x14]
	ldr r0, [r2, #0x00]
	strb r5, [r0, #0x1C]
	ldr r1, [r2, #0x00]
	ldr r0, _0811954C @ =0x0000FF78
	strh r0, [r1, #0x16]
	ldr r0, [r2, #0x00]
	movs r4, #0xF0
	strb r4, [r0, #0x1A]
	ldr r1, [r2, #0x00]
	ldr r0, _08119550 @ =0x0000FFB0
	strh r0, [r1, #0x18]
	ldr r1, [r2, #0x00]
	movs r0, #0x09
	strb r0, [r1, #0x1B]
	ldr r0, [r2, #0x00]
	strb r5, [r0, #0x1D]
	ldr r1, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x05
	adds r0, r6, #0x0
	mov r5, r8
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x00]
	adds r0, #0x2C
	mov r6, r10
	strb r6, [r0, #0x00]
	ldr r0, [r2, #0x00]
	mov r1, r9
	strh r1, [r0, #0x26]
	ldr r0, [r2, #0x00]
	adds r0, #0x2A
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x28]
	ldr r0, [r2, #0x00]
	adds r0, #0x2B
	movs r1, #0xFA
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r0, #0x2D
	strb r3, [r0, #0x00]
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x03
	strb r0, [r1, #0x00]
	movs r5, #0xB2
	lsls r5, r5, #0x01
	adds r0, r7, r5
	movs r6, #0x01
	strh r6, [r0, #0x00]
	ldr r1, _08119554 @ =0x00000167
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	ldr r0, [r7, #0x34]
	ldr r2, [sp, #0x010]
	ldrb r1, [r2, #0x00]
	adds r1, #0x01
	mov r3, r9
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r7, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r7, #0x34]
	ldrh r0, [r0, #0x02]
	subs r5, #0x1A
	adds r1, r7, r5
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x34]
	movs r6, #0x02
	ldsh r1, [r0, r6]
	adds r0, r1, #0x0
	adds r0, #0x10
	cmp r0, #0x00
	bge _08119512
	adds r0, #0x0F
_08119512:
	asrs r0, r0, #0x04
	ldr r2, _08119558 @ =0x0000014B
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	movs r3, #0xA6
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strb r4, [r0, #0x00]
	b _08119C24
_08119524: .4byte 0x00000189
_08119528: .4byte 0xFFFFFF00
_0811952C: .4byte 0x0000FFFF
_08119530: .4byte 0x0000014F
_08119534: .4byte 0x03001034
_08119538: .4byte dword_8198154 @ =0x08198154
_0811953C: .4byte dword_81980D8 @ =0x081980D8
_08119540: .4byte 0x06000800
_08119544: .4byte 0x06001000
_08119548: .4byte 0x02000048
_0811954C: .4byte 0x0000FF78
_08119550: .4byte 0x0000FFB0
_08119554: .4byte 0x00000167
_08119558: .4byte 0x0000014B
_0811955C:
	ldr r4, _08119748 @ =0x00000189
	adds r4, r7, r4
	str r4, [sp, #0x014]
	ldrb r5, [r4, #0x00]
	mov r10, r5
	cmp r5, #0x01
	beq _0811956C
	b _08119784
_0811956C:
	ldr r0, [r7, #0x20]
	ldr r1, _0811974C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r6, #0x00
	mov r9, r6
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0xAB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strb r5, [r0, #0x00]
	ldr r2, _08119750 @ =0x0000014F
	adds r1, r7, r2
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r3, _08119754 @ =0x03001034
	mov r8, r3
	ldr r5, _08119758 @ =0x08198154
	ldr r0, _0811975C @ =0x081980D8
	subs r5, r5, r0
	ldr r3, [r3, #0x00]
	adds r3, r3, r5
	movs r4, #0xFE
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldr r0, [r0, #0x00]
	movs r6, #0xBE
	lsls r6, r6, #0x01
	adds r4, r7, r6
	ldrh r1, [r4, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r6, #0x80
	lsls r6, r6, #0x04
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119760 @ =0x06000800
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119764 @ =0x06001000
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119768 @ =0x06001800
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	ldrh r0, [r4, #0x00]
	movs r3, #0xE7
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r5, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r6
	movs r6, #0xE8
	lsls r6, r6, #0x01
	adds r1, r7, r6
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	adds r3, #0x04
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	movs r6, #0xC0
	lsls r6, r6, #0x05
	adds r0, r6, #0x0
	ldrh r4, [r4, #0x00]
	adds r0, r0, r4
	movs r1, #0xEA
	lsls r1, r1, #0x01
	adds r4, r7, r1
	strh r0, [r4, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0xF1
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0811976C @ =0x02000048
	movs r0, #0x1B
	strh r0, [r1, #0x00]
	subs r3, #0x7E
	adds r0, r7, r3
	mov r6, r10
	strb r6, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x88
	ldr r0, [r2, #0x00]
	strb r6, [r0, #0x0C]
	ldr r3, [r2, #0x00]
	ldr r1, _08119770 @ =0x0000019F
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	adds r1, #0x03
	lsls r1, r1, #0x01
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r7, r6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x14]
	ldr r0, [r2, #0x00]
	mov r1, r10
	strb r1, [r0, #0x1C]
	ldr r1, [r2, #0x00]
	ldr r0, _08119774 @ =0x0000FF78
	strh r0, [r1, #0x16]
	ldr r0, [r2, #0x00]
	movs r6, #0xF0
	strb r6, [r0, #0x1A]
	ldr r1, [r2, #0x00]
	ldr r0, _08119778 @ =0x0000FF60
	strh r0, [r1, #0x18]
	ldr r1, [r2, #0x00]
	movs r0, #0x14
	strb r0, [r1, #0x1B]
	ldr r0, [r2, #0x00]
	mov r3, r10
	strb r3, [r0, #0x1D]
	ldr r1, [r2, #0x00]
	ldrh r0, [r4, #0x00]
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x00]
	adds r0, #0x2C
	strb r3, [r0, #0x00]
	ldr r0, [r2, #0x00]
	mov r4, r9
	strh r4, [r0, #0x26]
	ldr r0, [r2, #0x00]
	adds r0, #0x2A
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x28]
	ldr r0, [r2, #0x00]
	adds r0, #0x2B
	movs r1, #0xF8
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r0, #0x2D
	strb r5, [r0, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0x03
	strb r0, [r1, #0x00]
	movs r1, #0xB2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r10
	strh r2, [r0, #0x00]
	ldr r3, _0811977C @ =0x00000167
	adds r0, r7, r3
	strb r5, [r0, #0x00]
	ldr r0, [r7, #0x34]
	ldr r4, [sp, #0x014]
	ldrb r1, [r4, #0x00]
	adds r1, #0x01
	mov r5, r9
	str r5, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r7, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r7, #0x34]
	ldrh r0, [r0, #0x02]
	movs r2, #0xA5
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x34]
	movs r3, #0x02
	ldsh r1, [r0, r3]
	adds r0, r1, #0x0
	adds r0, #0x10
	cmp r0, #0x00
	bge _08119736
	adds r0, #0x0F
_08119736:
	asrs r0, r0, #0x04
	ldr r4, _08119780 @ =0x0000014B
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	movs r5, #0xA6
	lsls r5, r5, #0x01
	adds r0, r7, r5
	strb r6, [r0, #0x00]
	b _08119C24
_08119748: .4byte 0x00000189
_0811974C: .4byte 0x0000FFFF
_08119750: .4byte 0x0000014F
_08119754: .4byte 0x03001034
_08119758: .4byte dword_8198154 @ =0x08198154
_0811975C: .4byte dword_81980D8 @ =0x081980D8
_08119760: .4byte 0x06000800
_08119764: .4byte 0x06001000
_08119768: .4byte 0x06001800
_0811976C: .4byte 0x02000048
_08119770: .4byte 0x0000019F
_08119774: .4byte 0x0000FF78
_08119778: .4byte 0x0000FF60
_0811977C: .4byte 0x00000167
_08119780: .4byte 0x0000014B
_08119784:
	mov r6, r10
	cmp r6, #0x02
	beq _0811978C
	b _081199B0
_0811978C:
	ldr r0, [r7, #0x20]
	ldr r1, _0811997C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	mov r10, r1
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r2, #0xAB
	lsls r2, r2, #0x01
	adds r0, r7, r2
	movs r3, #0x01
	mov r9, r3
	mov r4, r9
	strb r4, [r0, #0x00]
	ldr r5, _08119980 @ =0x0000014F
	adds r1, r7, r5
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	ldr r6, _08119984 @ =0x03001034
	mov r8, r6
	ldr r5, _08119988 @ =0x08198154
	ldr r0, _0811998C @ =0x081980D8
	subs r5, r5, r0
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	movs r1, #0xF6
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	adds r2, #0x26
	adds r4, r7, r2
	ldrh r1, [r4, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r6, #0x80
	lsls r6, r6, #0x04
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119990 @ =0x06000800
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0xFA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119994 @ =0x06001000
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	mov r0, r8
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r2, _08119998 @ =0x06001800
	adds r1, r1, r2
	adds r2, r6, #0x0
	bl _call_via_r3
	ldrh r0, [r4, #0x00]
	movs r3, #0xE7
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r5, #0x00
	mov r8, r5
	strh r0, [r1, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r6
	movs r6, #0xE8
	lsls r6, r6, #0x01
	adds r1, r7, r6
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	adds r3, #0x04
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	movs r5, #0xC0
	lsls r5, r5, #0x05
	adds r0, r5, #0x0
	ldrh r4, [r4, #0x00]
	adds r0, r0, r4
	adds r6, #0x04
	adds r1, r7, r6
	strh r0, [r1, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r1, r7, r0
	movs r0, #0xF1
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0811999C @ =0x02000048
	movs r0, #0x19
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	mov r2, r9
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x88
	ldr r0, [r2, #0x00]
	mov r3, r9
	strb r3, [r0, #0x0C]
	ldr r1, [r2, #0x00]
	movs r4, #0xDE
	lsls r4, r4, #0x01
	adds r6, r7, r4
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x08
	movs r5, #0xE4
	lsls r5, r5, #0x01
	adds r3, r7, r5
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x14]
	ldr r0, [r2, #0x00]
	mov r1, r9
	strb r1, [r0, #0x1C]
	ldr r1, [r2, #0x00]
	ldr r0, _081199A0 @ =0x0000FF88
	strh r0, [r1, #0x16]
	ldr r1, [r2, #0x00]
	movs r0, #0xF1
	strb r0, [r1, #0x1A]
	ldr r0, [r2, #0x00]
	ldr r4, _081199A4 @ =0x0000FF60
	strh r4, [r0, #0x18]
	ldr r0, [r2, #0x00]
	movs r5, #0x14
	strb r5, [r0, #0x1B]
	ldr r0, [r2, #0x00]
	mov r1, r9
	strb r1, [r0, #0x1D]
	ldr r1, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x02
	adds r0, #0x06
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x24]
	ldr r0, [r2, #0x00]
	adds r0, #0x2C
	mov r3, r9
	strb r3, [r0, #0x00]
	ldr r0, [r2, #0x00]
	mov r6, r10
	strh r6, [r0, #0x26]
	ldr r0, [r2, #0x00]
	adds r0, #0x2A
	movs r1, #0x08
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	strh r4, [r0, #0x28]
	ldr r0, [r2, #0x00]
	adds r0, #0x2B
	strb r5, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r0, #0x2D
	mov r1, r8
	strb r1, [r0, #0x00]
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	movs r0, #0x03
	strb r0, [r1, #0x00]
	movs r3, #0xB2
	lsls r3, r3, #0x01
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	ldr r5, _081199A8 @ =0x00000167
	adds r0, r7, r5
	mov r6, r8
	strb r6, [r0, #0x00]
	ldr r0, [r7, #0x34]
	ldr r2, [sp, #0x014]
	ldrb r1, [r2, #0x00]
	adds r1, #0x01
	mov r3, r10
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r7, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r7, #0x34]
	ldrh r0, [r0, #0x02]
	movs r4, #0xA5
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x34]
	movs r5, #0x02
	ldsh r1, [r0, r5]
	adds r0, r1, #0x0
	adds r0, #0x10
	cmp r0, #0x00
	bge _0811996A
	adds r0, #0x0F
_0811996A:
	asrs r0, r0, #0x04
	ldr r6, _081199AC @ =0x0000014B
	adds r1, r7, r6
	strb r0, [r1, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	b _08119BB2
	.byte 0x00, 0x00
_0811997C: .4byte 0x0000FFFF
_08119980: .4byte 0x0000014F
_08119984: .4byte 0x03001034
_08119988: .4byte dword_8198154 @ =0x08198154
_0811998C: .4byte dword_81980D8 @ =0x081980D8
_08119990: .4byte 0x06000800
_08119994: .4byte 0x06001000
_08119998: .4byte 0x06001800
_0811999C: .4byte 0x02000048
_081199A0: .4byte 0x0000FF88
_081199A4: .4byte 0x0000FF60
_081199A8: .4byte 0x00000167
_081199AC: .4byte 0x0000014B
_081199B0:
	ldr r2, [sp, #0x014]
	ldrb r1, [r2, #0x00]
	movs r3, #0xC5
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	cmp r1, r0
	beq _081199C4
	b _08119BEC
_081199C4:
	ldr r4, _08119BB8 @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, _08119BBC @ =0x00000225
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081199DE
	b _08119BEC
_081199DE:
	ldr r0, [r7, #0x20]
	ldr r1, _08119BC0 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r6, #0x00
	mov r9, r6
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	movs r1, #0xAB
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r5, #0x01
	strb r5, [r0, #0x00]
	ldr r2, _08119BC4 @ =0x0000014F
	adds r1, r7, r2
	movs r0, #0x0C
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x28]
	ldr r0, [r0, #0x70]
	ldr r1, _08119BC8 @ =0x06008000
	movs r2, #0xC0
	lsls r2, r2, #0x07
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r7, #0x28]
	ldr r0, [r0, #0x68]
	ldr r1, _08119BCC @ =0x0600E000
	movs r2, #0xC0
	lsls r2, r2, #0x05
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08119A54
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	ldr r4, _08119BD0 @ =0x000001C1
	adds r1, r7, r4
	ldrb r2, [r1, #0x00]
	lsls r3, r2, #0x03
	ldr r1, _08119BD4 @ =0x06018000
	subs r1, r1, r3
	lsls r2, r2, #0x01
	bl CpuFastSet
_08119A54:
	movs r6, #0x97
	lsls r6, r6, #0x02
	adds r0, r7, r6
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08119A86
	adds r0, #0x1F
	movs r1, #0x20
	negs r1, r1
	ands r0, r1
	movs r2, #0xE1
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrb r2, [r1, #0x00]
	lsls r3, r2, #0x03
	ldr r1, _08119BD4 @ =0x06018000
	subs r1, r1, r3
	ldr r4, _08119BD0 @ =0x000001C1
	adds r3, r7, r4
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x03
	subs r1, r1, r3
	lsls r2, r2, #0x01
	bl CpuFastSet
_08119A86:
	movs r6, #0xBF
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0xF1
	lsls r0, r0, #0x06
	strh r0, [r1, #0x00]
	movs r1, #0xAA
	lsls r1, r1, #0x01
	adds r0, r7, r1
	strb r5, [r0, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x88
	ldr r0, [r4, #0x00]
	strb r5, [r0, #0x0C]
	ldr r1, [r4, #0x00]
	movs r0, #0xF6
	lsls r0, r0, #0x08
	strh r0, [r1, #0x14]
	ldr r0, [r4, #0x00]
	strb r5, [r0, #0x1C]
	ldr r1, [r4, #0x00]
	ldr r0, _08119BD8 @ =0x0000FF88
	strh r0, [r1, #0x16]
	ldr r1, [r4, #0x00]
	movs r0, #0xF1
	strb r0, [r1, #0x1A]
	ldr r0, [r4, #0x00]
	movs r6, #0xA0
	strh r6, [r0, #0x18]
	ldr r0, [r4, #0x00]
	movs r2, #0xEC
	mov r8, r2
	mov r3, r8
	strb r3, [r0, #0x1B]
	ldr r0, [r4, #0x00]
	strb r5, [r0, #0x1D]
	ldr r1, [r4, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x08
	strh r0, [r1, #0x24]
	ldr r0, [r4, #0x00]
	adds r0, #0x2C
	strb r5, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r1, r9
	strh r1, [r0, #0x26]
	ldr r0, [r4, #0x00]
	adds r0, #0x2A
	movs r2, #0x08
	mov r10, r2
	mov r3, r10
	strb r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	strh r6, [r0, #0x28]
	ldr r0, [r4, #0x00]
	adds r0, #0x2B
	mov r1, r8
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x2D
	movs r2, #0x00
	strb r2, [r0, #0x00]
	ldr r3, _08119BB8 @ =0x03000FC0
	ldr r0, [r3, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, _08119BDC @ =0x00000226
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08119B4A
	ldr r1, [r4, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x08
	strh r0, [r1, #0x34]
	ldr r0, [r4, #0x00]
	adds r0, #0x3C
	strb r5, [r0, #0x00]
	ldr r0, [r4, #0x00]
	mov r2, r9
	strh r2, [r0, #0x36]
	ldr r0, [r4, #0x00]
	adds r0, #0x3A
	mov r3, r10
	strb r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	strh r6, [r0, #0x38]
	ldr r0, [r4, #0x00]
	adds r0, #0x3B
	mov r6, r8
	strb r6, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x3D
	movs r1, #0x00
	strb r1, [r0, #0x00]
_08119B4A:
	ldr r1, _08119BE0 @ =0x02000048
	movs r0, #0x18
	strh r0, [r1, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r5, [r0, #0x00]
	ldr r3, _08119BE4 @ =0x00000167
	adds r0, r7, r3
	movs r4, #0x00
	strb r4, [r0, #0x00]
	ldr r0, [r7, #0x34]
	ldr r5, [sp, #0x014]
	ldrb r1, [r5, #0x00]
	adds r1, #0x01
	mov r6, r9
	str r6, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r7, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r7, #0x34]
	ldrh r0, [r0, #0x02]
	movs r2, #0xA5
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x34]
	movs r3, #0x02
	ldsh r1, [r0, r3]
	adds r0, r1, #0x0
	adds r0, #0x10
	cmp r0, #0x00
	bge _08119BA4
	adds r0, #0x0F
_08119BA4:
	asrs r0, r0, #0x04
	ldr r4, _08119BE8 @ =0x0000014B
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	movs r5, #0xA6
	lsls r5, r5, #0x01
	adds r1, r7, r5
_08119BB2:
	movs r0, #0xF0
	strb r0, [r1, #0x00]
	b _08119C24
_08119BB8: .4byte 0x03000FC0
_08119BBC: .4byte 0x00000225
_08119BC0: .4byte 0x0000FFFF
_08119BC4: .4byte 0x0000014F
_08119BC8: .4byte 0x06008000
_08119BCC: .4byte 0x0600E000
_08119BD0: .4byte 0x000001C1
_08119BD4: .4byte 0x06018000
_08119BD8: .4byte 0x0000FF88
_08119BDC: .4byte 0x00000226
_08119BE0: .4byte 0x02000048
_08119BE4: .4byte 0x00000167
_08119BE8: .4byte 0x0000014B
_08119BEC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _08119C24
_08119BF8:
	.byte 0x02, 0x20, 0x10, 0x40, 0x00, 0x28, 0x03, 0xD0, 0x01, 0x21, 0x49, 0x42, 0x61, 0x20, 0x06, 0xE0
	.byte 0x09, 0x68, 0x05, 0x48, 0x81, 0x42, 0x09, 0xD1, 0x61, 0x20, 0x01, 0x21, 0x49, 0x42, 0xFF, 0xF6
	.byte 0xCD, 0xFC, 0x02, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00
_08119C24:
	movs r0, #0x00
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
