	.syntax unified
	.text

	thumb_func_start sub_80EA60C
sub_80EA60C:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [sp, #0x00C]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r2, [r4, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
	cmp r3, #0x00
	beq _080EA658
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r3, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	b _080EA660
_080EA658:
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
_080EA660:
	strb r0, [r4, #0x12]
	movs r0, #0x00
	cmp r3, #0x00
	bne _080EA66A
	movs r0, #0x01
_080EA66A:
	pop {r4, r5}
	pop {r1}
	bx r1
