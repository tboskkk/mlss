	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080643CC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
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
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080643A4
	adds r1, #0xFF
_080643A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080643AE
	adds r2, #0xFF
_080643AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080643B8
	adds r3, #0xFF
_080643B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080643D4 @ =0x00001089
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _080643D8 @ =0x080644DD
	str r0, [r4, #0x4C]
_080643CC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080643D4: .4byte 0x00001089
_080643D8: .4byte sub_80644DC
