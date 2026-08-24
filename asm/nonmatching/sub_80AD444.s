	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080AD500 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r7, r5, #0x0
	adds r7, #0xB6
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0xDE
	muls r0, r1
	cmp r0, #0x00
	bge _080AD46A
	adds r0, #0xFF
_080AD46A:
	asrs r0, r0, #0x08
	movs r1, #0x00
	mov r8, r1
	strh r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xBA
	ldrh r0, [r4, #0x00]
	subs r0, #0x80
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldr r1, _080AD504 @ =0xFFFFFC00
	cmp r0, r1
	bgt _080AD4F4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	mov r1, r8
	strh r1, [r7, #0x00]
	strh r1, [r4, #0x00]
	mov r0, r8
	str r0, [r6, #0x18]
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD4BC
	cmp r1, #0x04
	bne _080AD4EE
_080AD4BC:
	ldr r2, _080AD508 @ =0x03001038
	ldr r0, _080AD50C @ =0x0819832C
	ldr r1, _080AD510 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x86
	mov r1, r8
	strh r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AD4EE:
	ldr r0, _080AD514 @ =0x080AD519
	mov r1, r9
	str r0, [r1, #0x4C]
_080AD4F4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD500: .4byte 0x03000FD8
_080AD504: .4byte 0xFFFFFC00
_080AD508: .4byte 0x03001038
_080AD50C: .4byte 0x0819832C
_080AD510: .4byte 0x08198220
_080AD514: .4byte sub_80AD518
