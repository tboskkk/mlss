	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B6558 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B654C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0xA7
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B64E2
	cmp r1, #0x04
	bne _080B653C
_080B64E2:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B64EA
	adds r1, #0xFF
_080B64EA:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B6500
	adds r0, #0xFF
_080B6500:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B6516
	adds r3, #0xFF
_080B6516:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8088274
_080B653C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B655C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B6560 @ =0x080B6565
	str r0, [r7, #0x4C]
_080B654C:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6558: .4byte 0x03000FD8
_080B655C: .4byte 0x00000FFF
_080B6560: .4byte sub_80B6564
