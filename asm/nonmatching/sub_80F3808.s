	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	ldr r0, [r0, #0x2C]
	ldr r1, _080F381C @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F3820
	subs r0, #0x01
	b _080F3822
_080F381C: .4byte 0x0000179C
_080F3820:
	subs r0, #0x07
_080F3822:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080F386E
	ldr r0, _080F3880 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x08
	movs r5, #0x00
	adds r0, r3, #0x0
	adds r0, #0xC6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080F3860
	adds r0, r3, #0x0
	adds r0, #0x7F
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x07
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	ands r0, r1
	cmp r0, #0x00
	beq _080F386C
_080F3860:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F386C
	movs r5, #0x01
_080F386C:
	adds r3, r5, #0x0
_080F386E:
	ldr r0, [r2, #0x00]
	cmp r3, r0
	bne _080F3878
	ldr r0, [r2, #0x04]
	str r0, [r6, #0x00]
_080F3878:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F3880: .4byte 0x03000FD8
