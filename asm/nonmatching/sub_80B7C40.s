	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7C6E
	cmp r1, #0x04
	bne _080B7C72
_080B7C6E:
	ldr r0, _080B7D24 @ =0x080B87B5
	str r0, [r2, #0x4C]
_080B7C72:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	ldr r0, _080B7D20 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x0A]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7C9C
	cmp r2, #0x04
	bne _080B7CB4
_080B7C9C:
	ldr r2, _080B7D28 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B7CB4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7CC2
	cmp r2, #0x04
	bne _080B7D7C
_080B7CC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080B7CCA
	adds r1, #0xFF
_080B7CCA:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080B7CE0
	adds r0, #0xFF
_080B7CE0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080B7CF6
	adds r3, #0xFF
_080B7CF6:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080B7D2C
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080B7D3C
_080B7D20: .4byte 0x03000FD8
_080B7D24: .4byte sub_80B87B4
_080B7D28: .4byte 0x0000204D
_080B7D2C:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080B7D3C:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B7D44
	adds r0, #0xFF
_080B7D44:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080B7D9C @ =0x03001038
	ldr r0, _080B7DA0 @ =0x0819832C
	ldr r1, _080B7DA4 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080B7D5E
	adds r1, #0x3F
_080B7D5E:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080B7D7C:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7DA8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7DAC @ =0x080B7DB1
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7D9C: .4byte 0x03001038
_080B7DA0: .4byte 0x0819832C
_080B7DA4: .4byte 0x08198220
_080B7DA8: .4byte 0x00000FFF
_080B7DAC: .4byte sub_80B7DB0
