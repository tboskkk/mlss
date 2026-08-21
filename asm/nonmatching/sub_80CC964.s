	.syntax unified
	.text

	thumb_func_start sub_80CC964
sub_80CC964:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCA1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r1, #0x74]
	adds r4, r1, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC988
	cmp r1, #0x04
	bne _080CC9A4
_080CC988:
	ldr r2, _080CCA20 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC9A4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CC9B8
	cmp r2, #0x04
	bne _080CC9D4
_080CC9B8:
	ldr r2, _080CCA24 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC9D4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC9E2
	cmp r2, #0x04
	bne _080CCA12
_080CC9E2:
	ldr r2, _080CCA28 @ =0x03001038
	ldr r0, _080CCA2C @ =0x0819832C
	ldr r1, _080CCA30 @ =0x08198220
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
_080CCA12:
	ldr r0, _080CCA34 @ =0x080CCA39
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCA1C: .4byte 0x03000FD8
_080CCA20: .4byte 0x00002035
_080CCA24: .4byte 0x00002064
_080CCA28: .4byte 0x03001038
_080CCA2C: .4byte 0x0819832C
_080CCA30: .4byte 0x08198220
_080CCA34: .4byte sub_80CCA38
