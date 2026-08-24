	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080AC29C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, _080AC2A0 @ =0x00001555
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1A6
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1A8
_080AC1A6:
	movs r1, #0x00
_080AC1A8:
	cmp r1, #0x00
	beq _080AC1D6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC1BE
	cmp r1, #0x04
	bne _080AC1D6
_080AC1BE:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC1D6:
	ldr r2, _080AC2A8 @ =0x00002AAA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AC1F2
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080AC1F4
_080AC1F2:
	movs r1, #0x00
_080AC1F4:
	cmp r1, #0x00
	beq _080AC222
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC20A
	cmp r1, #0x04
	bne _080AC222
_080AC20A:
	ldr r2, _080AC2A4 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC222:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC292
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080AC242
	adds r1, #0xFF
_080AC242:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC24C
	adds r2, #0xFF
_080AC24C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC256
	adds r3, #0xFF
_080AC256:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC272
	cmp r1, #0x04
	bne _080AC28E
_080AC272:
	ldr r2, _080AC2AC @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080AC28E:
	ldr r0, _080AC2B0 @ =0x080AC2B5
	str r0, [r6, #0x4C]
_080AC292:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC29C: .4byte 0x03000FD8
_080AC2A0: .4byte 0x00001555
_080AC2A4: .4byte 0x00002030
_080AC2A8: .4byte 0x00002AAA
_080AC2AC: .4byte 0x00002034
_080AC2B0: .4byte sub_80AC2B4
