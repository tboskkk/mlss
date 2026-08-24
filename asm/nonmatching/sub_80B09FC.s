	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B0B54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B0A26
	b _080B0B46
_080B0A26:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0A46
	cmp r1, #0x04
	bne _080B0A9C
_080B0A46:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080B0A4E
	adds r0, #0xFF
_080B0A4E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x20
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080B0A68
	adds r2, #0xFF
_080B0A68:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B0A8A
	adds r0, #0xFF
_080B0A8A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B0B58 @ =0x00000399
	adds r0, r4, #0x0
	bl sub_8088164
_080B0A9C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0AAE
	cmp r1, #0x04
	bne _080B0B06
_080B0AAE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B0AB6
	adds r1, #0xFF
_080B0AB6:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B0ACC
	adds r0, #0xFF
_080B0ACC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B0AE2
	adds r3, #0xFF
_080B0AE2:
	asrs r3, r3, #0x08
	adds r3, #0x18
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r0, #0x20
	adds r1, r7, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_8088164
_080B0B06:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0B18
	cmp r1, #0x04
	bne _080B0B34
_080B0B18:
	ldr r2, _080B0B5C @ =0x00002061
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B0B34:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B0B60 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B0B64 @ =0x080B0B69
	mov r1, r9
	str r0, [r1, #0x4C]
_080B0B46:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B0B54: .4byte 0x03000FD8
_080B0B58: .4byte 0x00000399
_080B0B5C: .4byte 0x00002061
_080B0B60: .4byte 0x00000FFF
_080B0B64: .4byte sub_80B0B68
