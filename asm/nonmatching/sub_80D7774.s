	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D7818 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D7812
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77A6
	cmp r1, #0x04
	bne _080D77CC
_080D77A6:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D77CC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D77DE
	cmp r1, #0x04
	bne _080D780E
_080D77DE:
	ldr r2, _080D781C @ =0x03001038
	ldr r0, _080D7820 @ =0x0819832C
	ldr r1, _080D7824 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
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
_080D780E:
	ldr r0, _080D7828 @ =0x080D782D
	str r0, [r6, #0x4C]
_080D7812:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D7818: .4byte 0x03000FD8
_080D781C: .4byte 0x03001038
_080D7820: .4byte 0x0819832C
_080D7824: .4byte 0x08198220
_080D7828: .4byte sub_80D782C
