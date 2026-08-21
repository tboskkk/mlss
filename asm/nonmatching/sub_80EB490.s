	.syntax unified
	.text

	thumb_func_start sub_80EB490
sub_80EB490:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r3, [r4, #0x00]
	ldrb r1, [r3, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080EB4B2
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x12]
_080EB4B2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080EB51C
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080EB50A
	adds r4, r2, #0x0
	adds r4, #0xA0
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080EB4FC
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r1, [r4, #0x00]
	ldr r0, _080EB4F8 @ =0x0000FDDF
	ands r0, r1
	strh r0, [r4, #0x00]
	b _080EB51C
	.byte 0x00, 0x00
_080EB4F8: .4byte 0x0000FDDF
_080EB4FC:
	adds r0, r5, #0x0
	bl sub_80474D0
	ldrh r0, [r4, #0x00]
	movs r1, #0x20
	eors r0, r1
	strh r0, [r4, #0x00]
_080EB50A:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080EB51C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
