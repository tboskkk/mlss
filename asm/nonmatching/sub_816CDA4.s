	.syntax unified
	.text

	thumb_func_start sub_816CDA4
sub_816CDA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	ldr r0, _0816CDF0 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x08
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	beq _0816CDF4
	ldr r0, [r6, #0x2C]
	adds r1, r0, #0x0
	adds r1, #0x88
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816CDD4
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x97
	bl stop_sfx_80195A8
_0816CDD4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x37
	bl play_sfx_80195B4
	movs r0, #0x03
	str r0, [r6, #0x58]
	movs r0, #0x05
	str r0, [r6, #0x54]
	adds r1, r6, #0x0
	adds r1, #0x68
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _0816D032
_0816CDF0: .4byte 0x0300034C
_0816CDF4:
	ldr r0, [r6, #0x5C]
	cmp r0, #0x01
	beq _0816CE14
	cmp r0, #0x01
	bgt _0816CE04
	cmp r0, #0x00
	beq _0816CE0C
	b _0816CFDC
_0816CE04:
	cmp r0, #0x02
	bne _0816CE0A
	b _0816CFB6
_0816CE0A:
	b _0816CFDC
_0816CE0C:
	movs r0, #0x01
	str r0, [r6, #0x5C]
	str r2, [r6, #0x60]
	b _0816CFDC
_0816CE14:
	ldr r0, [r6, #0x1C]
	movs r1, #0x06
	bl sub_8163BC4
	cmp r0, #0x0F
	bgt _0816CF18
	adds r1, r6, #0x0
	adds r1, #0x6A
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _0816CF18
	movs r7, #0x00
	adds r0, r6, #0x0
	adds r0, #0x6C
	ldrh r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x0F
	bhi _0816CE9A
	lsls r0, r1, #0x02
	ldr r1, _0816CE4C @ =lbl_0816CE50
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0816CE4C: .4byte lbl_0816CE50
lbl_0816CE50:
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE90
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE94
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE90
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE9A
	.4byte _0816CE98
_0816CE90:
	movs r7, #1
	b.n _0816CE9A
_0816CE94:
	movs r7, #2
	b.n _0816CE9A
_0816CE98:
	movs r7, #3
_0816CE9A:
	ldrh r0, [r2, #0x00]
	adds r0, #0x01
	movs r5, #0x00
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0816CEAC
	strh r5, [r2, #0x00]
_0816CEAC:
	ldr r0, [r6, #0x1C]
	mov r8, r0
	ldr r2, _0816CF54 @ =0x08216B2C
	movs r0, #0x80
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x06
	bl sub_8161C28
	ldr r0, _0816CF58 @ =0x08CDD238
	str r0, [r4, #0x0C]
	str r7, [r4, #0x74]
	str r5, [r4, #0x78]
	adds r0, r7, #0x5
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	ldr r2, _0816CF5C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	ldr r1, _0816CF60 @ =0x08218EBA
	ldr r0, [r4, #0x74]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r4, #0x7C]
	movs r0, #0x58
	movs r1, #0x98
	bl sub_8163EE4
	lsls r0, r0, #0x08
	str r0, [r4, #0x18]
	ldr r0, _0816CF64 @ =0xFFFFF800
	str r0, [r4, #0x1C]
	str r5, [r4, #0x20]
	ldr r0, _0816CF68 @ =0xFFFFFF00
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl sub_8163EE4
	str r0, [r4, #0x6C]
	str r5, [r4, #0x70]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8163CD4
_0816CF18:
	ldr r3, [r6, #0x30]
	ldr r0, [r3, #0x78]
	movs r1, #0x00
	cmp r0, #0x01
	bne _0816CF24
	movs r1, #0x01
_0816CF24:
	cmp r1, #0x00
	beq _0816CF7E
	ldr r2, [r6, #0x34]
	ldr r0, [r2, #0x78]
	movs r1, #0x00
	cmp r0, #0x01
	bne _0816CF34
	movs r1, #0x01
_0816CF34:
	cmp r1, #0x00
	beq _0816CF7E
	ldr r0, [r6, #0x60]
	cmp r0, #0x00
	bne _0816CF6C
	movs r0, #0x02
	str r0, [r2, #0x78]
	movs r0, #0x01
	str r0, [r6, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	b _0816CF7E
	.byte 0x00, 0x00
_0816CF54: .4byte dword_8216B2C @ =0x08216B2C
_0816CF58: .4byte dword_8CDD238 @ =0x08CDD238
_0816CF5C: .4byte 0x00005007
_0816CF60: .4byte dword_8218EBA @ =0x08218EBA
_0816CF64: .4byte 0xFFFFF800
_0816CF68: .4byte 0xFFFFFF00
_0816CF6C:
	movs r0, #0x02
	str r0, [r3, #0x78]
	movs r0, #0x00
	str r0, [r6, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
_0816CF7E:
	ldr r4, [r6, #0x3C]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bne _0816CFA0
	ldr r0, [r4, #0x00]
	bl sub_8163A08
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0816CFA0
	ldr r0, [r4, #0x04]
	bl sub_8163A08
	lsls r0, r0, #0x18
	movs r1, #0x01
	cmp r0, #0x00
	bne _0816CFA2
_0816CFA0:
	movs r1, #0x00
_0816CFA2:
	cmp r1, #0x00
	beq _0816CFDC
	movs r0, #0x02
	str r0, [r6, #0x5C]
	ldr r0, [r6, #0x30]
	movs r1, #0x03
	str r1, [r0, #0x78]
	ldr r0, [r6, #0x34]
	str r1, [r0, #0x78]
	b _0816CFDC
_0816CFB6:
	ldr r0, [r6, #0x30]
	ldr r0, [r0, #0x78]
	movs r1, #0x00
	cmp r0, #0x01
	bne _0816CFC2
	movs r1, #0x01
_0816CFC2:
	cmp r1, #0x00
	beq _0816CFDC
	ldr r0, [r6, #0x34]
	ldr r0, [r0, #0x78]
	movs r1, #0x00
	cmp r0, #0x01
	bne _0816CFD2
	movs r1, #0x01
_0816CFD2:
	cmp r1, #0x00
	beq _0816CFDC
	str r2, [r6, #0x5C]
	movs r0, #0x04
	str r0, [r6, #0x54]
_0816CFDC:
	adds r0, r6, #0x0
	bl sub_816C834
	ldr r0, [r6, #0x64]
	cmp r0, #0x00
	beq _0816D01A
	subs r0, #0x01
	str r0, [r6, #0x64]
	ldr r0, [r6, #0x3C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_816B45C
	ldr r1, [r6, #0x64]
	cmp r1, #0x00
	bne _0816D024
	ldr r0, [r6, #0x48]
	ldr r0, [r0, #0x10]
	str r1, [sp, #0x000]
	movs r1, #0x25
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x48]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _0816D024
_0816D01A:
	ldr r0, [r6, #0x3C]
	movs r1, #0x00
	movs r2, #0x01
	bl sub_816B45C
_0816D024:
	ldr r0, [r6, #0x1C]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8163864
	bl sub_8021F7C
_0816D032:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
