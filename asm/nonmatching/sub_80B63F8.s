	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080B6490 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B648A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B643C
	cmp r1, #0x04
	bne _080B6458
_080B643C:
	ldr r2, _080B6494 @ =0x00002031
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
_080B6458:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B646A
	cmp r1, #0x04
	bne _080B6486
_080B646A:
	ldr r2, _080B6498 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x02
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
_080B6486:
	ldr r0, _080B649C @ =0x080B64A1
	str r0, [r7, #0x4C]
_080B648A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6490: .4byte 0x03000FD8
_080B6494: .4byte 0x00002031
_080B6498: .4byte 0x00002060
_080B649C: .4byte sub_80B64A0
