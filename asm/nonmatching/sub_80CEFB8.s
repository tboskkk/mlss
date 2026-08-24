	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CF048 @ =0x03000FD8
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
	beq _080CEFE0
	cmp r1, #0x04
	bne _080CEFFC
_080CEFE0:
	ldr r2, _080CF04C @ =0x00002054
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
_080CEFFC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF00E
	cmp r1, #0x04
	bne _080CF03E
_080CF00E:
	ldr r2, _080CF050 @ =0x03001038
	ldr r0, _080CF054 @ =0x0819832C
	ldr r1, _080CF058 @ =0x08198220
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
_080CF03E:
	ldr r0, _080CF05C @ =0x080CF061
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CF048: .4byte 0x03000FD8
_080CF04C: .4byte 0x00002054
_080CF050: .4byte 0x03001038
_080CF054: .4byte 0x0819832C
_080CF058: .4byte 0x08198220
_080CF05C: .4byte sub_80CF060
