	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080B3780 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B37B2
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3704
	cmp r1, #0x04
	bne _080B374E
_080B3704:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B370C
	adds r1, #0xFF
_080B370C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080B3722
	adds r2, #0xFF
_080B3722:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x3C
	bl sub_808843C
	movs r1, #0x40
	adds r0, r6, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080B374E:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3760
	cmp r1, #0x04
	bne _080B37A0
_080B3760:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B3784
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B3790
_080B3780: .4byte 0x03000FD8
_080B3784:
	ldr r2, _080B37C0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B3790:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B37A0:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B37C4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B37C8 @ =0x080B37CD
	mov r1, r9
	str r0, [r1, #0x4C]
_080B37B2:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B37C0: .4byte 0x0000204D
_080B37C4: .4byte 0x00000FFF
_080B37C8: .4byte sub_80B37CC
