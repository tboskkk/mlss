	.syntax unified
	.text

	thumb_func_start sub_802A4E8
sub_802A4E8:
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0x0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x02]
	lsrs r3, r0, #0x05
	mov r12, r3
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r1, r4
	ldr r5, [r0, #0x00]
	ldr r7, _0802A558 @ =0x00000353
	adds r0, r5, r7
	ldrb r6, [r0, #0x00]
	movs r4, #0x30
	ands r4, r6
	cmp r4, #0x00
	beq _0802A5B8
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x0C
	bne _0802A5B0
	cmp r4, #0x10
	bne _0802A56C
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x0C
	bne _0802A5F4
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0802A55C
	cmp r3, #0x06
	beq _0802A5F4
	cmp r3, #0x02
	beq _0802A5F4
	adds r2, r2, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0802A5FE
	.byte 0x00, 0x00
_0802A558: .4byte 0x00000353
_0802A55C:
	cmp r3, #0x06
	beq _0802A564
	cmp r3, #0x02
	bne _0802A5D8
_0802A564:
	adds r3, r2, r7
	movs r1, #0x30
	ands r1, r6
	b _0802A5E6
_0802A56C:
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	ands r1, r0
	cmp r1, #0x0C
	bne _0802A5A0
	cmp r3, #0x06
	beq _0802A580
	cmp r3, #0x02
	bne _0802A590
_0802A580:
	adds r2, r2, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0802A5FE
_0802A590:
	adds r2, r2, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	b _0802A5FE
_0802A5A0:
	adds r2, r2, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	b _0802A5FE
_0802A5B0:
	adds r3, r2, r7
	movs r1, #0x30
	ands r1, r6
	b _0802A5E6
_0802A5B8:
	adds r0, r2, #0x0
	adds r0, #0x26
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x0C
	bne _0802A5F4
	mov r4, r12
	cmp r4, #0x06
	beq _0802A5D0
	cmp r4, #0x02
	bne _0802A5D8
_0802A5D0:
	adds r3, r2, r7
	movs r1, #0x30
	ands r1, r6
	b _0802A5E6
_0802A5D8:
	lsls r1, r6, #0x1A
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	adds r3, r2, r7
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x04
_0802A5E6:
	ldrb r2, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _0802A600
_0802A5F4:
	adds r2, r2, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
_0802A5FE:
	strb r0, [r2, #0x00]
_0802A600:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
