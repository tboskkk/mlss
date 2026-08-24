	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C1F5C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1EF2
	cmp r1, #0x04
	bne _080C1F0E
_080C1EF2:
	ldr r2, _080C1F60 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x02
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
_080C1F0E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1F20
	cmp r1, #0x04
	bne _080C1F50
_080C1F20:
	ldr r2, _080C1F64 @ =0x03001038
	ldr r0, _080C1F68 @ =0x0819832C
	ldr r1, _080C1F6C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1F50:
	ldr r0, _080C1F70 @ =0x080C1F75
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C1F5C: .4byte 0x03000FD8
_080C1F60: .4byte 0x00002063
_080C1F64: .4byte 0x03001038
_080C1F68: .4byte 0x0819832C
_080C1F6C: .4byte 0x08198220
_080C1F70: .4byte sub_80C1F74
