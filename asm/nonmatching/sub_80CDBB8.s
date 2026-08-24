	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080CDCA4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CDC9A
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r7, #0x07
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x30]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDC3C
	cmp r1, #0x04
	bne _080CDC52
_080CDC3C:
	ldr r2, _080CDCA8 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CDC52:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CDC64
	cmp r1, #0x04
	bne _080CDC94
_080CDC64:
	ldr r2, _080CDCAC @ =0x03001038
	ldr r0, _080CDCB0 @ =0x0819832C
	ldr r1, _080CDCB4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x1E
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CDC94:
	ldr r0, _080CDCB8 @ =0x080CDCBD
	mov r1, r8
	str r0, [r1, #0x4C]
_080CDC9A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CDCA4: .4byte 0x03000FD8
_080CDCA8: .4byte 0x00002065
_080CDCAC: .4byte 0x03001038
_080CDCB0: .4byte 0x0819832C
_080CDCB4: .4byte 0x08198220
_080CDCB8: .4byte sub_80CDCBC
