	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _080FDC30 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x02
	adds r2, #0x80
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FDC2A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x28]
	adds r1, r2, #0x0
	adds r1, #0xD8
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080FDC34 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080FDC38 @ =0x00008E58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x04]
	movs r0, #0x0A
	strh r0, [r5, #0x10]
_080FDC2A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080FDC30: .4byte 0x03000FD8
_080FDC34: .4byte 0x03000FDC
_080FDC38: .4byte 0x00008E58
