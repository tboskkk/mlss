	push {r4, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	cmp r3, #0x00
	beq _080883DE
	adds r1, r4, #0x0
	adds r1, #0x7E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, _080883E4 @ =0x03001038
	ldr r0, _080883E8 @ =0x0819832C
	ldr r1, _080883EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
_080883DE:
	pop {r4}
	pop {r0}
	bx r0
_080883E4: .4byte 0x03001038
_080883E8: .4byte 0x0819832C
_080883EC: .4byte 0x08198220
