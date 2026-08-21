	.syntax unified
	.text

	thumb_func_start sub_80F9544
sub_80F9544:
	push {r4, lr}
	lsls r1, r1, #0x18
	ldr r0, [r0, #0x14]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsrs r1, r1, #0x12
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldr r4, [r3, #0x00]
	cmp r4, #0x00
	beq _080F95B8
	ldrh r0, [r4, #0x0E]
	strh r0, [r3, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x0F]
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1B
	ldrb r2, [r3, #0x10]
	movs r1, #0x19
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x10]
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x05
	movs r2, #0x61
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x10]
	ldrb r1, [r4, #0x1F]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x07
	ldrh r2, [r3, #0x10]
	ldr r0, _080F95B4 @ =0xFFFFFE7F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x10]
	ldrb r1, [r4, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x01
	ldrb r2, [r3, #0x11]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _080F95F2
	.byte 0x00, 0x00
_080F95B4: .4byte 0xFFFFFE7F
_080F95B8:
	movs r0, #0x80
	lsls r0, r0, #0x08
	strh r0, [r3, #0x12]
	movs r0, #0x10
	strb r0, [r3, #0x0F]
	ldrb r1, [r3, #0x11]
	subs r0, #0x17
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldrh r1, [r3, #0x10]
	ldr r0, _080F95F8 @ =0xFFFFFE7F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3, #0x10]
	ldrb r1, [r3, #0x10]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r3, #0x10]
_080F95F2:
	pop {r4}
	pop {r0}
	bx r0
_080F95F8: .4byte 0xFFFFFE7F
