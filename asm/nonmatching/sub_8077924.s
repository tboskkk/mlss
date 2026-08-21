	.syntax unified
	.text

	thumb_func_start sub_8077924
sub_8077924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	mov r4, r9
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077950
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077950:
	mov r1, r9
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08077966
	b _08077E96
_08077966:
	mov r0, r9
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077AEC @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	mov r3, r9
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _08077986
	adds r1, #0xFF
_08077986:
	asrs r1, r1, #0x08
	mov r4, r9
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077992
	adds r2, #0xFF
_08077992:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0807799E
	adds r3, #0xFF
_0807799E:
	asrs r3, r3, #0x08
	mov r7, r9
	str r7, [sp, #0x000]
	ldr r0, _08077AF0 @ =0x000029CA
	bl sub_80DF024
	ldr r1, [r7, #0x28]
	ldr r6, _08077AF4 @ =0x00004026
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _080779B6
	adds r0, #0xFF
_080779B6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _080779C6
	adds r0, #0xFF
_080779C6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080779D4
	adds r0, #0xFF
_080779D4:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	mov r7, r9
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _08077A00
	adds r0, #0xFF
_08077A00:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077A10
	adds r0, #0xFF
_08077A10:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077A1E
	adds r0, #0xFF
_08077A1E:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r7, r9
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	str r0, [sp, #0x00C]
	str r4, [r7, #0x30]
	ldr r0, [sp, #0x00C]
	str r0, [r4, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r2, [sp, #0x00C]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	adds r0, #0x74
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r0, _08077AF8 @ =0x08079775
	str r0, [r4, #0x4C]
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x4C]
	ldr r0, _08077AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [r7, #0x10]
	ldr r7, _08077B00 @ =0xFFFFE600
	adds r5, r5, r7
	mov r0, r9
	ldr r4, [r0, #0x14]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r4, r4, r1
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x28]
	mov r8, r2
	mov r3, r8
	adds r3, #0xDC
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x00]
	subs r0, r0, r4
	ldr r7, _08077B04 @ =0xFFFFF000
	subs r6, r7, r5
	muls r0, r6
	mov r1, r8
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	mov r10, r1
	subs r1, r1, r5
	bl __divsi3
	adds r0, r0, r4
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x014]
	ldr r7, [r0, #0x28]
	adds r1, r7, #0x0
	adds r1, #0xDC
	str r1, [sp, #0x020]
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	muls r0, r6
	adds r6, r7, #0x0
	adds r6, #0xD8
	ldr r1, [r6, #0x00]
	subs r1, r1, r5
	bl __divsi3
	adds r4, r0, r4
	mov r0, r9
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x024]
	cmp r1, #0x01
	beq _08077B48
	cmp r1, #0x01
	bgt _08077B08
	cmp r1, #0x00
	beq _08077B0E
	b _08077BB0
_08077AEC: .4byte 0x0000010B
_08077AF0: .4byte 0x000029CA
_08077AF4: .4byte 0x00004026
_08077AF8: .4byte sub_8079774
_08077AFC: .4byte 0x03000FD8
_08077B00: .4byte 0xFFFFE600
_08077B04: .4byte 0xFFFFF000
_08077B08:
	cmp r1, #0x02
	beq _08077B7C
	b _08077BB0
_08077B0E:
	ldr r1, _08077B38 @ =0x03000EB0
	ldr r2, _08077B3C @ =0xFFFFF000
	str r2, [r1, #0x00]
	ldr r2, _08077B40 @ =0x03000EB8
	ldr r3, [sp, #0x018]
	str r3, [r2, #0x00]
	ldr r3, _08077B44 @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x04]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x00]
	str r0, [r2, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077B38: .4byte 0x03000EB0
_08077B3C: .4byte 0xFFFFF000
_08077B40: .4byte 0x03000EB8
_08077B44: .4byte 0x03000EC0
_08077B48:
	ldr r3, _08077B6C @ =0x03000EB0
	mov r5, r10
	str r5, [r3, #0x00]
	ldr r2, _08077B70 @ =0x03000EB8
	ldr r7, [sp, #0x01C]
	ldr r0, [r7, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077B74 @ =0x03000EC0
	mov r0, r8
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077B78 @ =0xFFFFF000
	str r0, [r3, #0x04]
	str r4, [r2, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _08077BEC
_08077B6C: .4byte 0x03000EB0
_08077B70: .4byte 0x03000EB8
_08077B74: .4byte 0x03000EC0
_08077B78: .4byte 0xFFFFF000
_08077B7C:
	ldr r3, _08077BA0 @ =0x03000EB0
	ldr r1, _08077BA4 @ =0xFFFFF000
	str r1, [r3, #0x00]
	ldr r1, _08077BA8 @ =0x03000EB8
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, _08077BAC @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r5, _08077BA4 @ =0xFFFFF000
	str r5, [r3, #0x04]
	str r4, [r1, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r2, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077BA0: .4byte 0x03000EB0
_08077BA4: .4byte 0xFFFFF000
_08077BA8: .4byte 0x03000EB8
_08077BAC: .4byte 0x03000EC0
_08077BB0:
	ldr r3, _08077EA8 @ =0x03000EB0
	ldr r7, [sp, #0x010]
	ldr r4, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldr r2, _08077EAC @ =0x03000EB8
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077EB0 @ =0x03000EC0
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
_08077BEC:
	str r0, [r1, #0x04]
_08077BEE:
	mov r2, r9
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08077BFA
	adds r0, #0xFF
_08077BFA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077C0A
	adds r0, #0xFF
_08077C0A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08077C18
	adds r0, #0xFF
_08077C18:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	mov r8, r0
	ldr r7, [sp, #0x00C]
	str r0, [r7, #0x30]
	mov r1, r8
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	adds r1, #0x84
	mov r3, r8
	ldr r0, [r3, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x40]
	str r0, [r1, #0x00]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0, #0x00]
	mov r2, r8
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	mov r4, r8
	adds r4, #0x0C
	bl sub_807FA50
	mov r5, r8
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077CE4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077CE4
	movs r4, #0x00
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x9C
	str r4, [r0, #0x00]
	mov r1, r8
	adds r1, #0xA0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08077D4C
	adds r0, #0xFF
_08077D4C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r5, r9
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077D5C
	adds r0, #0xFF
_08077D5C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x6
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077D6A
	adds r0, #0xFF
_08077D6A:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	str r7, [r0, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	strh r4, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r7, #0x2C]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077E2E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077E2E
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x024]
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	ldr r0, _08077EC0 @ =0x03000EC8
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC4 @ =0x03000ECC
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC8 @ =0x0807972D
	mov r4, r9
	str r0, [r4, #0x4C]
_08077E96:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077EA8: .4byte 0x03000EB0
_08077EAC: .4byte 0x03000EB8
_08077EB0: .4byte 0x03000EC0
_08077EB4: .4byte 0x00004025
_08077EB8: .4byte 0x03000FD8
_08077EBC: .4byte sub_8078000
_08077EC0: .4byte 0x03000EC8
_08077EC4: .4byte 0x03000ECC
_08077EC8: .4byte sub_807972C
