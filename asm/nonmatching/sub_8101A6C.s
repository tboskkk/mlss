	.syntax unified
	.text

	thumb_func_start sub_8101A6C
sub_8101A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x010]
	movs r6, #0x00
	ldr r5, _08101AE0 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101AEA
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101AEA
	ldr r0, [r4, #0x18]
	ldr r1, _08101AE4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101AE8
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101AEA
	.byte 0x00, 0x00
_08101AE0: .4byte 0x03000FD8
_08101AE4: .4byte 0xFFFFFD00
_08101AE8:
	movs r6, #0x01
_08101AEA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101B52
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101B52
	ldr r0, [r4, #0x18]
	ldr r1, _08101B4C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101B50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101B52
	.byte 0x00, 0x00
_08101B4C: .4byte 0xFFFFFD00
_08101B50:
	movs r6, #0x01
_08101B52:
	cmp r6, #0x00
	beq _08101B58
	b _08101ECC
_08101B58:
	ldr r5, _08101BF4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08101C00
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101BAA
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101BAA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
	b _08101C8E
_08101BF4: .4byte 0x03000FD8
_08101BF8: .4byte word_84FB588 @ =0x084FB588
_08101BFC: .4byte dword_89F808C @ =0x089F808C
_08101C00:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101C50
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101C48 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101C4C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
	b _08101C8E
_08101C48: .4byte word_84FB588 @ =0x084FB588
_08101C4C: .4byte dword_89F808C @ =0x089F808C
_08101C50:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101E1C @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101E20 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101C8E:
	movs r7, #0x03
	ldr r0, _08101E24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101E28 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101CB0
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	movs r1, #0x0B
	muls r0, r1
	adds r1, r0, #0x1
	asrs r0, r1, #0x03
	adds r7, r0, #0x2
_08101CB0:
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r8, r3
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x10
	mov r9, r1
	str r1, [sp, #0x000]
	subs r1, r7, #0x1
	str r1, [sp, #0x004]
	ldr r5, _08101E1C @ =0x084FB588
	adds r5, #0x40
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	ldr r4, _08101E20 @ =0x089F808C
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x05
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x4
	mov r1, r9
	str r1, [sp, #0x000]
	movs r6, #0x01
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x5
	mov r1, r9
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xE7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0x07
	mov r10, r3
	str r3, [sp, #0x000]
	movs r7, #0x04
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r2, r2, r4
	mov r9, r2
	add r1, r9
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x08
	str r3, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x0D
	bl sub_8084F28
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	mov r2, r10
	str r2, [sp, #0x000]
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	add r1, r9
	adds r1, #0x1C
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r5, #0x06
	str r5, [sp, #0x000]
	movs r1, #0x0F
	str r1, [sp, #0x004]
	movs r1, #0x0B
	str r1, [sp, #0x008]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x0F
	bl sub_8084578
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	movs r2, #0x90
	bl sub_8085170
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101E56
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101E56
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E30
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E2C @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101E3E
	.byte 0x00, 0x00
_08101E1C: .4byte word_84FB588 @ =0x084FB588
_08101E20: .4byte dword_89F808C @ =0x089F808C
_08101E24: .4byte 0x03000FD8
_08101E28: .4byte 0x000002BE
_08101E2C: .4byte 0x00002003
_08101E30:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E90 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101E3E:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101E56:
	ldr r0, _08101E94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101EC2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101EC2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E9C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E98 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101EAA
_08101E90: .4byte 0x00002050
_08101E94: .4byte 0x03000FD8
_08101E98: .4byte 0x00002003
_08101E9C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101EDC @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101EAA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101EC2:
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x10]
	ldr r0, _08101EE0 @ =0x08101EE5
	str r0, [r3, #0x04]
_08101ECC:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08101EDC: .4byte 0x00002050
_08101EE0: .4byte sub_8101EE4
