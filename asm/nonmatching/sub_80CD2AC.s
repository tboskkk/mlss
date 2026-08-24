	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CD37C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CD374
	movs r0, #0xAC
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
	beq _080CD2E4
	cmp r1, #0x04
	bne _080CD2FC
_080CD2E4:
	ldr r2, _080CD380 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD2FC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CD30E
	cmp r1, #0x04
	bne _080CD33E
_080CD30E:
	ldr r2, _080CD384 @ =0x03001038
	ldr r0, _080CD388 @ =0x0819832C
	ldr r1, _080CD38C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x50
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
_080CD33E:
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CD390 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CD394 @ =0x080CD399
	str r0, [r6, #0x4C]
_080CD374:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CD37C: .4byte 0x03000FD8
_080CD380: .4byte 0x00002036
_080CD384: .4byte 0x03001038
_080CD388: .4byte 0x0819832C
_080CD38C: .4byte 0x08198220
_080CD390: .4byte 0x00000FFF
_080CD394: .4byte sub_80CD398
