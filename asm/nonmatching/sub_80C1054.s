	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C10F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C10EA
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1080
	cmp r1, #0x04
	bne _080C1098
_080C1080:
	ldr r2, _080C10F4 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C1098:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C10AA
	cmp r1, #0x04
	bne _080C10DA
_080C10AA:
	ldr r2, _080C10F8 @ =0x03001038
	ldr r0, _080C10FC @ =0x0819832C
	ldr r1, _080C1100 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
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
_080C10DA:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C1104 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C1108 @ =0x080C110D
	str r0, [r5, #0x4C]
_080C10EA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080C10F0: .4byte 0x03000FD8
_080C10F4: .4byte 0x00002063
_080C10F8: .4byte 0x03001038
_080C10FC: .4byte 0x0819832C
_080C1100: .4byte 0x08198220
_080C1104: .4byte 0x00000FFF
_080C1108: .4byte sub_80C110C
