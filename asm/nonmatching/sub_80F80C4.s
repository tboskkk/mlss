	push {lr}
	ldr r0, _080F80F8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	movs r3, #0x00
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F80DE
	movs r3, #0x01
_080F80DE:
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r1, r0
	lsls r3, r3, #0x05
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
_080F80F8: .4byte 0x03000FD8
