	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F680
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805F65E
	adds r1, #0xFF
_0805F65E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805F668
	adds r2, #0xFF
_0805F668:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805F672
	adds r3, #0xFF
_0805F672:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F688 @ =0x000012D5
	bl sub_80DF024
	ldr r0, _0805F68C @ =0x0805F691
	str r0, [r4, #0x4C]
_0805F680:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0805F688: .4byte 0x000012D5
_0805F68C: .4byte sub_805F690
