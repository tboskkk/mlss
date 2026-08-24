	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0810277E
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810277E
	ldr r0, _08102740 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x08]
	lsls r1, r0, #0x1C
	lsrs r0, r1, #0x1C
	movs r3, #0x03
	ands r3, r0
	cmp r3, #0x00
	bne _08102710
	lsrs r3, r1, #0x1E
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	bne _08102710
	movs r3, #0x01
_08102710:
	cmp r4, #0x00
	beq _0810276E
	ldrb r1, [r2, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810276E
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102748
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r1, r3, #0x0
	ldr r2, _08102744 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08102756
	.byte 0x00, 0x00
_08102740: .4byte 0x03000FD8
_08102744: .4byte 0x00002003
_08102748:
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r1, r3, #0x0
	ldr r2, _08102784 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08102756:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0810276E:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0810277E:
	pop {r4}
	pop {r0}
	bx r0
_08102784: .4byte 0x00002050
