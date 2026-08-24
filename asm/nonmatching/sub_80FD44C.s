	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080FD498 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r5, [r3, #0x7C]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080FD494
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080FD494
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _080FD4A0
_080FD494:
	ldr r0, _080FD49C @ =0x080FD6D5
	b _080FD4A2
_080FD498: .4byte 0x03000FD8
_080FD49C: .4byte sub_80FD6D4
_080FD4A0:
	ldr r0, _080FD634 @ =0x080FD829
_080FD4A2:
	str r0, [r7, #0x04]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x1C
	ands r0, r3
	cmp r0, #0x00
	beq _080FD4E2
	lsls r2, r3, #0x1B
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x1D
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD4E2
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _080FD638 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080FD4E2:
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r12, r2
	ldrh r1, [r2, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _080FD532
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r3, [r4, #0x00]
	lsls r2, r3, #0x1A
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD532
	mov r1, r12
	ldrh r0, [r1, #0x00]
	ldr r1, _080FD63C @ =0x0000FFF3
	ands r1, r0
	mov r2, r12
	strh r1, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x01
	adds r1, r5, r0
	subs r0, #0x0A
	strh r0, [r1, #0x00]
_080FD532:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r1, r1, r5
	mov r12, r1
	ldrh r1, [r1, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	beq _080FD582
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldrh r3, [r4, #0x00]
	lsls r2, r3, #0x17
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _080FD640 @ =0xFFFFFE3F
	ands r0, r3
	orrs r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD582
	mov r0, r12
	ldrh r1, [r0, #0x00]
	ldr r0, _080FD644 @ =0x0000FFCF
	ands r0, r1
	mov r1, r12
	strh r0, [r1, #0x00]
	movs r2, #0x86
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
_080FD582:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrh r1, [r4, #0x00]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	beq _080FD5D0
	ldr r1, _080FD648 @ =0x00000121
	adds r1, r1, r5
	mov r12, r1
	ldrb r3, [r1, #0x00]
	lsls r2, r3, #0x1C
	lsrs r2, r2, #0x1D
	subs r2, #0x01
	movs r0, #0x07
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x0F
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x07
	ands r2, r0
	cmp r2, #0x00
	bne _080FD5D0
	ldrh r1, [r4, #0x00]
	ldr r0, _080FD64C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r4, #0x00]
	movs r2, #0x8E
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
_080FD5D0:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrh r1, [r6, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FD670
	movs r1, #0x90
	lsls r1, r1, #0x01
	adds r4, r5, r1
	ldrb r3, [r4, #0x00]
	lsls r1, r3, #0x1D
	lsrs r1, r1, #0x1D
	subs r1, #0x01
	movs r0, #0x07
	adds r2, r1, #0x0
	ands r2, r0
	movs r0, #0x08
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x00]
	movs r0, #0x07
	ands r1, r0
	cmp r1, #0x00
	bne _080FD670
	ldrh r1, [r6, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FD65C
	ldr r0, _080FD650 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _080FD654 @ =0x00008E58
	adds r0, r0, r2
	ldr r1, [r7, #0x04]
	str r1, [r0, #0x00]
	ldr r0, _080FD658 @ =0x0810707D
	str r0, [r7, #0x04]
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	b _080FD668
	.byte 0x00, 0x00
_080FD634: .4byte sub_80FD828
_080FD638: .4byte 0x00000FFF
_080FD63C: .4byte 0x0000FFF3
_080FD640: .4byte 0xFFFFFE3F
_080FD644: .4byte 0x0000FFCF
_080FD648: .4byte 0x00000121
_080FD64C: .4byte 0x0000FF3F
_080FD650: .4byte 0x03000FDC
_080FD654: .4byte 0x00008E58
_080FD658: .4byte sub_810707C
_080FD65C:
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
_080FD668:
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8108CD0
_080FD670:
	movs r2, #0x90
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldr r3, [r4, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x0A
	ands r0, r3
	cmp r0, #0x00
	beq _080FD6AE
	lsls r0, r3, #0x0E
	lsrs r0, r0, #0x1D
	subs r0, #0x01
	movs r1, #0x07
	ands r0, r1
	lsls r1, r0, #0x0F
	ldr r6, _080FD6CC @ =0xFFFC7FFF
	adds r2, r6, #0x0
	ands r2, r3
	orrs r2, r1
	str r2, [r4, #0x00]
	cmp r0, #0x00
	bne _080FD6AE
	adds r0, r6, #0x0
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_81089A4
_080FD6AE:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FD6C4
	ldr r0, _080FD6D0 @ =0x080FCD69
	str r0, [r7, #0x04]
_080FD6C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FD6CC: .4byte 0xFFFC7FFF
_080FD6D0: .4byte sub_80FCD68
