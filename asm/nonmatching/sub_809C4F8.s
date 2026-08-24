	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809C55A
	ldr r2, _0809C564 @ =0x000040BF
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C538
	adds r1, #0xFF
_0809C538:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C542
	adds r2, #0xFF
_0809C542:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C54C
	adds r3, #0xFF
_0809C54C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C568 @ =0x00001B78
	bl sub_80DF024
	ldr r0, _0809C56C @ =0x0809BB51
	str r0, [r4, #0x4C]
_0809C55A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809C564: .4byte 0x000040BF
_0809C568: .4byte 0x00001B78
_0809C56C: .4byte sub_809BB50
