	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080C18CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C18C4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1862
	cmp r1, #0x04
	bne _080C187E
_080C1862:
	ldr r2, _080C18D0 @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x07
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
_080C187E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C1890
	cmp r1, #0x04
	bne _080C18C0
_080C1890:
	ldr r2, _080C18D4 @ =0x03001038
	ldr r0, _080C18D8 @ =0x0819832C
	ldr r1, _080C18DC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x23
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
_080C18C0:
	ldr r0, _080C18E0 @ =0x080C18E5
	str r0, [r6, #0x4C]
_080C18C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C18CC: .4byte 0x03000FD8
_080C18D0: .4byte 0x00002063
_080C18D4: .4byte 0x03001038
_080C18D8: .4byte 0x0819832C
_080C18DC: .4byte 0x08198220
_080C18E0: .4byte sub_80C18E4
