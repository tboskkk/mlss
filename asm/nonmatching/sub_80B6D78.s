	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080B6EA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B6D9A
	b _080B6EA0
_080B6D9A:
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6DAC
	cmp r1, #0x04
	bne _080B6DFE
_080B6DAC:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DBA
	adds r0, #0xFF
_080B6DBA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DC8
	adds r0, #0xFF
_080B6DC8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6DD6
	adds r0, #0xFF
_080B6DD6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080B6DEC
	adds r0, #0xFF
_080B6DEC:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r4, #0x0
	bl sub_8088164
_080B6DFE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6E10
	cmp r1, #0x04
	bne _080B6E1A
_080B6E10:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_80885C4
_080B6E1A:
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B6E3A
	cmp r2, #0x04
	bne _080B6E88
_080B6E3A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E48
	adds r0, #0xFF
_080B6E48:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E56
	adds r0, #0xFF
_080B6E56:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B6E64
	adds r0, #0xFF
_080B6E64:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B6E76
	adds r0, #0xFF
_080B6E76:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080B6EAC @ =0x000007CC
	adds r0, r5, #0x0
	bl sub_8088164
_080B6E88:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B6E96
	cmp r2, #0x04
	bne _080B6EA0
_080B6E96:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_80885C4
_080B6EA0:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B6EA8: .4byte 0x03000FD8
_080B6EAC: .4byte 0x000007CC
