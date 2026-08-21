	.syntax unified
	.text

	thumb_func_start sub_8047364
sub_8047364:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r5, r6, r0
	ldrb r3, [r5, #0x00]
	lsls r2, r3, #0x1D
	movs r4, #0x07
	lsrs r2, r2, #0x1A
	movs r0, #0x39
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	ands r1, r4
	movs r2, #0x08
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	bls _080473C4
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	strb r0, [r6, #0x02]
	ldrb r1, [r5, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _080473C4
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
_080473C4:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
