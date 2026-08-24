	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC80
	cmp r1, #0x04
	bne _080CFCB0
_080CFC80:
	ldr r2, _080CFCBC @ =0x03001038
	ldr r0, _080CFCC0 @ =0x0819832C
	ldr r1, _080CFCC4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CFCB0:
	ldr r0, _080CFCC8 @ =0x080D2D4D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFCBC: .4byte 0x03001038
_080CFCC0: .4byte 0x0819832C
_080CFCC4: .4byte 0x08198220
_080CFCC8: .4byte sub_80D2D4C
