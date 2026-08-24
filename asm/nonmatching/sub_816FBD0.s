	.syntax unified
	.text

	thumb_func_start sub_816FBD0
sub_816FBD0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8163A6C
	adds r0, r5, #0x0
	bl sub_8161E38
	movs r0, #0x01
	bl sub_8163BA0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816FC16
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x02
	ldr r3, _0816FD1C @ =0x060068BC
	adds r1, #0x10
	ldr r0, _0816FD20 @ =0x06006900
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0816FD24 @ =0x06006940
	adds r2, r1, r0
	subs r0, #0x44
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _0816FD28 @ =0x06006942
	adds r1, r1, r0
	subs r0, #0x44
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_0816FC16:
	adds r0, r5, #0x0
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0816FC24
	b _0816FE3A
_0816FC24:
	adds r0, r4, #0x0
	adds r0, #0xE8
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0816FC34
	b _0816FE3A
_0816FC34:
	ldr r2, _0816FD2C @ =0x0300034C
	ldrh r1, [r2, #0x28]
	movs r0, #0x01
	ands r0, r1
	adds r3, r5, #0x0
	adds r3, #0x74
	cmp r0, #0x00
	bne _0816FC46
	b _0816FD94
_0816FC46:
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0816FC54
	b _0816FD94
_0816FC54:
	adds r1, r5, #0x0
	adds r1, #0x52
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xB0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xB4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xB8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xC8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xCC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	adds r0, r4, #0x0
	adds r0, #0xD4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0816FD38
	movs r0, #0x00
_0816FCD6:
	cmp r0, #0x00
	beq _0816FCDC
	b _0816FE3A
_0816FCDC:
	ldrh r2, [r2, #0x2A]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0816FD3C
	ldr r1, [r5, #0x6C]
	adds r0, r4, #0x0
	bl sub_816F518
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x02
	ldr r3, _0816FD30 @ =0x0600693C
	adds r1, #0x10
	ldr r0, _0816FD20 @ =0x06006900
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0816FD24 @ =0x06006940
	adds r2, r1, r0
	adds r0, #0x3C
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _0816FD28 @ =0x06006942
	adds r1, r1, r0
	adds r0, #0x3C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, _0816FD34 @ =0x0821AA90
	b _0816FD76
	.byte 0x00, 0x00
_0816FD1C: .4byte 0x060068BC
_0816FD20: .4byte 0x06006900
_0816FD24: .4byte 0x06006940
_0816FD28: .4byte 0x06006942
_0816FD2C: .4byte 0x0300034C
_0816FD30: .4byte 0x0600693C
_0816FD34: .4byte dword_821AA90 @ =0x0821AA90
_0816FD38:
	movs r0, #0x01
	b _0816FCD6
_0816FD3C:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0816FE3A
	ldr r1, [r5, #0x6C]
	adds r0, r4, #0x0
	bl sub_816F67C
	ldr r1, [r5, #0x6C]
	lsls r1, r1, #0x02
	ldr r3, _0816FD80 @ =0x060069BC
	adds r1, #0x10
	ldr r0, _0816FD84 @ =0x06006900
	adds r2, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, _0816FD88 @ =0x06006940
	adds r2, r1, r0
	adds r0, #0xBC
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	ldr r0, _0816FD8C @ =0x06006942
	adds r1, r1, r0
	adds r0, #0xBC
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, _0816FD90 @ =0x0821AAC2
_0816FD76:
	adds r0, r5, #0x0
	bl sub_81639F8
	b _0816FE3A
	.byte 0x00, 0x00
_0816FD80: .4byte 0x060069BC
_0816FD84: .4byte 0x06006900
_0816FD88: .4byte 0x06006940
_0816FD8C: .4byte 0x06006942
_0816FD90: .4byte dword_821AAC2 @ =0x0821AAC2
_0816FD94:
	ldrh r1, [r3, #0x00]
	movs r7, #0x02
	adds r0, r7, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x00
	bne _0816FE3A
	ldrh r2, [r2, #0x28]
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	beq _0816FDE8
	ldr r1, [r5, #0x6C]
	cmp r1, #0x00
	ble _0816FE3A
	subs r1, #0x01
	str r1, [r5, #0x6C]
	lsls r1, r1, #0x0C
	movs r0, #0x90
	lsls r0, r0, #0x07
	adds r1, r1, r0
	movs r3, #0x90
	lsls r3, r3, #0x06
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
	movs r0, #0x06
	strh r0, [r1, #0x00]
	b _0816FE24
_0816FDE8:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	beq _0816FE32
	ldr r1, [r5, #0x6C]
	cmp r1, #0x04
	bgt _0816FE3A
	adds r1, #0x01
	str r1, [r5, #0x6C]
	lsls r1, r1, #0x0C
	movs r0, #0x90
	lsls r0, r0, #0x07
	adds r1, r1, r0
	movs r3, #0x90
	lsls r3, r3, #0x06
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
	strh r7, [r0, #0x00]
_0816FE24:
	adds r0, r5, #0x0
	bl sub_8161E38
	ldr r0, [r5, #0x70]
	adds r0, #0x01
	str r0, [r5, #0x70]
	b _0816FE3A
_0816FE32:
	adds r1, r5, #0x0
	adds r1, #0x52
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0816FE3A:
	adds r0, r5, #0x0
	bl sub_8161DA0
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
