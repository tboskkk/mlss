	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D775C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D76A6
	adds r1, #0xFF
_080D76A6:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D76B0
	adds r2, #0xFF
_080D76B0:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D76BA
	adds r3, #0xFF
_080D76BA:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D7760 @ =0x00002FE6
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D76D6
	cmp r1, #0x04
	bne _080D76F2
_080D76D6:
	ldr r2, _080D7764 @ =0x00002024
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D76F2:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D7704
	cmp r1, #0x04
	bne _080D7720
_080D7704:
	ldr r2, _080D7768 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x0C
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
_080D7720:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D773E
	ldr r2, _080D776C @ =0x00002095
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D773E:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080D7770 @ =0x080D7775
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D775C: .4byte 0x03000FD8
_080D7760: .4byte 0x00002FE6
_080D7764: .4byte 0x00002024
_080D7768: .4byte 0x00002066
_080D776C: .4byte 0x00002095
_080D7770: .4byte sub_80D7774
