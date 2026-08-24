	.syntax unified
	.text

	thumb_func_start sub_80F4CE8
sub_80F4CE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0x0
	ldr r0, [r5, #0x00]
	cmp r0, #0x3F
	bne _080F4D06
	adds r0, r1, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r5, #0x00]
_080F4D06:
	ldr r2, [r5, #0x00]
	cmp r2, #0x07
	bgt _080F4D20
	ldr r0, _080F4D1C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4D30
_080F4D1C: .4byte 0x03000FD8
_080F4D20:
	ldr r1, _080F4D84 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F4D30:
	ldr r0, [r0, #0x08]
	ldrh r3, [r0, #0x14]
	movs r4, #0x00
	movs r0, #0x01
	ands r0, r3
	adds r5, #0x04
	ldr r1, _080F4D88 @ =0x03001034
	mov r8, r1
	ldr r7, _080F4D8C @ =0x08198154
	ldr r6, _080F4D90 @ =0x081980D8
	ldr r1, _080F4D94 @ =0x084FB4FC
	mov r12, r1
	ldr r1, _080F4D98 @ =0x0300034C
	mov r9, r1
	ldr r1, _080F4D9C @ =0x089F2CE0
	mov r10, r1
	cmp r0, #0x00
	bne _080F4D62
	movs r1, #0x01
_080F4D56:
	adds r4, #0x01
	adds r0, r3, #0x0
	asrs r0, r4
	ands r0, r1
	cmp r0, #0x00
	beq _080F4D56
_080F4D62:
	adds r4, r4, r2
	subs r1, r7, r6
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r3, r0, r1
	mov r6, r12
	ldr r2, [r5, #0x00]
	ldr r0, _080F4DA0 @ =0x00000888
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _080F4DA4
	adds r0, r2, #0x1
	lsls r0, r0, #0x01
	b _080F4DA6
_080F4D84: .4byte 0x03000FDC
_080F4D88: .4byte 0x03001034
_080F4D8C: .4byte dword_8198154 @ =0x08198154
_080F4D90: .4byte dword_81980D8 @ =0x081980D8
_080F4D94: .4byte dword_84FB4FC @ =0x084FB4FC
_080F4D98: .4byte 0x0300034C
_080F4D9C: .4byte dword_89F2CE0 @ =0x089F2CE0
_080F4DA0: .4byte 0x00000888
_080F4DA4:
	lsls r0, r2, #0x01
_080F4DA6:
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	add r0, r10
	lsls r1, r4, #0x05
	ldr r2, _080F4DDC @ =0x02000280
	adds r1, r1, r2
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080F4DE0 @ =0x0300034C
	movs r0, #0x01
	lsls r0, r4
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F4DDC: .4byte 0x02000280
_080F4DE0: .4byte 0x0300034C
