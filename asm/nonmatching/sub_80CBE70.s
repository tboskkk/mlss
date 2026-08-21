	.syntax unified
	.text

	thumb_func_start sub_80CBE70
sub_80CBE70:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080CBF44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CBF3E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBEAC
	cmp r1, #0x04
	bne _080CBEC4
_080CBEAC:
	ldr r2, _080CBF48 @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEC4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CBED8
	cmp r2, #0x04
	bne _080CBEF0
_080CBED8:
	ldr r2, _080CBF4C @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEF0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CBEFE
	cmp r2, #0x04
	bne _080CBF2E
_080CBEFE:
	ldr r2, _080CBF50 @ =0x03001038
	ldr r0, _080CBF54 @ =0x0819832C
	ldr r1, _080CBF58 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
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
_080CBF2E:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CBF5C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CBF60 @ =0x080CBF65
	str r0, [r7, #0x4C]
_080CBF3E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CBF44: .4byte 0x03000FD8
_080CBF48: .4byte 0x00002035
_080CBF4C: .4byte 0x00002064
_080CBF50: .4byte 0x03001038
_080CBF54: .4byte 0x0819832C
_080CBF58: .4byte 0x08198220
_080CBF5C: .4byte 0x00000FFF
_080CBF60: .4byte sub_80CBF64
