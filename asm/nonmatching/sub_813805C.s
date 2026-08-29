	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	adds r2, #0x08
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r6, r3, r0
	ldr r1, [r6, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138104
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _081380F4
	ldr r1, _081380EC @ =0x000002B6
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r1, r3, r0
	adds r2, #0x08
	adds r0, r3, r2
	str r4, [r0, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r3, r1
	str r5, [r0, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	ldr r0, _081380F0 @ =0x000002B5
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _08138100
	.byte 0x00, 0x00
_081380EC: .4byte 0x000002B6
_081380F0: .4byte 0x000002B5
_081380F4:
	ldr r1, _0813810C @ =0x000002B6
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_08138100:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138104:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813810C: .4byte 0x000002B6
