	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	ldr r7, _0812464C @ =0x03000FFC
	ldr r5, [r7, #0x00]
	add r4, sp, #0x004
	movs r0, #0x00
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r6, _08124650 @ =0x0300034C
	ldr r1, _08124654 @ =0x00000898
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	strb r0, [r4, #0x00]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x01
	bl sub_80195F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08124658 @ =0x0000089A
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	strb r0, [r4, #0x01]
	movs r0, #0x01
	bl sub_8019628
	bl sub_80196E0
	mov r1, sp
	ldr r2, _0812465C @ =0x04000200
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x02
	ldr r3, _08124660 @ =0x04000004
	ldrh r0, [r3, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, _08124664 @ =0x04000208
	movs r1, #0x00
	strh r1, [r0, #0x00]
	strh r1, [r2, #0x00]
	adds r2, #0x02
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	strh r1, [r3, #0x00]
	adds r3, #0xB6
	ldrh r2, [r3, #0x00]
	ldr r1, _08124668 @ =0x00003FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x0C
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x0C
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0812466C @ =0x040000DE
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x30
	ldrh r2, [r3, #0x00]
	ldr r1, _08124670 @ =0x0000FFBF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x24
	ldrh r2, [r3, #0x00]
	ldr r0, _08124674 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08124678 @ =0x04000140
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	mov r9, r4
	ldrb r0, [r5, #0x08]
	ldrb r1, [r5, #0x09]
	adds r0, r0, r1
	ldrb r2, [r5, #0x0A]
	adds r1, r0, r2
	ldrb r0, [r5, #0x0B]
	adds r0, r1, r0
	ldrb r2, [r5, #0x0C]
	adds r1, r0, r2
	ldrb r0, [r5, #0x0D]
	adds r0, r1, r0
	ldrb r2, [r5, #0x0E]
	adds r1, r0, r2
	strb r1, [r5, #0x0F]
	movs r0, #0x01
	mov r8, r0
	ldr r0, [r7, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r2, #0x00
	mov r1, r8
	lsls r7, r1, #0x10
	b _0812468A
	.byte 0x00, 0x00
_0812464C: .4byte 0x03000FFC
_08124650: .4byte 0x0300034C
_08124654: .4byte 0x00000898
_08124658: .4byte 0x0000089A
_0812465C: .4byte 0x04000200
_08124660: .4byte 0x04000004
_08124664: .4byte 0x04000208
_08124668: .4byte 0x00003FFF
_0812466C: .4byte 0x040000DE
_08124670: .4byte 0x0000FFBF
_08124674: .4byte 0x0000BFFF
_08124678: .4byte 0x04000140
_0812467C:
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r7, r7, r0
	adds r2, #0x01
	cmp r2, #0x00
	bne _081246AC
_0812468A:
	movs r5, #0x00
	adds r6, r7, #0x0
	b _08124692
_08124690:
	adds r5, #0x01
_08124692:
	cmp r5, #0x04
	bgt _081246A8
	lsrs r0, r6, #0x10
	adds r1, r4, #0x0
	str r2, [sp, #0x008]
	bl sub_81DA85C
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x008]
	cmp r0, #0x00
	bne _08124690
_081246A8:
	cmp r5, #0x05
	bne _0812467C
_081246AC:
	cmp r5, #0x05
	bne _081246F4
	ldr r0, _081246C0 @ =0x03000FFC
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r2, #0x00
	mov r1, r8
	lsls r7, r1, #0x10
	b _081246D2
_081246C0: .4byte 0x03000FFC
_081246C4:
	adds r4, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r7, r7, r0
	adds r2, #0x01
	cmp r2, #0x00
	bne _081246F4
_081246D2:
	movs r5, #0x00
	adds r6, r7, #0x0
	b _081246DA
_081246D8:
	adds r5, #0x01
_081246DA:
	cmp r5, #0x04
	bgt _081246F0
	lsrs r0, r6, #0x10
	adds r1, r4, #0x0
	str r2, [sp, #0x008]
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x008]
	cmp r0, #0x00
	bne _081246D8
_081246F0:
	cmp r5, #0x05
	bne _081246C4
_081246F4:
	ldr r1, _08124724 @ =0x04000004
	mov r2, r9
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldr r2, _08124728 @ =0x04000208
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r1, _0812472C @ =0x04000200
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r2, #0x00]
	bl sub_819A43C
	cmp r5, #0x05
	beq _08124730
	movs r0, #0x01
	b _08124732
	.byte 0x00, 0x00
_08124724: .4byte 0x04000004
_08124728: .4byte 0x04000208
_0812472C: .4byte 0x04000200
_08124730:
	movs r0, #0x00
_08124732:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
