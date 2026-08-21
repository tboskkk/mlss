	.syntax unified
	.text

	thumb_func_start sub_8141370
sub_8141370:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814139A
	b _081414D8
_0814139A:
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081413AE
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _081413BA
_081413AE:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081413BA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _081413F8 @ =0x03001038
	ldr r0, _081413FC @ =0x0819832C
	ldr r1, _08141400 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r7, r1, r0
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141404
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141408
_081413F8: .4byte 0x03001038
_081413FC: .4byte 0x0819832C
_08141400: .4byte 0x08198220
_08141404:
	movs r1, #0x01
	negs r1, r1
_08141408:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r7
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _081414C8 @ =0x03001038
	ldr r0, _081414CC @ =0x0819832C
	ldr r1, _081414D0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r7
	beq _0814143E
	adds r1, r7, #0x4
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
_0814143E:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081414F8
	ldr r1, _081414D4 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r2, [r4, #0x10]
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r6, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x30]
	str r0, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A44C
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r4, #0xC6
	lsls r4, r4, #0x01
	adds r1, r6, r4
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xC8
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _081414F8
_081414C8: .4byte 0x03001038
_081414CC: .4byte 0x0819832C
_081414D0: .4byte 0x08198220
_081414D4: .4byte 0x00000242
_081414D8:
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081414F8
	adds r0, r5, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081414F8
	ldr r0, _08141504 @ =0x08142881
	str r0, [r7, #0x00]
_081414F8:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141504: .4byte sub_8142880
