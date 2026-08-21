	.syntax unified
	.text

	thumb_func_start sub_809F704
sub_809F704:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	mov r10, r0
	adds r2, r5, #0x0
	adds r2, #0x88
	ldr r0, [r2, #0x00]
	lsls r1, r0, #0x05
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r0, r0, r1
	lsls r0, r0, #0x03
	cmp r0, #0x00
	bge _0809F734
	adds r0, #0xFF
_0809F734:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r2, #0x00]
	ldrh r6, [r2, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	ldr r4, _0809F7E4 @ =0xFFFFE000
	adds r0, r4, #0x0
	adds r1, r1, r0
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r2
	cmp r1, #0x00
	bge _0809F760
	lsls r0, r3, #0x10
	cmp r0, #0x00
	bgt _0809F76A
_0809F760:
	cmp r1, #0x00
	ble _0809F774
	lsls r0, r3, #0x10
	cmp r0, #0x00
	bge _0809F774
_0809F76A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_0809F774:
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	movs r0, #0x80
	ands r0, r1
	adds r7, r5, #0x0
	adds r7, #0xB0
	adds r1, r5, #0x0
	adds r1, #0xB2
	str r1, [sp, #0x00C]
	movs r2, #0xAE
	adds r2, r2, r5
	mov r9, r2
	cmp r0, #0x00
	bne _0809F7AA
	movs r2, #0x80
_0809F798:
	ldr r4, [r4, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x1C]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0809F798
_0809F7AA:
	mov r3, r8
	ldrh r6, [r3, #0x00]
	subs r0, r6, #0x1
	lsls r0, r0, #0x10
	ldr r1, _0809F7E8 @ =0x57FE0000
	cmp r0, r1
	bhi _0809F804
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	bge _0809F804
	ldr r2, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x1D
	bgt _0809F7EC
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x28
	beq _0809F804
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809F804
_0809F7E4: .4byte 0xFFFFE000
_0809F7E8: .4byte 0x57FE0000
_0809F7EC:
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x27
	beq _0809F804
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809F804:
	ldr r1, _0809F840 @ =0xFFFFD7FF
	adds r0, r6, r1
	lsls r0, r0, #0x10
	ldr r1, _0809F844 @ =0x57FE0000
	cmp r0, r1
	bhi _0809F860
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	ble _0809F860
	ldr r0, [r5, #0x30]
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x1D
	bgt _0809F848
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x28
	beq _0809F860
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809F860
	.byte 0x00, 0x00
_0809F840: .4byte 0xFFFFD7FF
_0809F844: .4byte 0x57FE0000
_0809F848:
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x27
	beq _0809F860
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809F860:
	movs r0, #0xA8
	lsls r0, r0, #0x08
	cmp r6, r0
	bls _0809F8AC
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x00
	ble _0809F8AC
	ldr r2, [sp, #0x00C]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x1D
	bgt _0809F894
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x28
	beq _0809F8AC
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809F8AC
_0809F894:
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x27
	beq _0809F8AC
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809F8AC:
	ldr r1, _0809F8E8 @ =0x00007FFF
	adds r0, r6, r1
	lsls r0, r0, #0x10
	ldr r1, _0809F8EC @ =0x67FE0000
	cmp r0, r1
	bhi _0809F908
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, #0x00
	bge _0809F908
	ldr r0, [r5, #0x30]
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x1D
	bgt _0809F8F0
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x28
	beq _0809F908
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x28
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809F908
	.byte 0x00, 0x00
_0809F8E8: .4byte 0x00007FFF
_0809F8EC: .4byte 0x67FE0000
_0809F8F0:
	ldr r0, [r4, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x27
	beq _0809F908
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x27
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809F908:
	mov r4, r8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809F912
	adds r0, #0xFF
_0809F912:
	asrs r0, r0, #0x08
	movs r6, #0xFF
	ands r0, r6
	lsls r0, r0, #0x01
	ldr r1, _0809FA58 @ =0x08198584
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809F928
	adds r0, #0x3F
_0809F928:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x05
	mov r3, r10
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	mov r4, r8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809F942
	adds r0, #0xFF
_0809F942:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	ldr r1, _0809FA5C @ =0x08198504
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0809F956
	adds r0, #0x3F
_0809F956:
	asrs r0, r0, #0x06
	movs r3, #0xAF
	lsls r3, r3, #0x07
	muls r0, r3
	cmp r0, #0x00
	bge _0809F964
	adds r0, #0xFF
_0809F964:
	asrs r1, r0, #0x08
	mov r4, r10
	ldr r0, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x18]
	movs r1, #0xF3
	mov r12, r1
	mov r2, r12
	muls r2, r0
	ldr r3, [sp, #0x00C]
	movs r4, #0x00
	ldsh r1, [r3, r4]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x08
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0809F990
	adds r0, #0xFF
_0809F990:
	asrs r0, r0, #0x08
	str r0, [r5, #0x18]
	ldr r4, [r5, #0x30]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r1, [r3, #0x00]
	movs r0, #0xCC
	adds r2, r1, #0x0
	muls r2, r0
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _0809FA60 @ =0xFFFF8000
	adds r0, r0, r1
	movs r1, #0x34
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0809F9B6
	adds r0, #0xFF
_0809F9B6:
	asrs r0, r0, #0x08
	str r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0809F9C0
	adds r0, #0xFF
_0809F9C0:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	ldr r2, _0809FA58 @ =0x08198584
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809F9D4
	adds r0, #0x3F
_0809F9D4:
	asrs r0, r0, #0x06
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x05
	mov r2, r10
	ldr r0, [r2, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _0809F9EC
	adds r0, #0xFF
_0809F9EC:
	asrs r0, r0, #0x08
	ands r0, r6
	lsls r0, r0, #0x01
	ldr r3, _0809FA5C @ =0x08198504
	adds r0, r0, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0809FA00
	adds r0, #0x3F
_0809FA00:
	asrs r0, r0, #0x06
	movs r2, #0xAF
	lsls r2, r2, #0x07
	muls r0, r2
	cmp r0, #0x00
	bge _0809FA0E
	adds r0, #0xFF
_0809FA0E:
	asrs r1, r0, #0x08
	mov r3, r10
	ldr r0, [r3, #0x3C]
	subs r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	mov r2, r12
	muls r2, r0
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x08
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0809FA38
	adds r0, #0xFF
_0809FA38:
	asrs r0, r0, #0x08
	str r0, [r4, #0x18]
	movs r4, #0x00
	ldsh r0, [r7, r4]
	cmp r0, #0x00
	bge _0809FA64
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	cmp r0, r1
	bge _0809FA56
	b _0809FBA0
_0809FA56:
	b _0809FA76
_0809FA58: .4byte 0x08198584
_0809FA5C: .4byte 0x08198504
_0809FA60: .4byte 0xFFFF8000
_0809FA64:
	mov r4, r9
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r2, r8
	ldr r1, [r2, #0x00]
	cmp r1, r0
	bge _0809FA76
	b _0809FBA0
_0809FA76:
	adds r3, r5, #0x0
	adds r3, #0xA8
	ldr r0, [r3, #0x00]
	ldr r2, _0809FAA4 @ =0x083B89A4
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r0, r1, #0x04
	strh r0, [r7, #0x00]
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _0809FB44
	cmp r1, #0x00
	ble _0809FAA8
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	mov r1, r9
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	b _0809FAB6
_0809FAA4: .4byte 0x083B89A4
_0809FAA8:
	ldr r1, _0809FAD0 @ =0xFFFFFF00
	adds r0, r1, #0x0
	mov r4, r9
	ldrh r4, [r4, #0x00]
	adds r0, r0, r4
	mov r1, r9
	strh r0, [r1, #0x00]
_0809FAB6:
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	beq _0809FAE2
	cmp r0, #0x02
	bgt _0809FAD4
	cmp r0, #0x01
	beq _0809FADE
	b _0809FAF2
_0809FAD0: .4byte 0xFFFFFF00
_0809FAD4:
	cmp r0, #0x03
	beq _0809FAE8
	cmp r0, #0x04
	beq _0809FAEE
	b _0809FAF2
_0809FADE:
	movs r4, #0x00
	b _0809FAF0
_0809FAE2:
	movs r0, #0x00
	str r0, [sp, #0x004]
	b _0809FAF2
_0809FAE8:
	movs r1, #0x50
	str r1, [sp, #0x004]
	b _0809FAF2
_0809FAEE:
	movs r4, #0x50
_0809FAF0:
	str r4, [sp, #0x004]
_0809FAF2:
	mov r0, sp
	ldrh r1, [r0, #0x04]
	ldr r0, [sp, #0x00C]
	strh r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsb r2, [r0, r2]
	cmp r2, #0x02
	beq _0809FB22
	cmp r2, #0x02
	bgt _0809FB12
	cmp r2, #0x01
	beq _0809FB1C
	b _0809FB32
_0809FB12:
	cmp r2, #0x03
	beq _0809FB28
	cmp r2, #0x04
	beq _0809FB2E
	b _0809FB32
_0809FB1C:
	movs r2, #0x00
	str r2, [sp, #0x008]
	b _0809FB32
_0809FB22:
	movs r4, #0x50
	str r4, [sp, #0x008]
	b _0809FB32
_0809FB28:
	movs r0, #0x00
	str r0, [sp, #0x008]
	b _0809FB32
_0809FB2E:
	movs r1, #0x50
	str r1, [sp, #0x008]
_0809FB32:
	ldr r0, [r5, #0x30]
	adds r0, #0xB2
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r0, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, #0x02
	str r0, [r3, #0x00]
	b _0809FBA0
_0809FB44:
	ldr r2, [r5, #0x28]
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _0809FB4E
	adds r1, #0xFF
_0809FB4E:
	asrs r1, r1, #0x08
	ldr r2, [r2, #0x44]
	cmp r2, #0x00
	bge _0809FB58
	adds r2, #0xFF
_0809FB58:
	asrs r2, r2, #0x08
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x20
	bl sub_808843C
	ldr r0, [r5, #0x30]
	ldr r2, [r5, #0x28]
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _0809FB74
	adds r1, #0xFF
_0809FB74:
	asrs r1, r1, #0x08
	ldr r2, [r2, #0x44]
	cmp r2, #0x00
	bge _0809FB7E
	adds r2, #0xFF
_0809FB7E:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_808843C
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80880C4
	ldr r0, [r5, #0x30]
	adds r1, r4, #0x0
	bl sub_80880C4
	ldr r0, _0809FBB0 @ =0x0809FBB5
	str r0, [r5, #0x4C]
_0809FBA0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809FBB0: .4byte sub_809FBB4
