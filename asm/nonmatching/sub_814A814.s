	.syntax unified
	.text

	thumb_func_start sub_814A814
sub_814A814:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldrh r0, [r6, #0x00]
	cmp r0, #0x00
	beq _0814A880
	movs r1, #0x23
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A854
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A854:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x08
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r6, #0x00]
	b _0814A906
_0814A880:
	movs r0, #0x23
	adds r0, r0, r3
	mov r12, r0
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0814A8A2
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A8A2:
	mov r1, r12
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	bls _0814A906
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A906
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A8F8 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A8FC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814A906
_0814A8F8: .4byte 0x00007FFF
_0814A8FC:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x09
	bl sub_814B4C8
_0814A906:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
