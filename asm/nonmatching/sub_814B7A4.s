	.syntax unified
	.text

	thumb_func_start sub_814B7A4
sub_814B7A4:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814B7CC
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814B7CC:
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x18]
	subs r2, r0, r1
	str r2, [r3, #0x18]
	ldr r0, [r3, #0x24]
	movs r1, #0xC0
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _0814B7F8
	ldr r0, [r3, #0x14]
	adds r0, r0, r2
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _0814B7FC
_0814B7F8:
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
_0814B7FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
