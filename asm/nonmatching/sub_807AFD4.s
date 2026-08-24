	.syntax unified
	.text

	thumb_func_start sub_807AFD4
sub_807AFD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	str r0, [sp, #0x004]
	str r1, [sp, #0x008]
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r4, [sp, #0x054]
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldr r0, [r7, #0x04]
	str r0, [r1, #0x00]
	movs r0, #0xF6
	adds r0, r0, r7
	mov r10, r0
	ldrh r0, [r0, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	ldrh r1, [r0, #0x00]
	adds r2, #0x06
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	adds r2, #0x26
	adds r2, r2, r3
	mov r8, r2
	adds r1, #0x5E
	ands r1, r0
	ldrh r2, [r2, #0x00]
	ldr r0, _0807B188 @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x88
	adds r0, r7, #0x0
	bl sub_8107E6C
	adds r0, r7, #0x0
	bl sub_807B7A8
	adds r0, r7, #0x0
	bl sub_807FE40
	ldr r0, _0807B18C @ =0x03001034
	movs r2, #0x98
	lsls r2, r2, #0x01
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	str r7, [r7, #0x30]
	ldr r2, _0807B184 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xF4
	mov r3, sp
	ldrb r3, [r3, #0x04]
	strb r3, [r0, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r7, r0
	movs r0, #0x01
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xEC
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r0, #0x00]
	subs r0, #0x14
	lsls r5, r5, #0x08
	str r5, [r7, #0x18]
	str r5, [r7, #0x40]
	str r5, [r0, #0x00]
	adds r0, #0x04
	lsls r6, r6, #0x08
	str r6, [r7, #0x1C]
	str r6, [r7, #0x44]
	str r6, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [sp, #0x050]
	lsls r1, r2, #0x08
	str r1, [r7, #0x20]
	str r1, [r7, #0x48]
	str r1, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x98
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	blt _0807B0CC
	b _0807B368
_0807B0CC:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	bne _0807B0E0
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x3C
	mov r9, r0
	ldr r4, _0807B194 @ =0x084FCCE0
	str r4, [sp, #0x00C]
_0807B0E0:
	movs r4, #0x01
	negs r4, r4
	ldr r5, [sp, #0x008]
	cmp r5, r4
	bne _0807B0F4
	ldr r0, _0807B190 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r6, _0807B198 @ =0x084FCCD8
	str r6, [sp, #0x00C]
_0807B0F4:
	ldr r0, _0807B184 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	mov r8, r0
	mov r2, r9
	ldrh r3, [r2, #0x0E]
	cmp r3, #0x00
	beq _0807B19C
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r0, r7, #0x0
	adds r0, #0x08
	str r0, [r1, #0x78]
	adds r5, r7, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r6, #0x02
	orrs r0, r6
	strb r0, [r5, #0x00]
	ldr r3, [sp, #0x00C]
	ldrh r1, [r3, #0x00]
	mov r0, r8
	bl sub_807FB78
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r8
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	adds r0, #0x25
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	mov r0, r8
	movs r3, #0x00
	bl sub_801E150
	mov r2, r8
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x1F]
	str r5, [sp, #0x018]
	b _0807B1C2
_0807B184: .4byte 0x03000FD8
_0807B188: .4byte 0xFFFFFE7F
_0807B18C: .4byte 0x03001034
_0807B190: .4byte 0x03000FF4
_0807B194: .4byte 0x084FCCE0
_0807B198: .4byte 0x084FCCD8
_0807B19C:
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r4, r8
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	subs r1, #0x24
	ands r0, r1
	strb r0, [r4, #0x1F]
	strh r3, [r4, #0x0E]
	str r2, [sp, #0x018]
_0807B1C2:
	movs r5, #0x88
	lsls r5, r5, #0x01
	adds r0, r7, r5
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	mov r6, r8
	ldrb r2, [r6, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x11]
	movs r3, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x06]
	strh r0, [r6, #0x04]
	mov r0, r9
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF5
	strb r0, [r1, #0x00]
	mov r1, r9
	ldrh r0, [r1, #0x0E]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	mov r2, r9
	ldrh r1, [r2, #0x12]
	adds r0, r7, #0x0
	adds r0, #0xF8
	strh r1, [r0, #0x00]
	ldrh r0, [r2, #0x20]
	movs r4, #0x83
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x1C]
	subs r5, #0x0E
	adds r1, r7, r5
	strh r0, [r1, #0x00]
	ldrh r1, [r2, #0x24]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x28]
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x14]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	ldrh r0, [r4, #0x18]
	adds r1, r7, #0x0
	adds r1, #0xFE
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x80
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x64
	ldr r5, [sp, #0x00C]
	str r5, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xE8
	str r3, [r0, #0x00]
	mov r6, r8
	str r6, [r7, #0x10]
	mov r0, r9
	adds r0, #0x35
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r3, _0807B2B4 @ =0x0000012B
	adds r1, r7, r3
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x37
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strb r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	ldr r5, _0807B2B8 @ =0x0000012D
	adds r1, r7, r5
	strb r0, [r1, #0x00]
	mov r10, r2
	cmp r7, #0x00
	beq _0807B330
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _0807B330
	ldr r0, _0807B2BC @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0x8A
	ldrb r1, [r2, #0x00]
	adds r3, r0, #0x0
	cmp r1, #0xFF
	beq _0807B2C0
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _0807B2C2
_0807B2B4: .4byte 0x0000012B
_0807B2B8: .4byte 0x0000012D
_0807B2BC: .4byte 0x03000FF4
_0807B2C0:
	movs r1, #0x00
_0807B2C2:
	adds r2, r1, #0x0
	ldr r3, [r3, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2DA
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r2, r2, r1
_0807B2DA:
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B2EA
	movs r1, #0x4C
	muls r0, r1
	adds r2, r2, r0
_0807B2EA:
	adds r0, r7, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r3, r0
	ldrh r4, [r0, #0x28]
	adds r1, r3, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _0807B310
	movs r1, #0x66
	muls r0, r1
	adds r0, r2, r0
	b _0807B312
_0807B310:
	adds r0, r2, #0x0
_0807B312:
	cmp r0, #0x00
	bge _0807B318
	adds r0, #0xFF
_0807B318:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r2, r7, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0807B35C @ =0x000003E7
	cmp r0, r1
	ble _0807B330
	strh r1, [r2, #0x00]
_0807B330:
	ldr r2, _0807B360 @ =0x0000012D
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0xCB
	str r3, [sp, #0x01C]
	adds r4, r7, #0x0
	adds r4, #0xCC
	str r4, [sp, #0x020]
	adds r5, r7, #0x0
	adds r5, #0xCD
	str r5, [sp, #0x024]
	cmp r0, #0x1D
	beq _0807B34E
	b _0807B632
_0807B34E:
	ldr r0, _0807B364 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0D]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x0D]
	b _0807B632
_0807B35C: .4byte 0x000003E7
_0807B360: .4byte 0x0000012D
_0807B364: .4byte 0x03000FD8
_0807B368:
	ldr r6, _0807B510 @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r0, [r1, #0x78]
	str r0, [r7, #0x08]
	adds r3, r7, #0x0
	adds r3, #0x08
	str r3, [r1, #0x78]
	movs r0, #0x2C
	ldr r1, [sp, #0x008]
	muls r0, r1
	ldr r4, _0807B514 @ =0x08500A98
	adds r0, r0, r4
	mov r9, r0
	ldr r2, [r0, #0x08]
	str r2, [sp, #0x010]
	adds r2, r7, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r0, [r5, #0x0A]
	adds r1, r7, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	mov r6, r9
	ldrb r0, [r6, #0x04]
	adds r5, r7, #0x0
	adds r5, #0xF5
	strb r0, [r5, #0x00]
	ldrh r0, [r6, #0x06]
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x06]
	adds r1, r7, #0x0
	adds r1, #0xF8
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	movs r6, #0x83
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	mov r6, r10
	strh r0, [r6, #0x00]
	mov r6, r9
	ldrh r0, [r6, #0x06]
	strh r0, [r1, #0x00]
	ldrh r0, [r6, #0x1A]
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrh r1, [r6, #0x18]
	movs r6, #0x82
	lsls r6, r6, #0x01
	adds r0, r7, r6
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldrb r5, [r5, #0x00]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r12, r5
	mov r6, r12
	subs r6, #0x01
	str r3, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r1, #0xE4
	adds r1, r1, r7
	mov r10, r1
	adds r2, #0x6A
	str r2, [sp, #0x028]
	adds r3, #0xE8
	str r3, [sp, #0x02C]
	adds r4, r7, #0x0
	adds r4, #0xCB
	str r4, [sp, #0x01C]
	adds r5, r7, #0x0
	adds r5, #0xCC
	str r5, [sp, #0x020]
	adds r0, r7, #0x0
	adds r0, #0xCD
	str r0, [sp, #0x024]
	cmp r6, #0x00
	blt _0807B4DE
	ldr r0, _0807B518 @ =0x083BAEAC
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x02
	movs r3, #0x95
	lsls r3, r3, #0x03
	adds r2, r1, r3
	adds r5, r2, r0
	adds r4, r1, r0
	movs r0, #0x03
	bics r0, r6
	cmp r6, #0x00
	blt _0807B46A
	cmp r0, #0x00
	beq _0807B488
	cmp r0, #0x03
	bge _0807B46A
	cmp r0, #0x02
	bge _0807B450
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r8, r1
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B450:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
_0807B46A:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x0C
	subs r4, #0x0C
	subs r6, #0x01
	cmp r6, #0x00
	blt _0807B4DE
_0807B488:
	ldrb r1, [r4, #0x04]
	ldrb r0, [r5, #0x00]
	adds r1, r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	adds r3, r5, #0x0
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x0C
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x18
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	subs r3, #0x0C
	adds r1, r4, #0x0
	subs r1, #0x24
	ldrb r2, [r1, #0x04]
	ldrb r1, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	subs r5, #0x30
	subs r4, #0x30
	subs r6, #0x04
	cmp r6, #0x00
	bge _0807B488
_0807B4DE:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r0, r7, r4
	strh r1, [r0, #0x00]
	ldr r5, [sp, #0x010]
	ldrb r1, [r5, #0x07]
	cmp r1, #0x00
	beq _0807B51C
	subs r1, #0x01
	adds r3, r7, #0x0
	adds r3, #0x80
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _0807B528
	.byte 0x00, 0x00
_0807B510: .4byte 0x03000FD8
_0807B514: .4byte 0x08500A98
_0807B518: .4byte 0x083BAEAC
_0807B51C:
	adds r2, r7, #0x0
	adds r2, #0x81
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0807B528:
	ldr r6, [sp, #0x010]
	mov r0, r10
	str r6, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x20]
	ldr r2, [sp, #0x028]
	str r0, [r2, #0x00]
	movs r4, #0x2C
	ldr r3, [sp, #0x004]
	adds r1, r3, #0x0
	muls r1, r4
	ldr r3, _0807B614 @ =0x000033E0
	adds r0, r1, r3
	ldr r5, _0807B618 @ =0x03000FDC
	ldr r2, [r5, #0x00]
	adds r0, r2, r0
	ldr r6, [sp, #0x02C]
	str r0, [r6, #0x00]
	adds r1, r1, r2
	ldr r2, [sp, #0x008]
	adds r0, r2, #0x0
	muls r0, r4
	adds r1, r1, r3
	ldr r3, _0807B61C @ =0x08500A98
	adds r0, r0, r3
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r5, r10
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0807B5F8
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x8C
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	movs r6, #0x00
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	adds r0, #0x25
	ldrb r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r2, r0, #0x0
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldrb r1, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x1F]
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r0, r7, r6
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r4, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r4, #0x06]
	strh r0, [r4, #0x04]
	str r4, [r7, #0x10]
_0807B5F8:
	ldr r0, _0807B620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0807B632
	mov r0, r9
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	beq _0807B632
	adds r0, r7, #0x0
	b _0807B628
	.byte 0x00, 0x00
_0807B614: .4byte 0x000033E0
_0807B618: .4byte 0x03000FDC
_0807B61C: .4byte 0x08500A98
_0807B620: .4byte 0x03000FD8
_0807B624:
	ldr r1, [r7, #0x54]
	ldr r0, [sp, #0x014]
_0807B628:
	bl _call_via_r1
	ldr r0, [r7, #0x54]
	cmp r0, #0x00
	bne _0807B624
_0807B632:
	movs r1, #0x85
	lsls r1, r1, #0x01
	adds r0, r7, r1
	subs r1, #0x0A
	strh r1, [r0, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x8E
	lsls r3, r3, #0x01
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	mov r4, r10
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x04]
	ldr r5, [sp, #0x01C]
	strb r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x05]
	ldr r6, [sp, #0x020]
	strb r0, [r6, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x06]
	ldr r1, [sp, #0x024]
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x058]
	cmp r0, #0x01
	bne _0807B6CE
	ldr r4, _0807B6E8 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	adds r3, #0x62
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xF6
	strh r0, [r1, #0x00]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	movs r6, #0x88
	lsls r6, r6, #0x01
	adds r3, r7, r6
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, [r4, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xFC
	strh r1, [r0, #0x00]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	subs r5, #0x76
	adds r4, r7, r5
	movs r1, #0xC0
	lsls r1, r1, #0x01
	ands r1, r0
	ldrh r2, [r4, #0x00]
	ldr r0, _0807B6EC @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x88
	adds r1, r7, #0x0
	bl sub_8107E6C
_0807B6CE:
	ldr r6, [sp, #0x018]
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	bne _0807B6F0
	ldr r2, _0807B6E8 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x04]
	adds r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B6FE
	.byte 0x00, 0x00
_0807B6E8: .4byte 0x03000FD8
_0807B6EC: .4byte 0xFFFFFE7F
_0807B6F0:
	ldr r2, _0807B72C @ =0x03000FD8
	cmp r1, #0x04
	bne _0807B6FE
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x05]
	adds r0, #0x01
	strb r0, [r1, #0x05]
_0807B6FE:
	ldr r1, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldr r3, [sp, #0x008]
	cmp r3, #0x00
	bge _0807B792
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r0, r7, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x14
	beq _0807B746
	cmp r0, #0x14
	bgt _0807B730
	cmp r0, #0x13
	beq _0807B736
	b _0807B792
	.byte 0x00, 0x00
_0807B72C: .4byte 0x03000FD8
_0807B730:
	cmp r0, #0x15
	beq _0807B756
	b _0807B792
_0807B736:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r5, #0x90
	lsls r5, r5, #0x01
	adds r0, r7, r5
	b _0807B78A
_0807B746:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r6, #0x90
	lsls r6, r6, #0x01
	adds r0, r7, r6
	b _0807B78A
_0807B756:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	cmp r0, #0x00
	beq _0807B76C
	cmp r0, #0x01
	beq _0807B77C
	b _0807B792
_0807B76C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81084B4
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r0, r7, r1
	b _0807B78A
_0807B77C:
	adds r0, r7, #0x0
	movs r1, #0xC8
	bl sub_81083EC
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r0, r7, r2
_0807B78A:
	ldr r1, [r0, #0x00]
	ldr r2, _0807B7A4 @ =0xFFFC7FFF
	ands r1, r2
	str r1, [r0, #0x00]
_0807B792:
	adds r0, r7, #0x0
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807B7A4: .4byte 0xFFFC7FFF
