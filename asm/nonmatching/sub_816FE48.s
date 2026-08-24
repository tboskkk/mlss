	.syntax unified
	.text

	thumb_func_start sub_816FE48
sub_816FE48:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8163A6C
	adds r0, r5, #0x0
	bl sub_8161E38
	movs r0, #0x02
	bl sub_8163BA0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816FE92
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x07
	ldr r3, _0816FF9C @ =0x06006D04
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r0, _0816FFA0 @ =0x0600680C
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0816FFA4 @ =0x0600684C
	adds r2, r1, r0
	ldr r0, _0816FFA8 @ =0x06006D44
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _0816FFAC @ =0x0600684E
	adds r1, r1, r0
	ldr r0, _0816FFB0 @ =0x06006D46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_0816FE92:
	adds r0, r5, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0816FEA0
	b _081700D4
_0816FEA0:
	adds r0, r4, #0x0
	adds r0, #0xE8
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0816FEB0
	b _081700D4
_0816FEB0:
	ldr r2, _0816FFB4 @ =0x0300034C
	ldrh r1, [r2, #0x28]
	movs r0, #0x01
	ands r0, r1
	adds r3, r5, #0x0
	adds r3, #0x74
	cmp r0, #0x00
	bne _0816FEC2
	b _08170030
_0816FEC2:
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0816FED0
	b _08170030
_0816FED0:
	adds r1, r5, #0x0
	adds r1, #0x52
	movs r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xC8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xCC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	adds r0, r4, #0x0
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FFC8
	movs r0, #0x00
_0816FF52:
	cmp r0, #0x00
	beq _0816FF58
	b _081700D4
_0816FF58:
	ldrh r2, [r2, #0x2A]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0816FFCC
	ldr r1, [r5, #0x6C]
	adds r0, r4, #0x0
	bl sub_816F1D0
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x07
	ldr r3, _0816FFB8 @ =0x06006D08
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r0, _0816FFA0 @ =0x0600680C
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0816FFA4 @ =0x0600684C
	adds r2, r1, r0
	ldr r0, _0816FFBC @ =0x06006D48
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _0816FFAC @ =0x0600684E
	adds r1, r1, r0
	ldr r0, _0816FFC0 @ =0x06006D4A
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, _0816FFC4 @ =0x0821AAF4
	b _0817000C
	.byte 0x00, 0x00
_0816FF9C: .4byte 0x06006D04
_0816FFA0: .4byte 0x0600680C
_0816FFA4: .4byte 0x0600684C
_0816FFA8: .4byte 0x06006D44
_0816FFAC: .4byte 0x0600684E
_0816FFB0: .4byte 0x06006D46
_0816FFB4: .4byte 0x0300034C
_0816FFB8: .4byte 0x06006D08
_0816FFBC: .4byte 0x06006D48
_0816FFC0: .4byte 0x06006D4A
_0816FFC4: .4byte dword_821AAF4 @ =0x0821AAF4
_0816FFC8:
	movs r0, #0x01
	b _0816FF52
_0816FFCC:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _0816FFD6
	b _081700D4
_0816FFD6:
	ldr r1, [r5, #0x6C]
	adds r0, r4, #0x0
	bl sub_816F36C
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x07
	ldr r3, _08170014 @ =0x06006D0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r0, _08170018 @ =0x0600680C
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0817001C @ =0x0600684C
	adds r2, r1, r0
	ldr r0, _08170020 @ =0x06006D4C
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _08170024 @ =0x0600684E
	adds r1, r1, r0
	ldr r0, _08170028 @ =0x06006D4E
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, _0817002C @ =0x0821AB26
_0817000C:
	adds r0, r5, #0x0
	bl sub_81639F8
	b _081700D4
_08170014: .4byte 0x06006D0C
_08170018: .4byte 0x0600680C
_0817001C: .4byte 0x0600684C
_08170020: .4byte 0x06006D4C
_08170024: .4byte 0x0600684E
_08170028: .4byte 0x06006D4E
_0817002C: .4byte dword_821AB26 @ =0x0821AB26
_08170030:
	ldrh r1, [r3, #0x00]
	movs r3, #0x02
	adds r0, r3, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	bne _081700D4
	ldrh r2, [r2, #0x28]
	movs r0, #0x40
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x00
	beq _08170084
	ldr r3, [r5, #0x6C]
	cmp r3, #0x00
	ble _081700D4
	subs r3, #0x01
	str r3, [r5, #0x6C]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	lsls r3, r3, #0x0C
	movs r0, #0xF0
	lsls r0, r0, #0x06
	adds r3, r3, r0
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r4, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8163978
	adds r1, r5, #0x0
	adds r1, #0x56
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x52
	strh r4, [r0, #0x00]
	b _081700C0
_08170084:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _081700CE
	ldr r3, [r5, #0x6C]
	cmp r3, #0x04
	bgt _081700D4
	adds r3, #0x01
	str r3, [r5, #0x6C]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	lsls r3, r3, #0x0C
	movs r0, #0xF0
	lsls r0, r0, #0x06
	adds r3, r3, r0
	movs r0, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	strb r6, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8163978
	adds r1, r5, #0x0
	adds r1, #0x56
	movs r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x04
	strh r0, [r1, #0x00]
_081700C0:
	adds r0, r5, #0x0
	bl sub_8161E38
	ldr r0, [r5, #0x70]
	adds r0, #0x01
	str r0, [r5, #0x70]
	b _081700D4
_081700CE:
	adds r0, r5, #0x0
	adds r0, #0x52
	strh r3, [r0, #0x00]
_081700D4:
	adds r0, r5, #0x0
	bl sub_8161DA0
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
