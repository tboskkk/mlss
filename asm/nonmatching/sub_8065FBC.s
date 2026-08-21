	.syntax unified
	.text

	thumb_func_start sub_8065FBC
sub_8065FBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08065FD8
	b _08066284
_08065FD8:
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _08065FF2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08065FFE
_08065FF2:
	adds r0, r7, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08065FFE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08066048
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806600E
	adds r0, #0xFF
_0806600E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0F
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _0806601C
	adds r0, #0xFF
_0806601C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08066028
	adds r0, #0xFF
_08066028:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08066044 @ =0x00004092
	b _08066084
	.byte 0x00, 0x00
_08066044: .4byte 0x00004092
_08066048:
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08066052
	adds r0, #0xFF
_08066052:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0F
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08066060
	adds r0, #0xFF
_08066060:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0806606C
	adds r0, #0xFF
_0806606C:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806609C @ =0x00004093
_08066084:
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x00C]
	cmp r1, #0x01
	bne _080660A0
	ldr r0, [r7, #0x30]
	str r4, [r0, #0x30]
	b _080660A2
_0806609C: .4byte 0x00004093
_080660A0:
	str r4, [r7, #0x30]
_080660A2:
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	ldrb r2, [r1, #0x00]
	movs r6, #0x01
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08066260 @ =0x08087541
	mov r10, r0
	str r0, [r4, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08066264 @ =0x080664D5
	str r0, [r4, #0x5C]
	movs r1, #0x74
	adds r1, r1, r7
	mov r9, r1
	ldrb r1, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08066268 @ =0x08066299
	str r0, [r4, #0x4C]
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08066116
	adds r0, #0xFF
_08066116:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x09
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08066124
	adds r0, #0xFF
_08066124:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08066130
	adds r0, #0xFF
_08066130:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806626C @ =0x00004094
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r6, r0
	lsls r0, r6, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	mov r0, r10
	str r0, [r5, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r5, #0x6C]
	str r4, [r5, #0x2C]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08066270 @ =0x080663E9
	str r0, [r5, #0x4C]
	adds r6, r5, #0x0
	adds r6, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r6, [r0, #0x08]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	mov r2, r8
	subs r2, #0x01
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0806620E
	adds r0, #0xFF
_0806620E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _0806621E
	adds r1, #0xFF
_0806621E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806622E
	adds r0, #0xFF
_0806622E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08066274 @ =0x080665AD
	str r0, [r7, #0x4C]
	ldr r1, [sp, #0x00C]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806627C
	ldr r0, _08066278 @ =0x0000012B
	adds r1, r2, #0x0
	bl play_sfx_80195B4
	b _08066284
	.byte 0x00, 0x00
_08066260: .4byte sub_8087540
_08066264: .4byte sub_80664D4
_08066268: .4byte sub_8066298
_0806626C: .4byte 0x00004094
_08066270: .4byte sub_80663E8
_08066274: .4byte sub_80665AC
_08066278: .4byte 0x0000012B
_0806627C:
	ldr r0, _08066294 @ =0x0000012B
	adds r1, r2, #0x0
	bl play_sfx_80195B4
_08066284:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08066294: .4byte 0x0000012B
