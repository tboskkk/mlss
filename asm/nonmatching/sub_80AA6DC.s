	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080AA7BC @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080AA726
	adds r3, r2, #0x0
	adds r3, #0x86
	adds r0, r2, #0x0
	adds r0, #0x82
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r2, #0x0
	adds r1, #0x84
	movs r2, #0x00
	ldsh r1, [r1, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _080AA71E
	adds r0, #0x7F
_080AA71E:
	asrs r1, r0, #0x07
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
_080AA726:
	adds r0, r4, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x10]
	ldr r2, [r5, #0x38]
	subs r0, r0, r2
	ldr r1, [r4, #0x38]
	subs r1, r1, r2
	muls r0, r1
	cmp r0, #0x00
	bgt _080AA7B4
	str r2, [r4, #0x10]
	ldr r0, [r5, #0x3C]
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AA756
	cmp r2, #0x04
	bne _080AA772
_080AA756:
	ldr r2, _080AA7C0 @ =0x00002030
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080AA772:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AA780
	cmp r2, #0x04
	bne _080AA7B0
_080AA780:
	ldr r2, _080AA7C4 @ =0x03001038
	ldr r0, _080AA7C8 @ =0x0819832C
	ldr r1, _080AA7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
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
_080AA7B0:
	ldr r0, _080AA7D0 @ =0x080AA7D5
	str r0, [r6, #0x4C]
_080AA7B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AA7BC: .4byte 0x03000FD8
_080AA7C0: .4byte 0x00002030
_080AA7C4: .4byte 0x03001038
_080AA7C8: .4byte 0x0819832C
_080AA7CC: .4byte 0x08198220
_080AA7D0: .4byte sub_80AA7D4
