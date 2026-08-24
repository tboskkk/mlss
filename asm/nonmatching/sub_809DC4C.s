	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809DC60
	b _0809DD86
_0809DC60:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0809DC68
	adds r1, #0xFF
_0809DC68:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _0809DC72
	adds r2, #0xFF
_0809DC72:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _0809DC7C
	adds r3, #0xFF
_0809DC7C:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0809DD90 @ =0x0000229B
	bl sub_80DF024
	ldr r6, [r7, #0x30]
	ldr r0, [r7, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r6, #0x18]
	ldr r2, _0809DD94 @ =0x00004146
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r5, #0x02
	orrs r0, r5
	strb r0, [r2, #0x12]
	ldr r0, _0809DD98 @ =0x0809E05D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	ldr r1, _0809DD9C @ =0x00004145
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, #0x12]
	adds r4, r6, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r6, #0x04]
	ldr r1, [r6, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	movs r5, #0x0B
_0809DD00:
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x06
	cmp r5, #0x00
	bge _0809DD00
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DDA0 @ =0x0809E455
	str r0, [r7, #0x4C]
_0809DD86:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DD90: .4byte 0x0000229B
_0809DD94: .4byte 0x00004146
_0809DD98: .4byte sub_809E05C
_0809DD9C: .4byte 0x00004145
_0809DDA0: .4byte sub_809E454
