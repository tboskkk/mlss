	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080FD11C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x7C]
	bl sub_80813A0
	movs r1, #0x18
	ldsh r0, [r6, r1]
	ldr r1, _080FD120 @ =0x080FD39D
	cmp r0, #0x00
	beq _080FD0B6
	ldr r1, _080FD124 @ =0x080FD1AD
_080FD0B6:
	str r1, [r6, #0x04]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r5, r4, r1
	ldrh r1, [r5, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FD138
	ldr r0, _080FD128 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	bl sub_8108928
	ldr r0, _080FD12C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD130 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD134 @ =0x0810707D
	str r0, [r6, #0x04]
	b _080FD192
_080FD11C: .4byte 0x03000FD8
_080FD120: .4byte sub_80FD39C
_080FD124: .4byte sub_80FD1AC
_080FD128: .4byte 0x00000121
_080FD12C: .4byte 0x03000FDC
_080FD130: .4byte 0x00008E58
_080FD134: .4byte sub_810707C
_080FD138:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FD192
	ldr r0, _080FD198 @ =0x00000121
	adds r0, r0, r4
	mov r12, r0
	ldrb r3, [r0, #0x00]
	lsls r2, r3, #0x19
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x71
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD192
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r1, #0x10
	bl sub_8087318
	ldr r0, _080FD19C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FD1A0 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r6, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD1A4 @ =0x08107041
	str r0, [r6, #0x04]
	ldrh r1, [r5, #0x00]
	ldr r0, _080FD1A8 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r5, #0x00]
_080FD192:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FD198: .4byte 0x00000121
_080FD19C: .4byte 0x03000FDC
_080FD1A0: .4byte 0x00008E58
_080FD1A4: .4byte sub_8107040
_080FD1A8: .4byte 0x0000FCFF
