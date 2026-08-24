	.syntax unified
	.text

	thumb_func_start sub_8083C74
sub_8083C74:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08083D58 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08083C8A
	b _08083DF0
_08083C8A:
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r4, #0x0D
	ldr r0, _08083D5C @ =0x03000D74
	ldr r5, [r0, #0x00]
	ldrh r1, [r5, #0x26]
	ldr r6, _08083D60 @ =0x0000FFFF
	mov r8, r0
	ldr r0, _08083D64 @ =0x03001034
	mov r12, r0
	ldr r3, _08083D68 @ =0x08198154
	ldr r7, _08083D6C @ =0x081980D8
	cmp r1, r6
	beq _08083CBE
	adds r2, r6, #0x0
	adds r1, r5, #0x0
	adds r1, #0x26
_08083CB0:
	subs r1, #0x02
	subs r4, #0x01
	ldrh r0, [r1, #0x00]
	cmp r0, r2
	beq _08083CBE
	cmp r4, #0x00
	bne _08083CB0
_08083CBE:
	subs r0, r4, #0x1
	cmp r0, #0x0B
	bhi _08083DBE
	mov r1, r8
	ldr r2, [r1, #0x00]
	lsls r1, r4, #0x01
	adds r0, r2, #0x0
	adds r0, #0x0C
	adds r0, r0, r1
	ldrh r1, [r2, #0x26]
	strh r1, [r0, #0x00]
	subs r0, r3, r7
	mov r2, r12
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083D70 @ =0x02000420
	lsls r1, r4, #0x05
	ldr r2, _08083D74 @ =0x02000280
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083D78 @ =0x0300034C
	movs r3, #0x01
	lsls r3, r4
	ldrh r1, [r2, #0x00]
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x30]
	cmp r2, #0x00
	beq _08083D2C
	movs r6, #0x20
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r4, _08083D7C @ =0x0000DFFF
_08083D0A:
	ldrb r1, [r2, #0x12]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08083D26
	ldrh r1, [r2, #0x14]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08083D26
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2, #0x14]
_08083D26:
	ldr r2, [r2, #0x68]
	cmp r2, #0x00
	bne _08083D0A
_08083D2C:
	ldr r7, _08083D58 @ =0x03000FD8
	movs r6, #0x00
	movs r5, #0x00
_08083D32:
	ldr r0, [r7, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r6, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083D80
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083D80
	lsls r1, r5, #0x18
	b _08083DAA
_08083D58: .4byte 0x03000FD8
_08083D5C: .4byte 0x03000D74
_08083D60: .4byte 0x0000FFFF
_08083D64: .4byte 0x03001034
_08083D68: .4byte dword_8198154 @ =0x08198154
_08083D6C: .4byte dword_81980D8 @ =0x081980D8
_08083D70: .4byte 0x02000420
_08083D74: .4byte 0x02000280
_08083D78: .4byte 0x0300034C
_08083D7C: .4byte 0x0000DFFF
_08083D80:
	adds r1, r6, #0x0
	adds r1, #0x1C
	adds r4, r5, #0x1
	ldr r0, [r7, #0x00]
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	adds r2, r1, r0
	ldrb r1, [r2, #0x01]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x0D
	bne _08083DB6
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _08083DB6
	lsls r1, r4, #0x18
_08083DAA:
	lsrs r1, r1, #0x18
	adds r0, r3, #0x0
	movs r2, #0x00
	bl sub_8115048
	b _08083DBE
_08083DB6:
	adds r6, #0x38
	adds r5, #0x02
	cmp r5, #0x07
	ble _08083D32
_08083DBE:
	ldr r0, _08083DFC @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldr r2, _08083E00 @ =0x03001034
	ldr r0, _08083E04 @ =0x08198154
	ldr r1, _08083E08 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08083E0C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08083E10 @ =0x00003C90
	adds r0, r0, r1
	ldr r1, _08083E14 @ =0x02000420
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _08083E18 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
_08083DF0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08083DFC: .4byte 0x03000D74
_08083E00: .4byte 0x03001034
_08083E04: .4byte dword_8198154 @ =0x08198154
_08083E08: .4byte dword_81980D8 @ =0x081980D8
_08083E0C: .4byte 0x03000FDC
_08083E10: .4byte 0x00003C90
_08083E14: .4byte 0x02000420
_08083E18: .4byte 0x0300034C
