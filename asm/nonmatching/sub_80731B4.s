	.syntax unified
	.text

	thumb_func_start sub_80731B4
sub_80731B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080731D0
	b _08073788
_080731D0:
	mov r0, r9
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08073588 @ =0x08073799
	mov r1, r9
	str r0, [r1, #0x4C]
	ldr r3, [r1, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731F0
	adds r0, #0xFF
_080731F0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080731FE
	adds r0, #0xFF
_080731FE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807320C
	adds r0, #0xFF
_0807320C:
	asrs r3, r0, #0x08
	mov r4, r9
	str r4, [sp, #0x000]
	ldr r0, _0807358C @ =0x000022D4
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r5, _08073590 @ =0x0000414D
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08073224
	adds r0, #0xFF
_08073224:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r6, r9
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _08073234
	adds r3, #0xFF
_08073234:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08073240
	adds r0, #0xFF
_08073240:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	mov r2, r9
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, #0x74
	movs r6, #0x00
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	mov r8, r3
	mov r3, r8
	orrs r0, r3
	strb r0, [r1, #0x00]
	str r6, [r4, #0x4C]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r2, [sp, #0x01C]
	cmp r0, #0x00
	bge _0807328E
	adds r0, #0xFF
_0807328E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r0, r9
	ldr r3, [r0, #0x14]
	cmp r3, #0x00
	bge _0807329E
	adds r3, #0xFF
_0807329E:
	asrs r3, r3, #0x08
	mov r10, r3
	mov r3, r9
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _080732AC
	adds r0, #0xFF
_080732AC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r3, r9
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	mov r3, r10
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	ldr r4, [sp, #0x01C]
	ldrb r1, [r4, #0x00]
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	str r6, [r5, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _080732F0
	adds r0, #0xFF
_080732F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r9
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _08073300
	adds r3, #0xFF
_08073300:
	asrs r3, r3, #0x08
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0807330C
	adds r0, #0xFF
_0807330C:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	ldr r6, [sp, #0x01C]
	ldrb r1, [r6, #0x00]
	subs r0, #0x3E
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	str r0, [r4, #0x2C]
	adds r5, r4, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	movs r2, #0xAC
	add r2, r9
	mov r8, r2
	mov r3, r9
	adds r3, #0x9C
	str r3, [sp, #0x024]
	mov r6, r9
	adds r6, #0x84
	str r6, [sp, #0x020]
	ldr r6, _08073598 @ =0x03000E80
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x00]
	adds r6, #0x02
	movs r7, #0x07
_080733E2:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r6, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x02]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x04]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r6, #0x06]
	adds r6, #0x08
	subs r7, #0x04
	cmp r7, #0x00
	bge _080733E2
	movs r5, #0x00
	str r5, [r0, #0x00]
	str r5, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	mov r0, r9
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08073450
	adds r0, #0xFF
_08073450:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1C
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08073460
	adds r0, #0xFF
_08073460:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	mov r6, r9
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08073470
	adds r0, #0xFF
_08073470:
	asrs r0, r0, #0x08
	adds r0, #0x24
	str r0, [sp, #0x000]
	mov r6, r9
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08073594 @ =0x0000414B
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
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
	adds r0, #0xAE
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	subs r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r7, #0x2C]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	adds r1, r4, #0x0
	adds r1, #0x9C
	str r1, [sp, #0x00C]
	adds r2, r4, #0x0
	adds r2, #0xA0
	str r2, [sp, #0x010]
	adds r3, r4, #0x0
	adds r3, #0xA4
	str r3, [sp, #0x014]
	adds r4, #0xA8
	str r4, [sp, #0x018]
	ldr r4, _0807359C @ =0x03000E98
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x00]
	adds r4, #0x02
	movs r6, #0x07
_0807354C:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	movs r3, #0x00
	strh r3, [r4, #0x00]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x02]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	b _080735A0
	.byte 0x00, 0x00
_08073588: .4byte sub_8073798
_0807358C: .4byte 0x000022D4
_08073590: .4byte 0x0000414D
_08073594: .4byte 0x0000414B
_08073598: .4byte 0x03000E80
_0807359C: .4byte 0x03000E98
_080735A0:
	strh r3, [r4, #0x04]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	str r3, [sp, #0x028]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r3, [sp, #0x028]
	strh r3, [r4, #0x06]
	adds r4, #0x08
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807354C
	str r3, [r0, #0x00]
	str r3, [r7, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xAC
	strh r3, [r0, #0x00]
	mov r4, r8
	strh r3, [r4, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x28]
	movs r6, #0x80
	lsls r6, r6, #0x01
	str r6, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	mov r10, r0
	str r0, [r7, #0x30]
	mov r2, r10
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r5, #0x1F
	adds r0, r5, #0x0
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x01C]
	ldrb r1, [r0, #0x00]
	mov r0, r10
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	mov r2, r10
	str r0, [r2, #0x2C]
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r4, #0x61
	adds r0, r4, #0x0
	ands r0, r1
	movs r3, #0x21
	negs r3, r3
	ands r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080736A8 @ =0x08087541
	mov r8, r0
	mov r1, r10
	str r0, [r1, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r2, #0x28]
	str r6, [sp, #0x000]
	ldr r1, [r2, #0x08]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x004]
	movs r3, #0x01
	str r3, [sp, #0x008]
	ldr r1, _080736A4 @ =0x0000414C
	adds r2, r6, #0x0
	adds r3, r6, #0x0
	bl sub_807BF34
	adds r3, r0, #0x0
	mov r6, r10
	str r3, [r6, #0x30]
	adds r1, r3, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	ands r5, r0
	movs r0, #0x20
	orrs r5, r0
	strb r5, [r1, #0x00]
	ldr r2, [sp, #0x01C]
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r6, r9
	ldr r0, [r6, #0x2C]
	str r0, [r3, #0x2C]
	adds r1, r3, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x21
	negs r0, r0
	ands r4, r0
	strb r4, [r1, #0x00]
	mov r1, r8
	str r1, [r3, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r3, #0x6C]
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	cmp r0, #0x01
	beq _080736E8
	cmp r0, #0x01
	bgt _080736AC
	cmp r0, #0x00
	beq _080736B2
	b _0807374A
	.byte 0x00, 0x00
_080736A4: .4byte 0x0000414C
_080736A8: .4byte sub_8087540
_080736AC:
	cmp r0, #0x02
	beq _0807371A
	b _0807374A
_080736B2:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0xB6
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x7C
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x010]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x84
	str r0, [r1, #0x00]
	movs r0, #0xA0
	ldr r6, [sp, #0x014]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0xCC
	str r0, [r1, #0x00]
	movs r0, #0x1E
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	b _08073778
_080736E8:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xA0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x00C]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x014]
	str r0, [r4, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x018]
	str r0, [r6, #0x00]
	b _08073778
_0807371A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA0
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r4, [sp, #0x018]
	str r0, [r4, #0x00]
	b _08073778
_0807374A:
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r6, [sp, #0x00C]
	str r0, [r6, #0x00]
	adds r1, #0x04
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	movs r0, #0x61
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x014]
	str r0, [r2, #0x00]
	adds r1, #0x04
	movs r0, #0x81
	str r0, [r1, #0x00]
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
_08073778:
	movs r0, #0x1E
	ldr r4, [sp, #0x020]
	str r0, [r4, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5E
	bl play_sfx_80195B4
_08073788:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
