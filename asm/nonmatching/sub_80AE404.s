	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080AE550 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080AE554 @ =0x03001038
	ldr r2, _080AE558 @ =0x0819832C
	ldr r3, _080AE55C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AE452
	adds r0, r6, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AE454
_080AE452:
	movs r1, #0x00
_080AE454:
	cmp r1, #0x00
	beq _080AE486
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE46A
	cmp r1, #0x04
	bne _080AE486
_080AE46A:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE486:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080AE4C6
	ldr r1, [r5, #0x18]
	ldr r0, _080AE564 @ =0x000025FF
	cmp r1, r0
	bgt _080AE4C6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE4AA
	cmp r1, #0x04
	bne _080AE4C6
_080AE4AA:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE4C6:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AE548
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AE4E6
	adds r1, #0xFF
_080AE4E6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AE4F0
	adds r2, #0xFF
_080AE4F0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AE4FA
	adds r3, #0xFF
_080AE4FA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AE568 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE516
	cmp r1, #0x04
	bne _080AE532
_080AE516:
	ldr r2, _080AE560 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE532:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE544
	cmp r1, #0x04
	bne _080AE548
_080AE544:
	ldr r0, _080AE56C @ =0x080AE241
	str r0, [r7, #0x4C]
_080AE548:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AE550: .4byte 0x03000FD8
_080AE554: .4byte 0x03001038
_080AE558: .4byte 0x0819832C
_080AE55C: .4byte 0x08198220
_080AE560: .4byte 0x00002061
_080AE564: .4byte 0x000025FF
_080AE568: .4byte 0x00002FF9
_080AE56C: .4byte sub_80AE240
