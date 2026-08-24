	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D8698 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r5, [r6, #0x2C]
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D860A
	cmp r1, #0x04
	bne _080D860E
_080D860A:
	ldr r0, _080D869C @ =0x080D8A55
	str r0, [r5, #0x4C]
_080D860E:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D8616
	adds r1, #0xFF
_080D8616:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D8620
	adds r2, #0xFF
_080D8620:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D862A
	adds r3, #0xFF
_080D862A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080D86A0 @ =0x000006AF
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x01
	strb r1, [r0, #0x00]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D8650
	cmp r1, #0x04
	bne _080D866C
_080D8650:
	ldr r2, _080D86A4 @ =0x00002066
	adds r0, r4, #0x0
	movs r1, #0x10
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
_080D866C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080D868A
	ldr r2, _080D86A8 @ =0x00002095
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D868A:
	ldr r0, _080D86AC @ =0x080D86B1
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D8698: .4byte 0x03000FD8
_080D869C: .4byte sub_80D8A54
_080D86A0: .4byte 0x000006AF
_080D86A4: .4byte 0x00002066
_080D86A8: .4byte 0x00002095
_080D86AC: .4byte sub_80D86B0
