	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC998
	ldr r0, _080FC94C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x03]
	movs r1, #0x03
	ldsb r1, [r0, r1]
	cmp r1, #0x00
	ble _080FC950
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x01
	bl sub_8019308
	b _080FC994
_080FC94C: .4byte 0x03000FD8
_080FC950:
	movs r4, #0x01
	negs r4, r4
	cmp r1, r4
	beq _080FC96C
	adds r0, r2, #0x3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bhi _080FC978
	movs r0, #0x01
	bl sub_8019610
	cmp r0, #0x0A
	beq _080FC978
_080FC96C:
	movs r0, #0x01
	movs r1, #0x0A
	adds r2, r4, #0x0
	bl sub_8019308
	b _080FC994
_080FC978:
	ldr r0, _080FC9A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x03]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC994
	movs r0, #0x01
	bl sub_8019628
_080FC994:
	movs r0, #0x00
	str r0, [r5, #0x04]
_080FC998:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC9A0: .4byte 0x03000FD8
