	.syntax unified
	.text

	thumb_func_start sub_802E754
sub_802E754:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0802E840
	ldr r1, _0802E84C @ =0x00000246
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1C
	ands r1, r0
	cmp r1, #0x14
	beq _0802E790
	cmp r1, #0x18
	beq _0802E790
	cmp r1, #0x1C
	bne _0802E79A
_0802E790:
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8029A0C
_0802E79A:
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	movs r2, #0x01
	adds r1, r4, #0x0
	ands r1, r2
	lsls r1, r1, #0x06
	movs r6, #0x41
	negs r6, r6
	ands r0, r6
	orrs r0, r1
	lsls r1, r5, #0x07
	movs r5, #0x7F
	ands r0, r5
	orrs r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r1, _0802E850 @ =0x0000020B
	adds r3, r7, r1
	mov r1, r8
	ands r1, r2
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	movs r4, #0x83
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	ands r0, r5
	ands r0, r6
	strb r0, [r2, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	ands r1, r5
	ands r1, r6
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r4, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x14]
	ldr r0, [r3, #0x00]
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	strb r4, [r0, #0x10]
	ldr r1, [r3, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
_0802E840:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802E84C: .4byte 0x00000246
_0802E850: .4byte 0x0000020B
