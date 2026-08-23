	.syntax unified
	.text

	thumb_func_start sub_816C970
sub_816C970:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r0, [r7, #0x5C]
	cmp r0, #0x0A
	bgt _0816C9C8
	cmp r0, #0x07
	blt _0816C9C8
	ldr r0, _0816C9C4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0816C9C8
	ldr r0, [r7, #0x2C]
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816C9A6
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x97
	bl stop_sfx_80195A8
_0816C9A6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x37
	bl play_sfx_80195B4
	movs r0, #0x02
	str r0, [r7, #0x58]
	movs r0, #0x05
	str r0, [r7, #0x54]
	adds r1, r7, #0x0
	adds r1, #0x68
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _0816CD96
	.byte 0x00, 0x00
_0816C9C4: .4byte 0x0300034C
_0816C9C8:
	ldr r0, [r7, #0x44]
	bl sub_8161E38
	ldr r0, [r7, #0x2C]
	ldr r1, [r0, #0x6C]
	ldr r0, [r1, #0x70]
	adds r0, #0x20
	str r0, [r1, #0x70]
	movs r4, #0x80
	lsls r4, r4, #0x01
	cmp r0, r4
	ble _0816C9E2
	str r4, [r1, #0x70]
_0816C9E2:
	adds r0, r1, #0x0
	bl sub_816D734
	ldr r0, [r7, #0x2C]
	ldr r1, [r0, #0x70]
	ldr r0, [r1, #0x70]
	adds r0, #0x20
	str r0, [r1, #0x70]
	cmp r0, r4
	ble _0816C9F8
	str r4, [r1, #0x70]
_0816C9F8:
	adds r0, r1, #0x0
	bl sub_816D734
	ldr r0, [r7, #0x2C]
	bl sub_816BB70
	ldr r0, [r7, #0x30]
	bl sub_8161E38
	ldr r0, [r7, #0x34]
	bl sub_8161E38
	ldr r0, [r7, #0x38]
	movs r1, #0x00
	bl sub_816B690
	ldr r0, [r7, #0x3C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_816B45C
	ldr r0, [r7, #0x5C]
	cmp r0, #0x0A
	bls _0816CA2A
	b _0816CD7C
_0816CA2A:
	lsls r0, r0, #0x02
	ldr r1, _0816CA34 @ =lbl_0816CA38
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0816CA34: .4byte lbl_0816CA38
lbl_0816CA38:
	.4byte _0816CA64
	.4byte _0816CAC0
	.4byte _0816CB0C
	.4byte _0816CBBC
	.4byte _0816CC18
	.4byte _0816CC5C
	.4byte _0816CC6E
	.4byte _0816CCB8
	.4byte _0816CCD0
	.4byte _0816CCEA
	.4byte _0816CD68
_0816CA64:
	movs r6, #0
	str r6, [r7, #100] @ 0x64
	ldr r0, [r7, #56] @ 0x38
	str r6, [r0, #24]
	str r6, [r0, #80] @ 0x50
	ldr r0, [r7, #60] @ 0x3c
	movs r1, #60 @ 0x3c
	mov r8, r1
	str r1, [r0, #24]
	str r6, [r0, #28]
	adds r2, r7, #0
	adds r2, #110 @ 0x6e
	ldrh r1, [r2, #0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq.n _0816CAB6
	ldr r0, [r7, #48] @ 0x30
	ldr r1, [r0, #24]
	movs r5, #192 @ 0xc0
	lsls r5, r5, #7
	mov r2, r8
	str r2, [sp, #0]
	add r4, sp, #4
	strb r6, [r4, #0]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8163978
	ldr r0, [r7, #52] @ 0x34
	ldr r1, [r0, #24]
	mov r3, r8
	str r3, [sp, #0]
	strb r6, [r4, #0]
	adds r2, r5, #0
	movs r3, #0
	bl sub_8163978
	movs r0, #7
	b.n _0816CD7A
_0816CAB6:
	str r3, [r7, #92] @ 0x5c
	ldrh r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0]
_0816CAC0:
	ldr r0, [r7, #52] @ 0x34
	adds r0, #132 @ 0x84
	ldr r1, [r0, #0]
	movs r4, #128 @ 0x80
	lsls r4, r4, #1
	adds r1, r1, r4
	str r1, [r0, #0]
	ldr r0, [pc, #56] @ (0x816cb08)
	cmp r1, r0
	bgt.n _0816CAD6
	b.n _0816CD7C
_0816CAD6:
	ldr r0, [r7, #68] @ 0x44
	ldr r0, [r0, #16]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	ldr r0, [r7, #68] @ 0x44
	movs r1, #252 @ 0xfc
	lsls r1, r1, #8
	movs r2, #224 @ 0xe0
	lsls r2, r2, #7
	movs r3, #90 @ 0x5a
	str r3, [sp, #0]
	add r4, sp, #4
	movs r3, #1
	strb r3, [r4, #0]
	movs r3, #0
	bl sub_8163978
	movs r0, #2
	b.n _0816CD7A
	movs r0, r0
	movs r3, #255 @ 0xff
	movs r0, r0
_0816CB0C:
	ldr r0, [r7, #68] @ 0x44
	bl sub_8163A08
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _0816CB1A
	b.n _0816CD7C
_0816CB1A:
	ldr r0, [pc, #76] @ (0x816cb68)
	bl sub_8163110
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne.n _0816CB74
	ldr r0, [r7, #40] @ 0x28
	ldr r2, [pc, #64] @ (0x816cb6c)
	ldr r1, [pc, #64] @ (0x816cb70)
	movs r5, #140 @ 0x8c
	lsls r5, r5, #4
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r2, [r7, #68] @ 0x44
	ldr r3, [r2, #16]
	movs r5, #0
	ldrsh r2, [r3, r5]
	subs r2, #8
	movs r5, #2
	ldrsh r3, [r3, r5]
	subs r3, #16
	str r4, [sp, #0]
	bl sub_81649AC
	ldr r0, [r7, #68] @ 0x44
	ldr r0, [r0, #16]
	str r4, [sp, #0]
	movs r1, #11
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #3
	b.n _0816CD7A
	movs r0, r0
	lsls r1, r6, #7
	movs r0, r0
	add r4, pc
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816CB74:
	ldr r0, [r7, #40] @ 0x28
	ldr r2, [pc, #60] @ (0x816cbb4)
	ldr r1, [pc, #60] @ (0x816cbb8)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r2, [r7, #68] @ 0x44
	ldr r3, [r2, #16]
	movs r4, #0
	ldrsh r2, [r3, r4]
	subs r2, #8
	movs r5, #2
	ldrsh r3, [r3, r5]
	subs r3, #16
	movs r4, #0
	str r4, [sp, #0]
	bl sub_81649AC
	ldr r0, [r7, #68] @ 0x44
	ldr r0, [r0, #16]
	str r4, [sp, #0]
	movs r1, #11
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #4
	b.n _0816CD7A
	add r8, r2
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816CBBC:
	ldr r0, [r7, #40] @ 0x28
	bl sub_816504C
	adds r4, r0, #0
	cmp r4, #0
	beq.n _0816CBCA
	b.n _0816CD7C
_0816CBCA:
	ldr r0, [r7, #40] @ 0x28
	movs r1, #0
	bl sub_81650A8
	ldr r0, [r7, #40] @ 0x28
	ldr r2, [pc, #56] @ (0x816cc10)
	ldr r1, [pc, #60] @ (0x816cc14)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r2, [r7, #68] @ 0x44
	ldr r3, [r2, #16]
	movs r5, #0
	ldrsh r2, [r3, r5]
	subs r2, #8
	movs r5, #2
	ldrsh r3, [r3, r5]
	subs r3, #16
	str r4, [sp, #0]
	bl sub_81649AC
	ldr r0, [r7, #68] @ 0x44
	ldr r0, [r0, #16]
	str r4, [sp, #0]
	movs r1, #11
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #4
	b.n _0816CD7A
	add r8, r2
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816CC18:
	ldr r0, [r7, #40] @ 0x28
	bl sub_816504C
	adds r4, r0, #0
	cmp r4, #0
	beq.n _0816CC26
	b.n _0816CD7C
_0816CC26:
	ldr r0, [r7, #40] @ 0x28
	movs r1, #0
	bl sub_81650A8
	ldr r0, [r7, #68] @ 0x44
	ldr r0, [r0, #16]
	str r4, [sp, #0]
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	ldr r0, [r7, #68] @ 0x44
	movs r1, #144 @ 0x90
	lsls r1, r1, #9
	movs r2, #224 @ 0xe0
	lsls r2, r2, #7
	movs r3, #30
	str r3, [sp, #0]
	add r4, sp, #4
	movs r3, #1
	strb r3, [r4, #0]
	movs r3, #0
	bl sub_8163978
	movs r0, #5
	b.n _0816CD7A
_0816CC5C:
	ldr r0, [r7, #68] @ 0x44
	bl sub_8163A08
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _0816CC6A
	b.n _0816CD7C
_0816CC6A:
	movs r0, #6
	b.n _0816CD7A
_0816CC6E:
	ldr r0, [r7, #52] @ 0x34
	adds r1, r0, #0
	adds r1, #132 @ 0x84
	ldr r0, [r1, #0]
	ldr r2, [pc, #60] @ (0x816ccb4)
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #0
	ble.n _0816CC82
	b.n _0816CD7C
_0816CC82:
	movs r4, #0
	str r4, [r1, #0]
	ldr r0, [r7, #48] @ 0x30
	ldr r1, [r0, #24]
	movs r3, #192 @ 0xc0
	lsls r3, r3, #7
	mov r8, r3
	movs r6, #60 @ 0x3c
	str r6, [sp, #0]
	add r5, sp, #4
	strb r4, [r5, #0]
	mov r2, r8
	movs r3, #0
	bl sub_8163978
	ldr r0, [r7, #52] @ 0x34
	ldr r1, [r0, #24]
	str r6, [sp, #0]
	strb r4, [r5, #0]
	mov r2, r8
	movs r3, #0
	bl sub_8163978
	movs r0, #7
	b.n _0816CD7A
_0816CCB4:
	.byte 0x00, 0xFF, 0xFF, 0xFF
_0816CCB8:
	.byte 0x38, 0x6B, 0xF6, 0xF7, 0xA5, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x5B, 0xD0, 0x38, 0x6B, 0x1E, 0x21
	.byte 0xF6, 0xF7, 0x7C, 0xFE, 0x08, 0x20, 0x54, 0xE0
_0816CCD0:
	.byte 0x38, 0x6B, 0xF6, 0xF7, 0x99, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x4F, 0xD0, 0x09, 0x20, 0xF8, 0x65
	.byte 0x38, 0x6B, 0x40, 0x21, 0xF6, 0xF7, 0x6E, 0xFE, 0x48, 0xE0
_0816CCEA:
	.byte 0x38, 0x6B, 0xF6, 0xF7, 0x8C, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x13, 0xD0, 0x0A, 0x20, 0xF8, 0x65
	.byte 0x38, 0x6B, 0x1E, 0x21, 0xF6, 0xF7, 0x61, 0xFE, 0x3A, 0x6B, 0x14, 0x1C, 0x84, 0x34, 0x88, 0x32
	.byte 0x78, 0x6B, 0x03, 0x1C, 0x84, 0x33, 0x88, 0x30, 0x00, 0x21, 0x01, 0x60, 0x19, 0x60, 0x11, 0x60
	.byte 0x21, 0x60, 0x2E, 0xE0, 0x39, 0x6B, 0x0E, 0x1C, 0x84, 0x36, 0x0D, 0x1C, 0x88, 0x35, 0x78, 0x6B
	.byte 0x04, 0x1C, 0x84, 0x34, 0x03, 0x1C, 0x88, 0x33, 0x0C, 0x4A, 0x08, 0x1C, 0x4C, 0x30, 0x00, 0x21
	.byte 0x40, 0x5E, 0x80, 0x00, 0xFF, 0x21, 0x08, 0x40, 0x40, 0x00, 0x80, 0x18, 0x00, 0x22, 0x80, 0x5E
	.byte 0x00, 0x28, 0x00, 0xDA, 0x3F, 0x30, 0x80, 0x11, 0x00, 0x01, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
	.byte 0x18, 0x60, 0x20, 0x60, 0x28, 0x60, 0x30, 0x60, 0x0B, 0xE0, 0x04, 0x85, 0x19, 0x08
_0816CD68:
	.byte 0x38, 0x6B, 0xF6, 0xF7, 0x4D, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x03, 0x20, 0x78, 0x65
	.byte 0x00, 0x20
_0816CD7A:
	.byte 0xF8, 0x65
_0816CD7C:
	ldr r0, [r7, #0x30]
	bl sub_816BE10
	ldr r0, [r7, #0x34]
	bl sub_816BE10
	ldr r0, [r7, #0x1C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8163864
	bl sub_8021F7C
_0816CD96:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
