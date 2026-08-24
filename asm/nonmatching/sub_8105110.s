	.syntax unified
	.text

	thumb_func_start sub_8105110
sub_8105110:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r0, _0810517C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r3, #0x10
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	ble _08105134
	b _081053A8
_08105134:
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x0C]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08105188
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _08105180 @ =0x084FB588
	adds r1, #0x48
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08105184 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
	b _081051BA
	.byte 0x00, 0x00
_0810517C: .4byte 0x03000FD8
_08105180: .4byte word_84FB588 @ =0x084FB588
_08105184: .4byte dword_89F808C @ =0x089F808C
_08105188:
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x0E
	str r1, [sp, #0x000]
	movs r1, #0x0D
	str r1, [sp, #0x004]
	ldr r1, _081053B8 @ =0x084FB588
	adds r1, #0x4A
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081053BC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x08
	movs r3, #0x04
	bl sub_8084F28
_081051BA:
	ldr r6, _081053C0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r5, #0x93
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x78
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _081053C4 @ =0x00007003
	movs r0, #0x50
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	adds r5, r4, #0x0
	adds r5, #0x9C
	movs r1, #0x30
	str r1, [r5, #0x00]
	ldr r6, _081053C8 @ =0x08198584
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08105248
	adds r0, #0x3F
_08105248:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r7, _081053CC @ =0x08198504
	movs r3, #0x00
	ldsh r1, [r7, r3]
	cmp r1, #0x00
	bge _0810525E
	adds r1, #0x3F
_0810525E:
	asrs r1, r1, #0x06
	ldr r0, [r5, #0x00]
	muls r1, r0
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	str r5, [sp, #0x014]
	ldr r1, _081053D0 @ =0x0819832C
	ldr r0, _081053D4 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
	ldr r0, _081053D8 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	movs r0, #0x80
	lsls r0, r0, #0x01
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	ands r1, r0
	lsls r3, r1, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081052A8
	adds r0, #0x3F
_081052A8:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _081052C4
	adds r0, #0x3F
_081052C4:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r6, #0x02
_081052DA:
	ldr r0, _081053D8 @ =0x03001038
	mov r9, r0
	ldr r2, [r0, #0x00]
	add r2, r10
	lsls r0, r6, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	movs r1, #0xFF
	mov r8, r1
	ands r0, r1
	lsls r3, r0, #0x01
	ldr r2, _081053C8 @ =0x08198584
	adds r0, r3, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08105300
	adds r0, #0x3F
_08105300:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	ldr r7, _081053CC @ =0x08198504
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0810531E
	adds r0, #0x3F
_0810531E:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r0, r6, #0x1
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r10
	lsls r0, r0, #0x08
	movs r1, #0x0C
	bl _call_via_r2
	mov r2, r8
	ands r0, r2
	lsls r3, r0, #0x01
	ldr r1, _081053C8 @ =0x08198584
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _08105356
	adds r0, #0x3F
_08105356:
	asrs r0, r0, #0x06
	ldr r1, [sp, #0x014]
	ldr r2, [r1, #0x00]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x38]
	adds r5, r0, r1
	ldr r1, [r4, #0x3C]
	adds r0, r3, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _08105372
	adds r0, #0x3F
_08105372:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r2, [r4, #0x40]
	adds r2, r2, r0
	adds r0, r5, #0x0
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	adds r6, #0x02
	cmp r6, #0x0B
	ble _081052DA
	ldr r0, _081053C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xDE
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	ldr r0, _081053DC @ =0x081053E1
	ldr r2, [sp, #0x010]
	str r0, [r2, #0x04]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3E
	bl play_sfx_80195B4
_081053A8:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081053B8: .4byte word_84FB588 @ =0x084FB588
_081053BC: .4byte dword_89F808C @ =0x089F808C
_081053C0: .4byte 0x03000FD8
_081053C4: .4byte 0x00007003
_081053C8: .4byte word_8198584 @ =0x08198584
_081053CC: .4byte word_8198504 @ =0x08198504
_081053D0: .4byte 0x0819832C
_081053D4: .4byte 0x08198220
_081053D8: .4byte 0x03001038
_081053DC: .4byte sub_81053E0
