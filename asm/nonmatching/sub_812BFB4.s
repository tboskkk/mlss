	.syntax unified
	.text

	thumb_func_start sub_812BFB4
sub_812BFB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r7, r5, #0x0
	adds r7, #0xC4
	ldrb r2, [r7, #0x00]
	movs r0, #0x80
	mov r9, r0
	ands r0, r2
	cmp r0, #0x00
	bne _0812BFD2
	b _0812C0EA
_0812BFD2:
	ldr r0, [r5, #0x3C]
	ldrh r1, [r0, #0x02]
	movs r3, #0x01
	mov r8, r3
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812C052
	adds r0, r5, #0x0
	adds r0, #0xBB
	mov r1, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x70
	movs r0, #0x1C
	strh r0, [r1, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC5
	ldrb r0, [r6, #0x00]
	movs r4, #0x0B
	muls r0, r4
	adds r0, #0x18
	adds r2, r5, #0x0
	adds r2, #0x72
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x78
	movs r2, #0xC0
	strh r2, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x7A
	movs r0, #0x2C
	strh r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strh r2, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x18
	adds r2, r5, #0x0
	adds r2, #0x76
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	movs r3, #0xA0
	lsls r3, r3, #0x04
	movs r2, #0x03
	bl sub_801B748
	movs r0, #0xE0
	lsls r0, r0, #0x05
	str r0, [r5, #0x68]
	ldrb r0, [r6, #0x00]
	muls r0, r4
	adds r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r5, #0x6C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	ldr r0, [r5, #0x2C]
	bl sprite_hide_8021F20
_0812C052:
	ldr r2, [r5, #0x3C]
	ldrh r1, [r2, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C09A
	ldrb r1, [r7, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xC2
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x24
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r1, [r0, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	strh r0, [r2, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xB8
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	b _0812C33A
_0812C09A:
	ldrh r1, [r2, #0x06]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0812C0C4
	adds r2, r5, #0x0
	adds r2, #0xC2
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xC3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bhi _0812C0BE
	b _0812C292
_0812C0BE:
	mov r0, r8
	strb r0, [r2, #0x00]
	b _0812C292
_0812C0C4:
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	bne _0812C0CE
	b _0812C33A
_0812C0CE:
	adds r1, r5, #0x0
	adds r1, #0xC2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0812C0E0
	b _0812C292
_0812C0E0:
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	b _0812C292
_0812C0EA:
	ldr r3, [r5, #0x3C]
	ldrh r1, [r3, #0x02]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0812C104
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	movs r0, #0x02
	b _0812C33C
_0812C104:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0812C1F4
	ldrb r0, [r7, #0x00]
	ldr r1, [r5, #0x58]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r6, [r0, #0x00]
	ldr r2, _0812C1D8 @ =0x03001038
	ldr r0, _0812C1DC @ =0x0819832C
	ldr r1, _0812C1E0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r4, _0812C1E4 @ =0x03000FF4
	ldr r0, [r4, #0x00]
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, [r4, #0x00]
	ldrb r0, [r7, #0x00]
	movs r3, #0x7F
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x8A
	adds r1, r1, r4
	mov r12, r1
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x63
	beq _0812C1E8
	adds r0, r4, #0x0
	adds r0, #0x88
	ldrh r0, [r0, #0x00]
	cmp r6, r0
	bhi _0812C1E8
	adds r1, r5, #0x0
	adds r1, #0xC2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	cmp r2, #0x63
	bls _0812C16E
	movs r2, #0x63
_0812C16E:
	ldrb r0, [r7, #0x00]
	adds r1, r3, #0x0
	ands r1, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	mov r3, r12
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0812C198
	adds r1, r0, #0x0
	adds r0, r1, r2
	cmp r0, #0x63
	ble _0812C198
	movs r0, #0x63
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0812C198:
	adds r0, r5, #0x0
	adds r0, #0xC3
	strb r2, [r0, #0x00]
	subs r0, #0x11
	movs r3, #0x00
	strh r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xC4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0xA4
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	movs r0, #0x72
	strh r0, [r1, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xBA
	strb r3, [r0, #0x00]
	subs r0, #0x02
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0x60
	bl play_sfx_80195B4
	b _0812C33A
	.byte 0x00, 0x00
_0812C1D8: .4byte 0x03001038
_0812C1DC: .4byte 0x0819832C
_0812C1E0: .4byte 0x08198220
_0812C1E4: .4byte 0x03000FF4
_0812C1E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x50
	bl play_sfx_80195B4
	b _0812C33A
_0812C1F4:
	ldrh r1, [r3, #0x06]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	beq _0812C2A4
	lsls r0, r2, #0x18
	cmp r0, #0x00
	bne _0812C216
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r7, #0x00]
	adds r2, r1, #0x0
	b _0812C21E
_0812C216:
	subs r0, r2, #0x1
	strb r0, [r7, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA8
_0812C21E:
	ldrh r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC4
	cmp r0, #0x06
	bhi _0812C23E
	ldrb r1, [r6, #0x00]
	adds r2, r0, #0x0
	subs r0, r2, #0x1
	cmp r1, r0
	bne _0812C23E
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _0812C24E
_0812C23E:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r2, #0x00
	beq _0812C24E
	subs r0, r2, #0x1
	strb r0, [r1, #0x00]
_0812C24E:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r1, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	movs r4, #0x00
	strh r0, [r2, #0x02]
	ldr r3, _0812C2A0 @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	ldrb r2, [r1, #0x03]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_812EF44
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_0812C292:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	b _0812C33A
	.byte 0x00, 0x00
_0812C2A0: .4byte byte_83BBDD0 @ =0x083BBDD0
_0812C2A4:
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0812C33A
	ldrb r3, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	adds r2, r1, #0x0
	cmp r3, r0
	bne _0812C2C0
	strb r4, [r7, #0x00]
	b _0812C2C4
_0812C2C0:
	adds r0, r3, #0x1
	strb r0, [r7, #0x00]
_0812C2C4:
	ldrh r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0xC4
	cmp r0, #0x06
	bhi _0812C2DE
	ldrb r1, [r6, #0x00]
	cmp r1, #0x00
	bne _0812C2DE
	adds r0, r5, #0x0
	adds r0, #0xC5
	strb r1, [r0, #0x00]
	adds r1, r0, #0x0
	b _0812C2EE
_0812C2DE:
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r2, [r0, #0x00]
	adds r1, r0, #0x0
	cmp r2, #0x05
	beq _0812C2EE
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
_0812C2EE:
	ldr r2, [r5, #0x2C]
	ldrb r1, [r1, #0x00]
	movs r0, #0x0B
	muls r0, r1
	adds r0, #0x1C
	movs r4, #0x00
	strh r0, [r2, #0x02]
	ldr r3, _0812C34C @ =0x083BBDD0
	ldrb r0, [r6, #0x00]
	movs r1, #0x7F
	adds r2, r1, #0x0
	ands r2, r0
	ldr r0, [r5, #0x40]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	ands r1, r0
	lsls r1, r1, #0x04
	adds r1, r1, r3
	ldrb r2, [r1, #0x03]
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x03
	bl sub_812EF44
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r1, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0x5F
	bl play_sfx_80195B4
_0812C33A:
	movs r0, #0x00
_0812C33C:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0812C34C: .4byte byte_83BBDD0 @ =0x083BBDD0
