	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D0D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CAC
	cmp r1, #0x04
	bne _080D0CC8
_080D0CAC:
	ldr r2, _080D0D18 @ =0x00002054
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080D0CC8:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CDA
	cmp r1, #0x04
	bne _080D0D0A
_080D0CDA:
	ldr r2, _080D0D1C @ =0x03001038
	ldr r0, _080D0D20 @ =0x0819832C
	ldr r1, _080D0D24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0D0A:
	ldr r0, _080D0D28 @ =0x080D0D2D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D0D14: .4byte 0x03000FD8
_080D0D18: .4byte 0x00002054
_080D0D1C: .4byte 0x03001038
_080D0D20: .4byte 0x0819832C
_080D0D24: .4byte 0x08198220
_080D0D28: .4byte sub_80D0D2C
