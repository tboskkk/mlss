	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r10, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D95C0
	b _080D9752
_080D95C0:
	mov r0, r10
	ldr r1, [r0, #0x28]
	ldr r2, [r0, #0x38]
	cmp r2, #0x00
	bge _080D95CC
	adds r2, #0xFF
_080D95CC:
	asrs r2, r2, #0x08
	mov r5, r10
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080D95D8
	adds r3, #0xFF
_080D95D8:
	asrs r3, r3, #0x08
	mov r5, r10
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D95E4
	adds r0, #0xFF
_080D95E4:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080D9764 @ =0x00004070
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r10
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r10
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080D9768 @ =0x080D977D
	str r0, [r7, #0x4C]
	ldr r0, _080D976C @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r10
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080D9770 @ =0x080D99F1
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r10
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r10
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r7, #0x0
	adds r1, #0x98
	mov r2, r10
	ldr r0, [r2, #0x2C]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xAE
	movs r5, #0xB0
	adds r5, r5, r7
	mov r8, r5
	movs r0, #0xB2
	adds r0, r0, r7
	mov r9, r0
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x38]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x3C]
	subs r0, r0, r1
	movs r1, #0x03
	bl __divsi3
	str r0, [sp, #0x000]
	mov r0, r10
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x40]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [sp, #0x008]
	ldr r0, _080D9774 @ =0x000004CC
	str r0, [sp, #0x00C]
	movs r0, #0xFD
	str r0, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	adds r3, r5, #0x0
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r1, r10
	str r4, [r1, #0x6C]
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x09
	cmp r1, r0
	bne _080D9730
	movs r2, #0x05
_080D9730:
	mov r0, r10
	adds r1, r2, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r10
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D9778 @ =0x080D9985
	str r0, [r5, #0x4C]
_080D9752:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D9764: .4byte 0x00004070
_080D9768: .4byte sub_80D977C
_080D976C: .4byte sub_8087540
_080D9770: .4byte sub_80D99F0
_080D9774: .4byte 0x000004CC
_080D9778: .4byte sub_80D9984
