	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F6980
	ldr r0, _080F697C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r12, r0
	b _080F6992
	.byte 0x00, 0x00
_080F697C: .4byte 0x03000FD8
_080F6980:
	ldr r1, _080F6A04 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r12, r1
_080F6992:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F69C4
	ldr r0, _080F6A08 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	mov r1, r12
	adds r1, #0x76
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1F
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r3, r3, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F69C4:
	mov r1, r12
	ldr r3, [r1, #0x08]
	cmp r3, #0x00
	beq _080F69FE
	mov r0, r12
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r5, r12
	adds r5, #0x72
	ldrh r1, [r5, #0x00]
	mov r4, r12
	adds r4, #0x70
	ldrh r2, [r4, #0x00]
	mov r0, r12
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r5, #0x00]
	strh r0, [r4, #0x00]
_080F69FE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F6A04: .4byte 0x03000FDC
_080F6A08: .4byte 0x03000FD8
