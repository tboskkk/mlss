	.syntax unified
	.text

	thumb_func_start sub_814B92C
sub_814B92C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814B956
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814B956:
	adds r0, r4, #0x0
	bl sub_813B748
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B97C
	movs r1, #0xEC
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0814B984 @ =0x0814BD91
	str r0, [r5, #0x00]
_0814B97C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B984: .4byte sub_814BD90
