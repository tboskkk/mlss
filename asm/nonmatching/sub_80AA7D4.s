	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080AA8D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r6, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AA8C4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA814
	cmp r1, #0x04
	bne _080AA884
_080AA814:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AA81C
	adds r1, #0xFF
_080AA81C:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	mov r12, r1
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AA834
	adds r0, #0xFF
_080AA834:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AA84A
	adds r3, #0xFF
_080AA84A:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r12
	bl sub_808843C
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _080AA870
	adds r0, #0xFF
_080AA870:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r6, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_8088164
_080AA884:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AA896
	cmp r1, #0x04
	bne _080AA8B2
_080AA896:
	ldr r2, _080AA8D4 @ =0x0000205F
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080AA8B2:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080AA8D8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080AA8DC @ =0x080AA8E1
	mov r1, r8
	str r0, [r1, #0x4C]
_080AA8C4:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AA8D0: .4byte 0x03000FD8
_080AA8D4: .4byte 0x0000205F
_080AA8D8: .4byte 0x00000FFF
_080AA8DC: .4byte sub_80AA8E0
