	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0809BAC2
	ldr r2, _0809BAF4 @ =0x000040BF
	adds r0, r4, #0x0
	movs r1, #0x08
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
_0809BAC2:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809BACA
	adds r1, #0xFF
_0809BACA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809BAD4
	adds r2, #0xFF
_0809BAD4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809BADE
	adds r3, #0xFF
_0809BADE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809BAF8 @ =0x000011E6
	bl sub_80DF024
	ldr r0, _0809BAFC @ =0x0809BB01
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809BAF4: .4byte 0x000040BF
_0809BAF8: .4byte 0x000011E6
_0809BAFC: .4byte sub_809BB00
