	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D27A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D27CC
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x65
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D275C
	adds r1, #0xFF
_080D275C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2766
	adds r2, #0xFF
_080D2766:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2770
	adds r3, #0xFF
_080D2770:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D278C
	cmp r1, #0x04
	bne _080D27C8
_080D278C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D27AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D27B8
_080D27A8: .4byte 0x03000FD8
_080D27AC:
	ldr r2, _080D27D4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D27B8:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D27C8:
	ldr r0, _080D27D8 @ =0x080D27DD
	str r0, [r7, #0x4C]
_080D27CC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D27D4: .4byte 0x0000204D
_080D27D8: .4byte sub_80D27DC
