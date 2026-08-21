	.syntax unified
	.text

	thumb_func_start sub_8097978
sub_8097978:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	bl sub_807EA24
	ldr r0, _0809799C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r0, #0x08
	cmp r6, r0
	bne _080979A0
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080979AC
	.byte 0x00, 0x00
_0809799C: .4byte 0x03000FD8
_080979A0:
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080979AC:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080979D8
	cmp r1, #0x04
	bne _08097A62
_080979D8:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r7, _08097A34 @ =0x03000FDC
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r1, r0
	ldr r0, [r2, #0x00]
	cmn r0, r1
	beq _08097A44
	ldr r2, _08097A38 @ =0x03001038
	ldr r0, _08097A3C @ =0x0819832C
	ldr r1, _08097A40 @ =0x08198220
	subs r0, r0, r1
	ldr r4, [r2, #0x00]
	adds r4, r4, r0
	movs r5, #0x80
	lsls r5, r5, #0x07
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	ldr r1, [r7, #0x00]
	movs r3, #0xA9
	lsls r3, r3, #0x07
	adds r2, r1, r3
	adds r3, #0x04
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	adds r0, r5, #0x0
	bl _call_via_r4
	b _08097A48
_08097A34: .4byte 0x03000FDC
_08097A38: .4byte 0x03001038
_08097A3C: .4byte 0x0819832C
_08097A40: .4byte 0x08198220
_08097A44:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08097A48:
	adds r2, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_08097A62:
	adds r1, r6, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, _08097A84 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r2, _08097A88 @ =0x00005488
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08097A8C @ =0x08097A91
	str r0, [r6, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08097A84: .4byte 0x03000FDC
_08097A88: .4byte 0x00005488
_08097A8C: .4byte sub_8097A90
