	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AE358 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	mov r1, r10
	ldr r4, [r1, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE26C
	cmp r1, #0x04
	bne _080AE288
_080AE26C:
	ldr r2, _080AE35C @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0C
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
_080AE288:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080AE294
	adds r0, #0x0F
_080AE294:
	asrs r6, r0, #0x04
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #0x14]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080AE2A2
	adds r0, #0x0F
_080AE2A2:
	asrs r7, r0, #0x04
	ldr r2, _080AE360 @ =0x03001038
	mov r9, r2
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r8, r0
	movs r0, #0xB4
	lsls r0, r0, #0x02
	cmp r8, r0
	ble _080AE36C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE2D6
	cmp r1, #0x04
	beq _080AE2D6
	b _080AE3E8
_080AE2D6:
	ldr r4, _080AE364 @ =0x0819832C
	ldr r0, _080AE368 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	lsls r0, r6, #0x04
	subs r0, r0, r6
	lsls r0, r0, #0x01
	mov r1, r8
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	lsls r0, r7, #0x04
	subs r0, r0, r7
	lsls r0, r0, #0x01
	mov r1, r8
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080AE30C
	adds r0, #0xFF
_080AE30C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, r6
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080AE324
	adds r2, #0xFF
_080AE324:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	adds r2, r2, r3
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
	b _080AE3E8
	.byte 0x00, 0x00
_080AE358: .4byte 0x03000FD8
_080AE35C: .4byte 0x00002061
_080AE360: .4byte 0x03001038
_080AE364: .4byte 0x0819832C
_080AE368: .4byte 0x08198220
_080AE36C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE37E
	cmp r1, #0x04
	bne _080AE3CA
_080AE37E:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080AE386
	adds r1, #0xFF
_080AE386:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080AE39C
	adds r2, #0xFF
_080AE39C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080AE3CA:
	mov r0, r10
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE3DC
	cmp r1, #0x04
	bne _080AE3EE
_080AE3DC:
	ldr r0, _080AE3E4 @ =0x080AE571
	mov r2, r10
	str r0, [r2, #0x4C]
	b _080AE3EE
_080AE3E4: .4byte sub_80AE570
_080AE3E8:
	ldr r0, _080AE400 @ =0x080AE405
	mov r1, r10
	str r0, [r1, #0x4C]
_080AE3EE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AE400: .4byte sub_80AE404
