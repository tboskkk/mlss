	.syntax unified
	.text

	thumb_func_start sub_814A618
sub_814A618:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	mov r12, r1
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r3, [r0, #0x00]
	movs r5, #0xEA
	lsls r5, r5, #0x01
	add r5, r12
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0814A694
	adds r4, r3, #0x0
	adds r4, #0x23
	ldrb r0, [r4, #0x00]
	cmp r0, #0x08
	bls _0814A654
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x7F
	ands r0, r1
	subs r1, #0xC0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814A654:
	ldrb r0, [r4, #0x00]
	cmp r0, #0x0D
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	movs r2, #0x83
	lsls r2, r2, #0x02
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x03
	bl sub_814B038
	movs r0, #0x00
	strh r0, [r5, #0x00]
	b _0814A6BC
_0814A694:
	adds r0, r3, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _0814A6BC
	movs r1, #0x2A
	ldsh r0, [r3, r1]
	adds r1, r3, #0x0
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #0x00
	bgt _0814A6BC
	adds r0, r6, #0x0
	mov r1, r12
	movs r2, #0x04
	bl sub_814B4C8
_0814A6BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
