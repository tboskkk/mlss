	.syntax unified
	.text

	thumb_func_start sub_80EEC18
sub_80EEC18:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r3, #0x14]
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bhi _080EEC3A
	ldr r0, [r1, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0x00
	b _080EECCA
_080EEC3A:
	ldr r2, [r4, #0x00]
	cmp r2, #0x07
	bhi _080EECC8
	lsls r0, r2, #0x02
	ldr r1, _080EEC4C @ =lbl_080EEC50
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EEC4C: .4byte lbl_080EEC50
lbl_080EEC50:
	.4byte _080EEC70
	.4byte _080EEC70
	.4byte _080EEC70
	.4byte _080EEC70
	.4byte _080EEC84
	.4byte _080EEC8E
	.4byte _080EECA0
	.4byte _080EECC0
_080EEC70:
	ldr r0, [r3, #20]
	movs r3, #1
	adds r1, r2, #0
	ands r1, r3
	asrs r2, r2, #1
	ands r2, r3
	movs r3, #0
	bl sub_802E754
	b.n _080EECC8
_080EEC84:
	ldr r0, [r3, #20]
	movs r1, #0
	bl sub_802E4C8
	b.n _080EECC8
_080EEC8E:
	ldr r0, [r3, #20]
	movs r1, #130 @ 0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r2, [r0, #0]
	movs r1, #17
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0]
_080EECA0:
	ldr r3, [r3, #20]
	ldr r1, [r4, #0]
	subs r1, #5
	movs r2, #130 @ 0x82
	lsls r2, r2, #2
	adds r3, r3, r2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	b.n _080EECC8
_080EECC0:
	ldr r0, [r3, #20]
	movs r1, #1
	bl sub_802E4C8
_080EECC8:
	movs r0, #0x01
_080EECCA:
	pop {r4}
	pop {r1}
	bx r1
