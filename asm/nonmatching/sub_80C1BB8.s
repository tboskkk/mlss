	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1C40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080C1C44 @ =0x03001038
	ldr r2, _080C1C48 @ =0x0819832C
	ldr r3, _080C1C4C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080C1C06
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C1C08
_080C1C06:
	movs r1, #0x00
_080C1C08:
	cmp r1, #0x00
	beq _080C1C6C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C1E
	cmp r1, #0x04
	bne _080C1C6C
_080C1C1E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080C1C50
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080C1C5C
	.byte 0x00, 0x00
_080C1C40: .4byte 0x03000FD8
_080C1C44: .4byte 0x03001038
_080C1C48: .4byte 0x0819832C
_080C1C4C: .4byte 0x08198220
_080C1C50:
	ldr r2, _080C1CDC @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080C1C5C:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C1C6C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1CD4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1C8C
	cmp r1, #0x04
	bne _080C1CAA
_080C1C8C:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080C1CAA:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080C1CB2
	adds r1, #0xFF
_080C1CB2:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080C1CBC
	adds r2, #0xFF
_080C1CBC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080C1CC6
	adds r3, #0xFF
_080C1CC6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080C1CE0 @ =0x080C87A5
	str r0, [r7, #0x4C]
_080C1CD4:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1CDC: .4byte 0x0000204D
_080C1CE0: .4byte sub_80C87A4
