	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CE344 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	mov r1, r8
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _080CE348 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r2, r4, #0x0
	adds r2, #0x75
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, #0x04
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE24E
	cmp r1, #0x04
	bne _080CE266
_080CE24E:
	ldr r2, _080CE34C @ =0x00002092
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CE266:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE278
	cmp r1, #0x04
	bne _080CE294
_080CE278:
	ldr r2, _080CE350 @ =0x00002036
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CE294:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE2A6
	cmp r1, #0x04
	bne _080CE2C2
_080CE2A6:
	ldr r2, _080CE354 @ =0x00002054
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CE2C2:
	ldr r3, [r6, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE2D6
	cmp r1, #0x04
	bne _080CE324
_080CE2D6:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CE2DE
	adds r0, #0xFF
_080CE2DE:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CE2F6
	adds r2, #0xFF
_080CE2F6:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r6, #0x30]
	movs r1, #0x64
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x03
	bl sub_8088164
_080CE324:
	ldr r1, [r6, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE358 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, _080CE35C @ =0x080CE361
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CE344: .4byte 0x03000FD8
_080CE348: .4byte 0x00000111
_080CE34C: .4byte 0x00002092
_080CE350: .4byte 0x00002036
_080CE354: .4byte 0x00002054
_080CE358: .4byte 0x00000FFF
_080CE35C: .4byte sub_80CE360
