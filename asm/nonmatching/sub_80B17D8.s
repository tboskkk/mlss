	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080B18BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r6, r1, #0x0
	adds r6, #0xB0
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _080B1812
	ldr r0, _080B18C0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080B1812
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	movs r0, #0x00
	str r0, [r6, #0x00]
_080B1812:
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r1, r0, #0x05
	subs r1, r1, r0
	ldr r3, _080B18C4 @ =0xFFFFB334
	adds r0, r1, r3
	adds r6, r2, #0x0
	cmp r0, #0x00
	bge _080B1830
	ldr r2, _080B18C8 @ =0xFFFFB433
	adds r0, r1, r2
_080B1830:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x00]
	movs r3, #0x00
	ldsh r1, [r6, r3]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	str r0, [r5, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _080B18B6
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B185E
	cmp r1, #0x04
	bne _080B188C
_080B185E:
	ldr r2, _080B18CC @ =0x03001038
	ldr r0, _080B18D0 @ =0x0819832C
	ldr r1, _080B18D4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0B
	bl _call_via_r2
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080B188C:
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r6, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B18D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B18DC @ =0x080B18E1
	str r0, [r7, #0x4C]
_080B18B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B18BC: .4byte 0x03000FD8
_080B18C0: .4byte 0x0300034C
_080B18C4: .4byte 0xFFFFB334
_080B18C8: .4byte 0xFFFFB433
_080B18CC: .4byte 0x03001038
_080B18D0: .4byte 0x0819832C
_080B18D4: .4byte 0x08198220
_080B18D8: .4byte 0x00000FFF
_080B18DC: .4byte sub_80B18E0
