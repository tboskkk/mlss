	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080C1820 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C1818
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C17D2
	cmp r1, #0x04
	bne _080C17EE
_080C17D2:
	ldr r2, _080C1824 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x09
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
_080C17EE:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C17F6
	adds r1, #0xFF
_080C17F6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C1800
	adds r2, #0xFF
_080C1800:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C180A
	adds r3, #0xFF
_080C180A:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	ldr r0, _080C1828 @ =0x080C182D
	str r0, [r7, #0x4C]
_080C1818:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C1820: .4byte 0x03000FD8
_080C1824: .4byte 0x00002034
_080C1828: .4byte sub_80C182C
